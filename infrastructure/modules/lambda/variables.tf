variable "lambda_function_name" {
  description = "Name of the Lambda function"
  type        = string
}

variable "lambda_role_arn" {
  description = "IAM Role ARN the Lambda function assumes"
  type        = string
}

variable "lambda_handler" {
  description = "Lambda function handler (e.g., 'index.handler')"
  type        = string
}

variable "lambda_runtime" {
  description = "Lambda runtime (e.g., 'nodejs14.x', 'python3.8')"
  type        = string
}

variable "lambda_timeout" {
  description = "Timeout in seconds for the Lambda function"
  type        = number
  default     = 60
}

variable "lambda_zip_file" {
  description = "Path to the Lambda zip file"
  type        = string
}

variable "environment_variables" {
  description = "Environment variables to pass to the Lambda"
  type        = map(string)
  default     = {}
}

variable "tags" {
  description = "Tags to apply to the Lambda function"
  type        = map(string)
  default     = {}
}