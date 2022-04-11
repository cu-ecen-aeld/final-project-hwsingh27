##############################################################
#
# Socket
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
SOCKET_VERSION = 16c5c8d8359cf12d7f8531124c815597eaffa331
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
SOCKET_SITE = git@github.com:cu-ecen-aeld/darshitagrawal_hwsingh27_shared.git
SOCKET_SITE_METHOD = git
SOCKET_GIT_SUBMODULES = YES

define SOCKET_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/socket all
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define SOCKET_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/socket/servertest $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/socket/clienttest $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
