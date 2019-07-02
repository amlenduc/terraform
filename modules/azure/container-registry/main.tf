locals {
  registry_full_name = "${var.env_details["prefix"]}-var.workspace_name-acr}"
  registry_name       = "${(replace(local.registry_full_name, "/[^0-9A-Za-z]*/", ""))}"
}
resource "azurerm_container_registry" "registry" {
  name                = "${local.registry_name}"  
  resource_group_name = "${var.resource_group["name"]}"
  location            = "${var.env_details["location"]}"
  sku                 = "Standard"
}