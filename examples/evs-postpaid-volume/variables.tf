######################################################################
# Configurations of EVS volume
######################################################################
variable "volume_availability_zone" {
  type        = string
  description = "The availability zone for the EVS volume"
  default     = null
}

variable "volume_type" {
  type        = string
  description = "The EVS volume type"
  default     = null
}

variable "volume_iops" {
  type        = number
  description = "The IOPS(Input/Output Operations Per Second) for the EVS volume"
  default     = null
}

variable "volume_throughput" {
  type        = number
  description = "The throughput for the EVS volume"
  default     = null
}

variable "volume_device_type" {
  type        = string
  description = "The device type for the EVS volume"
  default     = null
}

variable "volume_name" {
  type        = string
  description = "The EVS volume name"
  default     = null
}

variable "volume_description" {
  type        = string
  description = "The EVS volume description"
  default     = null
}

variable "volume_size" {
  type        = number
  description = "The EVS volume size, in GB"
  default     = null
}

variable "volume_multiattach" {
  type        = bool
  description = "Whether the EVS volume is shareable"
  default     = null
}

variable "volume_tags" {
  type        = map(string)
  description = "The key/value pairs to associate with the EVS volume"
  default     = null
}
