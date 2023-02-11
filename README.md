# AWS S3 Module
Terraform module which creates a bucket on S3 and dynamodb lock table if configured. Please see [MODULE.md](MODULE.md) for module documentation.

## Usage
You can use below module configuration in your terraform configuration:
```
module "example-bucket" {
  source                    = "git::https://github.com/thevpnbeast/s3-terraform.git?ref=v0.0.1"
  bucket_name               = "example-bucket"
  versioning_enabled        = true
  encryption_enabled        = true
  lock_table_enabled        = false
}
```