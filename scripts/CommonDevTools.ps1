# Install-WindowsFeature -Name Web-Server -IncludeManagementTools
Enable-WindowsOptionalFeature -Online -FeatureName "IIS-WebServerRole","IIS-WebServer" -All -NoRestart

# tools we expect devs across many scenarios will want
choco install -y git --package-parameters="'/GitAndUnixToolsOnPath /WindowsTerminal'"
choco install -y poshgit
choco install -y oh-my-posh
choco install -y gh
choco install -y github-desktop
choco install -y kdiff3
choco install -y SourceTree
choco install -y jetbrainstoolbox
choco install -y vscode
choco install -y notepadplusplus
choco install -y python
choco install -y nodejs
choco install -y sysinternals
choco install -y winscp
choco install -y rapidee
choco install -y putty
choco install -y sql-server-management-studio
choco install -y linqpad
choco install -y postman
choco install -y sql-server-2022
choco install -y sql-server-express
choco install -y rabbitmq
choco install -y sublimetext4

Install-Module -Force oh-my-posh
