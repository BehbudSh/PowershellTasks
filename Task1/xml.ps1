[int]$i = 0
while ($i -lt 10) {
    $i++
    $m = $i + $i
    $xml = [xml](Get-Content .\Xmlcontent.xml)
    $xml.SelectNodes("//th")| % { 
        ($_."#text" = $_."#text".Replace("Title", "Title$i"))
        ($_."#text" = $_."#text".Replace("Artist", "Artist$m"))
    }
    $xml.Save("C:\Users\Behbuds\Desktop\Powershell\tasks\task1\replaced.xml")
    
    Copy-Item -Path C:\Users\Behbuds\Desktop\Powershell\tasks\task1\replaced.xml -Destination  C:\Users\Behbuds\Desktop\Powershell\tasks\task1\copied\$i.xml
}