provider "aws" {
  region = "ap-south-1"
}

# EC2 Instance
resource "aws_instance" "foo" {
  ami           = "ami-01a00762f46d584a1" # ap-south-1
  instance_type = "t3.micro"

  tags = {
    Name = "Ubuntu-Server"
  }
}

# S3 Bucket
resource "aws_s3_bucket" "demo" {
  bucket = "testhydbucket20260910"

  tags = {
    Name        = "Terraform-S3"
    Environment = "Dev"
  }
}

# Create VPC
resource "aws_vpc" "demo-vpc" {
  cidr_block       = "11.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "test-vpc"
  }
}


