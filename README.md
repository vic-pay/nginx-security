# NGINX module builder in docker

Example of building NGINX module [VTS](https://github.com/vozlt/nginx-module-vts) in container.
Usefull for metrics

## Usage

Execute commands in repository directory
Preparation:

    mkdir modules
    chmod 777 modules

Build module:

    docker-compose -f docker-compose.builder.yml up --force-recreate
    docker-compose -f docker-compose.builder.yml down

Run NGINX Modsecurity container:

    docker-compose up --force-recreate

Open `http://127.0.0.1/status` in browser

Stop NGINX container:

    docker-compose down