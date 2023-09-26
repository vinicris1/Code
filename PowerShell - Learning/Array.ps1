Clear-Host

$GoogleDNS = @("8.8.8.8","8.8.4.4")

$totalDns = $GoogleDNS.Count

Write-Host Pingando todos os $totalDns DNS do google
Test-Connection $GoogleDNS -count 1