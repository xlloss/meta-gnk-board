FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

#COMPATIBLE_MACHINE_rzv2l_rzg2l = "(gnk-rzg2l|gnk-rzv2l)"

SRC_URI_append = " \
	file://0001-add-DDR4-1GB-IS43QR16512A.patch \
	file://0002-add-SPI-Flash-IS25WP512M.patch \
	file://0003-enable-SPI-Flash-IS25WP512M.patch \
	file://0004-GNK_V2L-add-DDR4-1GB-IS43QR16512A.patch \
"
