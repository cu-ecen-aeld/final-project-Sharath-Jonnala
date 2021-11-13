
##############################################################
#
# FINAL-PROJECT GPIO INTERFACE
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
GPIO_VERSION = 'ddcaed8360a46db24ae2cda9163cbd846929b2b1'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
GPIO_SITE = 'https://github.com/cu-ecen-aeld/final-project-chaithra-sharath.git'
GPIO_SITE_METHOD = git
GPIO_GIT_SUBMODULES = YES

define GPIO_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define GPIO_INSTALL_TARGET_CMDS

	$(INSTALL) -m 0755 $(@D)/Makefile $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/test_gpio_read.c $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/test_gpio_write.c $(TARGET_DIR)/usr/bin
	
	
endef

$(eval $(generic-package))
