resource "aws_s3_bucket" "test_bucket" {
  bucket = "${var.project_name}-test-bucket"

  tags = {
    Name        = "${var.project_name}-test-bucket"
    Environment = "dev"
  }
}