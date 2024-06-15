variable "resource_group_name" {
  description = "(Required) The name of the Azure Resource Group"
  type        = string
}

variable "location" {
  description = "(Required)  The Azure region for resources"
  type        = string
}

variable "vnet_name" {
  description = "(Required) The name of the virtual network"

  type    = string
}
variable "nsg_name" {
description = "(Required) The name of the network security group"
type = string
  
}
variable "vnet_address_space" {
  description = "(Required) The address space that is used the virtual network."
  type    = list(string)
  default = ["10.0.0.0/16"]
}

variable "vnet_dns_servers" {
  type    = list(string)
  default = ["10.0.0.4", "10.0.0.5"]
}

variable "subnet_name" {
  description = "(Required) The name of the subnet"
  type    = string
}

variable "subnet_address_prefixes" {
  type    = list(string)
  default = ["10.0.1.0/24"]
}
