variable "vnet_name" {
  type        = string
  description = "Name of the virtual network"
}

variable "location" {
  type        = string
  description = "Location of the virtual network"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}

variable "address_space" {
  type        = list(string)
  description = "List of cidrs"
}

#variable "subnets" {
#  type = list(object({
#    name  = string
#    value = string
#  }))
#  description = "List of subnet cidr"
#  default = [
#    {
#      name  = "subnet1"
#      value = "10.0.1.0/24"
#    }
#  ]
#}

#variable "enable_ddos_protectuon" {
#  type        = bool
#  description = "Allow ddos protection"
#  default     = true
#}