terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
  }

  required_version = ">= 1.5.0"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_key_pair" "m300_key_new" {
  key_name   = "m300-key-new"
  public_key = file("${path.module}/m300-key-new.pub")
}

resource "aws_instance" "m300_webapp" {
  ami           = "ami-05cf1e9f73fbad2e2"
  instance_type = "t2.micro"

  key_name = aws_key_pair.m300_key_new.key_name

  vpc_security_group_ids = ["sg-0f5f0eabbcc268057"]

  tags = {
    Name    = "M300-WebApp-EC2"
    Project = "Modul300"
  }
}