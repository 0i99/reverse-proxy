#!/bin/bash -e
echo 'Parsing template nginx.conf.j2'
j2 /templates/nginx.conf.j2 > /etc/nginx/nginx.conf
exec "$@"