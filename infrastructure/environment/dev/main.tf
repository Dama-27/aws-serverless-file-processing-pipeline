module "s3" {
  source = "../../modules/s3"

  bucket_name        = var.bucket_name     # <– the actual name you want
  environment        = "dev"                # optional; used only for tags
  enable_versioning  = true                 # or false
  enable_logging     = false                 # or false
  log_bucket         = "my-dev-log-bucket"  # if logging=true
}