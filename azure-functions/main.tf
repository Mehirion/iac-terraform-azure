resource "azurerm_resource_group" "my_rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "my_storage_account" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.my_rg.name
  location                 = azurerm_resource_group.my_rg.location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_replication_type
}

resource "azurerm_app_service_plan" "my_app_service_plan" {
  name                = var.app_service_plan_name
  location            = azurerm_resource_group.my_rg.location
  resource_group_name = azurerm_resource_group.my_rg.name
  kind                = "FunctionApp"

  sku {
    tier = var.app_service_plan_tier
    size = var.app_service_plan_size
  }
}

resource "azurerm_function_app" "my_function_app" {
  name                       = var.function_app_name
  location                   = azurerm_resource_group.my_rg.location
  resource_group_name        = azurerm_resource_group.my_rg.name
  app_service_plan_id        = azurerm_app_service_plan.my_app_service_plan.id
  storage_connection_string  = azurerm_storage_account.my_storage_account.primary_connection_string
  version                    = "~3"
}

resource "azurerm_function_app_function" "my_function" {
  name                      = "MyFunction"
  resource_group_name       = azurerm_resource_group.my_rg.name
  function_app_id           = azurerm_function_app.my_function_app.id
  app_service_plan_id       = azurerm_app_service_plan.my_app_service_plan.id
  storage_account_name      = azurerm_storage_account.my_storage_account.name
  storage_account_access_key = azurerm_storage_account.my_storage_account.primary_access_key
  app_settings = {
    "FUNCTIONS_WORKER_RUNTIME" = "python"
  }
}
