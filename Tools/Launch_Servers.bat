@echo off
SET NAME=SPP-AionGermany
TITLE %NAME%
set mainfolder=%CD%
set game_version=7.x

:menu
set installpath=SPP-AionGermany
cls
echo #######################################################
echo # Single Player Project - AionGermany launcher       #
echo # https://www.patreon.com/conan513                    #
echo #######################################################
echo.
echo 1 - Start Aion 5.8 server (stable)
echo 2 - Start Aion %game_version% server (work in progress)
echo.
set /P menu=Enter a number: 
if "%menu%"=="1" (goto 5.8)
if "%menu%"=="2" (goto %game_version%)

:5.8
set worldserver=start_game_5.8.bat
goto start_server

:%game_version%
set worldserver=start_game_%game_version%.bat
goto start_server

:start_server
if not exist "%mainfolder%\%installpath%\start_database.bat" goto not_installed_error
cd "%mainfolder%\%installpath%"
echo Starting the servers...
echo Please wait all 4 window before start the game.
start start_database.bat
ping -n 15 127.0.0.1>nul
start start_login.bat
ping -n 5 127.0.0.1>nul
start start_chat.bat
ping -n 5 127.0.0.1>nul
start %worldserver%
ping -n 5 127.0.0.1>nul
echo Servers started.
echo.
ping -n 5 127.0.0.1>nul
exit

:not_installed_error
cls
echo Looks like %name% repack is not installed.
echo Please use the Update.bat to install it first.
echo.
pause
goto menu
