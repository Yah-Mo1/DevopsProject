output "nsg_id" {
    description = "The value of the network security group id"
  value = azurerm_network_security_group.nsg.id
}

output "nic_id" {
  description = "The ID of the NIC"
  value = azurerm_network_interface.nic.id
  
}