param(
    [Parameter(Mandatory = $true)]
    [string]$RG,
    [Parameter(Mandatory = $true)]
    [string]$SA,
    [Parameter(Mandatory = $true)]
    [string]$VMname,
    [Parameter(Mandatory = $true)]
    [string]$LocalPath
)
$vm=Get-AzureRmVM -ResourceGroupName $RG -Name $VMname
Set-AzureRmVMBootDiagnostics -VM $vm -ResourceGroupName $RG -StorageAccountName $SA -Enable
Get-AzureRmVMBootDiagnosticsData -ResourceGroupName $RG -Name $vm.Name -Windows -LocalPath $LocalPath
Get-Content -Path $LocalPath*.serialconsole.log |Select-String -Pattern 'EVENT' -CaseSensitive