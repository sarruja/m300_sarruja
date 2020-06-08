# m300_sarruja
SarrujaSabesan_ST17b
# Dokumentation - M300 LB2
## von Sarruja Sabesan

# Inhaltsverzeichnis
- [m300_sarruja](#m300_sarruja)
- [Dokumentation - M300 LB2](#dokumentation---m300-lb2)
  - [von Sarruja Sabesan](#von-sarruja-sabesan)
- [Inhaltsverzeichnis](#inhaltsverzeichnis)
- [K1 - Umgebung auf eigenem Notebook eingerichtet und funktionsfähig](#k1---umgebung-auf-eigenem-notebook-eingerichtet-und-funktionsfähig)
  - [GitHub](#github)
  - [GitHub Account erstellen](#github-account-erstellen)
  - [Git-Client](#git-client)
  - [SSH Key für Client erstellen](#ssh-key-für-client-erstellen)
- [K2 - Eigene Lernumgebung (PLE) ist eingerichtet](#k2---eigene-lernumgebung-ple-ist-eingerichtet)
  - [Markdown](#markdown)
  - [Repository hinzufügn unsh pushen](#repository-hinzufügn-unsh-pushen)
  - [Persönlicher Wissensstand](#persönlicher-wissensstand)
    - [Linux](#linux)
    - [Virtualisierung](#virtualisierung)
    - [Vagrant](#vagrant)
    - [Versionsverwaltung / Git](#versionsverwaltung--git)
    - [Mark down](#mark-down)
    - [Systemsycherheit](#systemsycherheit)
- [K3 - Vagrant](#k3---vagrant)
  - [VM aus Vagrant-Cloud einrichten](#vm-aus-vagrant-cloud-einrichten)
    - [Installation Apache2](#installation-apache2)
    - [Installation Webalizer](#installation-webalizer)
  - [Vagrant Befehle](#vagrant-befehle)
  - [Umgebungsvariabeln](#umgebungsvariabeln)
  - [Netwerkplan](#netwerkplan)
  - [Sicherheitsaspekte](#sicherheitsaspekte)
- [K4 - Sicherheitsaspekte sind implementieren](#k4---sicherheitsaspekte-sind-implementieren)
  - [Firewall inkl. Rules einrichten](#firewall-inkl-rules-einrichten)
  - [Reverse-Proxy einrichten](#reverse-proxy-einrichten)
  - [Benutzer- und Rechtevergabe eingerichten](#benutzer--und-rechtevergabe-eingerichten)
  - [Zugang mit SSH-Tunnel absichern](#zugang-mit-ssh-tunnel-absichern)


# K1 - Umgebung auf eigenem Notebook eingerichtet und funktionsfähig
Bevor man mit dem Projekt starten kann, sollte man seine Umgebung auf dem eigenen Notebook einrichten.
Dafür muss man sich folgendes auf dem Notebook installieren:
- Virtualbox
- Vagrant
- Visual Studio Code
- Git-Client
- SSH-Key für client erstellen

GitHub
---
## GitHub Account erstellen

  Wir erstellen uns auf [www.github.com](https://github.com) einen Benutzerkonte. Nach dem erstellen, muss man zuerst noch seine E-Mail bestätigen.
   
   _Repository erstellen_
   
  1.   Nun melden wir uns auf Github an
  2.   Auf der Wilkommens-Seite klicken wir auf **_Start a procjet_**
  3.   Für das Repository muss amn einen Namen geben (z.B. M300-Name) und wenn gwünscht eine Description
  4.   Denn Radio-Button lassen wir auf **_Public_**
  5.   Bei **_Initialize this repository with a README_** müssen wir ein Hacken setzten.
  6.   Nun können wir auf **_Create_** klicken.
   
## Git-Client  
  Damit wie lokalen auf unserem Notebook arbeiten könen, müssen wir den Git Client (Git Bash auf Windows) installieren.
  Mit dem ist es möglich, Cloud-Repositories zu klonen, herunterladen und hochzuladen.
  Diese kann man auf der Seite https://git-scm.com/downloads herunterladen.

   _Client konfigurieren_
   
  Nun muss man den Client mit unserem Gothub-Account Konfigurieren. Dies erfolgt mit den folgenden zwei Befehlen:
  
  `$ git config --global user.name "<username>"`

  `$ git config --global user.email "<e-mail>"`

   Schon ist man mit der Konfiguration fertig.

   **einige wichtige Git-Client Befehle:**

  **_um Repository hochzuladen (Push)_**
  1. Wechseln zum Pfad, wo sich unser Repository befindet
   
    $ cd Pfad/von/Repository
  2. Fügt Dateien zum Uploaden hinzu; für alle Dateien, eifach `<Dateipfad>` durch ``-A_``
   
    $ git add <Dateipfad>
  3. Upload commiten    
   
    $ git commit -m "Ein Kommentar" 
  4. Zum Schluss den Upload pushen
   
    $ git push

  Schon hat man das Repository hochgeladen. Hier noch wenige weitere Befehele:

   - um Stauts anzuzeigen
  
    $ git status
   - gwünschtes Verzeichnis gehen
  
    $ cd gewünschter/Pfad/eingeben
   - Order erstellen     
  
    $ mkdir Ordername
   - Lokales Repository aktualisieren
  
    $ git pull

Weitere Befehle findet man im Internet, wie zum Beispiel das Cheetsheet [hier](https://rogerdudler.github.io/git-guide/).
      
SSH Key für Client erstellen
----
  Dies erstellt man nachdem man Git/Bash installiert hat, denn die Nachfolgenden Befehle müssen im _Git Bash_ ausgeführt werden.

  1. Git Bash öffnen
  2. Folgenden Befehl ausführen
   
     `$ ssh-keygen -t rsa -b 4096 -C "beispiel@beispiel.com"`

  3. Neuer SSH-Key wird erstellen. Es erscheint:
    
     `$ Generationg public/private rsa key pair`

  4. Es wird abgefrögt, unter welcem Name der Schlüssel gespeichert werden soll. Einfach Enter-Taste drücken für Standard Name
    
     `$ Enter a file in which to save the key (~/.ssh/id_rsa): [Press enter]`

  5. Für den Key muss nun ein Passwort gesetzt werden. Man kann auch keines seztten und es leer lassen, ist aber nicht zu empfehlen
     
     `$ Enter passphrase (empty for no passphrase): [Passwort]`

     `$ Enter same passphrase again: [Passwort wiederholen]`
     
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

  `"**/.git": true,`

  `"**/.svn": true,`

  `"**/.hg": true,`

  `"**/.vagrant": true,`

  `"**/.DS_Store": true`

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
### Linux
Linuy ist der Kernel des Betriebssystem und ist für die Kommunikation zwischen HW und SW zuständig.
Linux wrid umfassend eingesetzt, unteranderem au Servern und Mobiltelefonen. 

### Virtualisierung
Für die Virtualisierung benutzen wir Virtualbox. Mit Virtualbox hatte ich schon vor diesem Modul öfters gearbeitet und hatte keine Probleme. (VirtualBox habe ich auf der Seite https://www.virtualbox.org heruntergeladen.). Darauf werden dann die VMs laufen, die mithilfe vom Vagrantfile erstellt werden.
Das tolle ist, das Virtualbox mit Vagrant kompatibel ist.

### Vagrant
Vagrant ist eine Anwendung zur Erstellen und Verwalten von VMs. Die anwendung wird über eine Shell gesteuert.
Die Anwendung kann auf der Seite https://www.vagrantup.com/downloads.html heruntergeladen werden.
Vagrant hilft uns dabei, einfach und automatisiert eine Virtuelle Maschiene zu erstellen.
So bald man sich damit ein wenig beschäftigt hat, kann man viele VMs, eifach und schnell installieren. 

### Versionsverwaltung / Git



### Mark down
Markdown übersetzt einfach einen Text in HTML.
Man kann auch Offline die Texte schreiben und publizieren, sobald man wieder Zugriff aufs Internet hat.
Ich persönlich hatte noch nie in dieser Form eine Dokumentation geschrieben. Bisher nur auf Word oder GoogleDocs. Daher war das was ganz neues für mich.

Zu Beginn muss man sich schlau mahcne, wie man einen Titel darstelle, oder etwas verlinken kann. Doch mit dem [Markdwon Cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet#lists) habe ich mich schnell zurecht gefunden.

### Systemsycherheit
Zu Systemsicherheit habe ich bereits ein Modul hinter mir. Ich weiss zwar wie man eine Firewall einrichtet, doch bei einem Reverse-Proxy bin ich ehrlich gesagt einbisschen überfordert.




# K3 - Vagrant
Ich habe mich zunächst entschieden, einen Apache2 Webserver und Webalizer zu Installieren.


VM aus Vagrant-Cloud einrichten
----
In der [Vagrant-Cloud](https://app.vagrantup.com/boxes/search), gibt es einige VM die bereit sind installiert zu werden.
Ich habe mich für das ubuntu/xenial entschieden.

Zuerst habe ich in meinem Repository mit `mkdir MeineVagrantVM` einen neuen Order gemacht.

Anschliessend habe ich in das Verzeichnis gewechselt: `cd MeineVagrantVM`

Dort habe ich mit Hilfe von dem Befehl `Vagrant init ubuntu/xenial64` ein Vagrant File angelegt.

Falls Sie eine andere VM möchten, so können Sie sich eine vond er [Vagrant-Cloud](https://app.vagrantup.com/boxes/search) auswählen und "ubuntu/xenial" entsprechend anpassen.

Sobald das gemacht ist kann man die VM mit `vagrant up` starten.
Wenn Sie nun VirtualBox öffnen, so sehen Sie auch die erstellte und gestartete VM.

Mit `vagrant SSH`kann man eine SSH-Verbindung zur VM aufbauen.

### Installation Apache2
Die Installation vom Apache2 ist ganz schnell und einfach gemacht.

1. Ubuntu Paketquellen aktulisieren
   
   `$ sudo apt-get update`
2. Nun wird Apache installiert
   
   `$ sudo apt-get install -y apache2`

Den Erfolg kann man mit dem folgenden Befehl testen:

   `$ curl http://localhost`

   
### Installation Webalizer
Webalizer ist ein Programm, welche zur Auswertung der Logdateien dient.
Sie erstellt Statistiken über Anfragen, Besuche, Verweise, Länder der Besucher auf Webseiten.

Die Installation ist fast ähnlich wie beim Apache2.
1. Zuerst aktualisiert man  die Paketquellen. Wenn der Befehl erst gerade durchgeführt wurde, muss man ihn nicht nochmals ausführen.
   
   `$ sudo apt-get update`

2. Nun wird Webalizer installiert
   
   `$ sudo apt-get install -y webalizer`


Vagrant Befehle
----
- Vagrantfile anlegen: `vagrant init`
- Vagrant VM starten: `Vagrant up`
- Vagrant SSH-Verbindugn aufbauen: `vagrant ssh`
- Status von der Vagrant VM anzeigen lassen: `vagrant status`
- Weitergeleitete Ports anzeigen: `vagrant port`
- VM stoppen/ herunterfahren: `vagrant halt`
- VM neustarten: `vagrant reload`
- VM komplett löschen: `vagrant destroy`  
 

Umgebungsvariabeln
----



Netwerkplan
----

Sicherheitsaspekte
----


# K4 - Sicherheitsaspekte sind implementieren


Firewall inkl. Rules einrichten
----
Wir bauen wieder eine SSH verbindung auf mit der erstellten VM `vagrant ssh`

Mit dem folgenden Befehl, werden die offnen Befehel ausgegeben.

   `$ netstat -tulpen`

1. Um die Firewall einzurichten, muss man sie zuerst installieren.
   `$ sudo apt-get install`

2. Bevor ich sie nun starte, richte ich die Regeln ein.

   Port 80 (HTTP) für alle öffnen:

   `sudo ufw allow 80/tcp`

   Port 22 (SSH) für die Host, auf dem die VM lauft, öffnen:

   `w` diese gibt eine IP aus, diese bruachen die dann für den nächsten Befehl under [Host-IP]  
   `sudo ufw allow from [Host-IP] to any port 22`

   Port 3306 (MySQL) nur für den Webserver öffnen
   `sudo ufw allow from [IP Web-VM] to any port 3306`

   Ausgehende Verbindungen sind standartmässig erlauben. Werden die Verbindungen nach Aussen nicht benötigt oder nur wenig bestimmte, so kann man alle schliessen und die einzelnen öffnen.

   `sudo ufw deny ou to any`  
   `sudo ufw allow out 22/tcp`
3. mit `exit` können Sie die Verbindung verlassen und dann wieder versuchen eine Verbindung aufzubauen.
4. Falls Sie eine Regel löschen wollen:
   `sudo ufw status numbred`
   `sudo ufw delete [number]`  

Reverse-Proxy einrichten
----
Der Webserver kann man auch als einen Reverse Proxy eingerichtete werden.

1. Zuerst muss man folgendes installieren:  
   `sudo apt-get isntall libapache2-mod-proxy-html`<-- Dies ist schon im apache2-bin entahalten  
   `sudo apt-get install libxml2-dev`

2. Die Modulue müssen nun aktiviert werden:  
   `sudo a2enmod proxy`  --> danach ist ein `sudo service apache2 restart` mahcen. Kann aber auch nach der aktivierung der drei Module gemacht werden.  
   `sudo a2enmod proxy_html`  
   `sudo a2enmod proxy_http`  

3. Gehen sie nun in das Verzeichnis `cd etc/apache2` und öffnen sie das folgende Dokument mit dem folgenden Befehl  
4. `sudo nano apache2.conf`  
   Ergänzen sie das File wie gefolgt  
   `ServerName localhost`

5. Apache-Webserver muss nun neugestartet werden:  
   `sudo service apache2 restart`

Benutzer- und Rechtevergabe eingerichten
----


Zugang mit SSH-Tunnel absichern
----

