output "key_id" {
  value       = module.azuread_app_password.key_id
  description = "A UUID used to uniquely identify this password credential."
}

output "value" {
  value       = module.azuread_app_password.value
  description = "The password for this application, which is generated by Azure Active Directory."
  sensitive   = true
}