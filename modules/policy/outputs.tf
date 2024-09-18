output "policy_definition_ids" {
  description = "The IDs of the policy definitions"
  value       = [for pd in azurerm_policy_definition.cafpolicies : pd.id]
}
