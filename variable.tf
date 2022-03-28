variable "subscription_id"{}
variable "client_id"{}
variable "client_secret"{} 
variable "tenant_id"{}

variable "rg" {
  description = "Default resource group name that the network will be created in."
  default     = "rg_automation_account_east_us"
}

variable "location" {
  description = "The location/region where the core network will be created. The full list of Azure regions can be found at https://azure.microsoft.com/regions"
  default     = "East US"
}

variable "automationaccountname" {
  description = "Name of the Azure automation account"
  default = "automation_account_east_us"
}

variable "sku" {
 description = "SKU type"
 default = "Basic" 
}

variable "runbookname" {
  default = "vm_backup"
}

variable "logverbose" {
  default = "true"
}

variable "logprocess" {
  default = "true"
}

variable "runbookdescription" {
  default = "This runbook is to take the backup for VMs"
}

variable "typeofrunbook" {
    default = "PowerShell"
}

variable "githuburl" {
  default = "https://raw.githubusercontent.com/Karthiktandra/PowerShell/master/backup.ps1"
}

variable "schedulename" {
  default = "backupschedule"
}

variable "backupfrequency" {
  default = "Hour"
}

variable "timezone" {
  default = "India Standard Time"
}
variable "tags" {
  default = { 
              INFY_EA_BusinessUnit    =   "CCD"
              INFY_EA_CostCenter	  =   "CCD"
              INFY_EA_PrjectCode	  =   "CCDBLINT"
              INFY_EA_Purpose	      =   "Automatio-Account"
              INFY_EA_WorkLoadType    =   "Non-Production"
              INFY_EA_CustomTag01	  =   "PO"
              INFY_EA_CustomTag02	  =   "Infosys Limited"
              INFY_EA_Role	          =   "Automation-Account"
            }
}








