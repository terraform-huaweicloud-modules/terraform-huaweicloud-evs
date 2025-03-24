output "evs_volume_id" {
  description = "The ID of the EVS volume."
  value       = huaweicloud_evs_volume.test.id
}

output "evs_attachment" {
  description = "The EVS volume mount information."
  value = [
    for evs in huaweicloud_evs_volume.test.attachment : {
      id          = evs.id
      instance_id = evs.instance_id
      device      = evs.device
    }
  ]
}

output "evs_wwn" {
  description = "The unique identifier used for mounting the EVS volume."
  value       = huaweicloud_evs_volume.test.wwn
}

output "evs_dedicated_storage_name" {
  description = "The name of the DSS storage pool accommodating the EVS volume."
  value       = huaweicloud_evs_volume.test.dedicated_storage_name
}

output "evs_status" {
  description = "The EVS volume status."
  value       = huaweicloud_evs_volume.test.status
}
