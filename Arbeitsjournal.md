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