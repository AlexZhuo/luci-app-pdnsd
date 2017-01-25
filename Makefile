include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-pdnsd
PKG_VERSION=1.1
PKG_RELEASE:=1
PKG_MAINTAINER:=Alex Zhuo <1886090@gmail.com>

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
    SECTION:=utils
    CATEGORY:=Utilities
    TITLE:=luci for pdnsd to invoid DNS pollution
        DEPENDS:=+pdnsd
endef

define Package/$(PKG_NAME)/description
    A luci app for pdnsd
endef

define Package/$(PKG_NAME)/postinst
#!/bin/sh
rm -rf /tmp/luci*

endef

define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/$(PKG_NAME)/install
    $(CP) ./files/* $(1)/

endef

$(eval $(call BuildPackage,$(PKG_NAME)))
