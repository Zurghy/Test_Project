#!/usr/bin/env sh
set -eu

envsubst '${NGINX_SERVER_ADDRESS} ${NGINX_LOCATION} ${NGINX_LOCATION_PORT}' < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf

exec "$@"
