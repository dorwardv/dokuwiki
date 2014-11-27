from dorwardv/nginx_php5-fpm
MAINTAINER Dorward Villaruz <dorwardv@gmail.com>

# get dokuwiki
RUN curl -O http://download.dokuwiki.org/src/dokuwiki/dokuwiki-stable.tgz
RUN tar -xzvf dokuwiki-stable.tgz --strip-components=1 --directory ${DOCUMENT_ROOT}
RUN chown -R www-data:www-data ${DOCUMENT_ROOT}

# secure dokuwiki
RUN sed -i 's/^}$/    location ~ \/(data|conf|bin|inc)\/ { deny all; }\n}/g' /etc/nginx/sites-available/default

EXPOSE 80
EXPOSE 443

CMD service php5-fpm start && nginx
