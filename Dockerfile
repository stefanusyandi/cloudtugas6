# Gunakan image Alpine sebagai dasar
FROM alpine:latest

# Instal apache
RUN apk --no-cache add apache2 php apache2-proxy php-apache2 php-openssl php-session php-mysqli

# Konfigurasi apache (opsional)
RUN mkdir -p /run/apache2
#RUN rm /var/www/localhost/htdocs/index.html
#COPY index.php /var/www/localhost/htdocs

# Expose port 80
EXPOSE 80

# CMD untuk menjalankan apache2
CMD ["httpd", "-D", "FOREGROUND"]
