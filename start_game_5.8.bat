@echo off
set mainfolder=%CD%
set JAVA_HOME=%mainfolder%\Java7

del /s "%mainfolder%\AL-Game\data\static_data\items\item_presettings.xml" >nul 2>&1
del /s "%mainfolder%\AL-Game\data\static_data\items\item_presettings.xsd" >nul 2>&1

cd "%mainfolder%\AL-Game_5.8"
StartGS.bat
pause