#!/bin/sh

status_code=$(curl -o /dev/null -s -w "%{http_code}" "$1")

if [ "$status_code" = "$2" ]; then
  exit 0
else
  exit 1
fi
