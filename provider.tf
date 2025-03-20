terraform {

  # required_version = ">= 1.3.0, < 1.6.0" 

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.21.1"
    }

  }
  backend "azurerm" {
    resource_group_name  = "tfstate-rg"
    storage_account_name = "codercostorageacc"
    container_name       = "coderco-tfstate-container"
    key                  = "devopsProject.terraform.tfstate"

  }

  
}

provider "azurerm" {

  features {}

}