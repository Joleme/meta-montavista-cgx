PR .= ".1"

do_install_append () {
    if ${@bb.utils.contains('DISTRO_FEATURES','systemd','true','false',d)}; then
        if [ -e "${D}${libdir}/cups/daemon/cups-lpd" ] ; then
            install -D ${D}${libdir}/cups/daemon/cups-lpd ${D}${libexecdir}/cups/daemon/cups-lpd
	    rm ${D}${libdir}/cups/daemon/cups-lpd
        fi

	if [ -e "${D}${systemd_system_unitdir}/org.cups.cups-lpd@.service" ] ; then
	    sed -i "s:${libdir}/cups/daemon/cups-lpd:${libexecdir}/cups/daemon/cups-lpd:g" \
	    ${D}${systemd_system_unitdir}/org.cups.cups-lpd@.service
	fi
    fi
}

inherit multilib_script

# FIXME add ${libexecdir}/cups/daemon/cups-lpd to MULTILIB_SCRIPTS
#CUPS_LPD := "${@bb.utils.contains('DISTRO_FEATURES','systemd','${libexecdir}/cups/daemon/cups-lpd','',d)}"
MULTILIB_SCRIPTS = "${PN}-dev:${bindir}/cups-config"
