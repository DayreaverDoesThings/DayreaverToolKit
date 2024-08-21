@echo off

if "%~1"=="" (
    echo This script is meant to be used with drag-and-drop only.
    echo Exiting...
    timeout /t 3 >nul
    exit /b
)

tar -cjf "%~n1.tar.bz2" -C "%~1" .
