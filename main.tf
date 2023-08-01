resource "azurerm_resource_group" "resource_group" {
  name     = var.rg-name
  location = var.location
}

resource "azurerm_storage_account" "storage_account" {
  name                     = var.storage-account-name
  resource_group_name      = azurerm_resource_group.resource_group.name
  account_tier             = "Standard"
  location                 = var.location
  account_replication_type = "LRS"
  account_kind             = "StorageV2" # helps to host the static website

  static_website {
    index_document = var.index_document
  }
}

# crete a storage blog == AWS S3 bucket

resource "azurerm_storage_blob" "example" {
  name                   = var.index_document
  storage_account_name   = azurerm_storage_account.storage_account.name
  storage_container_name = "$web"
  type                   = "Block"
  content_type           = "text/html"
  source_content         = var.source_content
}
