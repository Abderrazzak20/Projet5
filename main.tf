terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "eu-west-3"
}

resource "aws_instance" "my_server" {
  ami           = "ami-0be40a46b4111e7f5"
  instance_type = "t3.micro"
  key_name = "aws_openclassrooms_edo_p5"

  tags = {
    Name = "learn-terraform"
  }
}