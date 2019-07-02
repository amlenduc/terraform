provider "azurerm" {
}

terraform {
  backend "azurerm" {
    storage_account_name = "meetupstatest101"
    resource_group_name  = "meetup-tstate-rg"
    container_name       = "tstate"
    key                  = "meetups/infra/terraform.tfstate"
  }
}

module "resource_group" {
  source      = "../../modules/azure/resource-group"
  env_details = var.env_details
  env_tags    = var.env_tags
  }

module "container-registry" {
  source         = "../../modules/azure/container-registry"
  env_details    = var.env_details
  env_tags       = var.env_tags
  resource_group = module.resource_group.resource_group
}

module "aks-cluster" {
  source         = "../../modules/azure/kubernetes/basic"
  env_details    = var.env_details
  env_tags       = var.env_tags
  resource_group = module.resource_group.resource_group
  k8s = var.k8s
}