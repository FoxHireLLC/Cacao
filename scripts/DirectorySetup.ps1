# Full folder paths
$folders = @(
    "C:\Temp",
    "C:\Source"
)

# Create folders
foreach ($folder in $folders) {
    if (-not (Test-Path $folder)) {
        New-Item -Path $folder -ItemType Directory -Force
        Write-Output "Created: $folder"
    } else {
        Write-Output "Already exists: $folder"
    }
}
