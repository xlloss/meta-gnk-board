FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI_append = " \
	file://0001-rzg2l-rzv2l-add-gnk-smarc-board-ddr-sdram-1GB.patch \
	file://0001-GREENPAK_RZG2L-add-DDR4-1G-IS43QR16512A.patch \
	file://0001-V2L-DDR-add-DDR4-1G-IS43QR16512A.patch \
"

inherit deploy

S = "${WORKDIR}/git"
PMIC_BUILD_DIR = "${S}/build_pmic"

do_compile() {
	if [ "${MACHINE}" = "gnk-rzg2l" ]; then
		BOARD="GNK_RZG2L";
		PMIC_BOARD="GNK_RZG2L";
	elif [ "${MACHINE}" = "gnk-rzv2l" ]; then
		BOARD="GNK_RZV2L";
		PMIC_BOARD="GNK_RZV2L";
	fi

	cd ${S}
	oe_runmake BOARD=${PMIC_BOARD} OUTPUT_DIR=${PMIC_BUILD_DIR} clean;
	oe_runmake BOARD=${PMIC_BOARD} OUTPUT_DIR=${PMIC_BUILD_DIR};
}

do_install[noexec] = "1"

do_deploy() {
	install -d ${DEPLOYDIR}
	install -m 644 ${PMIC_BUILD_DIR}/*.mot ${DEPLOYDIR}
}
PARALLEL_MAKE = "-j 1"
addtask deploy after do_compile
