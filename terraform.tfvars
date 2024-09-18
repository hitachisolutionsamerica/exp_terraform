role_definition_name = "Contributor"
resource_group_name  = "rg-expeditorsTest"
subscription_id = "8b98e4e7-0efa-4301-8ab6-2df77d1d978b"


policy_definition_pairs = [
  { file_path = "Append-AppService-httpsonly.json", assignment_name = "CAF-Append-AppService-httpsonly" },
  { file_path = "Append-AppService-latestTLS.json", assignment_name = "CAF-Append-AppService-latestTLS" },
  { file_path = "Append-KV-SoftDelete.json", assignment_name = "CAF-Append-KV-SoftDelete" },
]


role_assignments = [
  { subscription_id = "8b98e4e7-0efa-4301-8ab6-2df77d1d978b", group_object_id = "bc0d28ca-fb5f-4336-aaae-1c62273b0271" }, # Group 1 in Subscription 1
  { subscription_id = "8b98e4e7-0efa-4301-8ab6-2df77d1d978b", group_object_id = "9010525e-7f54-47d8-af71-8379067a5ced" }, # Group 2 in Subscription 1
  { subscription_id = "f063c45b-c44a-4712-8680-2b1d6d9a1b1a", group_object_id = "f063c45b-c44a-4712-8680-2b1d6d9a1b1a" }, # Group 3 in Subscription 2
]