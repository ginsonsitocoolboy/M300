# Modul 300 V2 Cloud-Projekt

## 1. Einleitung
In diesem Projekt wird eine einfache cloudbasierte Web-Applikation auf AWS erstellt.

## 2. Ausgangslage
Im Modul 300 soll ein cloudbasierter Service eingerichtet und dokumentiert werden.

## 3. Projektziel
Ziel ist es, eine Web-Applikation auf einer AWS EC2 Instanz bereitzustellen. Die Applikation läuft mit Docker Compose und wird später automatisch über GitLab CI/CD deployed.

## 4. Architektur
GitLab Repository -> GitLab CI/CD Pipeline -> AWS EC2 Instanz -> Docker Compose -> Web-App