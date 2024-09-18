variable "subscription_id" {
  type = string
}

variable "policy_definition_pairs" {
  description = "A list of policy definition pairs, each containing a file name and a policy assignment name"
  type        = list(object({
    file_path = string
    assignment_name = string
  }))
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "role_assignments" {
  description = "A list of role assignment pairs, each containing a subscription ID and a group object ID"
  type        = list(object({
    subscription_id = string
    group_object_id = string
  }))
}

variable "role_definition_name" {
  description = "The name of the role definition"
  type        = string
  default     = "Contributor"
}
