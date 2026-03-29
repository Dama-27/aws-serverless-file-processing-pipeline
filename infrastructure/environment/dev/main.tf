module "s3" {
  source = "../../modules/s3"

  bucket_name        = var.bucket_name   
  environment        = "dev"                
  enable_versioning  = true              
  enable_logging     = false                
  log_bucket         = "my-dev-log-bucket"  
}

module "lambda_function" {
  source              = "../../modules/lambda"
  lambda_function_name = "my-lambda"
  lambda_role_arn     = aws_iam_role.lambda_role.arn
  lambda_handler      = "index.handler"
  lambda_runtime      = "nodejs20.x"
  lambda_zip_file     = data.archive_file.lambda_zip.output_path
  environment_variables = {
    "KEY" = "value"
  }
  tags = {
    "Environment" = "dev"
  }
}