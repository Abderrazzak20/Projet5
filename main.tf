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

resource "aws_instance" "app_server" {
  ami           = "ami-0d3c032f5934e1b41"
  instance_type = "t3.micro"

  tags = {
    Name = "learn-terraform"
  }
}