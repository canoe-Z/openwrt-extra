#
# Copyright (C) 2007-2013 OpenWrt.org
# Copyright (C) 2014 NowRush Studio <hackpascal@gmail.com>
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/version.mk

PKG_NAME:=wallproxy
PKG_VERSION:=2.2.4
PKG_RELEASE:=1

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)-$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk

define Package/wallproxy
  SECTION:=net
  CATEGORY:=Network
  DEPENDS:=+python +pyopenssl +gevent
  TITLE:=WallProxy
  VERSION:=$(PKG_VERSION)
endef

define Package/goagent/description
 Wallproxy is a proxy tool to break the GFW.
endef

define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/wallproxy/install
	$(INSTALL_DIR) $(1)
	$(INSTALL_DIR) $(1)/etc
	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_DIR) $(1)/usr/lib/wallproxy
	$(INSTALL_DIR) $(1)/usr/lib/wallproxy/cert
	$(INSTALL_DIR) $(1)/usr/lib/wallproxy/misc
	$(INSTALL_DIR) $(1)/usr/lib/wallproxy/cert/missing

	$(INSTALL_BIN) ./files/usr/lib/wallproxy/pac $(1)/usr/lib/wallproxy
	$(INSTALL_BIN) ./files/usr/lib/wallproxy/proxy.ini $(1)/usr/lib/wallproxy
	$(INSTALL_BIN) ./files/usr/lib/wallproxy/startup.py $(1)/usr/lib/wallproxy
	$(INSTALL_BIN) ./files/usr/lib/wallproxy/startup.sh $(1)/usr/lib/wallproxy
	$(INSTALL_BIN) ./files/usr/lib/wallproxy/cert/gen_cacert.py $(1)/usr/lib/wallproxy/cert
	$(INSTALL_BIN) ./files/usr/lib/wallproxy/cert/missing/* $(1)/usr/lib/wallproxy/cert/missing
	$(INSTALL_BIN) ./files/usr/lib/wallproxy/misc/* $(1)/usr/lib/wallproxy/misc
	$(INSTALL_BIN) ./files/etc/wallproxy.sh $(1)/etc/wallproxy.sh
	$(INSTALL_BIN) ./files/etc/init.d/wallproxy $(1)/etc/init.d
endef

$(eval $(call BuildPackage,wallproxy))
