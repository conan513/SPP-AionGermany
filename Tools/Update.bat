@echo off
SET NAME=Single Player Project - AionGermany Updater
TITLE %NAME%
set mainfolder=%CD%
set installpath=SPP-AionGermany

:install
if exist "%mainfolder%\%installpath%\start_database.bat" goto update_process
cls
echo Downloading the base files for the repack...
echo.
"%mainfolder%\git\cmd\git.exe" clone --depth=1 https://github.com/conan513/SPP-AionGermany.git %installpath%
goto update_process

:update_process
cls
echo.
echo Create local git config file...
echo.
cd "%mainfolder%\%installpath%"
..\git\cmd\git.exe config user.name "SPP User"
..\git\cmd\git.exe config user.email sppuser@spp.com
echo.
echo Downloading the latest update...
echo.
..\git\cmd\git.exe pull https://github.com/conan513/SPP-AionGermany.git
echo.
echo Copy main *.bat files...
xcopy "%mainfolder%\%installpath%\Tools\Launch_Servers.bat" "%mainfolder%" /Y
xcopy "%mainfolder%\%installpath%\Tools\Update.bat" "%mainfolder%" /Y
xcopy "%mainfolder%\%installpath%\Tools\Update_fix_if_error.bat" "%mainfolder%" /Y
pause