variable "aws_region" {
  description = "AWS Region für alle Ressourcen"
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "EC2 Instance Type"
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "AMI ID für die EC2 Instanz"
  type        = string
  default     = "ami-05cf1e9f73fbad2e2"
}

variable "security_group_id" {
  description = "ID der bestehenden Security Group"
  type        = string
  default     = "sg-0f5f0eabbcc268057"
}