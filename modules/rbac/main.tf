provider "azurerm" {
  features { }
  alias = "subscription"
  subscription_id = var.subscription_id
}

data "azurerm_role_definition" "contributor" {
  provider = azurerm.subscription
  name     = var.role_definition_name
}

resource "azurerm_role_assignment" "role_assignment" {
  for_each = { for i, v in var.role_assignments : i => v }

 provider           = azurerm.subscription
  principal_id       = each.value.group_object_id
  role_definition_id = data.azurerm_role_definition.contributor.id
  scope              = "/subscriptions/${each.value.subscription_id}"
}