Param(
    [Parameter(Mandatory = $true)]
    [String]$Path,
    [Parameter(Mandatory = $true)]
    [String]$NameLike,
    [Parameter(Mandatory = $true)]
    [String]$StatusEq
)
$services = Get-Service | Where-Object { $PSItem.Name -like $NameLike -and $PSItem.Status -eq $StatusEq }
$array = @()
foreach ($service in $services) {
    $name = $service.name
    $status = $service.status
    $hash = [ordered]@{
        "name"   = $name
        "status" = $status
    }
    $array += New-Object -TypeName psobject -Property $hash
}
$array | Export-Csv -Path $Path -NoTypeInformation