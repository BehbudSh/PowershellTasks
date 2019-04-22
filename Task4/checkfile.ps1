param(
    [Parameter(Mandatory = $true)]
    [string]$Path,
    [Parameter(Mandatory = $true)]
    [string]$Output,
    [Parameter(Mandatory = $true)]
    [string]$Url
)
#required variables
$Printer = "\\printsrv01.atl.lan\Xerox_7830_color -> (City_Point_IT)"
$StartTime = Get-Date
#check file system if file exists print it else download it
if (Test-Path -Path $Path ) { Get-Content $Path | Out-Printer -Name $Printer }
else { Invoke-WebRequest -Uri $Url -OutFile $Output }
#load processing time uyuyyuy
Write-Output "Time taken: $((Get-Date).Subtract($StartTime).Seconds) second(s)"
# D:\
# https://drive.google.com/uc?authuser=0&id=1PQExvoqNmGssbm4juVCRfx3v_wGeKvBa&export=download
# D:\Desktop_Files\Powershell\Task1\PowershellTasks\Task4\HelloWorld.txt