#required variables

$printer = "\\printsrv01.atl.lan\Xerox_7830_color -> (City_Point_IT)"
$path = "C:\Users\Behbuds\Desktop\txtfiles\hellworld.txt"
$url = "https://drive.google.com/uc?authuser=0&id=1PQExvoqNmGssbm4juVCRfx3v_wGeKvBa&export=download"
$output = "C:\users\behbuds\Desktop\status\Helloworld.txt"
$start_time = Get-Date


 
#check file system if file exists print it else download it
 
if (Test-Path -Path $path ) {Get-Content $path|Out-Printer -Name $printer}

else {Invoke-WebRequest -Uri $url -OutFile $output}
    
#load processing time

Write-Output "Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)"