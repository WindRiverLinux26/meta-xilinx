# NOTE (WRLinux): the override below is disabled on purpose.
#
# It pinned kern-tools-native to f589e1d ("fix symbol_why for v6.18-rc1+",
# OE-Core rev 8306d2bdcc48718aaa35dfa56b5364d90ea2a1db) to get the
# menu-attributes handling needed by the 6.18 kernel. Our oe-core has since
# advanced kern-tools to 96a8d58 (2026-06-18), a descendant of f589e1d that
# already contains that fix. Re-pinning f589e1d here only DOWNGRADES the tool on
# Xilinx BSPs and, because f589e1d is not in the WRLinux source download mirror,
# breaks offline / BB_NO_NETWORK builds (kern-tools-native do_fetch reaches out
# to git.yoctoproject.org). Leaving it disabled lets Xilinx BSPs use oe-core's
# newer, already-mirrored SRCREV, consistent with every other WRLinux machine.
# Verified: amd-zynqmp do_fetch (offline) and linux-yocto 6.18.35
# do_kernel_configme both succeed with 96a8d58.
#
# fix symbol_why for v6.18-rc1+ (From OE-Core rev: 8306d2bdcc48718aaa35dfa56b5364d90ea2a1db)
# Need newer kern-tools-native to handle menu-attributes syntax changes.
#SRCREV = "f589e1df23251d8319063da0a61c1016b2a0bf85"
