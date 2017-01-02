################################################################################
#
# uccp420wlan
#
################################################################################

UCCP420WLAN_VERSION = v6.8
UCCP420WLAN_SITE = $(call github,CreatorDev,uccp420wlan,$(UCCP420WLAN_VERSION))
UCCP420WLAN_LICENSE = GPLv2, proprietary(firmware blob)
UCCP420WLAN_LICENSE_FILES = COPYING

define UCCP420WLAN_INSTALL_FIRMWARE
	mkdir -p $(TARGET_DIR)/lib/firmware/img/uccp420wlan
	cp $(@D)/firmware/*.ldr $(TARGET_DIR)/lib/firmware/img/uccp420wlan
endef

UCCP420WLAN_POST_INSTALL_TARGET_HOOKS += UCCP420WLAN_INSTALL_FIRMWARE

$(eval $(kernel-module))
$(eval $(generic-package))
