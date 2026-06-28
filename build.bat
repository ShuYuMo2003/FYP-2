@echo off
setlocal

pushd "%~dp0"
if errorlevel 1 exit /b 1

if not exist build mkdir build

if exist build\thesis.pdf (
    del /f /q build\thesis.pdf >nul 2>nul
    if exist build\thesis.pdf (
        echo Cannot overwrite build\thesis.pdf.
        echo Close any PDF viewer or editor preview that is using it, then run build.bat again.
        exit /b 1
    )
)

xelatex -interaction=nonstopmode -file-line-error -synctex=1 -output-directory=build thesis.tex
if errorlevel 1 exit /b %errorlevel%

biber --input-directory build --output-directory build thesis
if errorlevel 1 exit /b %errorlevel%

xelatex -interaction=nonstopmode -file-line-error -synctex=1 -output-directory=build thesis.tex
if errorlevel 1 exit /b %errorlevel%

xelatex -interaction=nonstopmode -file-line-error -synctex=1 -output-directory=build thesis.tex
if errorlevel 1 exit /b %errorlevel%

echo PDF written to build\thesis.pdf
popd
endlocal
