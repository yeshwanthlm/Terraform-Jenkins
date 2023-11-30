provider "aws" {
    region = "us-east-1"  
}

resource "aws_instance" "foo" {
  ami           = "ami-05fa00d4c63e32376" # us-west-2
  instance_type = "t2.micro"
  tags = {
      Name = "TF-Instance"
  }
}
resource "aws_s3_bucket" "example" {
  bucket = "cpeibucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_object" "object" {
  bucket = aws_s3_bucket.example.bucket
  key    = "organizations-100.csv"
  source = "./organizations-100.csv"
}
