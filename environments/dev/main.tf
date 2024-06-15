provider "azurerm" {
features {}
}


module "vnet" {
    source = "../../modules/vnet"
    location = var.location
    resource_group_name = var.resource_group_name
    nsg_name = var.nsg_name 
    vnet_name = var.vnet_name
    subnet_name = var.subnet_name
}

module "linux_webapp" {
     source = "../../modules/webapp"
    service_plan_name = var.service_plan_name
    os_type = var.os_type
    service_plan_sku_name = var.service_plan_sku_name
    web_app_name = var.web_app_name
    location = var.location
    resource_group_name = var.resource_group_name
    docker_image_name = var.docker_image_name
}
