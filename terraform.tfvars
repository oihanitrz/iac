location = "westeurope"
resource_group_name = "aks-rg"
cluster_name = "aks"
dns_prefix = "aks"
subscription_id = "196c2119-ef75-4c69-9c51-6ad5827e27b5"
node_count = 2
node_vm_size = "Standard_D2_v2"
acr_name = "sdviacacr"
argocd_chart_version = "xxx"
tags = {
  Environment = "Test"
}