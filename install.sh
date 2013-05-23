#!/bin/bash

mysql -u root -p < database.sql
cd project
tar -xvzf packages.tar.gz
rm packages.tar.gz
