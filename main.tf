# Create resource group
resource "azurerm_resource_group" "sq_rg" {
  name     = "sonarqube"
  location = "East US"
}
