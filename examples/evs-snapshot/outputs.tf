output "snapshot_id" {
  description = "The ID of the snapshot"
  value       = module.evs_snapshot.snapshot_id
}

output "snapshot_status" {
  description = "The status of the snapshot"
  value       = module.evs_snapshot.snapshot_status
}

output "snapshot_size" {
  description = "The size of the snapshot in GB"
  value       = module.evs_snapshot.snapshot_size
}
