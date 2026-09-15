data "azurerm_resource_group" "rg" {
    name="rg1"
}

data "azurerm_storage_account" "storage" {
    name="storage1"
  resource_group_name = data.azurerm_resource_group.rg.name
}