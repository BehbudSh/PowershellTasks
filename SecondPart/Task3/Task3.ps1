$Password = Get-Credential -UserName Behbud -Message "Enter Password For User"
Import-PfxCertificate -FilePath D:\test1.pfx -CertStoreLocation Cert:\LocalMachine\My -Password $Password.Password