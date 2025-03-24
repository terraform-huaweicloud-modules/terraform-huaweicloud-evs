data "huaweicloud_availability_zones" "this" {}

module "evs_service" {
  source = "../../modules/evs-volume-simple"

  availability_zone = var.availability_zone == null ? try(data.huaweicloud_availability_zones.this.names[0], "") : var.availability_zone

  volume_name = var.volume_name
  volume_type = var.volume_type
  volume_size = var.volume_size
  volume_tags = var.volume_tags
}
