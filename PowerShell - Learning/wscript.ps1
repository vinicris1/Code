$wshell = New-Object -ComObject WScript.Shell

$wshell | Get-Member

$wshell.Popup("Test")

$wshell.run("Notepad")
$wshell.AppActivate("Notepad") #coloca o notepad em evidência
Start-Sleep 1
$wshell.SendKeys("Test")