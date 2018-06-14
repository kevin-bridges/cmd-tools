@echo off
if [%1]==[/s] set skip=true
if [%1]==[/silent] set skip=true


:: Set's datestamp and timestamp env variables
set datestamp=%date:~4,2%%date:~7,2%%date:~10,4%
set timestamp=%time:~0,2%%time:~3,2%%time:~6,2%

if [%skip%]==[true] goto bottom
echo %%datestamp%% is %datestamp%
echo %%timestamp%% is %timestamp%

:bottom

set skip=

:EOF
