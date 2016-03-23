# Copyright (C) 2014 Montavista Inc
#

SUMMARY = "Self hosted installer"
DESCRIPTION = "Features required for self hosted installer to work"
PR = "r1"
LICENSE = "MIT"

inherit packagegroup

PACKAGES = " \
        packagegroup-selfhost-installer \
	packagegroup-selfhost-installer-defaultimage \
    "

RDEPENDS_packagegroup-selfhost-installer-defaultimage = "${PACKAGES_OF_SELFHOST_INSTALLER_DEFAULTIMAGE}"
RDEPENDS_packagegroup-selfhost-installer = "${PACKAGES_OF_SELFHOST_INSTALLER}"


X86_PACKAGES_OF_SELFHOST_INSTALLER = "\
                kernel \
                kernel-modules \
                python-debugger \
                linux-firmware \
                sysvinit \
                initscripts \
                sysvinit-inittab \
                base-files \
                base-passwd \
                busybox \
                mvinstaller \
                mvpartition \
                nfs-utils-client \
                strace \
"

X86_PACKAGES_OF_SELFHOST_INSTALLER_DEFAULTIMAGE = " \
                mvmkramdisk \
                grub \
                grep \
                util-linux-blkid \
           "

PACKAGES_OF_SELFHOST_INSTALLER = ""
PACKAGES_OF_SELFHOST_INSTALLER_i686 = "${X86_PACKAGES_OF_SELFHOST_INSTALLER}"
PACKAGES_OF_SELFHOST_INSTALLER_x86-64 = "${X86_PACKAGES_OF_SELFHOST_INSTALLER}"
PACKAGES_OF_SELFHOST_INSTALLER_x86-generic-64 = "${X86_PACKAGES_OF_SELFHOST_INSTALLER}"

PACKAGES_OF_SELFHOST_INSTALLER_DEFAULTIMAGE = ""
PACKAGES_OF_SELFHOST_INSTALLER_DEFAULTIMAGE_i686 = "${X86_PACKAGES_OF_SELFHOST_INSTALLER_DEFAULTIMAGE}"
PACKAGES_OF_SELFHOST_INSTALLER_DEFAULTIMAGE_x86-64 = "${X86_PACKAGES_OF_SELFHOST_INSTALLER_DEFAULTIMAGE}"
PACKAGES_OF_SELFHOST_INSTALLER_DEFAULTIMAGE_x86-generic-64 = "${X86_PACKAGES_OF_SELFHOST_INSTALLER_DEFAULTIMAGE}"

#RDEPENDS_packagegroup-selfhost-installer-defaultimage= "\
#			mvmkramdisk \
#                         grub \
#                         grep \
#                         util-linux-blkid \
#			"