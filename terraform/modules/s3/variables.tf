variable "aws_region" {
  default = "us-east-1"
}

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
  default = true
}

variable "log_bucket" {
  description = "S3 bucket for access logs"
  default     = null
}