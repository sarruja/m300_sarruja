# m300_sarruja
SarrujaSabesan_ST17b
# Dokumentation - M300 LB2
## von Sarruja Sabesan

# Inhaltsverzeichnis

- [K1 - Umgebung auf eigenem Notebook eingerichtet und funktionsfähig](k1-umgebung-auf-eigenem-notebook-eingerichtet-und-funktionsfhig)
  - [VirtualBox](#virtualbox)
  - [Vagrant](#vagrant)
  - [Visualstudio-Code](#visualstudio-code)
  - [Git-Client](#git-client)
  - [SSH-Key für Client erstellt](#ssh-key-fr-client-erstellt)
  
 
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
Dafüt muss man sich folgendes auf dem Notebook installieren:
- Virtualbox
  VirtualBox habe ich auf der Seite https://www.virtualbox.org heruntergeladen.
  Auf dem Laufen dann alle VM, die mit Hilfe von Vagrant automatisiert erstellt werden.
- Vagrant
  Vagrant ist eine Anwendung zum Erstellen und Veralten von VMs. Die anwendung wird über eine Shell gesteuert.
  Die Anwendung kann auf der Seite https://www.vagrantup.com/downloads.html heruntergeladen werden.
- Visual Studio Code
  Visual Studio Code ermöglicht uns, unser Repository an einem Ort zu verwalten.
  Sie kann auf der Seite https://code.visualstudio.com heruntergeladen werden.
  Anschliessend fügt man rei Extension hinzu: Markdown All in One, Vagrant Extension und vscode-pdf Extension
- Git-Client
  Damit wie lokalen auf unserem Notebook arbeiten könen, müssen wir den Git Client (Git Bash auf Windows) installieren.
  Mit dem ist es möglich, Cloud-Repositories zu klonen, herunterladen und hochzuladen.
  Diese kann man auf der Seite https://git-scm.com/downloads herunterladen.
  Damit wie den Git Client benutzten können, müssen wir noch einen Git-Account und Repository erstellen (siehe dafür K2).
- SSH Key für Client erstellen
  Dies erstellt man nachdem man Git/Bash installiert hat.

