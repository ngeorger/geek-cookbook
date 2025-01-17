#!/bin/bash
#docker pull squidfunk/mkdocs-material:latest
#docker build . -t funkypenguin/mkdocs-material
docker run --rm --name mkdocs-material -it -p 8123:8000 -v ${PWD}:/docs -e PROD_BUILD=false funkypenguin/mkdocs-material serve \
    --dev-addr 0.0.0.0:8000 \
    --dirtyreload \
    --config-file mkdocs-insiders.yml
