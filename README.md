# GetListeners-RadioDJ

Save the listener count for an Shoutcast/Icecast stream to Listeners.txt for use in RadioDJ.

# Usage

 - Download GetListeners-Icecast.ps1 or GetListeners-Shoutcast.ps1,
    depending on which server you are using.
    
 - **Shoutcast:** Replace http://IP ADDRESS:PORT/ with your station's info, and edit the path of C:\RadioDJv2\Listeners.txt if needed
           **Icecast:** Replace http://IP ADDRESS:PORT/ with your station's info, set $user and $pass to your admin username and password, and edit the path of C:\RadioDJv2\Listeners.txt if needed
 - Run Powershell as administrator and run the command to allow
    executing the script:
    
        Set-ExecutionPolicy unrestricted

 - Test it by running .\GetListeners-Icecast.ps1 and/or
    .\GetListeners-Shoutcast.ps1 under the path you saved it in
    Powershell and check the value of C:\RadioDJv2\Listeners.txt to see
    if it worked.

 - Under Task Scheduler, create a new task set to Run whether user is
    logged in or not, Do not store password, and Hidden. Under Triggers,
    set it to run Daily and repeat the task every 5 minutes for a
    duration of Indefinitely. Under Actions, start the program
    *powershell* using the arguments *-File
    C:\Path\to\script\GetListeners-Icecast.ps1*, and/or
    *C:\Path\to\script\GetListeners-Shoutcast.ps1*.

 - Enjoy!
