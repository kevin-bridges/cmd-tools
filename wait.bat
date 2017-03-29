@echo off
setlocal

if "%1"=="" (
echo Please provide number of seconds to wait
goto :eof
)

Timeout /T %1 /NOBREAK > nul

endlocal
