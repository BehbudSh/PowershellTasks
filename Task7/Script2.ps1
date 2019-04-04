param(
    
    [string]$Servicestatus,
    [string]$Servicename
)

Get-Service |where {$PSItem.Status -eq $Servicestatus -and $PSItem.Name -like $Servicename}