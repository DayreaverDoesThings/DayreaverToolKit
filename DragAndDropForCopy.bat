@echo off

if "%~1"=="" (
    echo This script is meant to be used with drag-and-drop only.
    echo Exiting...
    timeout /t 3 >nul
    exit /b
)

xcopy "%~1" "%~1_copy" /E /I /H /K /Y