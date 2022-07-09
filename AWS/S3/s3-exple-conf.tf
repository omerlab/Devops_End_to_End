terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

#Provider profile and region in which all the resources will create
provider "aws" {
  profile = "Bris"
  region  = "us-east-1"
}

#Resource to create s3 bucket
resource "aws_s3_bucket" "demo-lab-bucket"{
  bucket = "bris-lab-bucket"

  tags = {
    Name = "Demo-bucket"
  }
}

# Enable Versioning on a Bucket
#  ===============================

# Enabling versioning enables multiple versions of all the objects in the bucket. You should consider enabling versioning-

# To prevent an object from being deleted or overwritten by mistake.
# To archive all version so that you can retrieve any version you want at any time


resource "aws_s3_bucket_versioning" "versioning_demo" {
  bucket = aws_s3_bucket.demo-lab-bucket.bucket
  versioning_configuration {
    status = "Enabled"
  }
}

/*
# B. Create a bucket for logs aggregation

resource "aws_s3_bucket" "bris-demo_log_bucket" {
  bucket = "first-log-bucket"
 # acl    = "log-delivery-write"
}

resource "aws_s3_bucket" "mylab-example_bucket" {
  bucket = "test-log-bucket"
 # acl    = "log-delivery-write"
}

resource "aws_s3_bucket_acl" "log_bucket_acl" {
  bucket = aws_s3_bucket.mylab-example_bucket.id
  acl    = "private"
}

resource "aws_s3_bucket_logging" "log" {
  bucket = "my-log-test-bucket"
 target_bucket = aws_s3_bucket.bris-demo_log_bucket.id
 target_prefix = "log/"

}
*/

# Enable Encryption on Bucket
#  All new objects are encrypted when you store them in the bucket.
#  In other terms, S3 encrypts an object before saving it to disk and decrypts it when you download the objects.

resource "aws_s3_bucket_server_side_encryption_configuration" "demo-encryption" {
  bucket = aws_s3_bucket.demo-lab-bucket.bucket

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

#  Create a key in KMS first and then you need to provide the ARN 

resource "aws_kms_key" "s3key" {
  description             = "key to encrypt bucket objects"
  deletion_window_in_days = 7
}

resource "aws_s3_bucket_server_side_encryption_configuration" "demo_encryption" {
  bucket = aws_s3_bucket.demo-lab-bucket.bucket

  rule {
    apply_server_side_encryption_by_default {
      kms_master_key_id = aws_kms_key.s3key.arn
      sse_algorithm     = "aws:kms"
    }
  }
}

# Prevent objects from becoming public
# We will use the property AccessControl(Canned ACL) as well as PublicAccessBlockConfiguration 

resource "aws_s3_bucket_acl" "demo_bucket_acl" {
  bucket = aws_s3_bucket.demo-lab-bucket.bucket
  acl    = "private"
}

resource "aws_s3_bucket_public_access_block" "demo_public_block" {
  bucket = aws_s3_bucket.demo-lab-bucket.bucket

  block_public_acls   = true
  block_public_policy = true
  ignore_public_acls = true
  restrict_public_buckets = true
}