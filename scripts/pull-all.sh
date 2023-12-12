#!/bin/bash
set -e

for dir in ../compose/*/; do
  if [[ -f "${dir}docker-compose.yml" ]]; then
    (cd "${dir}" && docker compose pull)
  fi
done
