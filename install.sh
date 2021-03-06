#!/bin/bash

echo "Downloading GAE SDK..."
wget http://commondatastorage.googleapis.com/appengine-php/appengine-php-sdk-1.8.0.zip
unzip appengine-php-sdk-1.8.0.zip
rm appengine-php-sdk-1.8.0.zip

echo "Creating WP databases..."
echo "Enter MySQL username:"
read mysql_user
mysql -u $mysql_user -p < database.sql

echo "WP on GAE installation finished. Now run 'bash run.sh' to start the server."
