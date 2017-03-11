#!/bin/bash

echo $DIGITALOCEAN_API_TOKEN | doctl auth init

docker-machine create \
    --driver digitalocean \
    --digitalocean-size 1gb \
    --digitalocean-access-token $DIGITALOCEAN_API_TOKEN \
    --digitalocean-region blr1 blr-manager-01

docker-machine create \
    --driver digitalocean \
    --digitalocean-size 1gb \
    --digitalocean-access-token $DIGITALOCEAN_API_TOKEN \
    --digitalocean-region blr1 blr-worker-01

docker-machine create \
    --driver digitalocean \
    --digitalocean-size 1gb \
    --digitalocean-access-token $DIGITALOCEAN_API_TOKEN \
    --digitalocean-region blr1 blr-worker-02