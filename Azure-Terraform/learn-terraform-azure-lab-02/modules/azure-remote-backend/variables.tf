variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}

variable "location" {
  type        = string
  description = "Location of the resource group"
}

variable "storage_account_name" {
  type        = string
  description = "Name of the storage account"
}

variable "account_tier" {
  type        = string
  description = "Kind of account tier"
  default     = "Standard"
}

variable "account_replication_type" {
  type        = string
  description = "Type of account replication"
  default     = "LRS"
}

variable "allow_blob_public_access" {
  type        = bool
  description = "Allow blob public access"
  default     = true
}

variable "storage_container_name" {
  type        = string
  description = "Name of the storage container"
  default     = "tfstate"
}

variable "container_access_type" {
  type        = string
  description = "Type of container access"
  default     = "blob"
}
