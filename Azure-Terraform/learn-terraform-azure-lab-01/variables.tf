variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
  default     = "rg-lab-tf-we"
}

variable "location" {
  type        = string
  description = "Azure Location of the object" 
  default     = "westeurope"
}