# m300_sarruja
SarrujaSabesan_ST17b
# Dokumentation - M300 LB2
## von Sarruja Sabesan

# Inhaltsverzeichnis
- [K1 - Umgebung auf eigenem Notebook eingerichtet und funktionsfähig](#k1---umgebung-auf-eigenem-notebook-eingerichtet-und-funktionsfähig)
  - [Virtualbox](#virtualbox)
  - [Vagrant](#vagrant)
  - [Visual Studio Code](#visual-studio-code)
  - [GitHub Account erstellen](#github-account-erstellen)
  - [Git-Client](#git-client)
  - [SSH Key für Client erstellen](#ssh-key-füer-client-erstellen)
- [K2 - Eigene Lernumgebung (PLE) ist eingerichtet](#eigene-lernumgebung-ple-ist-eingerichtet)
  - [GitHub oder Gitlab-Account ist erstellt](#github-oder-gitlab-account-ist-erstellt)
  - [Git-Client wurde verwendet](#git-client-wurde-verwendetq)
  - [Dokumentation ist als Mark Down vorhanden](#dokumentation-ist-als-mark-down-vorhanden)
  - [Mark down-Editor ausgewählt und eingerichtet](#mark-down-editor-ausgewhlt-und-eingerichtet)
  - [Mark down ist strukturiert](#mark-down-ist-strukturiert)
  - [Persönlicher wissenstand](#persnlicher-wissenstand)
    - [Linux](#linux)
    - [Virtualisierung](#virtualisierung)
    - [Vagrant](#vagrant)
    - [Versionsverwaltung](#versionsverwaltung)
    - [Mark Down](#mark-down)
    - [Systemsicherheit](#systemsicherheit)
  - [Wihtige Lernschritee sind dokumentiert](#wihtige-lernschritee-sind-dokumentiert)
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
- **Virtualbox** 
  
   VirtualBox habe ich auf der Seite https://www.virtualbox.org heruntergeladen.
  Auf dem Laufen dann alle VM, die mit Hilfe von Vagrant automatisiert erstellt werden.
- **Vagrant**
  
  Vagrant ist eine Anwendung zum Erstellen und Veralten von VMs. Die anwendung wird über eine Shell gesteuert.
  Die Anwendung kann auf der Seite https://www.vagrantup.com/downloads.html heruntergeladen werden.
- **Visual Studio Code**
  
  Visual Studio Code ermöglicht uns, unser Repository an einem Ort zu verwalten.
  Sie kann auf der Seite https://code.visualstudio.com heruntergeladen werden.
  Anschliessend fügt man rei Extension hinzu: Markdown All in One, Vagrant Extension und vscode-pdf Extension

- **GitHub Account erstellen**
  
  Wir erstellen uns auf [www.github.com](https://github.com) einen Benutzerkonte. Nach dem erstellen, muss man zuerst noch seine E-Mail bestätigen.
   
   _Repository erstellen_
   
  1.   Nun melden wir uns auf Github an
  2.   Auf der Wilkommens-Seite klicken wir auf **_Start a procjet_**
  3.   Für das Repository muss amn einen Namen geben (z.B. M300-Name) und wenn gwünscht eine Description
  4.   Denn Radio-Button lassen wir auf **_Public_**
  5.   Bei **_Initialize this repository with a README_** müssen wir ein Hacken setzten.
  6.   Nun können wir auf **_Create_** klicken.
- **Git-Client**
  
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
    > $ cd Pfad/von/Repository       _| Wechseln zum Pfad, wo sich unser Repository befindet_

    > $ git add -A .       _| Fügt alle Dateien zum Uploaden hinzu_ 
      
    > $ git commit -m "Ein Kommentar"       _| Upload commiten_
      
    > $ git push       _| Zum Schluss den Upload pushen_
   - um Stauts anzuzeigen
      
      $ git status
   - gwünschtes Verzeichnis gehen
     
      $ cd gewünschter/Pfad/eingeben
   - Order erstellen
     
      $ mkdir Ordername
      
- **SSH Key für Client erstellen**
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
   
