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

module "evs_volume_transfer" {
  source = "../../modules/evs-volume-transfer"

  volume_transfer_volume_id = module.evs_postpaid_volume.volume_id
  volume_transfer_name = var.volume_transfer_name
}
