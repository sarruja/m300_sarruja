# Dokumentation - M300 LB2
## von Sarruja Sabesan

# Inhaltsverzeichnis
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
        - [Hypervisor Typ 1](#hypervisor-typ-1)
        - [Hypervisor Typ 2](#hypervisor-typ-2)
    - [Vagrant](#vagrant)
    - [Versionsverwaltung / Git](#versionsverwaltung--git)
    - [Markdown](#markdown-1)
    - [Systemsycherheit](#systemsycherheit)
- [K3 - Vagrant](#k3---vagrant)
  - [VM aus Vagrant-Cloud einrichten](#vm-aus-vagrant-cloud-einrichten)
    - [Installation Apache2](#installation-apache2)
    - [Installation Webalizer](#installation-webalizer)
  - [Vagrant Befehle](#vagrant-befehle)
    - [Vagrant File](#vagrant-file)
  - [Netwerkplan](#netwerkplan)
  - [Sicherheitsaspekte](#sicherheitsaspekte)
- [K4 - Sicherheitsaspekte sind implementieren](#k4---sicherheitsaspekte-sind-implementieren)
  - [Firewall inkl. Rules einrichten](#firewall-inkl-rules-einrichten)
  - [Reverse-Proxy einrichten](#reverse-proxy-einrichten)
  - [Benutzer- und Rechtevergabe eingerichten](#benutzer--und-rechtevergabe-eingerichten)
  - [Testen](#testen)
- [K5 - Persönliche Lernentwicklung](#k5---persönliche-lernentwicklung)
  - [Vergleich Vorwissen - Wissenszuwachs](#vergleich-vorwissen---wissenszuwachs)
  - [Refelxion](#refelxion)
- [LB3](#lb3)
- [K1 und K2](#k1-und-k2)
  - [Persönliche Wissensstand](#persönliche-wissensstand)
    - [Containerisierung](#containerisierung)
    - [Docker](#docker)
    - [Microservices](#microservices)
- [K3](#k3)
  - [Docker-Befehle](#docker-befehle)
  - [Befehle in einem Docker-file](#befehle-in-einem-docker-file)


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
```
  $ git config --global user.name "<username>"

  $ git config --global user.email "<e-mail>"
```
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
   ```
     ssh-keygen -t rsa -b 4096 -C "beispiel@beispiel.com"
   ```
  3. Neuer SSH-Key wird erstellen. Es erscheint:
   ```
     $ Generationg public/private rsa key pair
   ```
  4. Es wird abgefrögt, unter welcem Name der Schlüssel gespeichert werden soll. Einfach Enter-Taste drücken für Standard Name
   ```
     $ Enter a file in which to save the key (~/.ssh/id_rsa): [Press enter]
   ``` 

  5. Für den Key muss nun ein Passwort gesetzt werden. Man kann auch keines seztten und es leer lassen, ist aber nicht zu empfehlen
   ``` 
     $ Enter passphrase (empty for no passphrase): [Passwort]

     $ Enter same passphrase again: [Passwort wiederholen]
   ``` 
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
```
  "**/.git": true,
  "**/.svn": true,
  "**/.hg": true,
  "**/.vagrant": true,
  "**/.DS_Store": true
```
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
Linuy ist ein Kernel, weöches für ein Betriebssystem zur Verfügung gestellt wrid, wie beispielsweise für Ubuntu. Linux ist Open Source und ist somit kostenlos.
Linux wrid umfassend eingesetzt, unteranderem auch Servern und Mobiltelefonen.   
Mit Linux habe ich persönlich nicht viel zu tun. Nichts desto trotzt sind hier einige Basic-Command die sehr ntzlich sind:
- Verzeichnis ändern `Cd`
- Inhlat anzeigen, welche sich im Directory befindet `ls -l`
- Order erstellen `mkdir`
- Datei löschen `rm`
- Verzeichnis löschen `rmdir`
- Berechtigungen ändern `chmod`
- Update durchführen `sudo apt-get update`
- Befehle also admin auführen `sudo` 
  
Das sind nur wenige von vielen Befehle.  

### Virtualisierung
Eine Virtuelle Maschiene (abkürzung VM) ist ein Computer oder Server, der auch genau gleich funktioniert, mit der Aussnahme, das keine eigenen Hardware besitzt. Er bezieht die nötigen Ressourcen vom Host.  
Damit jedoch die die nötigen Ressourcen vom Host an die VM gehen, ist der Hypervisor zuständig. Er ist der Vermittler zwischen der VM und dem Host.  
Der Hypervisor ist eine Software und auch bekannt als VMM (Mirtual Machine Monitor). Man unterscheidet zwischen *Typ 1 (Bare-Metal-Lösung)* und *Typ 2 (Hostes-Lösung)*.  
##### Hypervisor Typ 1
Beim Hypervisor Typ 1 dient der Hypervisor selbst als ein Betriebssytem. Der Vorteil dabei ist, das er schnell arbeiten kann, jedoch sind besondere Hardwareanforderungen nötig. Er wird oft für die Server-Virtualisierung eingesetzt. Bekannte Produkte sind Proxmox VE oder VMware vSphere.
##### Hypervisor Typ 2
Im Gegensatz zum anderen braucht dieser Hypervisor TYP-II ein Basis Betriebssystem, wie ein Programm kann man das vergleichen, welsches innerhalb eins Betriebssystems installiert wird. Der Vorteil ist jedoch, er braucht keine spezielle Hardware. Wird oft für Dekstop Virtualisierung benutzt. Beakannte Produkte sind VirtualBox und VMware.


![Hypervisor Typ1 und Typ2 Vergleich](https://github.com/sarruja/m300_sarruja/blob/master/Bilder/Hypervisor_typ1_typ2.png "Hypervisor Typ1 und Typ2 Vergleich")

Für dises Modul benutzen wir Virtualbox. Mit Virtualbox hatte ich schon vor diesem Modul öfters gearbeitet und hatte keine Probleme. (VirtualBox habe ich auf der Seite https://www.virtualbox.org heruntergeladen.). Darauf werden dann die virtuellen Maschinen laufen, die mithilfe vom Vagrantfile erstellt werden.


### Vagrant
Vagrant ist eine Anwendung zur Erstellen und Verwalten von VMs. Die anwendung wird über eine Shell gesteuert.
Die Anwendung kann auf der Seite https://www.vagrantup.com/downloads.html heruntergeladen werden.
Vagrant hilft uns dabei, einfach und automatisiert eine Virtuelle Maschiene zu erstellen.
So bald man sich damit ein wenig beschäftigt hat, kann man viele VMs, eifach und schnell installieren. 

### Versionsverwaltung / Git
Versionsverwaltung ist ein System (engl. Version Contrlo System, VCS), welche die Änderungen protokolliert, damit man später auf gewisse Versionen zugreifen kann.  
Dies kann sehr hilfreich sein, wenn man etwas hochlädt, diese aber komplett falsch ist, kann man ganz einfach auf die letzte Version zurückgreifen mit geringem Aufwand.  
Ausserdem es ermöglicht auch den gemeinsamen Zugriff von mehreren Entwickler auf eine Datei.

So ist auch Github.  

### Markdown
Markdown ist einfach gesagt ein Text in HTML Übersetzer. Die Markdown Dateien (.md, wie beispielsweise dieses README.md) kann mit VisualStudio, GitBook oder über die Weboberfläche GitLab editiert werden.
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

Zuerst habe ich in meinem Repository mit einen neuen Order namens MeineVagrant VM erstellt.   
Anschliessend habe ich in das Verzeichnis gewechselt   
Dort habe ich mit Hilfe ein Vagrant File angelegt.   
Sobald das gemacht ist kann ich die VM starten. Wenn Sie nun VirtualBox öffnen, sehen Sie auch die erstelle und gestartete VM.   
Sobald Sie gestartet ist, kann man eine SSH-Verbindung aufbauen.  
Hier sind die einzelnen Befehle, für die oben beschriebenen Schritte (ohne #ausführen):

```
   mkdir MeineVagrantVM  #Order erstellen     
   cd MeineVagrantVM  #Verzeichnis wechseln     
   Vagrant init ubuntu/xenial64  #Vagrantfile anlegen   
   vagrant up  #VM starten   
   vagrant ssh  #SSH-Verbindung aufbauen   
```


Falls Sie eine andere VM möchten, so können Sie sich eine vond er [Vagrant-Cloud](https://app.vagrantup.com/boxes/search) auswählen und "ubuntu/xenial" entsprechend anpassen.   

**Funktionsweise**

![Vagrant Funktionsweise](https://github.com/sarruja/m300_sarruja/blob/master/Bilder/Vagrant_Funkionsweise.png "Vagrant Funktionsweise")


### Installation Apache2
Die Installation vom Apache2 ist ganz schnell und einfach gemacht.

1. Ubuntu Paketquellen aktulisieren
   ```
    $ sudo apt-get update
   ``` 
2. Nun wird Apache installiert
   ```
    $ sudo apt-get install -y apache2
   ``` 

3. Den Erfolg kann man mit dem folgenden Befehl testen:
   ```
    $ curl http://localhost
   ``` 

   
### Installation Webalizer
Webalizer ist ein Programm, welche zur Auswertung der Logdateien dient.
Sie erstellt Statistiken über Anfragen, Besuche, Verweise, Länder der Besucher auf Webseiten.

Die Installation ist fast ähnlich wie beim Apache2.
1. Zuerst aktualisiert man  die Paketquellen. Wenn der Befehl erst gerade durchgeführt wurde, muss man ihn nicht nochmals ausführen.
``` 
   $ sudo apt-get update
```
2. Nun wird Webalizer installiert
```   
   $ sudo apt-get install -y webalizer
```

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

### Vagrant File
Nun wenn ich den Befehl `vagrant up` eingebe, so wird das Vagrantfile, welche sich in demORder befinde wo ich mich gerade im GitBash befinde ausgeführt. Die gesamte VM Konfiguration ist im Vagrantfile. Schauen wir uns einige Befehle an:
**Konfigurationen**  

```
$ Vagrant.configure(2) do |Config|  

  unter diesen Punkt gehören Konfigurationen von der VM, wie zum Beispiel  
  Hostname, Provider (wie Virtualbox), IP, RAM, welche Vagrantbox man verwendet,...  
end  #damit beendet man die Konfiguration  

```
**Provision**  
```
$ config.vm.provisionion "shell", inline <<-SHELL  

   Darin kommen die Befehle, welche man im TErminal in der VM normalerweise eingeben würden.  Beipsielsweise  
   sudp apt-get update  
   supo apt-get -y isntall apache2  
  SHELL  
  end 
```

Im oberen Beipsiel, schreibt man die Befehle direkt in Vagrant File. Dies können wir aber auch anders lösen. Undzwar in dem wir eine neue .sh Datei erstellen und diese Angeben. In diesem .sh File stehen dann nur die SHELL Befehle wie sudu apt-get update und eine Zeile weiter unten der nächste Befehl.  
Das Vagrantfile würde in etwa so aussehen:  
```
$ config.vm.provsion "shell", path: "Provision/befehle.sh"

   #In diesem Fall gibt es in dem Ordner wo sich das Vagrantfile befindet ein weiterer Ordner namens   

   #Provision" und dort drin befindet sich das Befehle.sh File.  
```   
   
Netwerkplan
----
**Meine Umgebung**
![Netzwerkplan](https://github.com/sarruja/m300_sarruja/blob/master/Bilder/Netzwerkplan.png "Netzwerkplan")


Sicherheitsaspekte
----
Für die Sicherheit meier Umgebung, habe ich folgendes eingerichtet:
- Firewall 
- Reverse Proxy

Dazu würde noch folgendes kommen
- Dokumentation immer auf dem neusten Stand halten
- Benutzer instruieren   

# K4 - Sicherheitsaspekte sind implementieren


Firewall inkl. Rules einrichten
----
Wir bauen wieder eine SSH verbindung auf mit der erstellten VM 
```
   $ vagrant ssh
```
Mit dem folgenden Befehl, werden die offnen Befehel ausgegeben.
```
   $ netstat -tulpen
```

1. Um die Firewall einzurichten, muss man sie zuerst installieren.
```
   $ sudo apt-get install
```
2. Bevor ich sie nun starte, richte ich die Regeln ein.

   Port 80 (HTTP) für alle öffnen:
```
   $ sudo ufw allow 80/tcp
```

   Port 22 (SSH) für die Host, auf dem die VM lauft, öffnen:

   `w` diese gibt eine IP aus, diese bruachen die dann für den nächsten Befehl under `[Host-IP]`  
   ```
     $ sudo ufw allow from [Host-IP] to any port 22
   ```

   Port 3306 (MySQL) nur für den Webserver öffnen
   ```
     $ sudo ufw allow from [IP Web-VM] to any port 3306
   ```
   Ausgehende Verbindungen sind standartmässig erlauben. Werden die Verbindungen nach Aussen nicht benötigt oder nur wenig bestimmte, so kann man alle schliessen und die einzelnen öffnen.
   ```
     $ sudo ufw deny ou to any    
     $ sudo ufw allow out 22/tcp
   ```
3. mit `exit` können Sie die Verbindung verlassen und dann wieder versuchen eine Verbindung aufzubauen.
4. Falls Sie eine Regel löschen wollen
   ```
     $ sudo ufw status numbred   
     $ sudo ufw delete [number]  
   ```

Reverse-Proxy einrichten
----
Der Webserver kann man auch als einen Reverse Proxy eingerichtete werden.

1. Zuerst muss man folgendes installieren:  
  ``` 
   sudo apt-get isntall libapache2-mod-proxy-html <-- Dies ist schon im apache2-bin entahalten  
   sudo apt-get install libxml2-dev
   ```
2. Die Modulue müssen nun aktiviert werden:  
  ``` 
   sudo a2enmod proxy  mahcen. Kann aber auch nach der aktivierung der drei Module gemacht werden.  
   sudo a2enmod proxy_html  
   sudo a2enmod proxy_http  
   sudo service apache2 restart
  ``` 

3. Gehen sie nun in das Verzeichnis `cd etc/apache2` und öffnen sie das folgende Dokument mit dem folgenden Befehl  
  ``` 
   sudo nano apache2.conf 
  ```   
   Ergänzen sie das File wie gefolgt  
  ```
   ServerName localhost
  ```

4. Apache-Webserver muss nun neugestartet werden:  
  ```
   sudo service apache2 restart
  ``` 

Benutzer- und Rechtevergabe eingerichten
----
**Benutzer**    
Linux ist ein Mulituser-Betriebssystem. Das heisst, an meiner VM kann es mehrere Benutzer haben, die auch andere Berechtigungen haben. Jeder Benutzer hat eine ID, die man UID (User-ID) nennt.    
Neben den Benutzer die wie erstellen, gobt es bereits erstellte Benutzer wie zum Beispiel:
* Systemverwalter (hatte alle Rechte) `root` 
* Webservers Apache Benutzer `www-data`
* Benutzer des Druckdienstes CUPS `cupsys`

Mit dem folgenden Befehl, kann mann einen neuen Benutzer erstellen:    
```
  $sud adduser username
```     
Die verschiedene Benutzer stehen in der Datei `/etc/passwd`. Deren Passwörter befindet sich in der Datei `/etc/shadow`.   

**Gruppen**    
Jeder Benutzer gehört zu einer oder mehreren Gruppen. Auch jede Gruppe hat wie ein Benutzer eine ID, die man GID (Group-ID) nennt. Die Rechte werden jeweils der Gruppe zugeteilt.   
Mit dem folgenden Befehl, kann mann eine neue Gruppe erstellen:    
```
  $sud addgroup gruppennamen
``` 
Die Gruppen stehen in der Datei `/etc/group`.     

**Berechtigungen**
- **r** - Lesen (read)
    - Erlautbt es eine Datei zu lesen. Beim Verzeichnis, können die entahltenen Dateien und Ordner abgerufen werden.
- **w** - Schreiben (write)
    - Erlaut es in eine Datei zu schreiben. Beim Verzeichnis können Dateien und Ordner hinzugefügt werden.
- **x** - Ausführen (execute)
    - Erlaubt es eine Datei/Programm auszuführen.
- **s** - Set-UID-Recht (SUID-Bit)
    - Sie sorgt dafür, dass man das Orogramm immer mit den Rechten des Dateibesitzer ausführt. Daüfür ist auch das Ausführungsrecht nötig.    
- **S** - Set GID-Bit
    - Hat die gleiche Funktion wie das SUID-Bit, einfach das sie mit der REchten der Dateigruppe läauft.
- **T** - Sticky-Bit
    - Diese wird auf einem Ornder angewandt, damit die darin erstellten Verzeichnisse und Dateien nur vom Dateibesitzer gelöscht oder unbennent werden können.

Zum ändern der Rechte, werden folgende Befehle benutzt:
- Zum Setzten der Dateirecht `chmod`
- Zum Ändern des Dateibesitzer `chown`
- Zum Ändern der Gruppe der Datei `chgrp`


Testen
----
Die nötigen Befehle habe ich ins Vagrent File hizugeüfgt.  
Nach der Installation habe ich einzige Tests durchgefüht:  
|Nr.   |Testfall Beschreibung   |Schritte   |Erwartetes Reslutat   |Erhaltenes Resultat   |
|:----:|:----------------------:|:---------:|:--------------------:|:---------------------:|
|1|Apache2 Default Page aufrufen|127.0.0.1:8080 im Browser eingeben|Apache2 Default Page öffnet sich| OK |
|2|index.html ändern und Änderun überprüfen|ins Verzeichnis `/var/www/html` wechseln. Anschliessend mit `sudo nano index.html` die Datei index.html abändern. Zum Schluss `sudo service apache2 restart` ausführen und 172.0.0.1 weider im Browser aufrufen|Die Änderung ist nun auf der Default Page sichtbar| OK |    
|3|user www-data ist erstellt| Datei `/etc/passwd`öffnen und user suchen| www-data ist in der Datei sichtbar| OK|
|4|Neuer Benutzer (sarruja) ist erstellt| Datei `/etc/passwd`öffnen und user sarruja suchen| sarruja ist in der Datei sichtbar| OK |
|5|Neue Gruppe (m300) ist erstellt| Datei `/etc/group` öffnen und nach der Gruppe m300 suchen| m300 ist in der Datei sichtbar| OK |
|6| Firewall ist aktiv| `sudo ufw status` ausführe| Meldung `Status: active` und die Rules werden angezeigt| OK |

# K5 - Persönliche Lernentwicklung

## Vergleich Vorwissen - Wissenszuwachs
Zu Beginn diese Moduls, hatte ich keine Ahnung was Vagant war und wozu es dient. Daher hatte ich auch ein wenig Schwirigkeiten am Anfang das Ganze zu verstehen. Mit der Zeit, habe ich es immer besser verstanden.    

Auch mit Markdown und Github musste ich so noch nie arbeiten. Ich kann mich erinnern, das Lehrer Informationen und Anleitungen auf Github zu Verfügunge gestellt haben, dohc selber musste ich das nicht machen.   
Doch mit der Anleitung, konnte ich mich schnell an diese Markdown Dokumentation dran gewöhnen.

Schlussendlich bin ich der Meinung, dass ich in der LB2 vieles dazu gelernt habe.     

## Refelxion
Zu Beginn war ich mir nicht ganz sicher, was genau erwaret wird. Ich habe die Schritte vom Github durchgeführt, aber habe keinen Zusammenhan mit LB2 gefunden. Wahrscheinlich weil ich so verwirrt war. Je mehr ich mihc damit beschäft habe desto kalrer wurde alles. Auch das Bewertungsraster hat mir dabei geholfen. Für das nächste Mal hilft es, wenn ich mir zuerst alles studiere (auch das Bewertungsraster), damit ich shcon Beginn an eine Vorstellung haben, was von mir erwartet wird.     
Schlussenldich bin ich trozdem zufrieden mit meine Leistung. 


# LB3
In der LB2 geht es um die Contaierisierung und Dokcerfile.

# K1 und K2
[K1](https://github.com/sarruja/m300_sarruja#k1---umgebung-auf-eigenem-notebook-eingerichtet-und-funktionsfähig) und [K2](https://github.com/sarruja/m300_sarruja#k2---eigene-lernumgebung-ple-ist-eingerichtet) wurden bereits in der LB2 dokumentiert.
Persönliche Wissensstand
----
### Containerisierung
Containersierung erlaubt es mehrere unabhängige Kontexte, indenen Applikationen laufen können.   
Im Gegensatz zur Virtualisierung ist der Container leichtgewichtig, da er das Betriebssystem mit dem Host Teilt und es können mehrere Container parallel laufen.

Vorteile sind, das die Container isoliert sind und unabhngig von den anderen.  
Man kann eine Software lokal entwickeln und diese wird wo anderst genau gleich laufen, ohne Probleme.  

Im Gegensatz zur Virtualisierung, muss man sich das Wissen zuerst aneigenen.

### Docker
Docker ist eine Software, die das Containerisierung ermöglicht.   
Die Docker-Container werden aus Docker-Images gestartet.  

Docker nahm die bereits vorhandene Linux-Containertechnologie und erweiterte sie. Durch protable Images und benutzerfreundlcihe Schnittstlle erschafften sie eine vollständige Lösung zur Erstellung und Verteilung von Container.   
Diese sind wichtige Docker-Komponente:
|Docker-Komponent|Bedeutung|
|:--------------:|:-------:|
|Registry        | darin werden Images abgelegt und verteilt        |
|Docker Deamon   | Erstellen, ausführen und Überwachen von Container|
|Docker Client   | Steuert Container via Shell |
|Images          | Gebuildete Umgebung, Ausführbar als Contiainer |
|Container       | Ausgeführte Images |

### Microservices
Microservices erledigen jeweils eine kleine Aufgabe. Jeder Service kann unabhängig entwickelt und eingesetzt werden. Ausserdem sind sie auch eifnach ersetzbar.


# K3

## Docker-Befehle
- Zum Starten von neues Contianer: `docker run`    
- Überblick über die aktuellen Container: `docker ps`
- Liste der lokalen Images: `docker images`       
- Entfernen von Container: `docker rm`         
- Löschen von angegebenen Images: `docker rmi`     
- Starten von gestoppten Container: `docker start`       
- Container Stoppen: `docker stop`     
- Logs von Container ausgeben: `docker logs`
- Informationen zum lafuenden Prozessen in einem angegebenen Container: `docker top`

## Befehle in einem Docker-file
Dockerfile ist eine Textdatei, die genutzt wird, um ein Docker-image zu erstellen.   
Hier sind wichtige Anweisungen im Dockerfile:
- Welches Base-Image von [hub.docker.com](hub.docker.com): `FROM` 
- Kopiert Dateien aus dem Build Context oder URL: `ADD`
- Führt Anweisung aus, wenn Contianer gestartet wurde: `CMD`
- Dateien aus Build Context in das Images zu kopieren: `COPY`
- Legt eine ausführbare Datei fest, die beim Start des Containers laufen soll: `ENTRYPOINT`
- Umgebundvariabeln im Image: `ENV`
- Erklärt Docker, dass der Container einen Prozess enthlt, der an dem oder den angegebenen Ports lauscht: `EXPOSE`
- Docker Engine chekt regelmässig den Status der Anwendung im Container: `HEALTHCHECK`
- Führt Anweisung im Container aus und bestätigt Ergebnis: `RUN`
- Ermöglicht es direkt bash oder PS Befehle zu nutzten: `SHELL`
- Setzt den Benutzer der in `RUN, CMD, oder ENTRYPOINT` genutzt werden soll: `USER`
- Daklariert angegebene Datei oder Varzechnis als Volume: `VOLUME`
- Arbeitsverzeichnis für `RUN, CMD, ENTRYPOINT, ADD oder COPY` Anweisungen: `WORKDIR`

