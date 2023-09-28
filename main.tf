provider "aws" {
    region = "ca-central-1"  
}

resource "aws_instance" "foo" {
  ami           = "ami-097300c6222ac2b2a" # us-west-2
  instance_type = "t2.micro"
  tags = {
      Name = "TF-Instance"
  }
}
