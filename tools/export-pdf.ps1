param(
  [Parameter(Mandatory = $true)]
  [string]$InputHtml,
  [Parameter(Mandatory = $true)]
  [string]$OutputPdf
)

$ErrorActionPreference = "Stop"
$inputPath = (Resolve-Path -LiteralPath $InputHtml).Path
$outputPath = [System.IO.Path]::GetFullPath($OutputPdf)
$outputDirectory = Split-Path -Parent $outputPath
$source = Get-Content -LiteralPath $inputPath -Raw

function Convert-ToMillimeters {
  param(
    [Parameter(Mandatory = $true)]
    [string]$Value
  )

  $match = [regex]::Match($Value.Trim(), '^(?<amount>\d+(?:\.\d+)?)(?<unit>mm|cm|in|px|pt)$')
  if (-not $match.Success) {
    throw "Unsupported print size '$Value'. Use mm, cm, in, pt, or px."
  }

  $amount = [double]$match.Groups['amount'].Value
  switch ($match.Groups['unit'].Value) {
    'mm' { return $amount }
    'cm' { return $amount * 10 }
    'in' { return $amount * 25.4 }
    'pt' { return $amount * 25.4 / 72 }
    'px' { return $amount * 25.4 / 96 }
    default { throw "Unsupported print unit in '$Value'." }
  }
}

function Get-PdfPageSizeMillimeters {
  param(
    [Parameter(Mandatory = $true)]
    [string]$PdfPath
  )

  $bytes = [System.IO.File]::ReadAllBytes($PdfPath)
  $text = [System.Text.Encoding]::ASCII.GetString($bytes)
  $mediaBoxMatch = [regex]::Match($text, '/MediaBox\s*\[\s*0\s+0\s+(?<width>[0-9.]+)\s+(?<height>[0-9.]+)\s*\]')
  if (-not $mediaBoxMatch.Success) {
    throw "Could not read PDF page size from MediaBox: $PdfPath"
  }

  return [pscustomobject]@{
    WidthMm = ([double]$mediaBoxMatch.Groups['width'].Value) * 25.4 / 72
    HeightMm = ([double]$mediaBoxMatch.Groups['height'].Value) * 25.4 / 72
  }
}

$widthMatch = [regex]::Match($source, 'data-export-width="(\d+)"')
$heightMatch = [regex]::Match($source, 'data-export-height="(\d+)"')
$printWidthMatch = [regex]::Match($source, 'data-print-width="([^"]+)"')
$printHeightMatch = [regex]::Match($source, 'data-print-height="([^"]+)"')

if ($source -notmatch 'data-export-canvas' -or -not $widthMatch.Success -or -not $heightMatch.Success) {
  throw "Input HTML must declare the export canvas and its dimensions."
}

if (-not $printWidthMatch.Success -or -not $printHeightMatch.Success) {
  throw "Input HTML must declare data-print-width and data-print-height for exact PDF export size."
}

$expectedWidthMm = Convert-ToMillimeters $printWidthMatch.Groups[1].Value
$expectedHeightMm = Convert-ToMillimeters $printHeightMatch.Groups[1].Value

if ($source -match '<img\b[^>]*\bsrc\s*=\s*["'']\s*["'']') {
  throw "Input HTML contains an image with an empty src. Add the real local asset before exporting."
}

if (-not (Test-Path -LiteralPath $outputDirectory)) {
  New-Item -ItemType Directory -Path $outputDirectory | Out-Null
}

$chromeCandidates = @(
  "$env:ProgramFiles\Google\Chrome\Application\chrome.exe",
  "$env:ProgramFiles(x86)\Google\Chrome\Application\chrome.exe",
  "$env:LocalAppData\Google\Chrome\Application\chrome.exe",
  "$env:ProgramFiles\Microsoft\Edge\Application\msedge.exe",
  "$env:ProgramFiles(x86)\Microsoft\Edge\Application\msedge.exe"
)
$browser = $chromeCandidates | Where-Object { Test-Path -LiteralPath $_ } | Select-Object -First 1

if (-not $browser) {
  throw "Chrome or Edge was not found. Install one of them to export PDF assets."
}

$baseName = [System.IO.Path]::GetFileNameWithoutExtension($outputPath)
$tempPdfPath = Join-Path $outputDirectory ($baseName + '.tmp.pdf')
$uri = [System.Uri]::new($inputPath).AbsoluteUri + "?export=1"

$commonArguments = @(
  "--headless=new",
  "--disable-gpu",
  "--hide-scrollbars",
  "--no-first-run",
  "--no-pdf-header-footer",
  "--user-data-dir=$env:TEMP\hacienda-solano-pdf-$PID",
  "--virtual-time-budget=3000",
  $uri
)

try {
  $domArguments = @("--dump-dom") + $commonArguments
  $domArgumentString = ($domArguments | ForEach-Object { '"' + ($_ -replace '"', '\"') + '"' }) -join ' '
  $domPath = Join-Path $env:TEMP "hacienda-solano-pdf-$PID.html"
  $domErrorPath = Join-Path $env:TEMP "hacienda-solano-pdf-$PID.log"
  $domProcess = Start-Process -FilePath $browser -ArgumentList $domArgumentString -Wait -PassThru -NoNewWindow -RedirectStandardOutput $domPath -RedirectStandardError $domErrorPath
  $dom = Get-Content -LiteralPath $domPath -Raw
  Remove-Item -LiteralPath $domPath, $domErrorPath -Force -ErrorAction SilentlyContinue

  if ($domProcess.ExitCode -ne 0 -or ($dom -match 'data-export-error=')) {
    throw "Browser preflight failed. Check image paths, fonts, and the export contract."
  }

  Remove-Item -LiteralPath $tempPdfPath -Force -ErrorAction SilentlyContinue
  $arguments = @("--print-to-pdf=$tempPdfPath") + $commonArguments
  $argumentString = ($arguments | ForEach-Object { '"' + ($_ -replace '"', '\"') + '"' }) -join ' '
  $process = Start-Process -FilePath $browser -ArgumentList $argumentString -Wait -PassThru -NoNewWindow
  if ($process.ExitCode -ne 0) {
    throw "Native PDF export failed with exit code $($process.ExitCode)."
  }

  if (-not (Test-Path -LiteralPath $tempPdfPath)) {
    throw "PDF export did not produce the expected file: $tempPdfPath"
  }

  $pageSize = Get-PdfPageSizeMillimeters -PdfPath $tempPdfPath
  $widthDelta = [math]::Abs($pageSize.WidthMm - $expectedWidthMm)
  $heightDelta = [math]::Abs($pageSize.HeightMm - $expectedHeightMm)
  if ($widthDelta -gt 0.5 -or $heightDelta -gt 0.5) {
    throw "PDF export size mismatch. Expected $expectedWidthMm x $expectedHeightMm mm, got $([math]::Round($pageSize.WidthMm, 2)) x $([math]::Round($pageSize.HeightMm, 2)) mm."
  }

  Remove-Item -LiteralPath $outputPath -Force -ErrorAction SilentlyContinue
  Move-Item -LiteralPath $tempPdfPath -Destination $outputPath -Force

  Write-Output "Exported $outputPath"
}
finally {
  Remove-Item -LiteralPath $tempPdfPath -Force -ErrorAction SilentlyContinue
}
