$process = Get-Process -Id $pid
$process.PriorityClass = 'Idle'

$root = 'http://IP ADDRESS:PORT/admin/stats'
$user = "admin"
$pass= "adminpassword"
$secpasswd = ConvertTo-SecureString $pass -AsPlainText -Force
$credential = New-Object System.Management.Automation.PSCredential($user, $secpasswd)

$result = Invoke-RestMethod $root -Credential $credential

Clear-Content ('C:\RadioDJv2\Listeners.txt')
$result.icestats.listeners | Add-Content ('C:\RadioDJv2\Listeners.txt')
Exit



