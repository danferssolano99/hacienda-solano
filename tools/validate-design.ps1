param(
  [Parameter(Mandatory = $true)]
  [string]$InputHtml
)

$ErrorActionPreference = 'Stop'

if (-not (Test-Path -LiteralPath $InputHtml)) {
  throw "HTML file not found: $InputHtml"
}

$html = Get-Content -LiteralPath $InputHtml -Raw
$errors = @()

if ($html -notmatch 'data-export-canvas') { $errors += 'Missing data-export-canvas.' }
if ($html -notmatch 'data-export-width="\d+"') { $errors += 'Missing data-export-width.' }
if ($html -notmatch 'data-export-height="\d+"') { $errors += 'Missing data-export-height.' }
if ($html -match '#000000|#000([;"\s])') { $errors += 'Pure black is not allowed.' }
if ($html -match 'letter-spacing:\s*-\.0[5-9]em') { $errors += 'Negative letter-spacing exceeds the -0.05em limit.' }
if ($html -match '<img\b(?![^>]*\balt=)') { $errors += 'An image is missing alt text.' }
if ($html -match 'src="https?://') { $errors += 'Final image assets must use local paths.' }

if ($errors.Count -gt 0) {
  $errors | ForEach-Object { Write-Error $_ }
  exit 1
}

Write-Output "Design contract valid: $InputHtml"
