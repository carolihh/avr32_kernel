#############################################################
#
# rdesktop
#
#############################################################

RDESKTOP_VERSION = 1.5.0
RDESKTOP_SOURCE = rdesktop-$(RDESKTOP_VERSION).tar.gz
RDESKTOP_SITE = http://$(BR2_SOURCEFORGE_MIRROR).dl.sourceforge.net/sourceforge/rdesktop/
# no install-strip / install-exec
RDESKTOP_INSTALL_TARGET_OPT = DESTDIR=$(TARGET_DIR) install
RDESKTOP_DEPENDENCIES = openssl xlib_libX11 xlib_libXt
RDESKTOP_CONF_OPT = --with-openssl=$(STAGING_DIR)/usr

$(eval $(call AUTOTARGETS,package,rdesktop))
