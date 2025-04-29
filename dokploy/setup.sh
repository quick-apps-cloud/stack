#!/bin/bash -i
# source ~/.bashrc
# dotenvx run -f .env -- bash -i ./_manual_installation.sh

[ -f ../.env ] && export $(grep -v '^#' ../.env | xargs)

./_manual_installation.sh