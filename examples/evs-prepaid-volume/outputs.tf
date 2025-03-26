output "volume_id" {
  description = "The ID of the EVS volume."
  value       = module.evs_postpaid_volume.volume_id
}

output "volume_wwn" {
  description = "The unique identifier used for mounting the EVS volume."
  value       = module.evs_postpaid_volume.volume_wwn
}

output "volume_status" {
  description = "The EVS volume status."
  value       = module.evs_postpaid_volume.volume_status
}
