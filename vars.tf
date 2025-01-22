variable "location" {
  description = "Région Azure"
  default     = "westeurope"
}

variable "resource_group_name" {
  description = "Nom du groupe de ressources"
  default     = "my-resource-group"
}

variable "cluster_name" {
  description = "Nom du cluster AKS"
  default     = "my-aks-cluster"
}

variable "dns_prefix" {
  description = "DNS prefix pour le cluster AKS"
  default     = "myakscluster"
}

variable "subscription_id" {
  description = "Subscription ID"
  default     = "xxx"
}

variable "node_count" {
  description = "Nombre de nœuds dans le pool par défaut"
  default     = 2
}

variable "node_vm_size" {
  description = "Type de machine virtuelle pour les nœuds"
  default     = "Standard_D2_v2"
}

variable "acr_name" {
  description = "Nom du Container Registry"
  default     = "myacr"
}

variable "argocd_chart_version" {
  description = "Version du chart Helm pour ArgoCD"
  default     = "5.41.1"
}

variable "tags" {
  description = "Tags pour tous les ressources"
  default = {
    Environment = "Test"
  }
}
