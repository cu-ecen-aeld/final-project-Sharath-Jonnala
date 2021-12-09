
##############################################################
#
# FINAL-PROJECT SCANNER FUNCTIONALITY
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
SCANNER_VERSION = 'cbc86d9ce9cfd8295eb4d0fcd3fc1d0235d53c59'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
SCANNER_SITE = 'https://github.com/cu-ecen-aeld/final-project-chaithra-sharath.git'
SCANNER_SITE_METHOD = git
SCANNER_GIT_SUBMODULES = YES

define SCANNER_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/2d-scanner all
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define SCANNER_INSTALL_TARGET_CMDS

	$(INSTALL) -m 0755 $(@D)/2d-scanner/* $(TARGET_DIR)/usr/bin
	
endef

$(eval $(generic-package))
