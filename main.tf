terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-09748abeb7370d1bc"
  subnet_id     = "subnet-0fedda381a52b9362"
  instance_type = "t2.micro"

  tags = {
    Name = "Batman"
  }
}
