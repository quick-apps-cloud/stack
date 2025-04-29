#!/bin/bash

docker run -it --rm -v $(pwd):/app dotenv/dotenvx run -- sh -c './_manual_installation.sh'
