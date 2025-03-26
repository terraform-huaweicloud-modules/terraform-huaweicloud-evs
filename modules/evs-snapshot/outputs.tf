output "snapshot_id" {
  description = "The ID of the snapshot"
  value       = try(huaweicloud_evs_snapshot.this[0].id, "")
}

output "snapshot_status" {
  description = "The status of the snapshot"
  value       = try(huaweicloud_evs_snapshot.this[0].status, "")
}

output "snapshot_size" {
  description = "The size of the snapshot in GB"
  value       = try(huaweicloud_evs_snapshot.this[0].size, 0)
}
