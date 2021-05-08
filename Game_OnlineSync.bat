@echo off

:a
echo "Zum Beenden druecke STRG + C"
REM timeout 1
timeout 0

REM Updates remote_gamestate
.\PSFTP.EXE user@ip -P 22 -pw "PW" -b Game_Download.txt
echo "Gamestate Downloaded"
del script_test


if exist "reset_gamestate" (
del remote_gamestate
del gamestate
move reset_gamestate remote_gamestate
.\PSFTP.EXE user@ip -P 22 -pw "PW" -b Game_Upload.txt
echo "GAMESTATE RESET UPLOADED!!!"
) 
if exist "gamestate" (
del remote_gamestate
move gamestate remote_gamestate
.\PSFTP.EXE user@ip -P 22 -pw "PW" -b Game_Upload.txt
echo "GAMESTATE RESET UPLOADED!!!"
) 


goto :a
timeout 1

