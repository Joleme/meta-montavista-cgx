# do_install copies files from the compilation directory to a holding area
do_install_append () {
        if [ "${libdir}" != "/usr/lib" ] ; then
	   mv ${D}/usr/lib ${D}${libdir}/
        fi
        cp -df ${B}/lib/libCppUnit.so* ${D}${libdir}
}
FILES_${PN}-cppunit = "${libdir}/libCppUnit.so.*"
