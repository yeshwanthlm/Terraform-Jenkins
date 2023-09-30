provider "aws" {
  region  = "ca-central-1"
  profile = "default"
}

resource "aws_instance" "foo" {
  ami           = "ami-097300c6222ac2b2a" # ca-central-1
  instance_type = "t2.micro"
  subnet_id     = "subnet-0e2b335f2afe975fc"
  tags = {
      Name = "TF-Instance"
  }
}
