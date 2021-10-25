provider "azurerm" {
  features {}
  skip_provider_registration = true
}

resource "random_string" "this" {
  length  = var.random_suffix_length
  special = false
  lower   = true
  upper   = false
  number  = false
}

module "azure-remote-backend" {
  source = "./../modules/azure-remote-backend"

  resource_group_name  = "rg-lab-tf-we"
  location             = "westeurope"
  #location             = var.location == "" ? "westeurope" : var.location
  storage_account_name = "stejata${random_string.this.result}"
}