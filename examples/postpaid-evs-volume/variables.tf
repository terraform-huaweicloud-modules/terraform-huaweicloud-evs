######################################################################
# Configurations of prepaid parameters
######################################################################
variable "charging_mode" {
  description = "The charging mode of the EVS volume."

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

variable "evs_multiattach" {
  description = "Whether the EVS volume is shareable."

  type    = bool
  default = null
}

variable "evs_tags" {
  description = "The key/value pairs to associate with the EVS volume."

  type    = map(string)
  default = null
}
