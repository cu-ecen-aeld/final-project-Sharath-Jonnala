
##############################################################
#
# FINAL-PROJECT GPIO INTERFACE
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
GPIO_VERSION = 'e0456c1ff51232b98641080892f72805c562f06e'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
GPIO_SITE = 'https://github.com/cu-ecen-aeld/final-project-chaithra-sharath.git'
GPIO_SITE_METHOD = git
GPIO_GIT_SUBMODULES = YES

define GPIO_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/gpio_test all
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define GPIO_INSTALL_TARGET_CMDS

	$(INSTALL) -m 0755 $(@D)/gpio_test/* $(TARGET_DIR)/usr/bin
	
endef

$(eval $(generic-package))
