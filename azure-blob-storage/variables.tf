variable "resource_group_name" {
  description = "Nazwa grupy zasobów Azure"
  default     = "myResourceGroup"
}

variable "location" {
  description = "Lokalizacja zasobów Azure"
  default     = "westeurope"
}

variable "storage_account_name" {
  description = "Nazwa konta magazynu Azure"
  default     = "mystorageaccount"
}

variable "storage_account_tier" {
  description = "Tier konta magazynu Azure"
  default     = "Standard"
}

variable "storage_account_replication_type" {
  description = "Typ replikacji konta magazynu Azure"
  default     = "LRS"
}

variable "storage_container_name" {
  description = "Nazwa kontenera magazynu Azure Blob Storage"
  default     = "mycontainer"
}

variable "storage_container_access_type" {
  description = "Typ dostępu do kontenera magazynu Azure Blob Storage"
  default     = "private"
}

variable "storage_blob_name" {
  description = "Nazwa pliku w kontenerze magazynu Azure Blob Storage"
  default     = "myblob.txt"
}

variable "storage_blob_source" {
  description = "Ścieżka do pliku źródłowego do umieszczenia w kontenerze magazynu Azure Blob Storage"
  default     = "/path/to/local/file.txt"
}
