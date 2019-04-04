param (
    [Parameter(Mandatory = $true)]
    [string]$newVariable)
    
$variableName = $newVariable.TrimStart().TrimEnd() 
if (!$variableName) {Write-Host  'Value is null or empty'}
# elseif ($NewVariable -match '^ *$') {
#    Write-Host 'Variable value is whitespace'
    
# }

elseif ($variableName) {
    Write-Host 'Value is not null'
    Write-Host "Variable value is $variableName"
    
}