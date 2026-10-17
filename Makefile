include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-autoreboot
PKG_VERSION:=1.0
PKG_RELEASE:=1

LUCI_TITLE:=LuCI App for Scheduled Reboot (MT7987A / 25.10 apk)
LUCI_DEPENDS:=+cron +luci-base
LUCI_PKGARCH:=all

include $(TOPDIR)/feeds/luci/luci.mk
