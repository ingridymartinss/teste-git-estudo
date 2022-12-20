module "s3_buckets" {
  source = "./terraform/s3_bucket_module.tf"

  ingridy_data_etl_bucket_name = "ingridy-data-etl"
  ingridy_data_bucket_name     = "ingridy-data"
}
