# $pcname = Get-ADComputer -Filter * -SearchBase $ou
# $ou = 'OU=computers,OU=Isolated from GPO,DC=atl,DC=lan'
param (
    [string]$compname
)
function compinfo ($compname) {
    if ($compname) {Get-WmiObject -Class win32_Computersystem -ComputerName $compname}
}