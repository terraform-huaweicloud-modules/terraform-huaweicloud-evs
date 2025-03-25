output "volume_volume_id" {
  description = "The ID of the EVS volume."
  value       = try(huaweicloud_evs_volume.this[0].id, "")
}

output "volume_wwn" {
  description = "The unique identifier used for mounting the EVS volume."
  value       = try(huaweicloud_evs_volume.this[0].wwn, "")
}

output "volume_dedicated_storage_name" {
  description = "The name of the DSS storage pool accommodating the EVS volume."
  value       = try(huaweicloud_evs_volume.this[0].dedicated_storage_name, "")
}

output "volume_status" {
  description = "The EVS volume status."
  value       = try(huaweicloud_evs_volume.this[0].status, "")
}
