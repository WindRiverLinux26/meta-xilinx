FILESEXTRAPATHS:prepend:zynqmp := "${THISDIR}/amd-zynqmp:"
SRC_URI:append:zynqmp = "${@bb.utils.contains('MACHINE_FEATURES', 'mali400', \
				'file://0001-Revert-gl-add-support-for-surfaceless-display-in-Gst.patch', '', d)}"
