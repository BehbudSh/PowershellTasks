function change ([string]$Path, [string]$FirstString, [string]$SecondSctring) {
    $Path = get-content $Path
    $FirstString.Replace("abcd", "efg")
    $SecondSctring.Replace("1234", "5678")
}
