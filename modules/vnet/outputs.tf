output "nsg_id" {
    description = "The value of the network security group id"
  value = azurerm_network_security_group.nsg.id
}

output "vnet_id" {
  description = "The value of the virtual network id"

  value = azurerm_virtual_network.vnet.id
}
