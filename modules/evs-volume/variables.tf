######################################################################
# Configurations of prepaid parameters
######################################################################
variable "charging_mode" {
  description = "The charging mode of the EVS volume."

  type    = string
  default = null
}

variable "period_unit" {
  description = "The charging period unit of the EVS volume."

  type    = string
  default = null
}

variable "period" {
  description = "The charging period of the EVS volume."

  type    = number
  default = null
}

variable "auto_renew" {
  description = "Whether auto-renew is enabled for EVS volume."

  type    = string
  default = null
}

######################################################################
# Configurations of EVS volume
######################################################################
variable "evs_availability_zone" {
  description = "The availability zone for the EVS volume."

  type = string
}

variable "evs_volume_type" {
  description = "The EVS volume type."

  type = string
}

variable "evs_server_id" {
  description = "The server ID to which the EVS volume is to be mounted."

  type    = string
  default = null
}

variable "evs_iops" {
  description = "The IOPS(Input/Output Operations Per Second) for the EVS volume."

  type    = number
  default = null
}

variable "evs_throughput" {
  description = "The throughput for the EVS volume."

  type    = number
  default = null
}

variable "evs_device_type" {
  description = "The device type for the EVS volume."

  type    = string
  default = null
}

variable "evs_name" {
  description = "The EVS volume name."

  type    = string
  default = null
}

variable "evs_description" {
  description = "The EVS volume description."

  type    = string
  default = null
}

variable "evs_size" {
  description = "The EVS volume size, in GB."

  type    = number
  default = null
}

variable "evs_backup_id" {
  description = "The backup ID from which to create the EVS volume."

  type    = string
  default = null
}

variable "evs_image_id" {
  description = "The image ID from which to create the EVS volume."

  type    = string
  default = null
}

variable "evs_snapshot_id" {
  description = "The snapshot ID from which to create the EVS volume."

  type    = string
  default = null
}

variable "evs_kms_id" {
  description = "The encryption KMS ID."

  type    = string
  default = null
}

variable "evs_multiattach" {
  description = "Whether the EVS volume is shareable."

  type    = bool
  default = null
}

variable "evs_dedicated_storage_id" {
  description = "The ID of the DSS storage pool accommodating the EVS volume."

  type    = string
  default = null
}

variable "evs_tags" {
  description = "The key/value pairs to associate with the EVS volume."

  type    = map(string)
  default = null
}

variable "enterprise_project_id" {
  description = "The enterprise project ID of the disk. For enterprise users, if omitted, default enterprise project will be used."

  type    = string
  default = null
}

variable "evs_cascade" {
  description = "The delete mode of snapshot."

  type    = bool
  default = null
}
