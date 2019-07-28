@echo off
set mainfolder=%CD%
set JAVA_HOME="%mainfolder%\Java7"

:start
REM del /s "%mainfolder%\AL-Game5\data\static_data\items\item_presettings.xml" >nul 2>&1
REM del /s "%mainfolder%\AL-Game5\data\static_data\items\item_presettings.xsd" >nul 2>&1
if not exist "%mainfolder%\AL-Game5\data\static_data\items\item_templates.xml" goto extract_items
cd "%mainfolder%\AL-Game5"
StartGS.bat
pause

:extract_items
cd "%mainfolder%\AL-Game5\data\static_data\items"
"%mainfolder%\Tools\7za.exe" e -y -spf item_templates.7z
cd "%mainfolder%"
goto start