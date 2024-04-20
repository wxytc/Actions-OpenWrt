#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
echo 'src-git kenzok8sp https://github.com/kenzok8/small-package.git' >>./feeds.conf.default
echo 'src-git kiddin9sp https://github.com/kiddin9/openwrt-packages.git' >>./feeds.conf.default
# sed -i '/files\/adguardhome.*/d' ./feeds/packages/net/adguardhome/Makefile
# sed -i '/$(INSTALL_DIR) $(1)\/etc/d' ./feeds/packages/net/adguardhome/Makefile
sed -i '/Package\/adguardhome\/install/,/endef/d' ./feeds/packages/net/adguardhome/Makefile
