output "resource_group" {
  description = "The properties of the resource group."
    value = {
    id       = "${azurerm_resource_group.rg.id}"
    name     = "${azurerm_resource_group.rg.name}"
  }
}