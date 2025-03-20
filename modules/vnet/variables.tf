variable "resource_group_name" {
  description = "(Required) The name of the Azure Resource Group"
  type        = string
}

variable "location" {
  description = "(Required)  The Azure region for resources"
  type        = string
}


variable "vnet_address_space" {
  description = "(Required) The address space that is used the virtual network."
  type    = list(string)
}
variable "subnet_address_prefixes" {
  type    = list(string)
}
