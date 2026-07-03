output "instance_public_ip" {
  description = "Public IPv4 Adresse der EC2 Instanz"
  value       = aws_instance.m300_webapp.public_ip
}

output "instance_public_dns" {
  description = "Public DNS der EC2 Instanz"
  value       = aws_instance.m300_webapp.public_dns
}

output "ssh_command" {
  description = "SSH Befehl zum Verbinden"
  value       = "ssh -i ${abspath("${path.module}/m300-key-new")} ubuntu@${aws_instance.m300_webapp.public_ip}"
}

output "website_url" {
  description = "URL der Web-App"
  value       = "http://${aws_instance.m300_webapp.public_ip}"
}