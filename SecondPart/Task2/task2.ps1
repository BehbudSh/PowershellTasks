param(
    [Parameter(Mandatory = $true)]
    [string]$DisplayName,
    [Parameter(Mandatory = $true)]
    [string]$Direction,
    [Parameter(Mandatory = $true)]
    [string]$LocalPort,
    [Parameter(Mandatory = $true)]
    [string]$Protocol,
    [Parameter(Mandatory = $true)]
    [string]$Action
)
New-NetFirewallRule `
    -DisplayName $DisplayName `
    -Direction $Direction `
    -LocalPort $LocalPort `
    -Protocol $Protocol `
    -Action $Action