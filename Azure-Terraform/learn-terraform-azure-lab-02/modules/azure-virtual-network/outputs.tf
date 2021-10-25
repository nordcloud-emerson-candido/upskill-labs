output "vnet_id" {
  value = azurerm_virtual_network.this.id
}

output "vnet_name" {
  value = azurerm_virtual_network.this.name
}

output "vnet_address_space" {
  value = azurerm_virtual_network.this.address_space
}

output "vnet_guid" {
  value = azurerm_virtual_network.this.guid
}