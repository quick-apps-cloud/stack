#!/bin/bash -i
source ~/.bashrc
dotenvx run -f .env -- sh -c './_manual_installation.sh'
