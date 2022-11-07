FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI_append = " \
	file://qspiFlash-writer-helper \
	file://makefile \
	file://0001-GREENPAK_RZG2L-add-DDR4-1G-IS43QR16512A.patch \
	file://0001-GREENPAK_V2L-add-DDR4-1GB-IS43QR16512A.patch \
"

do_compile() {
	cp -fv ${WORKDIR}/makefile ${S}

	if [ "${MACHINE}" = "smarc-rzg2l" ]; then
		BOARD="RZG2L_SMARC";
		PMIC_BOARD="RZG2L_SMARC_PMIC";
	elif [ "${MACHINE}" = "greenpak-rzg2l" ]; then
		BOARD="RZG2L_SMARC_PMIC";
		PMIC_BOARD="GREENPAK_RZG2L";
	elif [ "${MACHINE}" = "greenpak-rzv2l" ]; then
		BOARD="RZV2L_SMARC_PMIC";
		PMIC_BOARD="GREENPAK_RZV2L";
	elif [ "${MACHINE}" = "smarc-rzg2lc" ]; then
		BOARD="RZG2LC_SMARC";
	elif [ "${MACHINE}" = "smarc-rzg2ul" ]; then
		BOARD="RZG2UL_SMARC";
	elif [ "${MACHINE}" = "smarc-rzv2l" ]; then
		BOARD="RZV2L_SMARC";
		PMIC_BOARD="RZV2L_SMARC_PMIC";
	elif [ "${MACHINE}" = "rzv2l-dev" ]; then
		BOARD="RZV2L_15MMSQ_DEV";
	fi
	cd ${S}

	oe_runmake BOARD=${BOARD}
		if [ "${PMIC_SUPPORT}" = "1" ]; then
			oe_runmake OUTPUT_DIR=${PMIC_BUILD_DIR} clean;
			oe_runmake BOARD=${PMIC_BOARD} OUTPUT_DIR=${PMIC_BUILD_DIR};
		fi
}

do_deploy_append () {
	install -d ${DEPLOYDIR}
	install -m 755 ${WORKDIR}/qspiFlash-writer-helper ${DEPLOYDIR}
}

