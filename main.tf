provider "aws" {
    region = "eu-west-2"  
}

resource "aws_instance" "foo" {
  ami           = "ami-0aa825d61d0d52fa4"
  instance_type = "t2.micro"
  tags = {
      Name = "TF-Instance"
  }
}
