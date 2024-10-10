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
executeScript "FileExplorerSettings.ps1";
executeScript "BaseSetup.ps1";

#--- Visual Studio ---
choco install visualstudio2019professional -y --package-parameters "--add Microsoft.VisualStudio.Component.Git" 
Update-SessionEnvironment #refreshing env due to Git install

#--- Visual Studio extensions ---
choco install -y gitdiffmargin

#--- Get personal projects ---
executeScript "PersonalProjects.ps1";

#--- Configure Windows environment .gitconfig, PowerShell ---
executeScript "ConfigureWindowsEnvironment.ps1";

Enable-UAC
Enable-MicrosoftUpdate
Install-WindowsUpdate -acceptEula
