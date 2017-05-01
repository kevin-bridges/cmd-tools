@echo off
setlocal

echo Toggle Errorlevel
if [%1]==[0] goto clear_error
if [%1]==[1] goto set_error
echo."Please provide a 1 to throw an error or a 0 to clear the error"

goto end
:clear_error
exit /b 0
goto end

:set_error
exit /b 1
goto end

:end
endlocal
