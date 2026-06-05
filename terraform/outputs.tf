output "instance_public_ip" {
  description = "Public IPv4 Adresse der EC2 Instanz"
  value       = aws_instance.m300_webapp.public_ip
}

output "instance_public_dns" {
  description = "Public DNS der EC2 Instanz"
  value       = aws_instance.m300_webapp.public_dns
}

output "ssh_command_public_ip" {
  description = "SSH Befehl mit Public IP"
  value       = "ssh -i ${abspath("${path.module}/m300-key.pem")} ubuntu@${aws_instance.m300_webapp.public_ip}"
}

output "ssh_command_elastic_ip" {
  description = "SSH Befehl mit Elastic IP"
  value       = "ssh -i ${abspath("${path.module}/m300-key.pem")} ubuntu@98.94.188.179"
}

output "website_url_public_ip" {
  description = "URL der Web-App mit Public IP"
  value       = "http://${aws_instance.m300_webapp.public_ip}"
}

output "website_url_elastic_ip" {
  description = "URL der Web-App mit Elastic IP"
  value       = "http://98.94.188.179"
}

output "monitoring_url_elastic_ip" {
  description = "URL von Uptime Kuma mit Elastic IP"
  value       = "http://98.94.188.179:3001"
}