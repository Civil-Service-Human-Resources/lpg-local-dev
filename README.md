# lpg-local-dev
## Overview
The following repo contains all the necessary scripts needed to set up local dev environment for LPG. 

## Table of contents
- [Overview](#overview)
- [Table of contents](#table-of-contents)
- [Getting started](#getting-started)
    - [Downloading source code](#downloading-source-code)
    - [Running LPG backend](#running-lpg-backend)
    - [Troubleshooting](#troubleshooting)
- [Next steps](#next-steps)

## Getting started
### Downloading source code
- Navigate to `scripts` directory
- Download source code for all repos: 
```
./clone_lpg_git_repos.sh.sh
```

### Running LPG backend 
The LPG backend databases and services can be run using docker compose.
- Navigate to the `docker-compose` directory
- There are several scripts that can be executed to run different parts of the application using docker-compose.
- Run all backend databases, learning locker applications and internal services:
```
./run_all_backend.sh
```
- Run all backend databases, learning locker but none the internal services:
```
./run_db_and_ll.sh
```
- Run all backend databases and learning locker without using ACR:
```
./run_without_acr.sh
```

#### Troubleshooting
- If an error occurs stating that a service can not be run because one already exists with same name, run the following command:
```
docker system prune
```

## Next steps
Any future enhancements to go here
