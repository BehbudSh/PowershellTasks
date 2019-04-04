function create-directory ($foldernames) {
    foreach ($foldername in $foldernames) {New-Item -Name $foldername -ItemType Directory}
}
