#! /bin/bash

if [[ $(id -u) != 0 ]]; then
    echo >&2 "Root permission required."
    exit 1
fi
systemctl stop panasonic-brightness.service
systemctl disable panasonic-brightness.service
