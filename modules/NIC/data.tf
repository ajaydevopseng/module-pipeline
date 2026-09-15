data "azurerm_resource_group" "rg" {
  name = "rg1"
}

data "azurerm_virtual_network" "vnet" {
  name                = "vnet1"
  resource_group_name = data.azurerm_resource_group.rg.name
}

data "azurerm_subnet" "subnet" {
  name                 = "subnet1"
  resource_group_name  = data.azurerm_resource_group.rg.name
  virtual_network_name = data.azurerm_virtual_network.vnet.name
}