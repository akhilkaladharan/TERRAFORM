# Configure the AWS provider
provider "aws" {
  region = "ap-south-1" # Use your desired AWS region
}

# Create the S3 bucket
resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-unique-versioned-bucket-mannchatti" # Must be globally unique
  tags = {
    Name        = "mannchatti"
    Environment = "Dev"
  }
}

# Enable versioning for the S3 bucket
resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.my_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

output "s3_bucket_id" {
    value = aws_s3_bucket.my_bucket.id
}


