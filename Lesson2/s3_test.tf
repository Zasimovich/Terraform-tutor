resource "aws_s3_bucket" "test_bucket" {
  bucket = "my-test-bucket-232345"
  acl    = "private"
  tags = {
    Name        = "My backet"
    Environment = "Dev"
  }
}

