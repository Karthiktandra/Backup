# https://registry.terraform.io/modules/claranet/vm-backup/azurerm/2.0.0
provider "azurerm" {
  features{}
  subscription_id = "${var.subscription_id}"
  client_id       = "${var.client_id}"
  client_secret   = "${var.client_secret}"
  tenant_id       = "${var.tenant_id}"
}

resource "azurerm_resource_group" "example" {
  name     = "${var.rg}"
  location = "${var.location}"
  tags = "${var.tags}"
}

resource "azurerm_automation_account" "example" {
  name                    = "${var.automationaccountname}"
  location                = "${azurerm_resource_group.example.location}"
  resource_group_name     = "${azurerm_resource_group.example.name}"
  sku_name                = "${var.sku}"
  
}

resource "azurerm_automation_runbook" "example" {
  name                    = "${var.runbookname}"
  location                = "${azurerm_resource_group.example.location}"
  resource_group_name     = "${azurerm_resource_group.example.name}"
  automation_account_name = "${azurerm_automation_account.example.name}"  
  log_verbose             = "${var.logverbose}"
  log_progress            = "${var.logprocess}"
  description             = "${var.runbookdescription}"
  runbook_type            = "${var.typeofrunbook}"

  publish_content_link {
    uri = "${var.githuburl}"
  }
}

resource "azurerm_automation_schedule" "hour" {
  name                    = "${var.schedulename}"
  resource_group_name     = "${azurerm_resource_group.example.name}"
  automation_account_name = "${azurerm_automation_account.example.name}"
  frequency               = "Hour"
  interval                = 2
  timezone                = "${var.timezone}"
}

  // Schedules the example runbook to run on the hour schedule

resource "azurerm_automation_job_schedule" "example" {

  resource_group_name     = "${azurerm_resource_group.example.name}"
  automation_account_name = "${azurerm_automation_account.example.name}"
  runbook_name            = "${azurerm_automation_runbook.example.name}"
  schedule_name           = "${azurerm_automation_schedule.hour.name}"

}