resource "azurerm_storage_account" "mcitstorageaccountexample" {
  count                    = length(var.storage_account_names)
  name                     = var.storage_account_names[count.index]
  resource_group_name      = azurerm_resource_group.bhmcitrg01.name
  location                 = azurerm_resource_group.bhmcitrg01.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  min_tls_version = var.min_tls_version

  tags = {
    environment = var.environment
  }
}
