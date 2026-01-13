provider "aws" {
    region = "ap-south-1"  
}

resource "aws_instance" "foo" {
  ami           = "ami-05fa00d4c63e32376" # ap-south-1
  instance_type = "t3.micro"
  tags = {
      Name = "TF-Instance"
  }
}
