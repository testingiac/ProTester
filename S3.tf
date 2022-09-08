resource "aws_s3_bucket" "unrestricted" {
  bucket = "examplebuckettftest"
  #zpc-skip-policy: ZS-AWS-00034:testing
  acl    = "public-write"
  versioning {
    enabled = true
  }
  logging {
    target_bucket = aws_s3_bucket.log_bucket.id
    target_prefix = "log/"
    }
}
