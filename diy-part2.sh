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

# Enable OpenAppFilter (OAF)
sed -i 's/# CONFIG_PACKAGE_appfilter is not set/CONFIG_PACKAGE_appfilter=y/' .config
sed -i 's/# CONFIG_PACKAGE_kmod-oaf is not set/CONFIG_PACKAGE_kmod-oaf=y/' .config
sed -i 's/# CONFIG_PACKAGE_luci-app-appfilter is not set/CONFIG_PACKAGE_luci-app-appfilter=y/' .config
echo "CONFIG_PACKAGE_luci-i18n-appfilter-zh-cn=y" >> .config
