FROM wordpress:4.9.8-php7.1

# Update repos
RUN apt-get update && apt-get install -y git screen vim

COPY ./Replace /var/www/html/Replace