provider "aws" {
    region = "ca-central-1"  
}

resource "aws_instance" "foo" {
  ami           = "ami-097300c6222ac2b2a" # ca-central-1
  instance_type = "t2.micro"
  subnet_id     = "subnet-00529fad8ff2e503d"
  tags = {
      Name = "TF-Instance"
  }
}
