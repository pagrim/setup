#!/bin/bash
echo "Removing all volumes"
for volumeid in $(docker volume ls | awk '{print $2}' FS=" "); do
    docker volume rm --force $volumeid
    echo "Removed image $volumeid"
done
