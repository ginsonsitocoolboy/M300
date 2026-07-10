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
  region = var.aws_region
}

resource "aws_key_pair" "m300_key_new" {
  key_name   = "m300-key-new"
  public_key = file("${path.module}/m300-key-new.pub")
}

resource "aws_instance" "m300_webapp" {
  ami                     = var.ami_id
  instance_type           = var.instance_type
  key_name                = aws_key_pair.m300_key_new.key_name
  vpc_security_group_ids  = [var.security_group_id]

  tags = {
    Name    = "M300-WebApp-EC2"
    Project = "Modul300"
  }
}