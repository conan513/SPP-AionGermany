@ECHO off
TITLE Aion Lightning - Chat Server Panel
:MENU
CLS
ECHO.
ECHO   ^*--------------------------------------------------------------------------^*
ECHO   ^|                    Aion Lightning - Chat Server Panel                    ^|
ECHO   ^*--------------------------------------------------------------------------^*
ECHO   ^|                                                                          ^|
ECHO   ^|    1 - Development                                       3 - Quit        ^|
ECHO   ^|    2 - Production                                                        ^|
ECHO   ^|                                                                          ^|
ECHO   ^*--------------------------------------------------------------------------^*
ECHO.

SET MODE=PRODUCTION
SET JAVA_OPTS=-Xms512m -Xmx1024m -client
CALL StartCS.bat
