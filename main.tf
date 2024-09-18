provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}

module "rbac" {
  source               = "./modules/rbac"
  role_assignments     = var.role_assignments
  role_definition_name = var.role_definition_name
  subscription_id = var.subscription_id
}

module "policy" {
  source               = "./modules/policy"
  policy_definition_pairs = var.policy_definition_pairs
  resource_group_name  = var.resource_group_name
}
