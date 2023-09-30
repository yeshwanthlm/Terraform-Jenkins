provider "aws" {
  region  = "ca-central-1"
  profile = "default"
}

resource "aws_instance" "foo" {
  ami           = "ami-097300c6222ac2b2a" # ca-central-1
  instance_type = "t2.micro"
  vpc_security_group_ids = "sg-03579e4db8b40b09f"
  subnet_id     = "subnet-00529fad8ff2e503d"
  tags = {
      Name = "TF-Instance"
  }
}
