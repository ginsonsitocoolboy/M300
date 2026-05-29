# Modul 300 V2 Cloud-Projekt

## 1. Einleitung
In diesem Projekt erstelle ich einen einfachen cloudbasierten Service auf AWS. Der Fokus liegt darauf, eine eigene Cloud-Infrastruktur aufzubauen, diese sauber zu dokumentieren und später mit weiteren Technologien wie Docker, CI/CD und Monitoring zu erweitern.

## 2. Ausgangslage
Im Modul 300 soll ein cloudbasierter Service eingerichtet und dokumentiert werden. Für die Variante V2 wird ein eigenes Projekt umgesetzt, bei dem neue Technologien praktisch eingesetzt werden. Dazu gehören in meinem Projekt AWS, Terraform, GitHub, Docker Compose und später eine automatische Deployment-Lösung.

## 3. Projektziel
Ziel ist es, eine einfache Web-Applikation auf einer AWS EC2 Instanz bereitzustellen. Die Infrastruktur soll nicht nur manuell erstellt werden, sondern teilweise mit Terraform beschrieben und aufgebaut werden.

Bisher habe ich Terraform heruntergeladen, das Projektziel definiert, ein GitHub Repository erstellt und mit der ersten Dokumentation begonnen. Als nächstes wird die AWS EC2 Instanz mit Terraform vorbereitet und anschliessend mit Docker Compose für die Web-Applikation genutzt.

## 4. Architektur
Die geplante Architektur sieht so aus:

GitHub Repository -> Terraform Konfiguration -> AWS EC2 Instanz -> Docker Compose -> Web-App

Später soll die Architektur erweitert werden:

GitHub Repository -> CI/CD Deployment -> AWS EC2 Instanz -> Docker Compose -> Web-App -> Monitoring

## 5. Anpassung zum ursprünglichen Plan
Ursprünglich war GitLab CI/CD geplant. Da ich aktuell mit GitHub arbeite, wird das Repository auf GitHub geführt. Die Projektdateien, die Dokumentation, die Terraform-Dateien und später die Docker-Konfiguration werden dort versioniert.

Anstelle einer rein manuellen AWS Einrichtung wird Terraform verwendet, damit die Cloud-Infrastruktur nachvollziehbar und wiederholbar erstellt werden kann. Dadurch passt das Projekt besser zu den V2-Zielen, weil neben AWS auch Infrastructure as Code eingesetzt wird.

