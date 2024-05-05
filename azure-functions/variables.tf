variable "resource_group_name" {
  default = "myResourceGroup"
}

variable "location" {
  default = "westeurope"
}

variable "storage_account_name" {
  default = "mystorageaccount"
}

variable "storage_account_tier" {
  default = "Standard"
}

variable "storage_account_replication_type" {
  default = "LRS"
}

variable "app_service_plan_name" {
  default = "myAppServicePlan"
}

variable "app_service_plan_tier" {
  default = "Standard"
}

variable "app_service_plan_size" {
  default = "S1"
}

variable "function_app_name" {
  default = "myFunctionApp"
}