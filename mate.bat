@echo off
:: Selon ton compilateur (GCC, CLANG, TCC)
SET "CC=clang" 
SET "MATE=.\mate.h"
SET "URL=https://raw.githubusercontent.com/TomasBorquez/mate.h/refs/heads/master/mate.h"

IF /I "%~1" == "setup" (
    IF NOT EXIST %MATE% (
        echo > %MATE%
        curl %URL% -o %MATE%
    ) ELSE IF EXIST %MATE% del %MATE%    
)

IF /I "%~1" == "build" ( %CC% .\mate.c -o .\mate.exe && .\mate )
IF /I "%~1" == "run" ( .\mate )