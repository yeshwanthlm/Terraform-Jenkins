#
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }  
  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "ca-central-1"
  profile = "default"
}

resource "aws_instance" "example_server" {
  ami           = "ami-0f0e79f25a393af23"
  instance_type = "t2.micro"

    tags = {
    Name = "midhunraj007@gmail.com"
  }
}
