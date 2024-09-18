output "role_assignment_ids" {
  description = "The IDs of the role assignments"
  value       = [for ra in azurerm_role_assignment.role_assignment : ra.id]
}