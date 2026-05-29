output "instance_public_ip" {
  description = "Public IPv4 Adresse der EC2 Instanz"
  value       = aws_instance.m300_webapp.public_ip
}

output "instance_public_dns" {
  description = "Public DNS der EC2 Instanz"
  value       = aws_instance.m300_webapp.public_dns
}

output "ssh_command" {
  description = "SSH Befehl fuer die Verbindung"
  value       = "ssh -i C:/Users/koichiro.moeller/.ssh/m300-key ubuntu@${aws_instance.m300_webapp.public_ip}"
}

output "website_url" {
  description = "URL der Web-App"
  value       = "http://${aws_instance.m300_webapp.public_ip}"
}

output "monitoring_url" {
  description = "URL von Uptime Kuma"
  value       = "http://${aws_instance.m300_webapp.public_ip}:3001"
}