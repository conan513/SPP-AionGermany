@echo off
set mainfolder=%CD%
set game_version=7.x

echo Importing database updates...
ping -n 10 127.0.0.1>nul
set database=al_server_gs
for %%i in ("%mainfolder%\AL-Game_%game_version%\sql\update\*sql") do if %%i neq "%mainfolder%\AL-Game_%game_version%\sql\update\*sql" if %%i neq "%mainfolder%\AL-Game_%game_version%\sql\update\*sql" if %%i neq "%mainfolder%\AL-Game_%game_version%\sql\update\*sql" echo %%i & "%mainfolder%\Database\bin\mysql.exe" --defaults-extra-file="%mainfolder%\Database\connection.cnf" --default-character-set=utf8 -f --local-infile %database% --database=%database% < %%i
set database=al_server_gs_5_8
for %%i in ("%mainfolder%\AL-Game_5.8\sql\updates\*sql") do if %%i neq "%mainfolder%\AL-Game_5.8\sql\updates\*sql" if %%i neq "%mainfolder%\AL-Game_5.8\sql\updates\*sql" if %%i neq "%mainfolder%\AL-Game_5.8\sql\updates\*sql" echo %%i & "%mainfolder%\Database\bin\mysql.exe" --defaults-extra-file="%mainfolder%\Database\connection.cnf" --default-character-set=utf8 -f --local-infile %database% --database=%database% < %%i
exit