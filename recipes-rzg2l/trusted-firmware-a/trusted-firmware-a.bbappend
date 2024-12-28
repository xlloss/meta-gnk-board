FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

COMPATIBLE_MACHINE_rzg2l = "apollo-rzg2l"

# For RZ/G2L Series
PLATFORM_apollo-rzg2l = "g2l"

# below flags for building atf pmic apollo board file (ref run.do_compile)
# oe_runmake PLAT=g2l bl2 bl31
# if [ "1" = "1" ]; then
# oe_runmake PLAT=g2l BOARD=apollo_pmic BUILD_PLAT=/home/cadtc/host_share_folder/RZG2L/Yocto/rzg_bsp_v3.0.3/build-apolloboard/tmp/work/apollo_rzg2l-poky-linux/trusted-firmware-a/v2.7+git-r0/git/build_pmic bl2 bl31
# fi

EXTRA_FLAGS_apollo-rzg2l = "BOARD=apollo_pmic"
PMIC_EXTRA_FLAGS_apollo-rzg2l = "BOARD=apollo_pmic"

FLASH_ADDRESS_BL2_BP_apollo-rzg2l = "00000"
FLASH_ADDRESS_FIP_apollo-rzg2l = "1D200"

SRC_URI_append = " \
	file://rz_board.mk \
"
do_addboards () {
	mkdir -p ${S}/plat/renesas/rz/board/apollo_pmic/
	cp -fv ${WORKDIR}/rz_board.mk ${S}/plat/renesas/rz/board/apollo_pmic/
}

addtask do_addboards before do_configure after do_patch
