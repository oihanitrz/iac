variable "acr_name" {
  description = "Nom du Container Registry"
  default     = "myacr"
}

variable "tags" {
  description = "Tags pour tous les ressources"
  default = {
    Environment = "Test"
  }
}

variable "location" {
  description = "Région Azure"
  default     = "westeurope"
}

variable "resource_group_name" {
  description = "Nom du groupe de ressources"
  default     = "my-resource-group"
}
