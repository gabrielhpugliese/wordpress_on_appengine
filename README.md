Wordpress on App Engine
======================

It's fast boilerplate of Google's steps to deploy WP in GAE:

https://developers.google.com/appengine/articles/wordpress

## Notes (READ FIRST): 

The project includes php-5.4.15 binary that must be used with GAE PHP SDK, Wordpress 3.5.1 with batcache and memcached plugins, scripts for installation and appengine required files (app.yaml, php.ini etc). The SDK will install via script.

If you want to deploy it to App Engine, register your application first:
https://gaeforphp.appspot.com/

## Local installation and setup

### Installation

* Edit the `database.sql` with credentials of your local MySQL. Basically you will just need to change all `wp_user`
and `wp_password` to whatever you want.
* Edit `project/wordpress/wp-config.php` with same credentials in lines 27 and 30
* Run `bash install.sh` inside the project root folder.

### Running

In the project root folder, run:

`bash run.sh`

Go to `http://localhost:8080/` to see WP. Go to `http://localhost:8000/` to see GAE console.
