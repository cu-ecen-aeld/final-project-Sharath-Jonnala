
##############################################################
#
# FINAL-PROJECT SOLARCELL INTERFACE
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
SOLARCELL_VERSION = '50acb898b149c17e0e70f35dbf2da3198e7a60a0'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
SOLARCELL_SITE = 'https://github.com/cu-ecen-aeld/final-project-chaithra-sharath.git'
SOLARCELL_SITE_METHOD = git
SOLARCELL_GIT_SUBMODULES = YES

define SOLARCELL_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/Solar-cell-Debian all
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define SOLARCELL_INSTALL_TARGET_CMDS

	$(INSTALL) -m 0755 $(@D)/Solar-cell-Debian/* $(TARGET_DIR)/usr/bin
	
endef

$(eval $(generic-package))
