######################################################################
# Configurations of EVS snapshot
######################################################################

variable "is_snapshot_create" {
  type        = bool
  description = "Controls whether the EVS snapshots should be created (it affects all EVS related resources under this module)"
  default     = true
  nullable    = false
}

variable "snapshot_volume_id" {
  type        = string
  description = "The ID of the snapshot's source EVS volume"
  default     = null
}

variable "snapshot_name" {
  type        = string
  description = "The name of the snapshot"
  default     = null
}

variable "snapshot_metadata" {
  type        = map(string)
  description = "The user-defined metadata key-value pair"
  default     = null
}

variable "snapshot_description" {
  type        = string
  description = "The description of the snapshot"
  default     = null
}

variable "snapshot_force" {
  type        = bool
  description = "The flag for forcibly creating a snapshot"
  default     = null
}
