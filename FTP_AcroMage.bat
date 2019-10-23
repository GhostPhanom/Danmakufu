@echo off

REM Generate the script. Will overwrite any existing temp.txt
echo open battleship-eclipse.de> get_temp.txt
echo thomasgordon>> get_temp.txt
echo WieEsWohlSchmeckt>> get_temp.txt
echo get ./remote_gamestate %1>> get_temp.txt
echo quit>> get_temp.txt

REM Generate the script. Will overwrite any existing temp.txt
echo open battleship-eclipse.de> set_temp.txt
echo thomasgordon>> set_temp.txt
echo WieEsWohlSchmeckt>> set_temp.txt
echo binary>> set_temp.txt
echo delete ./remote_gamestate %1>> set_temp.txt
echo set ./gamestate %1>> set_temp.txt
echo rename ./gamestate ./remote_gamestate %1>> set_temp.txt
echo quit>> set_temp.txt

:a
timeout 6

REM Launch FTP and pass it the script
ftp -s:get_temp.txt
echo "Datei heruntergeladen. Wenn du das Script beenden sollst druecke STRG + C"

rem if not exist gamestate(
rem 	goto :a
rem )

ftp -s:set_temp.txt
echo "Datei hochgeladen. Wenn du das Script beenden sollst druecke STRG + C"
del gamestate

goto :a

timeout 6

REM Clean up.
del get_temp.txt
del set_temp.txt
