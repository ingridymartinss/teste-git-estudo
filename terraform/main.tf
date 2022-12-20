resource "aws_s3_bucket" "data-bucket" {
  bucket = var.data-bucket-name
}

resource "aws_s3_bucket" "etl-bucket" {
  bucket = var.etl-bucket-name
}