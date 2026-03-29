data "archive_file" "lambda_zip" {
  type        = "zip"
  source_dir  = "${path.module}/../../../src/lambda"
  output_path = "${path.module}/lambda.zip"
}
