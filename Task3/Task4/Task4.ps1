param(
    [Parameter(Mandatory = $true)]
    [string]$Path,
    [Parameter(Mandatory = $true)]
    [string]$ZipFile,
    [Parameter(Mandatory = $true)]
    [string]$SourceUri
)
$Destination = "$Path\7-Zip.msi"
#Create Folder with elif
if (Test-Path -Path $Path) {
    Write-Host "$Path Already exists" -ForegroundColor Green
}
else {
    New-Item -Path $Path -ItemType Directory
}
#Checking Command
if (Get-Command 'Invoke-Webrequest') {
    Invoke-WebRequest $SourceUri -OutFile $Destination
}
else {
    $WebClient = New-Object System.Net.WebClient
    $Webclient.DownloadFile($SourceUri, $Destination)
}
#Instalation 7-Zip
msiexec.exe /i "$Path\7-Zip.msi" /qn
Start-Sleep -Seconds 35
#Unzip files with 7-Zip
Get-ChildItem $ZipFile | ForEach-Object { & 7z.exe "x" $_.Fullname "-o$Path" }