provider "aws" {
  region  = "ca-central-1"
  profile = "default"
}

resource "aws_instance" "example_server" {
  ami           = "ami-0f0e79f25a393af23"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0e2b335f2afe975fc"
  tags = {
      Name = "TF-Instance"
  }
}
