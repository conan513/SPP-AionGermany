@echo off
SET NAME=Single Player Project - AionGermany Updater
TITLE %NAME%
cls
cd SPP-AionGermany
..\git\cmd\git.exe reset --hard
echo.
pause