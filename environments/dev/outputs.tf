output "nsg_id" {
  description = "The value of the network security group id"
  value = module.vnet.nsg_id
}

output "vnet_id" {
  description = "The value of the virtual network id"
  value = module.vnet.vnet_id
}

output "web_app_url" {
  value =   module.linux_webapp.web_app_url
}

output "web_app_id" {
  value = module.linux_webapp.web_app_id
}

output "web_app_outbound_ip_addresses" {
  value = module.linux_webapp.web_app_outbound_ip_addresses
}

output "web_app_possible_outbound_ip_addresses" {
  value = module.linux_webapp.web_app_possible_outbound_ip_addresses
} 