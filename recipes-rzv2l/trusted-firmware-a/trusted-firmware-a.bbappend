FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

COMPATIBLE_MACHINE_rzv2l = "(gnk-rzv2l)"

# For RZ/V2L Series
PLATFORM_gnk-rzv2l = "v2l"

EXTRA_FLAGS_gnk-rzv2l = "BOARD=smarc_pmic_2"
PMIC_EXTRA_FLAGS_gnk-rzv2l = "BOARD=gnk-rzv2l"
FLASH_ADDRESS_BL2_BP_gnk-rzv2l = "00000"
FLASH_ADDRESS_FIP_gnk-rzv2l = "1D200"

SRC_URI_append = " \
	file://rz_board.mk \
"
do_addboards () {
	mkdir -p ${S}/plat/renesas/rz/board/gnk-rzv2l
	cp -fv ${WORKDIR}/rz_board.mk ${S}/plat/renesas/rz/board/gnk-rzv2l
}

addtask do_addboards before do_configure after do_patch
