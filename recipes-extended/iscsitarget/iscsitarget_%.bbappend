PR .= ".2"

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI += "file://build_with_updated_bio_struct_of_linux_v4.3_and_above.patch \
            file://compile-with-incompatible-pointer-types.patch"