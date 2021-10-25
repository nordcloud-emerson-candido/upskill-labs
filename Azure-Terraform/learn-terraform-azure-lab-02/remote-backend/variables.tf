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

variable "random_suffix_length" {
  type        = number
  description = "Lenght of the random ending"
  default     = 8
}