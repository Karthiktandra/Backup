#Select the resource group in which you want to deploy azure resource
rg                               =      "rg-automation-account-eastus"
#Select the Location based on your resource group location South India , North Europe , West US , East US , Australia Southeast. 
location                         =      "East US"

sku                              =      "Basic"
#name of the automation account
automationaccountname            =      "automation-account-east-us-1234"
#name of the runbook
runbookname                      =      "vm-backup"
logverbose                       =      "true"
logprocess                       =      "true"
runbookdescription               =      "This runbook is to take the backup for VMs"
#type of the runbook (Powershell,Python)
typeofrunbook                    =      "PowerShell"
#Github Url to fetch the data
githuburl                        =      "https://raw.githubusercontent.com/Karthiktandra/PowerShell/master/backup.ps1"
schedulename                     =      "backupschedule"
backupfrequency                  =      "Hour"
timezone                         =     "India Standard Time"
tags                             =       {        
              INFY_EA_BusinessUnit    =   "CCD"
              INFY_EA_CostCenter	  =   "CCD"
              INFY_EA_PrjectCode	  =   "CCDBLINT"
              INFY_EA_Purpose	      =   "Automatio-Account"
              INFY_EA_WorkLoadType    =   "Non-Production"
              INFY_EA_CustomTag01	  =   "PO"
              INFY_EA_CustomTag02	  =   "Infosys Limited"
              INFY_EA_Role	          =   "Automation-Account"
                                        }