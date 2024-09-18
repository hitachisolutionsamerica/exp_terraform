resource "azurerm_policy_definition" "cafpolicies" {
  for_each = { for i, v in var.policy_definition_pairs : i => v }

  name         = "CAF-${each.key}"
  policy_type  = "Custom"
  mode         = "Indexed"
  display_name = each.value.assignment_name
  policy_rule  = file("${path.module}/lib/policyDefinitions/${each.value.file_path}")
}