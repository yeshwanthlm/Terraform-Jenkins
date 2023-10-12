provider "aws" {
    region = "us-east-1"  
}

resource "aws_instance" "Suriya" {
  ami           = "" # us-west-2
  instance_type = "t2.micro"
  tags = {
      Name = "Bharath"
  }
}
