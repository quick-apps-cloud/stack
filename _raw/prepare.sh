#!/bin/bash
[ -f .env ] && export $(grep -v '^#' .env | xargs)

# echo $POSTGRES_PASSWORD
