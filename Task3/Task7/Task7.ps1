Import-Module 'Carbon'
Install-User -Username "User" -Description "LocalAdmin" -FullName "Local Admin by Powershell" -Password "Password01"
Add-GroupMember -Name 'Пользователи' -Member 'User'