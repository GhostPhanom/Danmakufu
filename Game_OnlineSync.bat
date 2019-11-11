@echo off

:a
echo "Zum Beenden druecke STRG + C"
timeout 1

REM Updates remote_gamestate
.\PSFTP.EXE thomasgordon@battleship-eclipse.de -P 61111 -pw "WieEsWohlSchmeckt" -b Game_Download.txt
echo "Gamestate Downloaded"

if exist "reset_gamestate" (
del remote_gamestate
del gamestate
move reset_gamestate remote_gamestate
.\PSFTP.EXE thomasgordon@battleship-eclipse.de -P 61111 -pw "WieEsWohlSchmeckt" -b Game_Upload.txt
echo "GAMESTATE RESET UPLOADED!!!"
) 
if exist "gamestate" (
del remote_gamestate
move gamestate remote_gamestate
.\PSFTP.EXE thomasgordon@battleship-eclipse.de -P 61111 -pw "WieEsWohlSchmeckt" -b Game_Upload.txt
echo "GAMESTATE RESET UPLOADED!!!"
) 


goto :a
timeout 1

15:54