resource "azurerm_linux_virtual_machine" "vm" {
    for_each=var.vm

    name=each.value.name
    resource_group_name=data.azurerm_resource_group.rg.name
    location=data.azurerm_resource_group.rg.location
    size="Standard"
    admin_username="ajay"
    admin_password="ajay@12345678"

    network_interface_ids=[data.azurerm_network_interface.NIC.id]

    disable_password_authentication=false

    os_disk {
        caching="ReadWrite"
        storage_account_type="Standard_LRS"
    }

    source_image_reference {
        publisher="Canonical"
        offer = "0001-com-ubuntu-server-jammy"
        sku   = "22_04-lts"
        version="latest"
    }
}