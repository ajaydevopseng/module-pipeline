data "azurerm_resource_group" "rg" {
    name="rg1"
}

data "azurerm_network_interface" "NIC" {
    name="nic1"
  resource_group_name = data.azurerm_resource_group.rg.name
}