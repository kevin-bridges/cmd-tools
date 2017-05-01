@echo off
setlocal

echo Toggle Errorlevel
if [%1]==[0] goto clearerror
if [%1]==[1] goto seterror
echo."Please provide a 1 to throw an error or a 0 to clear the error"

goto end
:clearerror
exit /b 0
goto end

:seterror
exit /b 1
goto end

:end
endlocal
