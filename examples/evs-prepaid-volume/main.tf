data "huaweicloud_availability_zones" "this" {}

module "evs_postpaid_volume" {
  source = "../../modules/evs-volume"

  # prepaid parameters
  volume_charging_mode = var.volume_charging_mode
  volume_period_unit   = var.volume_period_unit
  volume_period        = var.volume_period
  volume_auto_renew    = var.volume_auto_renew

  volume_availability_zone = var.volume_availability_zone != null ? var.volume_availability_zone : try(data.huaweicloud_availability_zones.this.names[0], "")
  volume_type              = var.volume_type
  volume_device_type       = var.volume_device_type
  volume_name              = var.volume_name
  volume_description       = var.volume_description
  volume_size              = var.volume_size
  volume_multiattach       = var.volume_multiattach
  volume_tags              = var.volume_tags
}
