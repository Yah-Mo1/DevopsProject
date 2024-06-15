output "web_app_url" {
  description = "The URL/Default hostname of the web app"
  value = azurerm_linux_web_app.linux_webapp.default_hostname
}

output "web_app_id" {
  description = "The ID of the web app"
  value = azurerm_linux_web_app.linux_webapp.id
}

output "web_app_outbound_ip_addresses" {
  description = "The outbound IP addresses of the web app"
  value = azurerm_linux_web_app.linux_webapp.outbound_ip_addresses
}

output "web_app_possible_outbound_ip_addresses" {
  description = "The possible outbound IP addresses of the web app"
  value = azurerm_linux_web_app.linux_webapp.possible_outbound_ip_addresses
}