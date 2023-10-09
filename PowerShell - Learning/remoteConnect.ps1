Set-Item WSMan:\localhost\Client\TrustedHosts 'WIN-AUP71KNM6F7'

Get-Item WSMan:\localhost\Client\TrustedHosts

Test-Connection WIN-AUP71KNM6F7

$cred = Get-Credential users\administrator

New-PSSession -ComputerName WIN-AUP71KNM6F7 -Credential $cred

Enter-PSSession -Id 2