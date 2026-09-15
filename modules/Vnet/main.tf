resource "azurerm_virtual_network" "vnet" {
    for_each=var.vnet
    name=each.value.name
    resource_group_name=data.azurerm_resource_group.rg.name
    location=data.azurerm_resource_group.rg.location
    address_space=each.value.address_space
}