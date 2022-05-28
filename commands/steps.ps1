################################################################
# Variables :

#southcentralus centralus francecentral
$Global:RGName = "flask-app-rg"
$Global:RGLocation = "francecentral"
$Global:application_path = "app"
$Global:var_path = "app\var.cfg"

# Secret key :
$Global:SSHKeyName = "mySSHKey"
$Global:SAKey = "SAKey"



#######################################################################
# Steps :

az group create --name $RGName --location $RGLocation

."commands\SQLServer\SQLServer_create.ps1"

."commands\StorageAccount\StorageAccount_create.ps1"

."commands\StorageAccount\StorageAccount_keys.ps1"

."commands\VirtualMachine\VM_create.ps1"

."commands\VirtualMachine\VM_connect.ps1"

