# m300_sarruja
SarrujaSabesan_ST17b
# Dokumentation - M300 LB2
## von Sarruja Sabesan

# Inhaltsverzeichnis
- [K1 - Umgebung auf eigenem Notebook eingerichtet und funktionsfähig](#k1---umgebung-auf-eigenem-notebook-eingerichtet-und-funktionsfähig)
  - [Github](#github)
  - [SSH Key für Client erstellen](#ssh-key-füer-client-erstellen)
- [K2 - Eigene Lernumgebung (PLE) ist eingerichtet](#eigene-lernumgebung-ple-ist-eingerichtet)
  - [Mark down](#mark-down)
  - [Persönlicher Wissenstand](#persnlicher-wissenstand)
- [K3 - Vagrant](#vagrant)
  - [Bestehende vm aus Vagrant-Cloud einrichten](#bestehende-vm-aus-vagrant-cloud-einrichten)
  - [Kennt die Vagrant-Befehle](#kennt-die-vagrant-befehle)
  - [Eingerichtete Umgebund ist dokumentiert](#eingerichtete-umgebund-ist-dokumentiert)
    - [Umgebungsvariable](#umgebungsvariable)
    - [Netzwerkplan gezeichnet](#netzwerkplan-gezeichnet)
    - [Sicherheitsapekte](#sicherheitsapekte)
  - [Funktionsweise getestet inkl. Dokumentation der Testfälle](#funktionsweise-getestet-inkl-dokumentation-der-testflle)
    - [Testfälle](#testflle)
  - [andere, vorgefertigte vm auf eigenem Notebook aufgesetzt](#andere-vorgefertigte-vm-auf-eigenem-notebook-aufgesetzt)
  - [Projekt mit Git und Mark Down dokumentiert](#projekt-mit-git-und-mark-down-dokumentiert)
- [K4 - Sicherheitsaspekte sind implementiert](#sicherheitsaspekte-sind-implementiert)
  - [Firewall eingerichtet inkl. Rules](#firewall-eingerichtet-inkl-rules)
  - [Reverse-Proxy eingerichtet](#reverse-proxy-eingerichtet)
  - [Benutzer- und Rechtevergabe ist eingerichtet](#benutzer--und-rechtevergabe-ist-eingerichtet)
  - [Zugang mit SSH-Tunnel abgesichert](#zugang-mit-ssh-tunnel-abgesichert)
  - [Sicherheitsmassnahmen sind dokumentiert](#sicherheitsmassnahmen-sind-dokumentiert)
  - [Projekt mit Git und Mark Down dokumentiert](#projekt-mit-git-und-mark-down-dokumentiert)
- [K5 - Zusätzliche Bewertungspunkte](#zustzliche-bewertungspunkte)
  - [Umsetzung eigener Ideen](#umsetzung-eigener-ideen)
    - [Cloud-Integration (Einsatz einer IaaS-Umgebung)](#cloud-integration-einsatz-einer-iaas-umgebung)
    - [Authentifizierung und Autorisierung via LDAP](#authentifizierung-und-autorisierung-via-ldap)
    - [Übungsdokumentation als Vorlage für Modul-Unterlagen erstellt](#bungsdokumentation-als-vorlage-fr-modul-unterlagen-erstellt)
  - [Persönlcihe Lernentnwicklung](#persnlcihe-lernentnwicklung)
    - [Vergleich Vorwissen - Wissenzuwachs](#vergleich-vorwissen---wissenzuwachs)
    - [Reflexion](#reflexion)


# K1 - Umgebung auf eigenem Notebook eingerichtet und funktionsfähig
Bevor man mit dem Projekt starten kann, sollte man seine Umgebung auf dem eigenen Notebook einrichten.
Dafür muss man sich folgendes auf dem Notebook installieren:
- Virtualbox
- Vagrant
- Visual Studio Code
- Git-Client
- SSH-Key für client erstellen

## Github
GitHub Account erstellen
----
  Wir erstellen uns auf [www.github.com](https://github.com) einen Benutzerkonte. Nach dem erstellen, muss man zuerst noch seine E-Mail bestätigen.
   
   _Repository erstellen_
   
  1.   Nun melden wir uns auf Github an
  2.   Auf der Wilkommens-Seite klicken wir auf **_Start a procjet_**
  3.   Für das Repository muss amn einen Namen geben (z.B. M300-Name) und wenn gwünscht eine Description
  4.   Denn Radio-Button lassen wir auf **_Public_**
  5.   Bei **_Initialize this repository with a README_** müssen wir ein Hacken setzten.
  6.   Nun können wir auf **_Create_** klicken.
Git-Client
----  
  Damit wie lokalen auf unserem Notebook arbeiten könen, müssen wir den Git Client (Git Bash auf Windows) installieren.
  Mit dem ist es möglich, Cloud-Repositories zu klonen, herunterladen und hochzuladen.
  Diese kann man auf der Seite https://git-scm.com/downloads herunterladen.

   _Client konfigurieren_
   
   Nun muss man den Client mit unserem Gothub-Account Konfigurieren. Dies erfolgt mit den folgenden zwei Befehlen:
   > $ git config --global user.name ``"<username>"``

   > $ git config --global user.email ``"<e-mail>"``

   Schon ist man mit der Konfiguration fertig.

   **einige wichtige Git-Client Befehle:**

   - um Repository hochzuladen (Push)
    ``$ cd Pfad/von/Repository``       _| Wechseln zum Pfad, wo sich unser Repository befindet_

    ``$ git add <Dateipfad>``       _| Fügt Dateien zum Uploaden hinzu; für alle Dateien, eifach `<Dateipfad>` durch ``-A_``_
      
    ``$ git commit -m "Ein Kommentar"``       _| Upload commiten_
      
    ``$ git push``       _| Zum Schluss den Upload pushen_
   - um Stauts anzuzeigen
      
    ``$ git status``
   - gwünschtes Verzeichnis gehen
     
    ``$ cd gewünschter/Pfad/eingeben``
   - Order erstellen
     
    ``$ mkdir Ordername``
   - Lokales Repository aktualisieren

    ``$ git pull``
Weitere Befehle findet man im Internet, wie zum Beispiel das Cheetsheet [hier](https://rogerdudler.github.io/git-guide/).
      
SSH Key für Client erstellen
----
  Dies erstellt man nachdem man Git/Bash installiert hat, denn die Nachfolgenden Befehle müssen im _Git Bash_ ausgeführt werden.

1. Git Bash öffnen
2. Folgenden Befehl ausführen
   > $  ssh-keygen -t rsa -b 4096 -C "beispiel@beispiel.com"
3. Neuer SSH-Key wird erstellen. Es erscheint:
   > Generationg public/private rsa key pair
4. Es wird abgefrögt, unter welcem Name der Schlüssel gespeichert werden soll. Einfach Enter-Taste drücken für Standard Name
   > Enter a file in which to save the key (~/.ssh/id_rsa): [Press enter]
5. Für den Key muss nun ein Passwort gesetzt werden. Man kann auch keines seztten und es leer lassen, ist aber nicht zu empfehlen
   > Enter passphrase (empty for no passphrase): [Passwort]
   > Enter same passphrase again: [Passwort wiederholen]
   
- **SSH-Key dem Agent hinzufügen**
1. Dafür muss man den Inhalt, welche sich in der Datei ``id_rsa.pub`` befindet kopieren.

      Das File findet man unter ``C:\User\Username\.ssh``

2. Nun geht man auf [www.github.com](https://github.com) und meldet sich an
3. Auf der Linkenseite im Menüberiech, zum Abschnitt **SSH und GPG keys** wechseln
4. **New SSH key** wählen
5. Unter **Title** einen Titel für den Key geben
6. Nun mit _CTRL + V_ das Kopierte einfügen und auf **Add SSH key** klicken
7. Der Schlüssel sollte nun auf der Liste angezeigt werden
   
# K2 - Eigene Lernumgebung (PLE) ist eingerichtet
Markdown
----
Die ganze Dokumentation ist als Markdown vorhanden.

Ich habe mich für Visual Studio Code entschieden. Sie ermöglicht uns, unser Repository an einem Ort zu verwalten.
Sie kann auf der Seite https://code.visualstudio.com heruntergeladen werden.
Anschliessend fügt man drei Extension hinzu: Markdown All in One, Vagrant Extension und vscode-pdf Extension (Dafür können Sie _CTRL + SHIFT + X_ klicken und nach der Extension suchen und dann auf _Install_ klicken).

Gewisse Dateien, wie die von den virtuellen Maschienen sollten nicht ins Repository hochgelande werden, da sie zu gross sind. Dafür muss man unter 
_File --> Preferences --> Setting_. Dort scrollt man wenig runter, bis man den Bereich _Files: Exclude_findet. Da kann man dann folgendes einzeln hinzufügen (Add Pattern auswählens), damit sie exkludiert werden.
   "**/.git": true,
   "**/.svn": true,
   "**/.hg": true,
   "**/.vagrant": true,
   "**/.DS_Store": true

Repository hinzufügn unsh pushen
---
Damit man jedoch auch die Dokumentation schreiben kann, musste ich zuerst mein Repository hinzufügen und lernen wie man diesen pushen kann.

1. Nach dem ich die oben genannten Einstellungen vorgenommen habe, konnte ich links auf das mittlere Symbol klicken und _Repository klonen wäheln_.
2. Dort konnte ich dann meinen **README.md** File öffnen.
3. In dem README.md File konnte ich meine Doku schreiben (sprich, dass was Sie gerade am lesen sind :D)
4. Nach dem ich was geändert habe, konnte ich mit _CTRL + S_ die Änderungen speichern
5. Nun musste ich meine Chenges 'stagen'. Dafür konnte ich wieder links auf das mittlere Symbol (wo ein 1 zu sehen ist) und dort, oben auf die drei ``...`` klicken und _Stage All Changes_ wählen oder rechtsklick auf README.md und das gleiche auswählen.
6. Im Feld _Message_ muss man eine Nachricht hinterlegen
7. Nun kann man Commiten, in dem man oben jauf den Hacken klickt.
8. Zu guter Letzt muss man wieder auf die drei Punkte ``...`` und **Push** wählen.
9. Warten bis fertig gepusht wurde, auf github dein Repository aktualieseiren und die Änderungen sollten im README sichbar sein.


Persönlicher Wissensstand
----
#### Linux
Linuy ist der Kernel des Betriebssystem und ist für die Kommunikation zwischen HW und SW zuständig.
Linux wrid umfassend eingesetzt, unteranderem au Servern und Mobiltelefonen. 

#### Virtualisierung
Für die Virtualisierung benutzen wir Virtualbox. Mit Virtualbox hatte ich schon vor diesem Modul öfters gearbeitet und hatte keine Probleme. (VirtualBox habe ich auf der Seite https://www.virtualbox.org heruntergeladen.). Darauf werden dann die VMs laufen, die mithilfe vom Vagrantfile erstellt werden.
Das tolle ist, das Virtualbox mit Vagrant kompatibel ist.

#### Vagrant
Vagrant ist eine Anwendung zur Erstellen und Verwalten von VMs. Die anwendung wird über eine Shell gesteuert.
Die Anwendung kann auf der Seite https://www.vagrantup.com/downloads.html heruntergeladen werden.
Vagrant hilft uns dabei, einfach und automatisiert eine Virtuelle Maschiene zu erstellen.
So bald man sich damit ein wenig beschäftigt hat, kann man viele VMs, eifach und schnell installieren. 

#### Versionsverwaltung / Git



#### Mark down
Markdown übersetzt einfach einen Text in HTML.
Man kann auch Offline die Texte schreiben und publizieren, sobald man wieder Zugriff aufs Internet hat.
Ich persönlich hatte noch nie in dieser Form eine Dokumentation geschrieben. Bisher nur auf Word oder GoogleDocs. Daher war das was ganz neues für mich.

Zu Beginn muss man sich schlau mahcne, wie man einen Titel darstelle, oder etwas verlinken kann. Doch mit dem [Markdwon Cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet#lists) habe ich mich schnell zurecht gefunden.

#### Systemsycherheit
Zu Systemsicherheit habe ich bereits ein Modul hinter mir. Ich weiss zwar wie man eine Firewall einrichtet, doch bei einem Reverse-Proxy bin ich ehrlich gesagt einbisschen überfordert.




# K3 - Vagrant
Ich habe mich zunächst entschieden, einen Apache2 Webserver zu Installieren.
