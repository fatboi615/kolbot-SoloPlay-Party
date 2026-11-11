@echo off
rem Party Command - send one command to the party's host. It reads it after its current run.
set "DIR=%~dp0..\..\.soloplay\party"
if not exist "%DIR%" mkdir "%DIR%"
echo.
echo   end            end this game after the current run
echo   skip NAME      leave a run out (example: skip tristram) until you unskip it
echo   unskip NAME    put a run back on the list
echo   status         print what the party is doing in the host's console
echo.
set "CMD="
set /p CMD=Command: 
if "%CMD%"=="" exit /b
> "%DIR%\command.txt" echo %CMD%
echo Sent. The host picks it up after its current run.
timeout /t 4 >nul
