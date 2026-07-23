param(
  [Parameter(Mandatory = $true)]
  [string]$InputHtml,
  [Parameter(Mandatory = $true)]
  [string]$OutputPng
)

$ErrorActionPreference = "Stop"

$inputPath = (Resolve-Path -LiteralPath $InputHtml).Path
$outputPath = [System.IO.Path]::GetFullPath($OutputPng)
$outputDirectory = Split-Path -Parent $outputPath
$source = Get-Content -LiteralPath $inputPath -Raw

$widthMatch = [regex]::Match($source, 'data-export-width="(\d+)"')
$heightMatch = [regex]::Match($source, 'data-export-height="(\d+)"')

if (-not $widthMatch.Success -or -not $heightMatch.Success) {
  throw "Input HTML must declare data-export-width and data-export-height on its canvas."
}

if ($source -match '<img\b[^>]*\bsrc\s*=\s*["'']\s*["'']') {
  throw "Input HTML contains an image with an empty src. Add the real local asset before exporting."
}

if (-not (Test-Path -LiteralPath $outputDirectory)) {
  New-Item -ItemType Directory -Path $outputDirectory | Out-Null
}

$nodeVersion = $null
try {
  $nodeVersion = (& node --version 2>$null)
}
catch {
}

if (-not $nodeVersion) {
  throw "Node.js is required for Playwright export. Install Node.js and try again."
}

$uri = [System.Uri]::new($inputPath).AbsoluteUri + "?export=1"
$command = @(
  "-y",
  "playwright",
  "screenshot",
  "--browser",
  "chromium",
  "--viewport-size",
  "$($widthMatch.Groups[1].Value),$($heightMatch.Groups[1].Value)",
  "--color-scheme",
  "light",
  "--wait-for-timeout",
  "3000",
  $uri,
  $outputPath
)

& npx @command
if ($LASTEXITCODE -ne 0) {
  throw "Playwright PNG export failed with exit code $LASTEXITCODE."
}

if (-not (Test-Path -LiteralPath $outputPath)) {
  throw "Playwright PNG export did not produce the expected file: $outputPath"
}

Write-Output "Exported $outputPath"
