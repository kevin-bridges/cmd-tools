@echo off
setlocal
set thisdate=7/10/2016
set thistime=23:55
:loop
Timeout /T 10 /NOBREAK > nul
rem echo date %thisdate%
rem date %thisdate%
echo time %thistime%
time %thistime%

goto loop
endlocal