# Foxhire specific installation
Install-Module -Name Microsoft.WinGet.Client -Force -Scope AllUsers

# tools 
choco install -y openvpn
choco install -y cyberduck
choco install -y slack

winget install "Nextiva.NextivaONE" --accept-source-agreements --disable-interactivity --silent --accept-package-agreements --force
