resource "azurerm_kubernetes_cluster" "aks" {
  name                = "${var.env_details["prefix"]}-k8s"
  location            = "${var.env_details["location"]}"
  resource_group_name = "${var.resource_group["name"]}"
  dns_prefix          = "${var.env_details["prefix"]}-k8s"

  agent_pool_profile {
    name            = "default"
    count           = 1
    vm_size         = "Standard_D1_v2"
    os_type         = "Linux"
    os_disk_size_gb = 30
  }
  
    linux_profile {
    admin_username = "${var.k8s["user"]}"

    ssh_key {
      key_data = "${var.k8s["ssh_public_key_data"]}"
    }
  }

  service_principal {
    client_id     = "${var.k8s["kubernetes_client_id"]}"
    client_secret = "${var.k8s["kubernetes_client_secret"]}"
  }
}

