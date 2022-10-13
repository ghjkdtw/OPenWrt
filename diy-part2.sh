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
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

#修改IP
sed -i 's/192.168.1.1/192.168.68.253/g' package/base-files/files/bin/config_generate

#修改空密码
sed -i '34s/V4UetPzk$CYXluq4wUazHjmCDBCqXF.:0/W20x1dnD$fL4vZImJD3OZM7hJd7r4e.:19258/' package/lean/default-settings/files/zzz-default-settings

修改Store
sed -i 's/luci-lib-ipkg/luci-base/g' feeds/store/luci/luci-app-store/Makefile

#make menuconfig
#然后：
#make defconfig
#./scripts/diffconfig.sh > seed.config
#cat seed.config
