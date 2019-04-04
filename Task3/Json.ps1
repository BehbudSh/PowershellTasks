param(
    [Parameter(Mandatory = $true)]
    [string]$PathToJson
)
$path = $PathToJson
$jsons = (Get-Content $path -raw)|ConvertFrom-Json
$gname = ($jsons.PSobject.BaseObject|gm -MemberType NoteProperty).Name
$jsons.PSobject.BaseObject |
    % {
    Write-Host $gname[2] "=" $_.RgName
    Write-Host $gname[1] "=" $_.Name
    Write-Host $gname[0] "=" $_.AppName
    echo ""    
}