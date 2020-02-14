#!/usr/bin/env bash
az acr login --name lpgregistry && docker-compose -f docker-compose.ll-cshr.yml \
    -f docker-compose.db.yml \
    up -d