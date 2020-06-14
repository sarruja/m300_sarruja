#!/bin/bash
#
#Packete für Datenbankserver installieren
		set -o xtrace
		 sudo apt-get update
	 	 sudo apt-get -y install debconf-utils 
	 	 sudo apt-get -y install apache2 
	 	 sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password _PassW0rt!'
		 sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password _PassW0rt!'
		 sudo apt-get -y install php libapache2-mod-php php-curl php-cli php-mysql php-gd mysql-client mysql-server 
		# Admininer SQL UI 
		 sudo mkdir /usr/share/adminer
		 sudo wget "http://www.adminer.org/latest.php" -O /usr/share/adminer/latest.php
		 sudo ln -s /usr/share/adminer/latest.php /usr/share/adminer/adminer.php
		 echo "Alias /adminer.php /usr/share/adminer/adminer.php" | sudo tee /etc/apache2/conf-available/adminer.conf
		 sudo a2enconf adminer.conf 
		 sudo service apache2 restart 
		# Mysql User erstellen
		 sudo mysql -uroot -p_PassW0rt! %EOF%
		 create database if not exists M300_db;
		 create user "sarruja" identified by "Sarruja";
		 grant usage on M300_db.* to "sarruja" identified by "Sarruja";
		 grant all privileges on M300_db.* to "sarruja";
		 flush privileges;
		 %EOF%

		#Firewall konfigurieren 
		 sudo apt-get -y install ufw
		 sudo ufw allow 3306/tcp
		 sudo ufw allow from 192.168.43.203
		 sudo ufw -f enable