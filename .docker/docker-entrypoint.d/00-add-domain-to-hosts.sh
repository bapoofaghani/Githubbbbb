#!/bin/sh

if [[ -n "$NGINX_DOMAINS" ]]; then
	echo "127.0.0.1 $NGINX_DOMAINS" > /etc/hosts
fi