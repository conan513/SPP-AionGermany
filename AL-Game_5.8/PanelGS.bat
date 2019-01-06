@ECHO off
TITLE Aion German - Game Server Panel
:MENU
CLS
ECHO.
ECHO   ^*--------------------------------------------------------------------------^*
ECHO   ^|                Aion German - Game Server Panel                    	   ^|
ECHO   ^*--------------------------------------------------------------------------^*
ECHO   ^|                                                                          ^|
ECHO   ^|    1 - Development                                       4 - Quit        ^|
ECHO   ^|    2 - Production X1                                                     ^|
ECHO   ^|    3 - Production X2                                                     ^|
ECHO   ^|                                                                          ^|
ECHO   ^*--------------------------------------------------------------------------^*
ECHO.

SET MODE=PRODUCTION
SET JAVA_OPTS=-Xms4096m -Xmx4096m -server
CALL StartGS.bat
