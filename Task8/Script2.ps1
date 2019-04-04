param (
    [Parameter(Mandatory = $true)]
    [string[]]$pcname
)
Import-Module -Name C:\Users\Behbuds\Desktop\Powershell\Tasks\Task8\module.psm1
compinfo -compname $pcname 