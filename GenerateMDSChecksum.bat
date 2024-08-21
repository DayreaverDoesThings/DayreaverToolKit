@echo off
:enterpath
set /p filepath="Enter the full path to the file: "

if not exist "%filepath%" (
    echo error: filepath does not exist.
    goto enterpath
)

if exist "checksum.txt" (
    del checksum.txt
)

certutil -hashfile "%filepath%" MD5
certutil -hashfile "%filepath%" MD5 > checksum.txt

pause
