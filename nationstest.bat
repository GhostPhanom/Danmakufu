rem echo "https://www.nationstates.net/cgi-bin/api.cgi?nation=herr_dumreese_geheimisten&q=legislation" > nations.txt
rem bitsadmin.exe /transfer "JobName" http://download.url/here.exe C:\destination\here.exe
rem c:\msxsl.exe c:\myXML.xml c:\myXSLT.xsl > C:\Users\A65418493\Desktop\nations.xml
@echo off
cls
echo.
echo.
C:\Windows\SysWOW64\WindowsPowerShell\v1.0\Powershell -executionpolicy bypass -file nationstest.ps1 %1 %2 %3
th_dnh.exe
echo.
rem pause 

