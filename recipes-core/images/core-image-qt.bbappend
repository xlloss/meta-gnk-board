inherit populate_sdk_qt5
TOOLCHAIN_HOST_TASK_append = " nativesdk-qtwayland-tools "
FEATURE_PACKAGES_tools-sdk += " packagegroup-qt5-toolchain-target kernel-devsrc "

IMAGE_INSTALL_append = " \
	tslib nfs-utils e2fsprogs e2fsprogs-resize2fs udev curl bc usbutils wget \
	mmc-utils squashfs-tools iputils sqlite3 libevent \
	devmem2 i2c-tools libgpiod sysbench \
	\
	libdrm-tests libdrm-kms libdrm \
	libpng libjpeg-turbo pv fbida yavta \
	\
	mpg123 libexif giflib \
"

IMAGE_INSTALL_append = " \
	bayer2raw drm2png \
	mkfs-helper \
"

IMAGE_INSTALL_append = " \
	${@oe.utils.conditional("CHROMIUM", "1", " \
        chromium-ozone-wayland \
        ", "", d)} \
"

update_issues () {
    # Set BSP version
    BSP_VERSION="3.0.0-update2"

    # Set SoC and Board info
    case "${MACHINE}" in
    greenpak-rzg2l)
      BSP_SOC="RZG2L"
      BSP_BOARD="RZG2L-GREENPAK-EVK"
      ;;
    smarc-rzg2l)
      BSP_SOC="RZG2L"
      BSP_BOARD="RZG2L-SMARC-EVK"
      ;;
    smarc-rzg2lc)
      BSP_SOC="RZG2LC"
      BSP_BOARD="RZG2LC-SMARC-EVK"
      ;;
    smarc-rzg2ul)
      BSP_SOC="RZG2UL"
      BSP_BOARD="RZG2UL-SMARC-EVK"
      ;;
    smarc-rzv2l)
      BSP_SOC="RZV2L"
      BSP_BOARD="RZV2L-SMARC-EVK"
      ;;
    rzv2l-dev)
      BSP_SOC="RZV2L"
      BSP_BOARD="RZV2L-DEV"
      ;;
    hihope-rzg2h)
      BSP_SOC="RZG2H"
      BSP_BOARD="HIHOPE-RZG2H"
      ;;
    hihope-rzg2m)
      BSP_SOC="RZG2M"
      BSP_BOARD="HIHOPE-RZG2M"
      ;;
    hihope-rzg2n)
      BSP_SOC="RZG2N"
      BSP_BOARD="HIHOPE-RZG2N"
      ;;
    ek874)
      BSP_SOC="RZG2E"
      BSP_BOARD="EK874"
      ;;

    esac

    # Make issue file
    echo "BSP: ${BSP_SOC}/${BSP_BOARD}/${BSP_VERSION}" >> ${IMAGE_ROOTFS}/etc/issue
    echo "LSI: ${BSP_SOC}" >> ${IMAGE_ROOTFS}/etc/issue
    echo "Version: ${BSP_VERSION}" >> ${IMAGE_ROOTFS}/etc/issue
}
ROOTFS_POSTPROCESS_COMMAND_remove = "update_issue; "
ROOTFS_POSTPROCESS_COMMAND += " update_issues; "
