output "acr_login_server" {
  value = module.registry.acr_login_server
}

output "acr_admin_username" {
  value = module.registry.acr_admin_username
}

output "acr_admin_password" {
  value     = module.registry.acr_admin_password
  sensitive = true
}

output "kube_config" {
  value = module.aks.kube_config
  sensitive = true
}