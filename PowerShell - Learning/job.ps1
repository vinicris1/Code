Workflow JobTest{
    while(1){
        (Get-Date).ToString() + ' Slow Script'
        Start-Sleep -Seconds 2
    }
}

$wfjob = JobTest -AsJob

Receive-Job $wfjob
Suspend-Job $wfjob
Resume-Job $wfjob
Stop-Job $wfjob