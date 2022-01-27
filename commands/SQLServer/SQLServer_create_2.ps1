$Global:LocalPublicIP = (Invoke-WebRequest ifconfig.me/ip).Content.Trim()
"Local Public IP : " + $LocalPublicIP

#set your computer's public Ip address to the server's firewall
az sql server firewall-rule create `
    -g $RGName `
    -s $SQLServerName `
    -n $ClientIPFirewallRuleName `
    --start-ip-address $LocalPublicIP `
    --end-ip-address $LocalPublicIP `
    --verbose

#create the database itself
az sql db create `
    --name $SQLBDName `
    --resource-group $RGName `
    --server $SQLServerName `
    --tier Basic `
    --verbose





