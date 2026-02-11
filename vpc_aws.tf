# Configure the AWS Provider
provider "aws" {
  region = "ap-south-1"
}

# Create the VPC
resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"
  
  tags = {
    Name = "main-vpc"
  }
}
