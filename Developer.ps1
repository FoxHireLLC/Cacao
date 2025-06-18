# Description: Boxstarter Script  
# Author: Laurent Kempé
# Dev settings for my app development

Disable-UAC

# Get the base URI path from the ScriptToCall value
$bstrappackage = "-bootstrapPackage"
$helperUri = $Boxstarter['ScriptToCall']
$strpos = $helperUri.IndexOf($bstrappackage)
$helperUri = $helperUri.Substring($strpos + $bstrappackage.Length)
$helperUri = $helperUri.TrimStart("'", " ")
$helperUri = $helperUri.TrimEnd("'", " ")
$helperUri = $helperUri.Substring(0, $helperUri.LastIndexOf("/"))
$helperUri += "/scripts"
write-host "helper script base URI is $helperUri"

function executeScript {
    Param ([string]$script)
    write-host "executing $helperUri/$script ..."
    iex ((new-object net.webclient).DownloadString("$helperUri/$script"))
}

#--- Setting up Windows ---
executeScript "DirectorySetup.ps1";
executeScript "FileExplorerSettingsAdvanced.ps1";
executeScript "RemoveDefaultApps.ps1";
executeScript "Browsers.ps1";
executeScript "WindowsTools.ps1";
executeScript "Foxhire.ps1";
executeScript "CommonDevTools.ps1";
executeScript "AwsDevops.ps1";
executeScript "Docker.ps1";

#--- Visual Studio ---
choco install visualstudio2022community -y
Update-SessionEnvironment #refreshing env due to Git install

# choco install -y visualstudio2022-workload-netweb
# choco install -y visualstudio2022-workload-webbuildtools
# choco install -y visualstudio2022-workload-manageddesktop

choco install -y jetbrains-rider
choco install -y netfx-4.8-devpack

Enable-UAC
Enable-MicrosoftUpdate
Install-WindowsUpdate -MicrosoftUpdate -AcceptAll -AutoReboot
