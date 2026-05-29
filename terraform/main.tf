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
  region = "eu-central-1"
}

resource "aws_key_pair" "m300_key" {
  key_name   = "m300-key"
  public_key = file("C:/Users/koichiro.moeller/.ssh/m300-key.pub")

  tags = {
    Name    = "m300-key"
    Project = "Modul300"
  }
}

resource "aws_security_group" "m300_sg" {
  name        = "m300-webapp-sg"
  description = "Security Group fuer Modul 300 Web-App"

  ingress {
    description = "SSH Zugriff"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTP Website"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Uptime Kuma Monitoring"
    from_port   = 3001
    to_port     = 3001
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Ausgehender Traffic erlaubt"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "m300-webapp-sg"
    Project = "Modul300"
  }
}

resource "aws_instance" "m300_webapp" {
  ami                    = "ami-05cf1e9f73fbad2e2"
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.m300_key.key_name
  vpc_security_group_ids = [aws_security_group.m300_sg.id]

  tags = {
    Name    = "M300-WebApp-EC2"
    Project = "Modul300"
  }
}