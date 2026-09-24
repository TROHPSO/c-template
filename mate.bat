@echo off
:: Selon ton compilateur (GCC, CLANG, TCC)
SET "CC=clang"

SET "MATE=.\mate.h"
SET "URL=https://raw.githubusercontent.com/TomasBorquez/mate.h/refs/heads/master/mate.h"
SET "PWSH=C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe"

IF /I "%~1" == "setup" (
    IF NOT EXIST %MATE% (
        echo > %MATE%
        curl %URL% -o %MATE%
    ) ELSE IF EXIST %MATE% del %MATE%    
)

IF /I "%~1" == "build" ( %CC% .\mate.c -o .\mate.exe && .\mate )
IF /I "%~1" == "run" ( .\mate )
IF /I "%~1" == "remove-git" (
    %PWSH% -NoProfile -ExecutionPolicy Bypass -Command ^
    "attrib -H -S -R '.git' /S /D; Remove-Item -LiteralPath '.git' -Recurse -Force"
    exit /B
)