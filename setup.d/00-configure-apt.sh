#!/bin/bash

set -x
set -e

# bo.archive.ubuntu.com is on Brazil and the main ISPs on the region don't have good peering to this server.
sudo sed -i 's|bo\.archive\.ubuntu\.com|us.archive.ubuntu.com|g' /etc/apt/sources.list.d/ubuntu.sources 

# Only for local testing purposes
# I added this because the internet to teset is slow, so it was a good workaround

echo 'Acquire::http { Proxy "http://192.168.1.175:3142"; };' | sudo tee /etc/apt/apt.conf.d/02proxy
sudo apt-get update
