param([Parameter(Mandatory = $true)]
    [String]$PathToXml, 
    [Parameter(Mandatory = $true)]
    [String]$PathToSave)
[int]$i = 0
while ($i -lt 10) {
    $i++
    $m = $i + $i
    $xml = [xml](Get-Content $PathToXml)
    $xml.SelectNodes("//th") | ForEach-Object { 
        ($_."#text" = $_."#text".Replace("Title", "Title$i"))
        ($_."#text" = $_."#text".Replace("Artist", "Artist$m"))
    }
    $xml.Save("$PathToSave\replaced.xml")
    
    Copy-Item -Path "$PathToSave\replaced.xml" -Destination  "$PathToSave\$i.xml"
}