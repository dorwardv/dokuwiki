## Dokuwiki on nginx


This repository contains **Dockerfile** of Wordpress on Nginx using Sqlite instead of MySQL


### Base Docker Image

* Nginx with PHP support using PHP5-FPM (https://registry.hub.docker.com/u/dorwardv/nginx_php5-fpm/)

### Usage

    docker run -d -p 80:80 dorwardv/dokuwiki

After few seconds, open `http://<host>/install.php` to see the dokuwiki install page.

###Build from Dockerfile
    docker build -t="dorwardv/dokuwiki" github.com/dorwardv/dokuwiki
