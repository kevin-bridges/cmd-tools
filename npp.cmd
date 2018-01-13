@echo off
setlocal

:: If installed in program files
if exist "C:\Program Files\Notepad++\notepad++.exe" (
	start /b "Notepad++" "C:\Program Files\Notepad++\notepad++.exe" %*
	goto end
)

:: If installed in program files x86
if exist "C:\Program Files(86)\Notepad++\notepad++.exe" (
	start /b "Notepad++" "C:\Program Files(86)\Notepad++\notepad++.exe" %*
	goto end
)

:: If installed by Chocolatey
notepad++ %*

endlocal

:end
