# Configure the AWS provider
provider "aws" {
  region = "us-east-1"
}

# Create the ingridy-data-etl bucket
resource "aws_s3_bucket" "ingridy_data_etl" {
  bucket = "${var.ingridy_data_etl_bucket_name}"
  acl    = "private"
}

# Create the ingridy-data bucket
resource "aws_s3_bucket" "ingridy_data" {
  bucket = "${var.ingridy_data_bucket_name}"
  acl    = "private"
}

# Declare input variables
variable "ingridy_data_etl_bucket_name" {
  type = string
}

variable "ingridy_data_bucket_name" {
  type = string
}
