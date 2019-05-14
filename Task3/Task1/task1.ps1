param (
    [Parameter(Mandatory = $true)]
    [string]$ResourceGroupname,
    [Parameter(Mandatory = $true)]
    [string]$StorageAccountName
)
$ConnectionString = (Get-AzureRmStorageAccount -ResourceGroupName $ResourceGroupname -Name $StorageAccountName).Context.ConnectionString
$Ctx = New-AzureStorageContext -ConnectionString $ConnectionString 
$ContainerName = (Get-AzureStorageContainer -Name *bootdiagnostics* -Context $Ctx).Name |Select-Object -First 1
$Blobs = Get-AzureStorageBlob -Container $ContainerName -Context $ctx  
$DestinationPath = 'D:\DEMO'  
foreach ($Blob in $Blobs) {  
    New-Item -ItemType Directory -Force -Path $DestinationPath  
    Get-AzureStorageBlobContent -Container $ContainerName -Blob $Blob.Name -Destination $DestinationPath -Context $Ctx  
}
Get-content -Path D:\DEMO\*.serialconsole.log | Select-String -Pattern "EVENT" -CaseSensitive