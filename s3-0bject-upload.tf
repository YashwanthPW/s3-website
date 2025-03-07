data "aws_s3_bucket" "selected-bucket" {
  bucket = "100-my-static-website-${random_string.suffix.result}"
}
resource "aws_s3_object" "object-upload-html" {
  bucket = data.aws_s3_bucket.selected-bucket.id  # Correct reference
  key    = "index.html"
  source = "index.html"
  content_type = "text/html"
}
