#!/bin/bash

mysql -u root -p < database.sql
wget http://commondatastorage.googleapis.com/appengine-php/appengine-php-sdk-1.8.0.zip
unzip appengine-php-sdk-1.8.0.zip 
rm appengine-php-sdk-1.8.0.zip
cd project
tar -xvzf packages.tar.gz
rm packages.tar.gz
