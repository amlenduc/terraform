resource "azurerm_resource_group" "rg" {
  name     = "${var.env_details["prefix"]}-rg"
  location = "${var.env_details["location"]}"

  tags = {
    environment = "${var.env_tags["environment_type"]}"
    project     = "${var.env_tags["Project_Name"]}"
  }
}

