# Connecting Your App to Storage with Azure

How to connect a Flask app to Azure SQL and Azure Blob Storage. In this project, everything is automated using Powershell scripts.

## Procedure

All steps bellow can be reduced to running *commands\steps.ps1*.

**Run the Config and create the resource group :**

- Connect to your Azure account : az login

- Run *commands\Configs\config.ps1*

- Run *commands\ResourceGroup\ResourceGroup_create.ps1*

**Create the SQL server :**

- Run *commands\SQLServer\SQLServer_create.ps1*

- In your Azure console, run the *starter\script\script.sql* in the azure SQL console to create the tables.

**Create the Storage account :**

- Run *commands\StorageAccount\StorageAccount_create.ps1*

- Run *commands\StorageAccount\StorageAccount_keys.ps1*

**Create the Virtual Machine :**

- Run *commands\VirtualMachine\VM_create.ps1*

- Run *commands\VirtualMachine\VM_connect.ps1* in order to generate the connection scripts.

- Deploy your app to the newly created virtual machine. Instructions are in the file *starter\deployment.txt*

**Delete all the resources :**

- At the end, don't forget to run *commands\ResourceGroup\ResourceGroup_delete.ps1* if you don't want to get a salty ticket!!

## Troubleshooting

- Mac users may need to install `unixodbc` as well as related drivers as shown below:
    ```bash
    brew install unixodbc
    ```
- Check [here](https://docs.microsoft.com/en-us/sql/connect/odbc/linux-mac/install-microsoft-odbc-driver-sql-server-macos?view=sql-server-ver15) to add SQL Server drivers for Mac. [This StackOverflow post](https://stackoverflow.com/questions/44527452/cant-open-lib-odbc-driver-13-for-sql-server-sym-linking-issue) may also help resolve certain issues.
