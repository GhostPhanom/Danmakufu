@echo off

REM Generate the script. Will overwrite any existing temp.txt
echo open battleship-eclipse.de> temp.txt
echo thomasgordon>> temp.txt
echo WieEsWohlSchmeckt>> temp.txt
echo get ./entwicklerdebug %1>> temp.txt
echo quit>> temp.txt

:a

REM Launch FTP and pass it the script
ftp -s:temp.txt

echo "Datei heruntergeladen. Wenn du das Script beenden sollst druecke STRG + C"

timeout 6
goto :a

REM Clean up.
del temp.txt
