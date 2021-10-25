resource "azurerm_resource_group" "this" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_virtual_network" "this" {
  name                = azurerm_resource_group.this.name
  location            = azurerm_resource_group.this.location
  resource_group_name = var.resource_group_name
  address_space       = var.address_space

  #dynamic "subnet" {
  #  for_each = var.subnets
  #  content {
  #    name           = subnet.value.name
  #    address_prefix = subnet.value.value
  #  }
  #}

  #dynamic "ddos_protection_plan" {
  #  for_each = var.enable_ddos_protectuon == true ? [1] : []
  #  content {
  #    id     = join("", azurerm_network_ddos_protection_plan.this.*.id)
  #    enable = true
  #  }
  #}
}

#locals {
#  location = var.location == "" ? "westeurope" : var.location
#}

#resource "azurerm_network_ddos_protection_plan" "this" {
#  count               = var.enable_ddos_protectuon ? 1 : 0
#  name                = "ddosejata001"
#  location            = local.location
#  resource_group_name = var.resource_group_name
#}