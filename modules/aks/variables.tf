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

variable "node_count" {
  description = "Nombre de nœuds dans le pool par défaut"
  default     = 2
}

variable "node_vm_size" {
  description = "Type de machine virtuelle pour les nœuds"
  default     = "Standard_D2_v2"
}

variable "kubernetes_version" {
  description = "Version de Kubernetes"
  default     = "1.29.11"
}

variable "tags" {
  description = "Tags pour tous les ressources"
  default = {
    Environment = "Test"
  }
}
