FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI_append = " \
	file://makefile \
	file://0001-GREENPAK_RZG2L-add-DDR4-1G-IS43QR16512A.patch \
	file://0001-V2L-DDR-add-DDR4-1G-IS43QR16512A.patch \
"

do_compile() {
	cp -fv ${WORKDIR}/makefile ${S}

	if [ "${MACHINE}" = "gnk-rzg2l" ]; then
		BOARD="GNK_RZG2L";
		PMIC_BOARD="GNK_RZG2L";
	elif [ "${MACHINE}" = "gnk-rzv2l" ]; then
		BOARD="GNK_RZV2L";
		PMIC_BOARD="GNK_RZV2L";
	fi
	cd ${S}

	oe_runmake BOARD=${BOARD}
		if [ "${PMIC_SUPPORT}" = "1" ]; then
			oe_runmake OUTPUT_DIR=${PMIC_BUILD_DIR} clean;
			oe_runmake BOARD=${PMIC_BOARD} OUTPUT_DIR=${PMIC_BUILD_DIR};
		fi
}
