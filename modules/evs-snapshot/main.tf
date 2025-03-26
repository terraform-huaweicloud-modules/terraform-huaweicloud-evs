resource "huaweicloud_evs_snapshot" "this" {
  count = var.is_snapshot_create ? 1 : 0

  volume_id   = var.snapshot_volume_id
  name        = var.snapshot_name
  metadata    = var.snapshot_metadata
  description = var.snapshot_description
  force       = var.snapshot_force
}
