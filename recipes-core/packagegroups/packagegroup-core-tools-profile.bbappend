LTTNGUST_mips = "lttng2-ust"
PR .= ".1"
SYSTEMTAP=""

VALGRIND = ""
VALGRIND_x86-64 = "valgrind"
VALGRIND_x86-generic-64 = "valgrind"
VALGRIND_i686 = "valgrind"
VALGRIND_mips = "valgrind"
VALGRIND_powerpc = "valgrind"
VALGRIND_powerpc64 = "valgrind"
VALGRIND_armv7a = "valgrind"
VALGRIND_aarch64 = "valgrind"
VALGRIND_remove_linux-gnuilp32 = "valgrind"

PROFILETOOLS = "\
    powertop \
    latencytop \
    lttng-tools \
    lttng-modules \
    babeltrace \
    "
PROFILE_TOOLS_X_aarch64 = ""
