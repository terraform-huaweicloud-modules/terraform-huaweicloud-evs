data "huaweicloud_availability_zones" "test" {}

module "postpaid_evs_volume" {
  source = "../../modules/evs-volume"

  evs_availability_zone = data.huaweicloud_availability_zones.test.names[0]
  evs_volume_type       = var.evs_volume_type
  evs_iops              = var.evs_iops
  evs_throughput        = var.evs_throughput
  evs_device_type       = var.evs_device_type
  evs_name              = var.evs_name
  evs_description       = var.evs_description
  evs_size              = var.evs_size
  evs_multiattach       = var.evs_multiattach
  evs_tags              = var.evs_tags
}
