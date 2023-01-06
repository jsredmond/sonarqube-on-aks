
# Create resource group
resource "azurerm_resource_group" "sq_rg" {
  name     = "sq-aks"
  location = "East US"
}

resource "azurerm_kubernetes_cluster" "sq_aks" {
  name                = "sq-aks1"
  location            = azurerm_resource_group.sq_rg.location
  resource_group_name = azurerm_resource_group.sq_rg.name
  dns_prefix          = "sqaks1"

  default_node_pool {
    name       = "sq"
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Production"
  }
}

output "client_certificate" {
  value     = azurerm_kubernetes_cluster.sq_aks.kube_config.0.client_certificate
  sensitive = true
}

output "kube_config" {
  value = azurerm_kubernetes_cluster.sq_aks.kube_config_raw

  sensitive = true
}