#!/bin/bash

set -x
set -e

sudo apt install software-properties-common -y
sudo add-apt-repository ppa:mozillateam/ppa
sudo apt update -y

echo '
Package: *
Pin: origin ppa.launchpadcontent.net
Pin-Priority: 1000

Package: firefox*
Pin: release o=Ubuntu
Pin-Priority: -1' | tee /etc/apt/preferences.d/mozilla

sudo apt install firefox -y

