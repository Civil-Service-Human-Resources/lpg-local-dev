#!/usr/bin/env bash
az acr login --name lpgregistry && docker-compose -f docker-compose.db.yml \
    -f docker-compose.learninglocker.yml \
    -f docker-compose.api.yml \
    up