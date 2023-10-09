Clear-Host

#também pode ser utilizado PSWA para acessar via internet

$cred = Get-Credential users\administrator
$rede = New-PSSession -ComputerName (Get-Content 'E:\Desktop\Code\PowerShell - Learning\servers.txt' ) -Credential $cred

#Utilizando get-service em todos os computadores da rede, informados no servers.txt

Invoke-Command $rede {Get-Service}

$info = Get-WmiObject -Class Win32_ComputerSystem
$info.Name