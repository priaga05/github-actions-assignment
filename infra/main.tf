resource "aws_s3_bucket_server_side_encryption_configuration" "homework" {
  bucket = aws_s3_bucket.homework.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "aws:kms"
    }
  }
}
