#!/bin/bash
#============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#============================================================

# Modify default IP
sed -i 's/192.168.1.1/192.168.3.9/g' package/base-files/files/bin/config_generate
#
git clone https://github.com/beenbin/passwall652.git package/passwall
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/luci-app-adguardhome
#git clone https://github.com/beenbin/OpenClash.git package/Openclash
git clone -b master https://github.com/vernesong/OpenClash.git package/Openclash
git clone https://github.com/frainzy1477/luci-app-clash.git package/luci-app-clash
git clone https://github.com/tty228/luci-app-serverchan.git package/luci-app-serverchan
git clone https://github.com/jefferymvp/luci-app-koolproxyR.git package/luci-app-koolproxyR
#冲突编译失败git clone https://github.com/destan19/OpenAppFilter.git package/OpenAppFilter
