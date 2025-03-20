variable "prefix" {
  type = string
}

variable "subscription_id" {
  description = "The ID of the subscription to be used"
  type = string
  
}

variable "resource_group_name" {
  description = "(Required) The name of the Azure Resource Group"
  type        = string
}

variable "location" {
  description = "(Required)  The Azure region for resources"
  type        = string
}

variable "ssh_public_key_path" {
  description = "Path to the SSH public key file"
  type        = string
}

variable "vm_size" {
  type        = string
  description = "The Size of the VM"
}

variable "admin_username" {
  type        = string
  description = "The username of the VM"

}



variable "vnet_address_space" {
  description = "(Required) The address space that is used the virtual network."
  type        = list(string)
}
variable "subnet_address_prefixes" {
  type    = list(string)
}
