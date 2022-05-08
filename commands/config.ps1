################################################################
# resource Group :

#southcentralus centralus francecentral
$Global:RGLocation = "francecentral"
"resource Group Location : " + $RGLocation

$Global:RGName = "connect-RG"
"Resource Group Name : " + $RGName



################################################################
# VM :

$Global:VMName = "linux-vm-west"
"VM name : " + $VMName

$Global:ImageName = "UbuntuLTS"
"Image name : " + $ImageName

$Global:Size = "Standard_B1s"
"Size : " + $Size

$Global:AdminUsername = "alexadmin"
"Admin user name : " + $AdminUsername

$Global:Port = "80"
"Port : " + $Port

$Global:storageSku = "Standard_HDD"
"storageSku : "  + $storageSku



################################################################
# Secret key :

$Global:SSHKeyName = "mySSHKey"
"Secret key name : "  + $SSHKeyName

$Global:SAKey = "SAKey"
"Storage Account key name : "  + $SAKey



################################################################
# SQL database :

$Global:SQLAdminUser = "alexadmin"
[System.Environment]::SetEnvironmentVariable('SQLAdminUser',$SQLAdminUser,[System.EnvironmentVariableTarget]::Machine)
"SQL admin user : "  + $SQLAdminUser

$Global:SQLAdminPassword = "p@ssword1234"
[System.Environment]::SetEnvironmentVariable('SQLAdminPassword',$SQLAdminPassword,[System.EnvironmentVariableTarget]::Machine)
"SQL Admin password : " + $SQLAdminPassword

$Global:SQLServerName = "alexei-server-test2"
[System.Environment]::SetEnvironmentVariable('SQLServerName',$SQLServerName + ".database.windows.net",[System.EnvironmentVariableTarget]::Machine)
"SQL server name : " + $SQLServerName

$Global:SQLLocation = "francecentral"
"SQL Location : " + $SQLLocation

$Global:SQLEnablePublicNetwork = "true"
"SQL enable public network : " + $SQLEnablePublicNetwork

$Global:SQLBDName = "alexei-db-test"
[System.Environment]::SetEnvironmentVariable('SQLBDName',$SQLBDName,[System.EnvironmentVariableTarget]::Machine)
"DB name : " + $SQLBDName

$Global:FirewallRuleName = "azureaccess"
"Firewall Rule Name : " + $FirewallRuleName

$Global:ClientIPFirewallRuleName = "clientip"
"ClientIP Firewall Rule Name : " + $ClientIPFirewallRuleName

$Global:Tier = "Basic"
"Tier : " + $Tier



################################################################
# Storage Account :

$Global:SAName = "alexeisa"
[System.Environment]::SetEnvironmentVariable('SAName',$SAName,[System.EnvironmentVariableTarget]::Machine)
"Storage Account name : " + $SAName

#southcentralus centralus francecentral
$Global:SALocation = $RGLocation
"Storage Account Location : " + $SALocation

$Global:SAKind = "BlockBlobStorage"
"Storage Account kind : " + $SAKind

$Global:SASKU = "Standard_LRS"
"Storage Account SKU : " + $SASKU

$Global:SCName = "images"
[System.Environment]::SetEnvironmentVariable('SCName',$SCName,[System.EnvironmentVariableTarget]::Machine)
"Storage container name : " + $SCName

$Global:SCAuthMode = "login"
"Storage container auth mode : " + $SCAuthMode

$Global:SCPublicAccess = "container"
"Storage container public access : " + $SCPublicAccess
