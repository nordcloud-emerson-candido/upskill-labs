output "resource_group_name" {
  value       = module.azure-remote-backend.resource_group_name
  description = "Name of the resource group"
}

output "storage_account_name" {
  value       = module.azure-remote-backend.storage_account_name
  description = "Name of the storage account"
}

output "container_name" {
  value       = module.azure-remote-backend.container_name
  description = "Name of the container of the storage account"
}