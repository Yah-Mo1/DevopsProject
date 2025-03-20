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
  type = string
  description = "The Size of the VM"
}

variable "admin_username" {
  type = string
  description = "The username of the VM"
}

variable "nic_id" {
  type = string
  description = "The ID of the NIC"
  
}