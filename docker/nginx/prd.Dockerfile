FROM nginx:latest
COPY --chown=nginx ./docker/nginx/default.conf /etc/nginx/conf.d/default.conf
COPY --chown=nginx ./ /var/www/html
