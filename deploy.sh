#!/bin/bash

function deploy {
    echo "Enter your instance complete name (eg.: my-project:instance):"
    read instance_name
    google_sql/google_sql.sh $instance_name < database.sql
    if [[ $? -ne 0 ]] ; then
        exit 1;
    fi
    echo "Done creating database. Let's to deploy."

    google_appengine/appcfg.py -R update project/
    exit 0;
}


echo "This will create a database and username as described in database.sql and application name described in project/app.yaml"
echo "Before continuing, edit those files with strong passwords and proper application name."
read -r -p "Do you want to continue? [y/n]" response
response=${response,,}
case "$response" in
  y|Y ) deploy
  ;;
  * ) exit 0
  ;;
esac


