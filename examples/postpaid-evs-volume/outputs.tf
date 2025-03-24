output "evs_volume_id" {
  description = "The ID of the EVS volume."
  value       = module.postpaid_evs_volume.evs_volume_id
}

output "evs_attachment" {
  description = "The EVS volume mount information."
  value       = module.postpaid_evs_volume.evs_attachment
}

output "evs_wwn" {
  description = "The unique identifier used for mounting the EVS volume."
  value       = module.postpaid_evs_volume.evs_wwn
}

output "evs_dedicated_storage_name" {
  description = "The name of the DSS storage pool accommodating the EVS volume."
  value       = module.postpaid_evs_volume.evs_dedicated_storage_name
}

output "evs_status" {
  description = "The EVS volume status."
  value       = module.postpaid_evs_volume.evs_status
}
