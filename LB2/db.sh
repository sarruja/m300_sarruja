#!/bin/bash
#
#Packete für Datenbankserver installieren

		sudo apt-get update
		#Datenbank installieren
		sudo apt-get install -y mysql-server
		 
		#root Passwort setzten, damit es später keine Probleme gibt
		sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password MySQLPasswort'
		sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password MySQLPasswort'
		
		#SQL Port öffnen
		sudo sed -i -e"s/^bind-address\s*127.0.0.1/bind-address = 0.0.0.0/" /etc/mysql/mysql.conf.d/mysqld.cnf
		
		#Datenbank erstellen
		sudo mysql -uroot -MySQLPasswort -e "CREATE DATABASE Vagrant_DB"
		
		#User für Remote Zugriffugriff
		 sudo mysql -uroot -p MySQLPasswort -e "CREATE USER 'root'@'192.168.43.110' IDENTIFIED BY 'adminer'"
		 sudo mysql -uroot -p MySQLPasswort -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@'192.168.43.110'"
		 sudo mysql -uroot -p MySQLPasswort -e "FLUSH PRIVILEGES"
		 
		#MySQL neustarten wegen der Konfigurationsänderungen
		sudo service mysql restart