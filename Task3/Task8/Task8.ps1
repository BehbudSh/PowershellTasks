$Identity = "ATL118\User"
$privilege = "SeServiceLogonRight"

$CarbonDllPath = "C:\Users\Behbuds\Downloads\Carbon-1.6.0\Carbon\bin\Carbon.dll"
[Reflection.Assembly]::LoadFile($CarbonDllPath)

[Carbon.Lsa]::GrantPrivileges( $Identity , $privilege)