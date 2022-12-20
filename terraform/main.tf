resource "aws_s3_bucket" "data-bucket-name" {
  bucket = var.data-bucket-name
}

resource "aws_s3_bucket" "etl-bucket-name" {
  bucket = var.etl-bucket-name
}

resource "aws_s3_bucket_policy" "data-bucket-name-policy" {
  bucket = "${aws_s3_bucket.data-bucket-name.id}"

  policy = <<POLICY
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "s3:*"
            ],
            "Resource": [
                "*"
            ]
        }
    ]
}
POLICY
}

resource "aws_s3_bucket_policy" "etl-bucket-name-policy" {
  bucket = "${aws_s3_bucket.etl-bucket-name.id}"

  policy = <<POLICY
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "s3:*"
            ],
            "Resource": [
                "*"
            ]
        }
    ]
}
POLICY
}