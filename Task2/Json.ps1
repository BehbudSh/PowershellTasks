$json = Get-Content -Path C:\Users\Behbuds\Desktop\Powershell\Tasks\Task2\Original.json|ConvertFrom-Json
$attributes = $json.glossary.GlossDiv.GlossList.GlossEntry
foreach ($attribute in $attributes) {$attributes.SortAs = 'OMPL'}
$json |ConvertTo-Json -Depth 100 |Out-File C:\Users\Behbuds\Desktop\Powershell\Tasks\Task2\changed.json