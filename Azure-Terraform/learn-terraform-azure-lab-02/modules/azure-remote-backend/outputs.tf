output "resource_group_name" {
  value       = var.resource_group_name
  description = "Name of the resource group"
}

output "storage_account_name" {
  value       = azurerm_storage_account.this.name
  description = "Name of the storage account"
}

output "container_name" {
  value       = azurerm_storage_container.this.name
  description = "Name of the container of the storage account"
}