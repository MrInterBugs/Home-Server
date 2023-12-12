#!/bin/bash
set -e

compose_services=(
    "ddclient"
    "crowdsec"
    "autoheal"
    "pihole"
    "wireguard"
    "traefik"
    "ldap"
    "arrs"
    "plex"
    "homer"
    "portainer"
    "qbittorrent"
    "homeassistant"
    "serge"
    "code-server"
    "ghost"
)

for service in "${compose_services[@]}"; do
    docker compose -f "../compose/${service}/docker-compose.yml" down
done
