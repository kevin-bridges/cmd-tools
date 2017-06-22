@ECHO OFF
setlocal
set defaultwait=180

if [%1]==[-h] goto help
if [%1]==[--help] goto help
if [%1]==[/?] goto help
if [%1]==[] goto :dontsleepnow
if [%1]==[-D] goto disable
if [%1]==[-P] goto loop

goto :EOF


:loop
set looptime=%2
if [%2]==[] set looptime=%defaultwait%
echo 
:: Setting dontsleep first before beginning wait process
goto :dontsleepnow

:innerloop
echo waiting ...
Timeout /T %looptime% /NOBREAK > nul
goto :dontsleepnow
goto :innerloop

:dontsleepnow
set LOGTIME=%TIME: =0%
echo Enabling Performance Power Setting - %LOGTIME%

:: Set power scheme to Performance instead of Balanced
powercfg -s 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c

if [%1]==[-P] goto innerloop
goto :EOF

:disable
set LOGTIME=%TIME: =0%
echo Enabling Balanced Power Setting - %LOGTIME%

:: Set power scheme back to Balanced
powercfg -s 381b4222-f694-41f0-9685-ff5bb260df2e
goto :EOF

:help
echo.
echo To disable sleep once, just run dontsleep.cmd
echo.
echo To disable sleep persistantly, use the -P param with 
echo.
echo To return to Balanced Power setting, use the -D param
echo optional time paramater (in seconds)
echo.
echo The default wait time between loops is 180 seconds
echo.
echo Examples:
echo.
echo   Enable Performance Power Setting once
echo.
echo     C:\^>dontsleep.cmd
echo.
echo   Enable Performance Power Setting Persistantly without/with default wait
echo   time intervals between setting
echo     C:\^>dontsleep -P
echo     C:\^>dontsleep -P 300
echo.
echo   Enable Balanced Power Setting
echo     C:\^>dontsleep -D
echo.
goto :EOF

endlocal