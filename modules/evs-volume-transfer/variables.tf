######################################################################
# Configurations of EVS volume transfer
######################################################################

variable "is_volume_transfer_create" {
  type        = bool
  description = "Controls whether the EVS volume transfer should be created (it affects all EVS related resources under this module)"
  default     = true
  nullable    = false
}

variable "volume_transfer_volume_id" {
  type        = string
  description = "The volume ID to be transferred"
  default     = null
}

variable "volume_transfer_name" {
  type        = string
  description = "The name of the volume transfer record"
  default     = null
}
