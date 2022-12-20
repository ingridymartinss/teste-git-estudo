resource "aws_s3_bucket" "data-bucket-name" {
  bucket = var.data-bucket-name
}

resource "aws_s3_bucket" "etl-bucket-name" {
  bucket = var.etl-bucket-name
}

terraform {
  backend "s3" {
    bucket = "tfstateingridy"
    key    = "tfstate"
    region = "us-east-1"
  }
}
