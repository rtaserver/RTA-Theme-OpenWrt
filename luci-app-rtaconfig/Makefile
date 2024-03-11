#
# Copyright 2024 rtaserver team <rizkidhc31@gmail.com>
# This is free software, licensed under the Apache License, Version 2.0 .
#

include $(TOPDIR)/rules.mk
NAME:=rtaconfig
PKG_NAME:=luci-app-$(NAME)
LUCI_TITLE:=LuCI support for RTA theme setting by rtaserver
LUCI_DEPENDS:=+luci-compat +curl
LUCI_PKGARCH:=all


define Package/$(PKG_NAME)/conffiles
/etc/config/rtaconfig
endef

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature
