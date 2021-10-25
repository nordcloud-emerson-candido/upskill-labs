output "virtual_network_id" {
    description = "Id of the virtual network"
    value = azurerm_virtual_network.this.id
}

output "virtual_network_name" {
    description = "Name of the virtual network"
    value = azurerm_virtual_network.this.name
}

output "virtual_network_rg" {
    description = "Resource group of the virtual network"
    value = azurerm_virtual_network.this.resource_group_name
}

output "virtual_network_location" {
    description = "Location of the virtual network"
    value = azurerm_virtual_network.this.location
}