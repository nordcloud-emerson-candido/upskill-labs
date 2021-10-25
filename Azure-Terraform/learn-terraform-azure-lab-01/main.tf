# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.26"
    }
  }

  required_version = ">= 0.15.0"
}

provider "azurerm" {
  features {}
  skip_provider_registration = true
}

resource "azurerm_resource_group" "this" {
  #name = "rg-lab-tf-we"
  #location = "westeurope"

  # Variables
  name = var.resource_group_name
  location = var.location
}

resource "azurerm_virtual_network" "this" {
  name                = "vnet-eja-ta-we-001"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.this.location
  resource_group_name = azurerm_resource_group.this.name
  
  subnet {
    name           = "subnet1"
    address_prefix = "10.0.1.0/24"
  }
}