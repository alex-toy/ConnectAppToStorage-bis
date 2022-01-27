################################################################
# resource Group :

#southcentralus centralus francecentral
$Global:RGLocation = "centralus"
"resource Group Location : " + $RGLocation

$Global:RGName = "cloud-demo"
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



################################################################
# SQL database :

$Global:SQLAdminUser = "alexadmin"
"SQL admin user : "  + $SQLAdminUser

$Global:SQLAdminPassword = "p@ssword1234"
"SQL Admin password : " + $SQLAdminPassword

$Global:SQLServerName = "alexei-server-test2"
"SQL server name : " + $SQLServerName

$Global:SQLLocation = "francecentral"
"SQL Location : " + $SQLLocation

$Global:SQLEnablePublicNetwork = "true"
"SQL enable public network : " + $SQLEnablePublicNetwork

$Global:SQLBDName = "alexei-db-test"
"DB name : " + $SQLBDName

$Global:FirewallRuleName = "azureaccess"
"Firewall Rule Name : " + $FirewallRuleName

$Global:ClientIPFirewallRuleName = "clientip"
"ClientIP Firewall Rule Name : " + $ClientIPFirewallRuleName



################################################################
# Storage :

$Global:SAName = "alexeisa"
"Storage Account name : " + $SAName

#southcentralus centralus francecentral
$Global:SALocation = $RGLocation
"Storage Account Location : " + $SALocation

$Global:SAKind = "BlockBlobStorage"
"Storage Account kind : " + $SAKind

$Global:SASKU = "Standard_LRS"
"Storage Account SKU : " + $SASKU

$Global:SCName = "images"
"Storage container name : " + $SCName

$Global:SCAuthMode = "login"
"Storage container auth mode : " + $SCAuthMode

$Global:SCPublicAccess = "container"
"Storage container public access : " + $SCPublicAccess
