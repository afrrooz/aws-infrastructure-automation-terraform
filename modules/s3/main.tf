resource "aws_s3_bucket" "my_bucket" {
    bucket = var.Name

  tags = {
    Name        = var.Name
  }
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.my_bucket.id
  versioning_configuration {
    status = var.versioning
  }
}

resource "aws_s3_bucket_public_access_block" "public_access_block" {
  bucket = aws_s3_bucket.my_bucket.id

  block_public_acls       = var.public_access_block.block_public_acls
}