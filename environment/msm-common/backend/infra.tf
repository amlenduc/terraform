provider "azurerm" {}

terraform {
  backend "azurerm" {
    storage_account_name = "meetupstatest101"
    resource_group_name  = "meetup-tstate-rg"
    container_name       = "tstate"
    key                  = "meetups/infra/terraform.tfstate"
  }
}