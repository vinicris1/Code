Clear-Host

Get-Command -Module PSScheduledJob | Sort-Object Noun

$diario = New-JobTrigger -Daily -at 3am
$umavez = New-JobTrigger -Once -at (Get-Date).AddHours(1)
$semanal = New-JobTrigger -Weekly -DaysofWeek Monday -At 6pm
$minute = New-JobTrigger -Once -at (Get-Date).AddMinutes(1)

Register-ScheduledJob -Name Backup -Trigger $minute -ScriptBlock{
    Copy-Item 'E:\Desktop\Code\PowerShell - Learning\*.*' C:\Users\vinicius\Desktop\ -Recurse -Force
}

Get-ScheduledJob Backup | Get-JobTrigger

Unregister-ScheduledJob Backup