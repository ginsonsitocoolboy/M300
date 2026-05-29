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

data "aws_ami" "ubuntu_2404" {
  most_recent = true
  owners      = ["099720109477"]

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-noble-24.04-amd64-server-*"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
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

    # Fuer den Anfang offen. Spaeter besser auf deine eigene IP einschraenken.
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

    # Fuer den Anfang offen. Spaeter besser auf deine eigene IP einschraenken.
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
  ami                    = data.aws_ami.ubuntu_2404.id
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.m300_key.key_name
  vpc_security_group_ids = [aws_security_group.m300_sg.id]

  tags = {
    Name    = "M300-WebApp-EC2"
    Project = "Modul300"
  }
}