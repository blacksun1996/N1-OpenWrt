#!/bin/bash

# Add packages
git clone https://github.com/ophub/luci-app-amlogic --depth=1 clone/amlogic
git clone https://github.com/vernesong/OpenClash.git --depth=1 clone/openclash

# Update packages
rm -rf feeds/luci/applications/luci-app-openclash
cp -rf clone/amlogic/luci-app-amlogic feeds/luci/applications/
cp -rf clone/openclash/luci-app-openclash feeds/luci/applications/

# Clean packages
rm -rf clone
