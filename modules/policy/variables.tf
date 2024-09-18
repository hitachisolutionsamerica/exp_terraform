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

