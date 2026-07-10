# Arbeitsjournal M300 Koichiro möller

## Arbeitsjournal 22.05.2026

## Tagesziele

Heute wollte ich mein Modul-300-Projekt starten, das Projektziel festlegen, Terraform vorbereiten und mit dem GitHub Repository sowie AWS beginnen.

## Was ich gemacht habe

Ich habe Terraform heruntergeladen und vorbereitet. Danach habe ich mein Projektziel definiert: Ich möchte einen cloudbasierten Service auf AWS erstellen. Ausserdem habe ich mit dem GitHub Repository angefangen und die erste Dokumentation erstellt. Zusätzlich habe ich mich mit AWS und der EC2 Instanz beschäftigt.

## Erreichte Resultate

Am Ende des Tages war das Projektziel klar. Das Repository wurde erstellt und die Dokumentation wurde begonnen. Terraform ist vorbereitet und die ersten AWS Schritte wurden angeschaut.

## Probleme und Lösungen

Am Anfang war nicht ganz klar, wieso GitHub für das Projekt wichtig ist. Ich habe verstanden, dass GitHub für Code, Dokumentation und später für die Versionierung gebraucht wird. Ausserdem gab es ein Problem mit dem SSH-Key-Ordner, weil der Pfad zuerst nicht vorhanden war. Danach wurde der passende Ordner erstellt.

## Eingesetzte Ressourcen

* Aufgabenstellung Modul 300
* GitHub
* AWS Lab
* Terraform
* SSH Key Pair

## Was ich gelernt habe

Ich habe gelernt, dass ein Cloud-Projekt nicht nur aus einem Server besteht. Wichtig sind auch Planung, Dokumentation, Versionierung und eine saubere Struktur im Repository.

## Nächste Schritte

Als Nächstes möchte ich die AWS EC2 Instanz fertig erstellen, die SSH Verbindung testen und danach Docker vorbereiten.





# Arbeitsjournal 29.05.2026

## Tagesziele

Heute wollte ich die AWS Infrastruktur für mein Modul-300-Projekt weiter aufbauen. Das Ziel war, Terraform korrekt zu verwenden, eine EC2 Instanz zu erstellen und den Zugriff auf den Server vorzubereiten.

## Was ich gemacht habe

Ich habe heute an der Terraform Konfiguration gearbeitet. Dabei habe ich `main.tf` und `output.tf` angepasst. Ich habe die bestehende AWS Umgebung berücksichtigt und das vorhandene Key Pair `m300-key` verwendet. Ausserdem habe ich eine bestehende Security Group eingebunden.

Danach habe ich Terraform ausgeführt und eine EC2 Instanz in der Region `us-east-1` erstellt. Anschliessend habe ich der Instanz eine Elastic IP zugewiesen, damit der Server eine feste öffentliche IP-Adresse hat.

## Erreichte Resultate

Am Ende des Tages war die EC2 Instanz erfolgreich erstellt. Die Elastic IP wurde ebenfalls zugewiesen. Damit ist die grundlegende AWS Infrastruktur für das Projekt vorhanden.

## Probleme und Lösungen

Ein Problem war, dass Terraform zuerst keine Berechtigung hatte, ein neues Key Pair zu importieren. Deshalb habe ich das bereits vorhandene Key Pair `m300-key` verwendet.

Ein weiteres Problem war, dass die SSH Verbindung zur Instanz noch nicht funktioniert hat und ein Connection Timeout kam. Deshalb muss als Nächstes geprüft werden, ob Port 22 in der Security Group erlaubt ist, ob die richtige Elastic IP verwendet wird und ob die Instanz korrekt gestartet ist.

## Eingesetzte Ressourcen

* AWS Lab
* EC2
* Elastic IP
* Terraform
* Key Pair `m300-key`
* Security Group
* GitHub Repository

## Was ich gelernt habe

Ich habe gelernt, dass Terraform auch bestehende AWS Ressourcen verwenden kann, zum Beispiel ein vorhandenes Key Pair oder eine vorhandene Security Group. Ausserdem habe ich gesehen, dass eine EC2 Instanz nicht automatisch erreichbar ist. Dafür müssen IP-Adresse, Security Group und SSH Zugriff korrekt eingerichtet sein.

## Nächste Schritte

Als Nächstes möchte ich die SSH Verbindung zur EC2 Instanz testen. Danach installiere ich Docker und Docker Compose auf dem Server, damit später die Web-Applikation als Container laufen kann.


# Arbeitsjournal 05.06.2026

## Tagesziele

Heute wollte ich die SSH Verbindung zur AWS EC2 Instanz herstellen und prüfen, ob ich mich korrekt mit dem Server verbinden kann.

## Was ich gemacht habe

Ich habe versucht, mich per SSH mit der EC2 Instanz zu verbinden. Dabei habe ich mit dem privaten Key gearbeitet und geprüft, ob der Key zur Instanz passt. Ausserdem habe ich kontrolliert, ob der richtige Benutzer, die richtige IP-Adresse und der richtige Key verwendet werden.

## Erreichte Resultate

Die Verbindung zur Instanz hat heute noch nicht richtig funktioniert. Ich konnte aber eingrenzen, dass das Problem sehr wahrscheinlich mit den SSH Keys zusammenhängt. Dadurch weiss ich jetzt genauer, worauf ich beim nächsten Mal achten muss.

## Probleme und Lösungen

Das Hauptproblem war, dass die SSH Verbindung nicht korrekt aufgebaut werden konnte. Es gab Probleme mit den Keys, weil der verwendete Key nicht richtig zur Instanz oder zum Key Pair gepasst hat. Dadurch wurde die Verbindung verweigert oder konnte nicht sauber hergestellt werden.

Ich habe verstanden, dass bei AWS der private Key lokal vorhanden sein muss und genau zum Key Pair der EC2 Instanz passen muss. Das muss beim nächsten Mal sauber geprüft werden.

## Eingesetzte Ressourcen

- AWS Lab
- EC2 Instanz
- Elastic IP
- SSH
- SSH Key Pair
- Terraform
- GitHub Repository

## Was ich gelernt habe

Ich habe gelernt, dass der SSH Zugriff bei AWS stark von den richtigen Keys abhängt. Wenn der falsche private Key verwendet wird oder der Key nicht zur Instanz passt, funktioniert die Verbindung nicht. Ausserdem habe ich gelernt, dass man beim Erstellen der Instanz genau darauf achten muss, welches Key Pair ausgewählt wird.

## Nächste Schritte

Beim nächsten Mal werde ich die SSH Keys nochmals sauber prüfen und sicherstellen, dass der richtige private Key verwendet wird. Danach sollte ich sicher weiterkommen und die Verbindung zur EC2 Instanz herstellen können. Anschliessend kann ich Docker auf dem Server installieren und mit der Web-Applikation weitermachen.



# Arbeitsjournal 12.06.2026

## Tagesziele

Heute wollte ich die AWS EC2 Instanz sauber neu erstellen, die SSH Verbindung korrekt zum Laufen bringen und das GitHub Repository auf dem Server vorbereiten.

## Was ich gemacht habe

Ich habe heute zuerst die alte EC2 Instanz und die alten SSH Keys bereinigt, weil es vorher Probleme mit der Verbindung gab. Danach habe ich die Terraform Konfiguration angepasst, damit die Infrastruktur sauber neu erstellt werden kann.

Anschliessend habe ich Terraform erneut ausgeführt und die EC2 Instanz auf AWS erstellt. Danach habe ich mich per SSH mit der Instanz verbunden. Nachdem die Verbindung funktioniert hat, habe ich das GitHub Repository auf die EC2 Instanz geklont.

Dabei habe ich aus Versehen das Repository zweimal ineinander geklont. Ich habe den Fehler erkannt und den falschen Ordner wieder gelöscht.

Danach habe ich auf der EC2 Instanz Docker vorbereitet beziehungsweise installiert, damit die Web-Applikation später mit Docker Compose laufen kann.

## Erreichte Resultate

Am Ende des Tages konnte ich die EC2 Instanz erfolgreich erstellen und mich per SSH verbinden. Das Repository ist jetzt auf dem Server vorhanden. Docker wurde ebenfalls vorbereitet. Damit ist die Grundlage für die Web-Applikation geschaffen.

## Probleme und Lösungen

Ein Problem war, dass alte Keys und alte Instanzdaten zu Verwirrung geführt haben. Deshalb habe ich die alten Ressourcen bereinigt und mit Terraform neu aufgebaut.

Ein weiteres Problem war, dass ich das Repository versehentlich doppelt geklont habe. Dadurch entstand ein unnötiger Ordner im Projektordner. Ich habe den Fehler bemerkt und den falschen Ordner gelöscht.

## Eingesetzte Ressourcen

- AWS Lab
- EC2 Instanz
- Terraform
- SSH
- SSH Key Pair
- GitHub Repository
- PowerShell
- Docker

## Was ich gelernt habe

Ich habe gelernt, dass SSH Keys und Terraform Ressourcen sauber zusammenpassen müssen, damit die Verbindung funktioniert. Ausserdem habe ich gelernt, wie wichtig es ist, im richtigen Ordner zu arbeiten, bevor man ein Repository klont.

## Nächste Schritte

Als Nächstes möchte ich prüfen, ob Docker und Docker Compose korrekt installiert sind. Danach kann ich die Web-Applikation mit Docker Compose starten und testen, ob sie über die Public IP der EC2 Instanz erreichbar ist.


# Arbeitsjournal 19.06.2026

## Tagesziele

Heute wollte ich auf einem neuen PC weiterarbeiten. Dafür musste ich die nötigen Werkzeuge neu einrichten, einen neuen SSH-Key erstellen und die Terraform-Konfiguration so anpassen, dass die EC2-Instanz mit dem neuen Key funktioniert.

## Was ich gemacht habe

Zuerst habe ich auf dem neuen PC einen neuen SSH-Key mit `ssh-keygen` erstellt. Dabei gab es zuerst ein Problem, weil `~` in der Windows CMD nicht als Pfad-Abkürzung erkannt wird. Ich habe stattdessen `%USERPROFILE%` verwendet, danach hat die Key-Erstellung funktioniert.

Da Terraform und die AWS CLI auf dem neuen PC noch nicht installiert waren, habe ich beide nachinstalliert. Anschliessend habe ich die AWS-Zugangsdaten (Access Key, Secret Key, Session Token) aus dem Cloud-Lab in die `credentials`-Datei eingetragen. Auch hier gab es zuerst ein Problem, weil Notepad die Datei automatisch mit einer `.txt`-Endung gespeichert hat statt als reine `credentials`-Datei. Nach der Korrektur hat die Verbindung zu AWS funktioniert.

In der Terraform-Konfiguration (`main.tf`) habe ich die alten, automatisch generierten Key-Ressourcen (`tls_private_key`, `local_file`, `local_sensitive_file`) entfernt und stattdessen ein neues `aws_key_pair` mit meinem neu erstellten Public Key definiert. Danach habe ich `terraform init` ausgeführt, um den AWS Provider neu zu laden, und mit `terraform apply` die EC2-Instanz mit dem neuen Key erstellt.

## Erreichte Resultate

Am Ende des Tages war die neue EC2-Instanz mit dem neuen Key erfolgreich über Terraform erstellt. Die grundlegende Umgebung (Terraform, AWS CLI, SSH-Key, Zugangsdaten) ist auf dem neuen PC vollständig eingerichtet.

## Probleme und Lösungen

Ein Problem war, dass `ssh-keygen` unter Windows CMD mit `~` nicht funktioniert hat. Die Lösung war, stattdessen `%USERPROFILE%` als Pfad zu verwenden. Ein weiteres Problem war, dass Notepad beim Speichern der `credentials`-Datei automatisch eine `.txt`-Endung anhängt, wenn man das nicht manuell auf "Alle Dateien" umstellt. Nach der Korrektur beider Punkte hat die Einrichtung funktioniert.

## Eingesetzte Ressourcen

- AWS Lab
- Terraform
- AWS CLI
- SSH Key Pair
- GitHub Repository
- Windows CMD

## Was ich gelernt habe

Ich habe gelernt, wie man ein bestehendes Cloud-Projekt sauber auf einem neuen Rechner fortsetzt: neuer SSH-Key, saubere Trennung von Zugangsdaten und Code, und dass typische Windows-Stolpersteine wie `~`-Pfade oder automatische Dateiendungen die Einrichtung erschweren können, wenn man sie nicht kennt.

## Nächste Schritte

Als Nächstes möchte ich mich per SSH mit der neuen Instanz verbinden, Docker installieren und die Web-Applikation mit Docker Compose starten und testen.


# Arbeitsjournal 26.06.2026

## Tagesziele

Heute wollte ich mich mit der neu erstellten EC2-Instanz verbinden, die Web-Applikation mit Docker Compose starten und testen, ob sie über die Public IP erreichbar ist.

## Was ich gemacht habe

Ich habe versucht, mich per SSH mit dem neuen Key zur Instanz zu verbinden, was zuerst mit "Permission denied (publickey)" fehlgeschlagen ist. Beim Vergleich meiner `main.tf` mit der `outputs.tf` habe ich festgestellt, dass die `outputs.tf` noch veraltete, hartcodierte Werte (eine alte Elastic IP und einen alten Key-Namen) aus einem früheren Projektstand enthielt, die mit der aktuellen Konfiguration nichts mehr zu tun hatten. Ich habe die `outputs.tf` bereinigt, sodass sie nur noch auf tatsächlich vorhandene Ressourcen verweist.

Danach konnte ich mich erfolgreich mit der echten Public IP der Instanz verbinden. Auf dem Server habe ich Docker installiert, das GitHub Repository geklont und geprüft, ob der `app`-Ordner für das Dockerfile vorhanden ist. Anschliessend habe ich die Web-Applikation mit `docker compose up -d --build` gebaut und gestartet.

Zum Schluss habe ich zuerst lokal auf dem Server mit `curl localhost:80` getestet, ob nginx antwortet, und danach die Erreichbarkeit über die Public IP im Browser geprüft.

## Erreichte Resultate

Am Ende des Tages läuft die Web-Applikation erfolgreich auf der neuen EC2-Instanz und ist über die Public IP im Browser erreichbar. Der neue SSH-Key funktioniert, die Terraform-Konfiguration ist bereinigt und aktuell, und Docker Compose startet die Applikation zuverlässig.

## Probleme und Lösungen

Das Hauptproblem war die "Permission denied (publickey)"-Fehlermeldung nach dem Neuaufbau der Instanz. Die Ursache war nicht der neue Key selbst, sondern eine veraltete `outputs.tf`, die mich mit falschen, hartcodierten IP-Adressen und Key-Namen aus einem alten Projektstand in die Irre geführt hat. Durch genaues Vergleichen von `main.tf` und `outputs.tf` konnte ich die Diskrepanz finden und die Outputs bereinigen.

## Eingesetzte Ressourcen

- AWS Lab
- EC2 Instanz
- Terraform
- SSH Key Pair
- GitHub Repository
- Docker
- Docker Compose

## Was ich gelernt habe

Ich habe gelernt, dass Terraform-Outputs nicht automatisch mit dem tatsächlichen Zustand der Ressourcen übereinstimmen müssen, wenn sie hartcodierte Werte statt Referenzen auf Ressourcen enthalten – das kann zu irreführenden Informationen führen. Ausserdem habe ich gelernt, dass man bei Fehlern wie "Permission denied" nicht nur den Key selbst, sondern auch die gesamte Konfiguration rund um die Instanz prüfen sollte.

## Nächste Schritte

Als Nächstes möchte ich die Terraform-Konfiguration versionieren (Commit & Push), das Projekt um eine automatische CI/CD-Pipeline mit GitHub Actions erweitern und danach ein Monitoring (z. B. Uptime Kuma) für die Web-Applikation aufsetzen.



Arbeitsjournal 03.07.2026

Tagesziele

Heute wollte ich eine automatische CI/CD-Pipeline mit GitHub Actions einrichten, damit Änderungen am Code automatisch auf die EC2-Instanz deployed werden. Ausserdem wollte ich ein Basis-Monitoring einrichten und die gesamte Pipeline end-to-end testen.

Was ich gemacht habe

Zuerst habe ich in den GitHub Repository Settings drei Secrets angelegt (SSH_PRIVATE_KEY, SERVER_HOST, SERVER_USER), damit GitHub Actions sich mit der EC2-Instanz verbinden kann, ohne dass sensible Daten im Code stehen. Danach habe ich im Repository einen Workflow (.github/workflows/deploy.yml) erstellt, der bei jedem Push auf den main-Branch automatisch per SSH auf den Server verbindet, das Repository aktualisiert (git pull) und die Web-Applikation mit Docker Compose neu baut und startet.

Beim ersten Testlauf ist die Pipeline mit zwei Fehlern fehlgeschlagen: "ssh: no key found" und anschliessend ein "i/o timeout" beim Verbindungsversuch auf Port 22. Ich habe das GitHub Secret mit dem privaten SSH-Key neu über PowerShell (Get-Content) kopiert, da der Key beim vorherigen Kopieren über CMD offenbar nicht korrekt mit Zeilenumbrüchen übertragen wurde. Für das Timeout-Problem habe ich die Security Group der EC2-Instanz überprüft und festgestellt, dass Port 22 nur für meine eigene IP-Adresse freigegeben war. Da GitHub-Actions-Runner von wechselnden IP-Adressen aus verbinden, habe ich Port 22 für alle Adressen (0.0.0.0/0) freigegeben.

Nach diesen beiden Korrekturen habe ich den Workflow erneut laufen lassen, worauf er erfolgreich durchlief. Zur end-to-end-Kontrolle habe ich anschliessend eine kleine sichtbare Änderung am Inhalt der Web-Applikation vorgenommen, committet und gepusht, um zu prüfen, ob die Pipeline die Änderung automatisch auf den Server bringt.

Zusätzlich habe ich ein Basis-Monitoring eingerichtet: Auf dem Server habe ich mit docker ps und docker compose logs den Container-Status und die Logs überprüft. In der AWS Console habe ich zudem das automatische CloudWatch-Monitoring der EC2-Instanz (CPU- und Netzwerkauslastung) angeschaut.

Erreichte Resultate

Am Ende des Tages läuft eine vollständige CI/CD-Pipeline: Jeder Push auf main löst automatisch ein Deployment auf die EC2-Instanz aus, ohne dass ich mich manuell per SSH verbinden muss. Der End-to-End-Test mit der Teständerung war erfolgreich, die Web-Applikation wurde automatisch aktualisiert. Zusätzlich ist ein Basis-Monitoring über Docker-Logs und CloudWatch vorhanden.

Probleme und Lösungen

Ein Problem war die Fehlermeldung "ssh: no key found", weil das GitHub Secret mit dem privaten Key nicht korrekt formatiert war. Die Lösung war, den Key über PowerShell statt CMD auszulesen, damit die Zeilenumbrüche erhalten bleiben, und das Secret damit neu zu setzen.

Ein zweites Problem war ein Verbindungstimeout auf Port 22, weil die Security Group SSH-Zugriff nur von meiner eigenen IP-Adresse aus erlaubte. GitHub-Actions-Runner haben aber wechselnde IP-Adressen, weshalb ich Port 22 für alle Adressen öffnen musste, damit die Pipeline sich verbinden kann.

Eingesetzte Ressourcen


GitHub Actions
GitHub Secrets
SSH Key Pair
AWS EC2 Instanz
AWS Security Group
AWS CLI
AWS CloudWatch
Docker
Docker Compose
PowerShell


Was ich gelernt habe

Ich habe gelernt, wie man mit GitHub Actions eine einfache CI/CD-Pipeline aufbaut, die Deployments automatisiert, und wie sensible Daten wie SSH-Keys sicher über Secrets statt im Code verwaltet werden. Ausserdem habe ich gelernt, dass bei der Übertragung von privaten Keys die Wahl der Shell (CMD vs. PowerShell) einen Unterschied machen kann, weil Zeilenumbrüche unterschiedlich behandelt werden. Zudem habe ich verstanden, dass automatisierte Systeme wie GitHub-Actions-Runner nicht von einer festen IP-Adresse aus arbeiten, was bei der Konfiguration von Security Groups berücksichtigt werden muss.

Nächste Schritte

Als Nächstes möchte ich die Projektdokumentation vervollständigen (Architekturdiagramm, Testfälle, Entscheidungsgrundlagen, Fazit) und alle Screenshots der wichtigsten Arbeitsschritte für die Abgabe zusammenstellen.

# Arbeitsjournal 10.07.2026

## Tagesziele

Heute wollte ich die Projekt-Konfiguration weiter verbessern (zentrale Terraform-Variablen), ein zweites Monitoring-Tool mit aktiver Alarmierung einrichten und die gesamte Projektdokumentation fertigstellen.

## Was ich gemacht habe

Zuerst habe ich in der Terraform-Konfiguration eine `variables.tf` eingeführt und die bisher hartcodierten Werte (AMI-ID, Instance Type, Security-Group-ID) durch Variablen ersetzt. Nach `terraform plan` zeigte sich, dass ausschliesslich Output-Werte aktualisiert werden mussten (weil sich die Public IP der Instanz zwischenzeitlich geändert hatte), aber keine Ressourcen neu erstellt oder zerstört wurden. Mit `terraform apply` wurde der State entsprechend aktualisiert.

Danach habe ich die `docker-compose.yml` um einen zweiten Service erweitert: **Uptime Kuma**, ein Monitoring-Tool, das als eigener Container über Docker Compose orchestriert wird. Dafür musste ich zusätzlich Port 3001 in der Security Group freigeben. Nach dem Push wurde der neue Container automatisch über die bestehende CI/CD-Pipeline ausgerollt.

In Uptime Kuma habe ich einen Monitor für die Web-Applikation eingerichtet und eine **Discord-Webhook-Benachrichtigung** konfiguriert. Um die Alarmierung zu testen, habe ich den Container `m300-webapp` gezielt gestoppt und nach kurzer Zeit wieder gestartet. Beide Ereignisse (Down/Up) wurden korrekt als Discord-Nachricht zugestellt.

Zum Abschluss habe ich die `Projekt_Doku.md` vervollständigt: ein detailliertes Netzwerkdiagramm mit Ports und Zuständigkeiten, ein Prozessdiagramm für den CI/CD-Ablauf, eine Begründung der Kosten-/Skalierbarkeitsentscheidungen, eine Einordnung der Testfälle als Integrationstests, ein Wartungskonzept sowie eine kurze Klarstellung zum (nicht vorhandenen) Rollenkonzept, da es sich um ein Einzelprojekt handelt.

## Erreichte Resultate

Am Ende des Tages ist die Terraform-Konfiguration sauber mit zentralen Variablen aufgebaut, ein zweiter Monitoring-Service läuft produktiv neben der Web-Applikation, und die Alarmierung bei Ausfällen funktioniert nachweislich über Discord. Die Projektdokumentation ist inhaltlich vollständig und deckt Architektur, Netzwerk, Tests, Monitoring, Sicherheit und Wartung ab.

## Probleme und Lösungen

Ein kleineres Problem war, dass `terraform plan` nach der Variablen-Einführung Änderungen anzeigte, die auf den ersten Blick beunruhigend wirkten. Nach genauerer Prüfung stellte sich heraus, dass diese ausschliesslich von einer zwischenzeitlich manuell geänderten Public IP stammten und keine echten Infrastruktur-Änderungen betrafen – wichtig war hier, den Plan-Output genau zu lesen, bevor man ihn anwendet.

## Eingesetzte Ressourcen

- Terraform (`variables.tf`)
- Docker Compose (Multi-Service-Setup)
- Uptime Kuma
- Discord Webhook
- AWS Security Group
- GitHub Actions
- AWS CloudWatch

## Was ich gelernt habe

Ich habe gelernt, wie man Terraform-Konfigurationen durch Variablen wartbarer macht, ohne die eigentliche Infrastruktur zu verändern. Ausserdem habe ich gesehen, wie viel Mehrwert aktive Alarmierung gegenüber reinem passivem Monitoring bringt: Ein Ausfall wird nicht erst bemerkt, wenn jemand zufällig die Seite aufruft, sondern sofort gemeldet. Zudem habe ich gelernt, dass es bei Multi-Container-Setups mit Docker Compose wichtig ist, für jeden zusätzlichen Service auch die Netzwerkfreigaben (Security Group) entsprechend zu erweitern.

## Nächste Schritte

Das Projekt ist funktional und dokumentarisch abgeschlossen. Als mögliche Erweiterung für die Zukunft käme eine Einschränkung der offenen SSH-Regel (z. B. auf GitHub-Actions-IP-Ranges) sowie ein automatisiertes Backup für die Uptime-Kuma-Konfiguration in Frage.


