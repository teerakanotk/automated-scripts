#!/bin/bash

# Date: 2025-06-21
# App: Openssl

SERVER_NAME=$(hostname -I | awk '{print $1}')

sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/ssl/private/ssl-selfsigned.key \
    -out /etc/ssl/certs/ssl-selfsigned.crt \
    -subj "/CN=$SERVER_NAME"
