#!/bin/bash

# Date: 2025-06-21
# App: Openssl

SERVER_NAME=$(hostname --fqdn | awk '{print $1}')

sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/ssl/private/self-signed.key \
    -out /etc/ssl/certs/self-signed.crt \
    -subj "/CN=$SERVER_NAME"
