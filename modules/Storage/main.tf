resource "azurerm_storage_account" "storage" {
    for_each=var.storage
    name=each.value.name
    resource_group_name=data.azurerm_resource_group.rg.name
    location=data.azurerm_resource_group.rg.location
    account_tier= each.value.account_tier
    account_replication_type=each.value.account_replication_type
}