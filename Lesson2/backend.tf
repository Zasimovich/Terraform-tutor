# Create a dynamodb table for locking the state file
resource "aws_dynamodb_table" "terraform_state_locks" {
  name         = var.dynamodb_table
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
  tags = {
    "Name"        = var.dynamodb_table
    "Description" = "DynamoDB terraform table to lock states"
  }
  lifecycle {
    prevent_destroy = true
  }
}

# Create an S3 bucket to store the state file in
resource "aws_s3_bucket" "terraform_state" {
  bucket              = var.state_bucket
  object_lock_enabled = true
  lifecycle {
    prevent_destroy = true
  }
  tags = {
    Name        = var.state_bucket
    Description = "S3 Remote Terraform State Store"
  }
}

resource "aws_s3_bucket_object_lock_configuration" "s3_lock_rule" {
  bucket = aws_s3_bucket.terraform_state.id

  rule {
    default_retention {
      mode = "COMPLIANCE"
      days = 5
    }
  }
}

resource "aws_s3_bucket_versioning" "s3_versioning_bucket_backent" {
  bucket = aws_s3_bucket.terraform_state.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "bucket_encription" {
  bucket = aws_s3_bucket.terraform_state.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

resource "aws_s3_bucket_public_access_block" "s3_access_block" {
  bucket                  = aws_s3_bucket.terraform_state.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
