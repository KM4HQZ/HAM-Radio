Install-Module PSWindowsUpdate -Force
#installs everything (newest version) along with required modules.
 
Install-WindowsUpdate -MicrosoftUpdate -AcceptAll -AutoReboot
#Will ensure that updates are downloaded, installed completely and then restarted.