FROM httpd:latest
RUN echo "LoadModule headers_module modules/mod_headers.so" >> /usr/local/apache2/conf/httpd.conf
COPY .htaccess /var/www/html/.htaccess
COPY index.html /usr/local/apache2/htdocs/index.html
COPY css/ /usr/local/apache2/htdocs/css/
