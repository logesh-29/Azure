provider "azurerm" {
  features{

  }
}

resource "azurerm_resource_group" "example" {
  name     = "loki-resource-group"
  location = "East US"
}

resource "azurerm_data_factory" "example" {
  name                = "loki-data-factory"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
}