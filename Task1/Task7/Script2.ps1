param(
    
    [string]$Servicestatus,
    [string]$Servicename
)
Get-Service | Where-Object { $PSItem.Status -eq $Servicestatus -and $PSItem.Name -like $Servicename }