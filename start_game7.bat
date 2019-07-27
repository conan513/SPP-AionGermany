@echo off
set mainfolder=%CD%
set game_version=7
set JAVA_HOME="%mainfolder%\Java7"

REM del /s "%mainfolder%\AL-Game%game_version%\data\static_data\items\item_presettings.xml" >nul 2>&1
REM del /s "%mainfolder%\AL-Game%game_version%\data\static_data\items\item_presettings.xsd" >nul 2>&1

cd "%mainfolder%\AL-Game%game_version%"
StartGS.bat
pause