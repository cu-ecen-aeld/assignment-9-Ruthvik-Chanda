#TODO: Fill up the contents below in order to reference your assignment 3 git contents
AESD_LDD_VERSION = 549e3cf8b0edbf171a087eb4f2cf5c0e6df178ae
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESD_LDD_SITE = 'git@github.com:cu-ecen-aeld/assignments-3-and-later-Ruthvik-Chanda.git'
AESD_LDD_SITE_METHOD = git
AESD_LDD_GIT_SUBMODULES = YES

AESD_LDD_MODULE_SUBDIRS = aesd-char-driver/

# TODO adding all the dependencies.
define AESD_LDD_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(TARGET_DIR)/usr/bin
	
	$(INSTALL) -m 0755 $(@D)/assignment-autotest/test/assignment8/drivertest.sh $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/assignment-autotest/test/assignment8/assignment-test.sh $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/assignment-autotest/test/assignment8/sockettest.sh $(TARGET_DIR)/usr/bin
endef

$(eval $(kernel-module))
$(eval $(generic-package))
