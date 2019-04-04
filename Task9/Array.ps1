$path = 'C:\Users\Behbuds\Desktop\Powershell\Tasks\Task9\Array.csv'
$services = Get-Service |Where-Object {$PSItem.Name -like "w*" -and $PSItem.Status -eq 'running'}
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
$array | Export-Csv -Path $path -NoTypeInformation