param(
    [Parameter(Mandatory = $true)]
    [string]$PathToJson,
    [Parameter(Mandatory = $true)]
    [string]$PathToSave
)
$json = Get-Content -Path $PathToJson | ConvertFrom-Json
$attributes = $json.glossary.GlossDiv.GlossList.GlossEntry
foreach ($attribute in $attributes) { $attributes.SortAs = 'OMPL' }
$json | ConvertTo-Json -Depth 100 | Out-File $PathToSave