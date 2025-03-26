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

variable "volume_multiattach" {
  type        = bool
  description = "Whether the EVS volume is shareable."
  default     = null
}

variable "volume_tags" {
  type        = map(string)
  description = "The key/value pairs to associate with the EVS volume."
  default     = null
}
