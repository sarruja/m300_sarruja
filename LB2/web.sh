#!/bin/bash
#
#Packete für Datenbankserver installieren

		#Packete für Webserver installieren	
		 sudo apt-get update
		 sudo apt-get install -y apache2
		 sudo apt-get install -y webalizer
		
		#Firewall konfigurieren 
		 sudo apt-get -y install ufw
		 sudo ufw allow 80/tcp
		 sudo ufw allow from 10.0.2.2 to any port 22
		 sudo ufw allow from 192.168.43.203
		 sudo ufw -f enable
		 
		#Proxy Installation
		 #sudo apt-get install -y libapache2-mod-proxy-html libxml2-dev#<-- schon bei apache2 enthalten
		 sudo a2enmod proxy
		 sudo a2enmod proxy_html
		 sudo a2enmod proxy_http
		 sudo service apache2 restart
