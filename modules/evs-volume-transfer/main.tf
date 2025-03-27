resource "huaweicloud_evs_volume_transfer" "this" {
  count = var.is_volume_transfer_create ? 1 : 0

  volume_id = var.volume_transfer_volume_id
  name      = var.volume_transfer_name
}
