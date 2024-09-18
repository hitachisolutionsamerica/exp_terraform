
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

variable "subscription_id" {
  type = string
}