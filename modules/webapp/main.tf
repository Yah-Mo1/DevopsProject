
# resource "azurerm_resource_group" "example" {
#   name     = var.resource_group_name
#   location = var.location
# }


resource "azurerm_service_plan" "service_plan" {
  name                = var.service_plan_name
  resource_group_name = var.resource_group_name
  location            = var.location
  os_type             = var.os_type
  sku_name            = var.service_plan_sku_name
}

resource "azurerm_linux_web_app" "linux_webapp" {
  name                = var.web_app_name
  resource_group_name = var.resource_group_name
  location            = var.location
  service_plan_id     = azurerm_service_plan.service_plan.id

  site_config {

    application_stack {
    docker_image_name = var.docker_image_name
  }
  }

}
//implkement integration between vnet and webapp