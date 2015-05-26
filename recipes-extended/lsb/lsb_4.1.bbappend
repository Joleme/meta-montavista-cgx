# Copyright (c) 2013 MontaVista Software, Inc.  All rights reserved.
#
# Released under the MIT license (see LICENSE.MIT for the terms)
#
PR .= ".3"

FILESEXTRAPATHS_prepend := "${THISDIR}/lsb:"

# Adding these files, as we may need to add 
# few extra functions for initscripts
SRC_URI += "file://lsb_killproc \
            file://lsb_log_message \
            file://lsb_pidofproc \
            file://lsb_start_daemon \
            file://init-functions \
	    "
RDEPENDS_${PN} += " lsbinitscripts"
RDEPENDS_${PN}_virtclass-native = ""

do_install_virtclass-native() {
	oe_runmake install prefix=${D}${prefix} mandir=${D}/${datadir}/man/ DESTDIR=${D}
}

BBCLASSEXTEND = "native"

