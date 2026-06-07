#!/bin/bash

# Add packages
git clone https://github.com/ophub/luci-app-amlogic --depth=1 clone/amlogic
git clone https://github.com/nikkinikki-org/OpenWrt-nikki.git --depth=1 package/nikki

# Update packages
rm -rf feeds/luci/applications/luci-app-amlogic
cp -rf clone/amlogic/luci-app-amlogic feeds/luci/applications/

# Clean packages
rm -rf clone
