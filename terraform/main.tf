terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }

    tls = {
      source  = "hashicorp/tls"
      version = ">= 4.0"
    }

    local = {
      source  = "hashicorp/local"
      version = ">= 2.0"
    }
  }

  required_version = ">= 1.5.0"
}

provider "aws" {
  region = "us-east-1"
}

resource "tls_private_key" "m300_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "local_sensitive_file" "private_key" {
  filename        = "${path.module}/m300-key.pem"
  content         = tls_private_key.m300_key.private_key_pem
  file_permission = "0600"
}

resource "local_file" "public_key" {
  filename = "${path.module}/m300-key.pub"
  content  = tls_private_key.m300_key.public_key_openssh
}

resource "aws_key_pair" "m300_key" {
  key_name   = "m300-key"
  public_key = tls_private_key.m300_key.public_key_openssh

  tags = {
    Name    = "m300-key"
    Project = "Modul300"
  }
}

resource "aws_instance" "m300_webapp" {
  ami           = "ami-05cf1e9f73fbad2e2"
  instance_type = "t2.micro"

  key_name = aws_key_pair.m300_key.key_name

  vpc_security_group_ids = ["sg-0f5f0eabbcc268057"]

  tags = {
    Name    = "M300-WebApp-EC2"
    Project = "Modul300"
  }
}