output "volume_transfer_id" {
  description = "The resource ID in UUID format"
  value       = module.evs_volume_transfer.volume_transfer_id
}

output "volume_transfer_auth_key" {
  description = "The identity authentication key for volume transfer"
  value       = module.evs_volume_transfer.volume_transfer_auth_key
  sensitive   = true
}

output "volume_transfer_created_at" {
  description = "The creation time of the volume transfer record, in RFC3339 format"
  value       = module.evs_volume_transfer.volume_transfer_created_at
}
