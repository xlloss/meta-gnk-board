FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

COMPATIBLE_MACHINE_rzv2l = "(greenpak-rzv2l)"

# For RZ/G2L_V2L Series
PLATFORM_greenpak-rzv2l = "v2l"

EXTRA_FLAGS_greenpak-rzv2l = "BOARD=smarc_pmic_2"

PMIC_EXTRA_FLAGS_greenpak-rzv2l = "BOARD=greenpak-rzv2l"


FLASH_ADDRESS_BL2_BP_greenpak-rzv2l = "00000"

FLASH_ADDRESS_FIP_greenpak-rzv2l = "1D200"

SRC_URI_append = " \
	file://rz_board.mk \
"
do_addboards () {
	mkdir -p ${S}/plat/renesas/rz/board/greenpak-rzv2l
	cp -fv ${WORKDIR}/rz_board.mk ${S}/plat/renesas/rz/board/greenpak-rzv2l
}

addtask do_addboards before do_configure after do_patch
