variable "bucket_name" {
  description = "S3 bucket name"
}

variable "project" {
  default = "example-project"
}

variable "environment" {
  default = "dev"
}

variable "enable_versioning" {
  default = true
}

variable "enable_logging" {
  default = false
}

variable "log_bucket" {
  description = "S3 bucket for access logs"
  default     = null
}

variable "tags" {
  type = map(string)
  description = "resource tags for s3 bucket"

  default = {
    "Service" = "file-processing"
  }
}