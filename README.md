Wordpress on App Engine
======================

It's fast boilerplate of Google's steps to deploy WP in GAE:

https://developers.google.com/appengine/articles/wordpress

---------------

Notes (READ FIST): 

The project includes php-5.4.15 binary that must be used with GAE PHP SDK, Wordpress 3.5.1, scripts for installation and appengine required files (app.yaml, php.ini etc)

You need to download the GAE PHP SDK:
https://developers.google.com/appengine/downloads#Google_App_Engine_SDK_for_PHP

If you want to deploy it to App Engine, register your application first:
https://gaeforphp.appspot.com/

--------------

Installation

Edit the database.sql with credentials of your local MySQL before running install.sh
Run ```bash install.sh``` inside the project root folder.

-------------

Running

In the project root folder, run:

```APP_ENGINE_SDK_PATH/dev_appserver.py --php_executable=php/bin/php-cgi .```
