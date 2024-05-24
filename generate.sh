#!/bin/bash

# Function to display usage message
usage() {
    echo "Usage: $0 <keyword>"
    echo "Keywords: raspi, cloud-init"
}


# Check if the keyword argument is provided
if [ $# -eq 0 ]; then
    usage
    exit 1
fi


# Get the keyword from the command line argument
keyword="$1"

# Check if the keyword is valid
case $keyword in
    raspi)
        echo "Create a new Password needed for user password as user-data file"
        mkdir -p ./output/raspi
        jinja2 ./raspi/user-data.j2 ./raspi/payload.json -D password=$(openssl passwd -6) > ./output/raspi/user-data
        jinja2 ./raspi/network-config.j2 ./raspi/payload.json > ./output/raspi/network-config
        ;;
    cloud-init)
        directory="cloud-init"
        ;;
    *)
        echo "Invalid keyword."
        usage
        exit 1
        ;;
esac