#!/bin/bash
set -e

SERVICE="rpi-monitor"

# create log directory
mkdir -p /var/log/${SERVICE}
chown root:root /var/log/${SERVICE}
chmod 755 /var/log/${SERVICE}

# delopy
cp cron/* /etc/cron.d/
cp logrotate/rpi-monitor /etc/logrotate.d/
