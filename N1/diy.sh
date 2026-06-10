#!/bin/bash

# Add packages
git clone https://github.com/ophub/luci-app-amlogic --depth=1 clone/amlogic
git clone https://github.com/QiuSimons/luci-app-daed --depth=1 package/dae

# Update packages
rm -rf feeds/luci/applications/luci-app-amlogic
cp -rf clone/amlogic/luci-app-amlogic feeds/luci/applications/

# Clean packages
rm -rf clone
