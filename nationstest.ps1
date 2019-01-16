Clear-Content $pwd\values.xml
$ie = New-Object -com InternetExplorer.Application
$ie.visible=$true
$ie.navigate("https://www.nationstates.net/cgi-bin/api.cgi?nation=herr_dumreese_geheimisten&q=legislation")
while($ie.ReadyState -ne 4) {start-sleep -m 100}
$ie.Document.parentWindow.execScript("var JSIEVariable = new XMLSerializer().serializeToString(document);", "javascript")
$obj = $ie.Document.parentWindow.GetType().InvokeMember("JSIEVariable", 4096, $null, $ie.Document.parentWindow, $null)
$HTMLDoc = $obj.ToString()
Add-Content -Encoding Ascii 'values.xml' $HTMLDoc
$ie.Quit()
