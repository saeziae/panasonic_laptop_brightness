Unload the panasonic_laptop driver does work for me.

``` bash
sudo sh -c "echo blacklist panasonic_laptop > /etc/modprobe.d/fuck-driver.conf"
```

# If above does not work then read below

*Script to fix brightness adjustment for Panasonic laptop*

**This eats up many CPU (3%) on my laptop so that it is may not a good solution.**

## Installing

`sudo bash ./install.sh`
