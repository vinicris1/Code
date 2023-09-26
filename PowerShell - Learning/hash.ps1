Clear-Host

$server = [ordered] @{Server1 = "127.0.0.1";Server2 = "127.0.0.2";Server3 = "127.0.0.3"}

$rpc = "abcdef"

$rpc -replace "def", "xyz"

$server["Server4"] = "127.0.0.4"

$server

$server.remove("Server4")

$server.Values