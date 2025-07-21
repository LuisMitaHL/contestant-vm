#!/bin/bash

set -x
set -e

systemctl stop snapd || true
systemctl disable snapd || true

apt remove --purge multipath* sg3-utils* unattended-upgrades -y

apt remove --purge snapd -y
rm -rf ~/snap
rm -rf /snap
rm -rf /var/snap
rm -rf /var/lib/snapd
rm -rf /var/cache/snapd
rm -rf /etc/systemd/system/snapd.service
rm -rf /etc/systemd/system/snapd.socket
rm -rf /etc/systemd/system/snapd.seeded.service

apt autoremove --purge -y
