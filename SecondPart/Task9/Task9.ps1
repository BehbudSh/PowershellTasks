$Path = 'D:\Task9'
New-Item -ItemType Directory -Path $Path
$acl = Get-Acl $Path
$AccessRule = New-Object System.Security.AccessControl.FileSystemAccessRule("User", "FullControl", "ContainerInherit,ObjectInherit", "None", "Allow")
$acl.SetAccessRule($AccessRule)
$acl | Set-Acl $Path