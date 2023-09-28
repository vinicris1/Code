Clear-Host

$s = New-PSSession -VMName Server-Learn

Invoke-Command -Session $s -ScriptBlock {
$i = 0
while($true){
$i++
Write-Host "Count $i"
Sleep 1
if($i -ge 1000){
break
}
}
} -AsJob -JobName LongWork1


Get-Command *PSSession

Get-PSSession

Remove-PSSession $s

Disconnect-PSSession $s
Receive-PSSession $s


Get-Job LongWork1

Get-Job LongWork1 | Receive-Job

Get-Job Longwork1 | Stop-Job