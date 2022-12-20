resource "aws_s3_bucket" "data" {
  bucket = var.data-bucket-name
}

resource "aws_s3_bucket" "data-etl" {
  bucket = var.data-etl-bucket-name
}