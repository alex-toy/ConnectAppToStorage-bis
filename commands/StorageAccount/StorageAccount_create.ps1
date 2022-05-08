################################################################
#Create the block blob storage account :

az storage account create `
    --resource-group $RGName `
    --name $SAName `
    --location $SALocation 
    #--kind $SAKind `
    #--sku $SASKU


################################################################
#Create the container :

az storage container create `
 --account-name $SAName `
 --name $SCName `
 --auth-mode $SCAuthMode `
 --public-access $SCPublicAccess


$file = '.\commands\StorageAccount\ip.json'
az vm list-ip-addresses -g $RGName -n $VMName | Out-File $file

$json = Get-Content $file -Raw | ConvertFrom-Json 