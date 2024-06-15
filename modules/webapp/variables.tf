variable "resource_group_name" {
  description = "(Required) The name of the Azure Resource Group"
  type        = string
}

variable "location" {
  description = "(Required)  The Azure region for resources"
  type        = string
}

variable "service_plan_name" {
  description = "(Required)  The name of the Azure Service Plan"
  type        = string
}

variable "service_plan_sku_name" {
  description = "(Required) The SKU name for the Azure Service Plan"
  type        = string
}

variable "web_app_name" {
  description = "(Required) The name of the Azure Linux Web App"
  type        = string
}


variable "os_type" {
  description = "(Required) The type of operating system"
  type = string
  }

  variable "docker_image_name" {
    description = "(Required) The name of the docker image"
    type = string
    
  }
