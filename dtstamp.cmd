@echo off

:: Set's datestamp and timestamp env variables
set datestamp=%date:~4,2%%date:~7,2%%date:~10,4%
set timestamp=%time:~0,2%%time:~3,2%%time:~6,2%
