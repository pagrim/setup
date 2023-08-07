#!/bin/bash
echo "Removing images with <none> tag"
for imageid in $(docker image ls | awk '$2 ~/<none>/ {print $3}' FS=" "); do
    docker image rm -f $imageid
    echo "Removed image $imageid"
done
