
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
#AESD_ASSIGNMENTS_VERSION = '0c607e2e98bcc382f3b0b12de2cb341e3a9d'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
#AESD_ASSIGNMENTS_SITE = 'git@github.com:cu-ecen-aeld/final-project-chaithra-sharath.git'
#AESD_ASSIGNMENTS_SITE_METHOD = git
#AESD_ASSIGNMENTS_GIT_SUBMODULES = YES

#define AESD_ASSIGNMENTS_BUILD_CMDS
#	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
#endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
#define AESD_ASSIGNMENTS_INSTALL_TARGET_CMDS
#	$(INSTALL) -m 0755 $(@D)/gpioreadtest $(TARGET_DIR)/usr/bin
#	$(INSTALL) -m 0755 $(@D)/gpiowritetest $(TARGET_DIR)/usr/bin
#	$(INSTALL) -m 0755 $(@D)/Makefile $(TARGET_DIR)/usr/bin
#	$(INSTALL) -m 0755 $(@D)/test_gpio_read.c $(TARGET_DIR)/usr/bin
#	$(INSTALL) -m 0755 $(@D)/test_gpio_write.c $(TARGET_DIR)/usr/bin
#endef

#$(eval $(generic-package))
