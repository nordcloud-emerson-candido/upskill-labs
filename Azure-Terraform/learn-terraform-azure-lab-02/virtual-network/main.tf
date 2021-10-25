provider "azurerm" {
  features {}
  skip_provider_registration = true
}

module "azure_virtual_network" {
  source = "./../modules/azure-virtual-network"

  vnet_name           = var.vnet_name
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = var.address_space
}