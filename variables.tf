variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = "AWS region to create resources on"
}

variable "bucket_name" {
  type        = string
  default     = "thevpnbeast-terraform-states-1"
  description = "Unique name of the bucket"
}

variable "versioning_enabled" {
  type        = bool
  default     = true
  description = "You want versioning on the bucket or not"
}

variable "encryption_enabled" {
  type        = bool
  default     = true
  description = "You want encryption on the bucket or not"
}

variable "lock_table_enabled" {
  type        = bool
  default     = false
  description = "You want DynamoDB lock table to store lock files or not"
}

variable "lock_table_name" {
  type        = string
  default     = "thevpnbeast-terraform-locks"
  description = "Unique name of the lock table"
}

variable "tags" {
  description = "Tags for the networking resources"
  type        = map(string)
  default = {
    project = "thevpnbeast"
  }
}