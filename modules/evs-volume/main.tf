resource "huaweicloud_evs_volume" "this" {
  count = var.is_volume_create ? 1 : 0

  # prepaid parameters
  charging_mode = var.volume_charging_mode
  period_unit   = var.volume_period_unit
  period        = var.volume_period
  auto_renew    = var.volume_auto_renew

  # volume parameters
  availability_zone     = var.volume_availability_zone
  volume_type           = var.volume_type
  server_id             = var.volume_server_id
  iops                  = var.volume_iops
  throughput            = var.volume_throughput
  device_type           = var.volume_device_type
  name                  = var.volume_name
  description           = var.volume_description
  size                  = var.volume_size
  backup_id             = var.volume_backup_id
  image_id              = var.volume_image_id
  snapshot_id           = var.volume_snapshot_id
  kms_id                = var.volume_kms_id
  multiattach           = var.volume_multiattach
  dedicated_storage_id  = var.volume_dedicated_storage_id
  tags                  = var.volume_tags
  enterprise_project_id = var.volume_enterprise_project_id

  cascade = var.volume_cascade
}
