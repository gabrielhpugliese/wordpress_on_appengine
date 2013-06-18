Wordpress on App Engine
======================

It's fast boilerplate of [Google's steps to deploy WP in GAE](https://developers.google.com/appengine/articles/wordpress)

See also: [GAE for PHP Blog](http://gaeforphp-blog.appspot.com/)

## Notes (READ FIRST): 

* The project includes php-5.4.15 binary that must be used with GAE PHP SDK, GAE SQL CLI, Wordpress 3.5.1 with batcache and memcached plugins, scripts for installation and appengine required files (app.yaml, php.ini etc). 
* The SDK will install via script.
* If you want to deploy it to App Engine, register your application first: https://gaeforphp.appspot.com/
* Batcache and Memcached plugins don't need to be activated in plugins

## Local installation and setup

### Installation

1. Edit the `database.sql` with credentials of your local MySQL. Basically you will just need to change all `wp_user`
and `wp_password` to whatever you want.
2. Edit `project/wordpress/wp-config.php` with same credentials in lines 27 and 30
3. Run `bash install.sh` inside the project root folder.

### Running

1. In the project root folder, run `bash run.sh`
2. Go to `http://localhost:8080/` to see WP. Go to `http://localhost:8000/` to see GAE console.

## Creating GAE project and deploying

### Setup

1. Go to [Google Cloud Console](https://cloud.google.com/console) and create a project.
2. Open the project and click on App Engine. Inside App Engine go to Administration > Application Settings. 
Copy the `Service Account Name`.
3. Go back to the project. Now go to the Cloud Storage and create a new bucket. On the left, click on the 
checkbox of the bucket and then click on Bucket Permissions. Go to `Add another permission` and add a new user with `Writer` permission.
The email address is the one that you copied in App Engine. Save it.
4. Go back to the project, go to `Cloud SQL` and create a new instance. Remember the name of the instance you gave.
5. Go to [Console API](https://code.google.com/apis/console). Find your created project on the left nav bar and go to Services.
On the tab `Google Cloud Platform` make sure Google Cloud Storage and Google Cloud SQL is both `ON`
6. Enable billing on the left nav.
7. Go to your terminal and run `deploy.sh`

### Docs

* [Activate Google Cloud Storage](https://developers.google.com/storage/docs/signup)
* [Using Google Cloud SQL with App Engine PHP SDK](https://developers.google.com/appengine/docs/php/cloud-sql/developers-guide)
* [Uploading Your Application](https://developers.google.com/appengine/docs/php/gettingstarted/uploading)
* [Google Cloud SQL CLI](https://developers.google.com/cloud-sql/docs/commandline)
