resource "aws_s3_bucket" "data-bucket-name" {
  bucket = var.data-bucket-name
}

resource "aws_s3_bucket" "etl-bucket-name" {
  bucket = var.etl-bucket-name
}

data "terraform_remote_state" "my_state" {
  backend = "s3"
  config = {
    bucket = aws_s3_bucket.etl-bucket-name.id
    key    = "tfstate/tfstate.tfstate"
    region = "us-east-1"
  }
}