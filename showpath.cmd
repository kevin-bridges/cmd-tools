@echo off
setlocal

for %%a in ("%path:;=";"%") do @echo %%~a

endlocal
