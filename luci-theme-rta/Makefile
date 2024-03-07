#
# Copyright (C) 2024 The rtaserver Team <rizkidhc31@gmail.com>    
#
# This is free software, licensed under the Apache License, Version 2.0 .
#

include $(TOPDIR)/rules.mk

LUCI_TITLE:=RTA Theme
PKG_NAME:=luci-theme-rta
LUCI_DEPENDS:=
PKG_VERSION:=1.0.1

define Package/luci-theme-rta/postinst
#!/bin/sh

rm -Rf /var/luci-modulecache
rm -Rf /var/luci-indexcache
exit 0

endef

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature
