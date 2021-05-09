#!/bin/bash
#Created By Ishan Jagtap
#This script in created for automating the installation of LAMP stack server

#Check for root privileges
if [[ "${UID}" -ne 0 ]]
then
 echo 'Must execute with sudo or root' >&2
 exit 1
fi


echo "Select the Way you wanna install"
echo " 1)Running as sudo"
echo " 2)Running as root"

read m
case $m in
1) #running as sudo user
echo "Select Type of Stack you want to install"
echo " 1)LAMP(Linux, Apache, MySQL, PHP)"
echo " 2)LEMP(Linux, Nginx, MySQL, PHP)"
echo " 3)LAPP(Linux, Apache, PostgreSQL, PHP)"
echo " 4)LEPP(Linux, Nginx, PostgreSQL, PHP)"


read n
case $n in
1) #init LAMP
#Upadting APT packages
figlet "Updating Apt Packages"
sudo apt-get update -y


#Installing Apache Server On The Box
figlet "Install Apache"
sudo apt-get install apache2 apache2-doc apache2-utils libexpat1 ssl-cert -y


#Installing UFW
figlet "Install UFW"
sudo apt-get install ufw

#Installing MySQL
figlet "Install MySQL"
sudo apt-get install mysql-server mysql-client -y

#Installing PHP
figlet "Install PHP"
sudo apt-get install php libapache2-mod-php php-mysql -y

#Installing PHPMYADMIN
figlet "Install PHPMyAdmin"
sudo apt-get install phpmyadmin -y

#setting permission using chown
figlet "Giving permission to www dir"
sudo chown -R www-data:www-data /var/www

echo "LAMP Stack server installation Complete";;

2) #init LEMP
#Upadting APT packages
figlet "Updating Apt Packages"
sudo apt-get update -y

#Installing Nginx Server On The Box
figlet "Install Nginx"
sudo apt-get install nginx ssl-cert -y

#Installing UFW
figlet "Install UFW"
sudo apt-get install ufw

#Installing MySQL 
figlet "Install MySQL"
sudo apt-get install mysql-server mysql-client -y

#Installing PHP
figlet "Install PHP"
sudo apt-get install php libapache2-mod-php php-mysql -y

#Installing PHPMYADMIN
figlet "Install PHPMyAdmin"
sudo apt-get install phpmyadmin -y

#setting permission using chown
figlet "Giving permission to www dir"
sudo chown -R www-data:www-data /var/www

echo "LEMP Stack server installation Complete";;

3) #init LAPP

#Upadting APT packages
figlet "Updating Apt Packages"
sudo apt-get update -y

#Installing Apache Server On The Box
figlet "Install Apache"
sudo apt-get install apache2 apache2-doc apache2-utils libexpat1 ssl-cert -y

#Installing UFW
figlet "Install UFW"
sudo apt-get install ufw

#Installing PostgreSQL 
figlet "Install MySQL"
sudo apt-get install postgresql -y

#Installing PHP
figlet "Install PHP"
sudo apt-get install php libapache2-mod-php php-mysql -y

#Installing PHPPGADMIN
figlet "Install PHPMyAdmin"
sudo apt-get install phppgadmin -y

#setting permission using chown
figlet "Giving permission to www dir"
sudo chown -R www-data:www-data /var/www

echo "LAPP Stack server installation Complete";;

4) #init LEPP

#Upadting APT packages
figlet "Updating Apt Packages"
sudo apt-get update -y

#Installing Nginx Server On The Box
figlet "Install Nginx"
sudo apt-get install nginx  ssl-cert -y

#Installing UFW
figlet "Install UFW"
sudo apt-get install ufw

#Installing PostgreSQL 
figlet "Install PostgreSQLL"
sudo apt-get install postgresql -y

#Installing PHP
figlet "Install PHP"
sudo apt-get install php libapache2-mod-php php-mysql -y

#Installing PHPPGADMIN
figlet "Install PHPMyAdmin"
sudo apt-get install phppgadmin -y

#setting permission using chown
figlet "Giving permission to www dir"
sudo chown -R www-data:www-data /var/www
echo "LEPP Stack server installation Complete";;

*) #For Invalid Input
figlet "Invalid Input";;
esac
echo "Completed ";;

2) #running as Root user
echo "Select Type of Stack you want to install"
echo " 1)LAMP(Linux, Apache, MySQL, PHP)"
echo " 2)LEMP(Linux, Nginx, MySQL, PHP)"
echo " 3)LAPP(Linux, Apache, PostgreSQL, PHP)"
echo " 4)LEPP(Linux, Nginx, PostgreSQL, PHP)"


read n
case $n in 
1) #init LAMP
#Upadting APT packages
figlet "Updating Apt Packages"
apt-get update -y


#Installing Apache Server On The Box
figlet "Install Apache"
apt-get install apache2 apache2-doc apache2-utils libexpat1 ssl-cert -y


#Installing UFW
figlet "Install UFW"
apt-get install ufw

#Installing MySQL
figlet "Install MySQL"
apt-get install mysql-server mysql-client -y

#Installing PHP
figlet "Install PHP"
apt-get install php libapache2-mod-php php-mysql -y

#Installing PHPMYADMIN
figlet "Install PHPMyAdmin"
apt-get install phpmyadmin -y

#setting permission using chown
figlet "Giving permission to www dir"
chown -R www-data:www-data /var/www

echo "LAMP Stack server installation Complete";;

2) #init LEMP
#Upadting APT packages
figlet "Updating Apt Packages"
apt-get update -y

#Installing Nginx Server On The Box
figlet "Install Nginx"
apt-get install nginx ssl-cert -y

#Installing UFW
figlet "Install UFW"
apt-get install ufw

#Installing MySQL 
figlet "Install MySQL"
apt-get install mysql-server mysql-client -y

#Installing PHP
figlet "Install PHP"
apt-get install php libapache2-mod-php php-mysql -y

#Installing PHPMYADMIN
figlet "Install PHPMyAdmin"
apt-get install phpmyadmin -y

#setting permission using chown
figlet "Giving permission to www dir"
chown -R www-data:www-data /var/www

echo "LEMP Stack server installation Complete";;

3) #init LAPP

#Upadting APT packages
figlet "Updating Apt Packages"
#apt-get update -y

#Installing Apache Server On The Box
figlet "Install Apache"
apt-get install apache2 apache2-doc apache2-utils libexpat1 ssl-cert -y

#Installing UFW
figlet "Install UFW"
apt-get install ufw

#Installing PostgreSQL 
figlet "Install MySQL"
apt-get install postgresql -y

#Installing PHP
figlet "Install PHP"
apt-get install php libapache2-mod-php php-mysql -y

#Installing PHPPGADMIN
figlet "Install PHPMyAdmin"
apt-get install phppgadmin -y

#setting permission using chown
figlet "Giving permission to www dir"
chown -R www-data:www-data /var/www

echo "LAPP Stack server installation Complete";;

4) #init LEPP

#Upadting APT packages
figlet "Updating Apt Packages"
apt-get update -y

#Installing Nginx Server On The Box
figlet "Install Nginx"
apt-get install nginx  ssl-cert -y

#Installing UFW
figlet "Install UFW"
apt-get install ufw

#Installing PostgreSQL 
figlet "Install PostgreSQLL"
apt-get install postgresql -y

#Installing PHP
figlet "Install PHP"
apt-get install php libapache2-mod-php php-mysql -y

#Installing PHPPGADMIN
figlet "Install PHPMyAdmin"
apt-get install phppgadmin -y

#setting permission using chown
figlet "Giving permission to www dir"
chown -R www-data:www-data /var/www

echo "LEPP Stack server installation Complete";;

*) #For Invalid Input
figlet "Invalid Input";;
esac
echo "Completed";;

*) #for invalid input
figlet "Invalid Input and Exit";;
esac

