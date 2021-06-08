#! /bin/bash

if [[ $(id -u) != 0 ]]; then
    echo >&2 "Root permission required."
    exit 1
fi

if [[ ! -d "/sys/class/backlight/panasonic/" ]]; then
    echo >&2 "/sys/class/backlight/panasonic/ not found. Aborting."
    exit 1
fi

if [[ ! -d "/sys/class/backlight/intel_backlight" ]]; then
    echo >&2 "/sys/class/backlight/intel_backlight not found. Aborting."
    exit 1
fi

cp ./brightness /usr/local/bin/
chmod 774 /usr/local/bin/brightness 
cp ./panasonic-brightness.service /etc/systemd/system/
chmod 664 /etc/systemd/system/panasonic-brightness.service
sudo systemctl daemon-reload
sudo systemctl enable panasonic-brightness.service
sudo systemctl start panasonic-brightness.service

echo >&2 "Installed."