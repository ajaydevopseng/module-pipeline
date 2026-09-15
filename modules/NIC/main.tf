resource "azurerm_network_interface" "NIC" {
    for_each=var.NIC

    name=each.value.name
    resource_group_name=data.azurerm_resource_group.rg.name
    location=data.azurerm_resource_group.rg.location

    ip_configuration{
        name=each.value.ipConfigName
        subnet_id=data.azurerm_subnet.subnet.id
        private_ip_address_allocation="Dynamic"
    }
}