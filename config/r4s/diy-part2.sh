#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate

# Add luci-app-bypass
git clone https://github.com/garypang13/luci-app-bypass package/luci-app-bypass

# Add luci-app-dnsfilter
git clone https://github.com/garypang13/luci-app-dnsfilter package/luci-app-dnsfilter

# Add luci-app-godproxy
git clone https://github.com/godros/luci-app-godproxy.git package/luci-app-godproxy