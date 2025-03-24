resource "huaweicloud_evs_volume" "test" {
  # prepaid parameters
  charging_mode = var.charging_mode
  period_unit   = var.period_unit
  period        = var.period
  auto_renew    = var.auto_renew

  // volume parameters
  availability_zone     = var.evs_availability_zone
  volume_type           = var.evs_volume_type
  server_id             = var.evs_server_id
  iops                  = var.evs_iops
  throughput            = var.evs_throughput
  device_type           = var.evs_device_type
  name                  = var.evs_name
  description           = var.evs_description
  size                  = var.evs_size
  backup_id             = var.evs_backup_id
  image_id              = var.evs_image_id
  snapshot_id           = var.evs_snapshot_id
  kms_id                = var.evs_kms_id
  multiattach           = var.evs_multiattach
  dedicated_storage_id  = var.evs_dedicated_storage_id
  tags                  = var.evs_tags
  enterprise_project_id = var.enterprise_project_id

  cascade = var.evs_cascade
}