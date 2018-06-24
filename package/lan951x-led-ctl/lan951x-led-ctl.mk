LAN951X_LED_CTL_VERSION = 0291b91702f5742fa56aa5e0942c28261777de7c
LAN951X_LED_CTL_SITE = $(call github,dumpsite,lan951x-led-ctl,$(LAN951X_LED_CTL_VERSION))

define LAN951X_LED_CTL_BUILD_CMDS
	$(TARGET_MAKE_ENV) $(TARGET_CONFIGURE_OPTS) $(MAKE) -C $(@D) CFLAGS="$(TARGET_CLFAGS) -Iinclude"
endef

define LAN951X_LED_CTL_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/lan951x-led-ctl $(TARGET_DIR)/usr/bin/lan951x-led-ctl
endef

$(eval $(generic-package))
