resource "azurerm_resource_group" "this" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_virtual_network" "this" {
  name                = azurerm_resource_group.this.name
  location            = azurerm_resource_group.this.location
  resource_group_name = var.resource_group_name
  address_space       = var.address_space
}