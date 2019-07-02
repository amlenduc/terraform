output "registry" {
  description = "The properties of the registry."

  value = {
      id = "${azurerm_container_registry.registry.id}"
      login_server = "${azurerm_container_registry.registry.login_server}"
      admin_username = "${azurerm_container_registry.registry.admin_username}"
  }
}