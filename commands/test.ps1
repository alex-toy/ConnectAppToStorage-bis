$test = "test.ps1 executed"

#nslookup myip.opendns.com resolver1.opendns.com

$Global:IP = (Invoke-WebRequest ifconfig.me/ip).Content.Trim()

#$IP