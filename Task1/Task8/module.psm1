param (
    [String]$compname
)
function compinfo ($compname) {
    if ($compname) { Get-WmiObject -Class win32_Computersystem -ComputerName $compname }
}