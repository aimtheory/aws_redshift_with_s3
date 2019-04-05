resource "aws_s3_bucket" "redshift" {
  bucket = "${var.redshift_bucket_name}"
  acl    = "private"
}
