@echo off
set mainfolder=%CD%
set NAME=SingleCore Database
TITLE %NAME%

:start_database
cls
if not exist "%mainfolder%\Database\bin\mysqld.exe" goto install_database
cd %mainfolder%\Database
bin\mysqld --defaults-file=my-large.ini --console --standalone
exit

:install_database
cls
echo Installing database server...
echo.
cd "%mainfolder%"
"%mainfolder%\Tools\7za.exe" e -y -spf "%mainfolder%\Tools\Database.7z"
goto start_database