Import-Module PowerShellAccessControl -Force
Get-Service spooler | Get-EffectiveAccess -Principal ATL118\User
Get-Service spooler | Add-AccessControlEntry -ServiceAccessRights Start,Stop -Principal ATL118\User