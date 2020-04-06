#!/usr/bin/env bash
docker-compose -f docker-compose.ll-cshr.yml \
    -f docker-compose.db.yml \
    up