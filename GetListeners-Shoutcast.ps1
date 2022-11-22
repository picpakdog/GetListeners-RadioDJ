$process = Get-Process -Id $pid
$process.PriorityClass = 'Idle'

$doc = New-Object System.Xml.XmlDocument
$doc.Load("http://IP ADDRESS:PORT/stats?sid=1")
Clear-Content ('C:\RadioDJv2\Listeners.txt')
$doc.SHOUTCASTSERVER.CURRENTLISTENERS | Add-Content ('C:\RadioDJv2\Listeners.txt')
Exit