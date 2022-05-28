################################################################
# resource Group :

#southcentralus centralus francecentral
$Global:RGName = "flask-app-rg"
$Global:RGLocation = "francecentral"
$Global:var_path = "commands\Configs\var.cfg"



################################################################
# Secret key :

$Global:SSHKeyName = "mySSHKey"
$Global:SAKey = "SAKey"



#######################################################################
# Next step :

az group create --name $RGName --location $RGLocation

."commands\SQLServer\SQLServer_create.ps1"

."commands\StorageAccount\StorageAccount_create.ps1"

."commands\StorageAccount\StorageAccount_keys.ps1"

."commands\VirtualMachine\VM_create.ps1"

."commands\VirtualMachine\VM_connect.ps1"

