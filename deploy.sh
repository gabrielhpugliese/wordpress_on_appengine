#!/bin/bash

echo "This will create a database and username as described in database.sql."
echo "Enter your instance complete name (eg.: my-project:instance):"
read instance_name
google_sql/google_sql.sh $instance_name < database.sql
echo "Done creating database. Starting to deploy."

google_appengine/appcfg.py -R update project/