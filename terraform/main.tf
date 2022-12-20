resource "aws_s3_bucket" "data-bucket-name" {
  bucket = var.data-bucket-name
  region = "us-east-1"
}

resource "aws_s3_bucket" "etl-bucket-name" {
  bucket = var.etl-bucket-name
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "tfstateingridy"
    key    = "tfstate"
    region = "us-east-1"
  }
}
