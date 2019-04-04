$newobject = New-Object -TypeName psobject
$wmi = Get-WmiObject -Class win32_operatingsystem 
Add-Member -InputObject $newobject -MemberType NoteProperty  -Name Servicepack -Value $wmi.CSDVersion  
Add-Member -InputObject $newobject -MemberType NoteProperty  -Name Operatingsystem -Value $wmi.Caption
Add-Member -InputObject $newobject -MemberType NoteProperty  -Name Owner -Value "Behbud"