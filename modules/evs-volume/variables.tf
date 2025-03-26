######################################################################
# Configurations of prepaid parameters
######################################################################

variable "volume_charging_mode" {
  type        = string
  description = "The charging mode of the EVS volume."
  default     = null
}

variable "volume_period_unit" {
  type        = string
  description = "The charging period unit of the EVS volume."
  default     = null
}

variable "volume_period" {
  type        = number
  description = "The charging period of the EVS volume."
  default     = null
}

variable "volume_auto_renew" {
  type        = string
  description = "Whether auto-renew is enabled for EVS volume."
  default     = null
}

######################################################################
# Configurations of EVS volume
######################################################################

variable "is_volume_create" {
  type        = bool
  description = "Controls whether the EVS volumes should be created (it affects all EVS related resources under this module)"
  default     = true
  nullable    = false
}

variable "volume_availability_zone" {
  type        = string
  description = "The availability zone for the EVS volume."
  default     = null
}

variable "volume_type" {
  type        = string
  description = "The EVS volume type."
  default     = null
}

variable "volume_server_id" {
  type        = string
  description = "The server ID to which the EVS volume is to be mounted."
  default     = null
}

variable "volume_iops" {
  type        = number
  description = "The IOPS(Input/Output Operations Per Second) for the EVS volume."
  default     = null
}

variable "volume_throughput" {
  type        = number
  description = "The throughput for the EVS volume."
  default     = null
}

variable "volume_device_type" {
  type        = string
  description = "The device type for the EVS volume."
  default     = null
}

variable "volume_name" {
  type        = string
  description = "The EVS volume name."
  default     = null
}

variable "volume_description" {
  type        = string
  description = "The EVS volume description."
  default     = null
}

variable "volume_size" {
  type        = number
  description = "The EVS volume size, in GB."
  default     = null
}

variable "volume_backup_id" {
  type        = string
  description = "The backup ID from which to create the EVS volume."
  default     = null
}

variable "volume_image_id" {
  type        = string
  description = "The image ID from which to create the EVS volume."
  default     = null
}

variable "volume_snapshot_id" {
  type        = string
  description = "The snapshot ID from which to create the EVS volume."
  default     = null
}

variable "volume_kms_id" {
  type        = string
  description = "The encryption KMS ID."
  default     = null
}

variable "volume_multiattach" {
  type        = bool
  description = "Whether the EVS volume is shareable."
  default     = null
}

variable "volume_dedicated_storage_id" {
  type        = string
  description = "The ID of the DSS storage pool accommodating the EVS volume."
  default     = null
}

variable "volume_tags" {
  type        = map(string)
  description = "The key/value pairs to associate with the EVS volume."
  default     = null
}

variable "volume_enterprise_project_id" {
  type        = string
  description = "The enterprise project ID of the disk. For enterprise users, if omitted, default enterprise project will be used."
  default     = null
}

variable "volume_cascade" {
  type        = bool
  description = "The delete mode of snapshot."
  default     = null
}
