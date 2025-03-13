
data "aws_s3_bucket" "selected-bucket" {
  bucket = aws_s3_bucket.static_site.bucket
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
resource "aws_s3_object" "object-upload-html" {
  bucket = data.aws_s3_bucket.selected-bucket.id  # Correct reference
  key    = "index.html"
  source = "index.html"
  content_type = "text/html"
}
