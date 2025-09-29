provider "aws" {
    region = "ap-south-1"  
}

resource "aws_instance" "assath" {
  ami           = "ami-01b6d88af12965bb6" # us-west-2
  instance_type = "t2.micro"
  tags = {
      Name = "TF-Instance"
  }
}
