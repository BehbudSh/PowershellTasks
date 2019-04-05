param (
    [Parameter(Mandatory = $true)]
    [String[]]$PCname
)
Import-Module -Name C:\Users\Behbuds\Desktop\Powershell\Tasks\Task8\module.psm1
compinfo -compname $PCname 