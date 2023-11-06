@echo off
setlocal enabledelayedexpansion
title SecureConnect VPN 3.11.9

:input
set /p user_input=Run a command for setup: 

if "%user_input%" == "execute database 517" (
    goto 517
) else if "%user_input%" == "setup SCVPN" (
    echo setting up
    goto s
) else if "%user_input%" == "exit" (
    echo Exiting the program.
    exit /b 0
) else (
    echo Invalid input. Please try again.
    goto input
)

endlocal
:517
echo ran 517
run database.bat
::if you are a batch logger make them run a file named database.py (code the script and put it in this folder)
goto input
:s
::this will run any script you put in here
run YOURSCRIPT.EXE
goto input