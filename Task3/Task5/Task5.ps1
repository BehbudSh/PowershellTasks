function CheckUrl([string]$url) {
    $url.Replace("http://" , "https://")
}
$HostHeader = "http://google.com"
$SiteName = CheckUrl $HostHeader
Write-Host $SiteName