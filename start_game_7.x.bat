@echo off
set mainfolder=%CD%
set game_version=7.x
set JAVA_HOME=%mainfolder%\Java7

del /s "%mainfolder%\AL-Game_%game_version%\data\static_data\items\item_presettings.xml" >nul 2>&1
del /s "%mainfolder%\AL-Game_%game_version%\data\static_data\items\item_presettings.xsd" >nul 2>&1

cd "%mainfolder%\AL-Game_%game_version%"
StartGS.bat
pause