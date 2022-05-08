# Get-AzStorageAccountKey `
#    -ResourceGroupName $RGName `
#    -Name $SAKey 



$file = '.\commands\StorageAccount\keys.json'

# az storage account key create `
#    -ResourceGroupName $RGName `
#    -Name $SAKey | Out-File $file

az storage account keys renew `
   -g $RGName `
   -n $SAName `
   --key primary | Out-File $file

$json = Get-Content $file -Raw | ConvertFrom-Json 
