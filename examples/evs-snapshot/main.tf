data "huaweicloud_availability_zones" "this" {}

module "evs_postpaid_volume" {
  source = "../../modules/evs-volume"

  volume_availability_zone = var.volume_availability_zone != null ? var.volume_availability_zone : try(data.huaweicloud_availability_zones.this.names[0], "")
  volume_type              = var.volume_type
  volume_iops              = var.volume_iops
  volume_throughput        = var.volume_throughput
  volume_device_type       = var.volume_device_type
  volume_name              = var.volume_name
  volume_description       = var.volume_description
  volume_size              = var.volume_size
  volume_multiattach       = var.volume_multiattach
  volume_tags              = var.volume_tags
}

module "evs_snapshot" {
  source = "../../modules/evs-snapshot"

  snapshot_volume_id   = module.evs_postpaid_volume.volume_id
  snapshot_name        = var.snapshot_name
  snapshot_metadata    = var.snapshot_metadata
  snapshot_description = var.snapshot_description
  snapshot_force       = var.snapshot_force
}

