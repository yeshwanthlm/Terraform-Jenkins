provider "aws" {
    region = "us-east-1"  
}

resource "aws_instance" "Suriya" {
  ami           = "ami-041feb57c611358bd" # us-west-2
  instance_type = "t2.micro"
  tags = {
      Name = "Bharath"
  }
}
