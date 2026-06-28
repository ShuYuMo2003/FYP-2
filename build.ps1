$ErrorActionPreference = "Stop"

function Invoke-Checked {
    param(
        [Parameter(Mandatory = $true)]
        [string] $Exe,
        [Parameter(ValueFromRemainingArguments = $true)]
        [string[]] $Args
    )

    & $Exe @Args
    if ($LASTEXITCODE -ne 0) {
        throw "$Exe failed with exit code $LASTEXITCODE"
    }
}

New-Item -ItemType Directory -Force -Path "build" | Out-Null

$pdfPath = Join-Path "build" "thesis.pdf"
if (Test-Path -LiteralPath $pdfPath) {
    try {
        Remove-Item -LiteralPath $pdfPath -Force -ErrorAction Stop
    } catch {
        throw "Cannot overwrite build/thesis.pdf. Close any PDF viewer or editor preview that is using it, then run the build again."
    }
}

Invoke-Checked xelatex -interaction=nonstopmode -file-line-error -synctex=1 -output-directory=build thesis.tex
Invoke-Checked biber --input-directory build --output-directory build thesis
Invoke-Checked xelatex -interaction=nonstopmode -file-line-error -synctex=1 -output-directory=build thesis.tex
Invoke-Checked xelatex -interaction=nonstopmode -file-line-error -synctex=1 -output-directory=build thesis.tex

Write-Host "PDF written to build/thesis.pdf"
