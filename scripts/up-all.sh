#!/bin/bash
set -e

compose_services=(
    "ddclient"
    "crowdsec"
    "autoheal"
    "pihole"
    "minecraft"
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
    "immich"
)

for service in "${compose_services[@]}"; do
    docker compose -f "../compose/${service}/docker-compose.yml" up -d
done
