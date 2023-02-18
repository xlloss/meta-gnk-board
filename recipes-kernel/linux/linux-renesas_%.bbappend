FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append = " \
	file://i2c.cfg \
	file://audio.cfg \
	file://ts_vgg804834_0tslwc.cfg \
	file://isl76683.cfg \
	file://0001-gnk-v2l-g2l-new-r9a07g054l2-smarc-gnk.dts-r9a07g044l.patch \
	file://0003-gnk-v2l-g2l-audio-enable-DA7218-audio-codec.patch \
	file://0004-gnk-v2l-g2l-audio-workaround-for-DA7218-not-support-.patch \
	file://0005-gnk-v2l-g2l-scif-enable-scif1.patch \
	file://0006-gnk-v2l-g2l-light-sensor-support-isl76683.patch \
	file://0007-gnk-v2l-g2l-light-sensor-isl76683-fixed-rcu-issue-wi.patch \
	file://0008-gnk-v2l-g2l-light-sensor-disabled-isl76683.patch \
	file://0009-gnk-v2l-scif-enable-scif2.patch \
	file://0010-gnk-v2l-canbus-delete-can-stb-node.patch \
	file://0012-gnk-v2l-g2l-mipi-dsi-add-support-mipi-panel-vgg80483.patch \
	file://0013-gnk-v2l-mipi-dsi-enable-mipi-panel-vgg804834-otslwc.patch \
	file://0014-gnk-v2l-spi-disabled-spi1.patch \
	file://0015-gnk-v2l-backlight-add-new-property-for-default-vlaue.patch \
	file://0016-gnk-v2l-dts-reserve-memeory-for-drp-ai.patch \
	file://0017-gnk-vl2-scif-enable-scif1-scif3.patch \
	file://0018-gnk-g2l-dts-enable-scif1-scif3-and-dsi.patch \
	file://0019-gnk-g2l-v2l-dts-support-ov5640.patch \
	file://0020-gnk-g2l-enable-ov5640.patch \
	file://0021-gnk-v2l-enable-ov5640.patch \
	file://0022-gnk-g2l-v2l-dsi-panel-use-drm_panel_of_backlight.patch \
	file://0023-gnk-g2l-v2l-backlight-support-pwm-backlight-with-pwm.patch \
	file://0024-gnk-g2l-backlight-enable-pwm-backlight.patch \
	file://0025-gnk-v2l-backlight-enable-pwm-backlight.patch \
	file://0026-gnk-g2l-v2l-isl76683-disable-interrupt.patch \
	file://0027-gnk-g2l-v2l-enable-isl76683-in-dts.patch \
	file://0028-gnk-g2l-v2l-add-VGG804834-0TSLWC-I2C-Touch-Screen-Dr.patch \
	file://0029-gnk-g2l-v2l-add-VGG804834-0TSLWC-TS-dts-note.patch \
	file://0031-gnk_g2l_v2l-fixed-mipi-dsi-color-invert-issue.patch \
"

COMPATIBLE_MACHINE_rzg2l = "(gnk-rzg2l)"
COMPATIBLE_MACHINE_rzv2l = "(gnk-rzv2l)"

PARALLEL_MAKE = "-j 8"

CFLAGS += " \
        -Wno-maybe-uninitialized \
        -Wno-implicit-fallthr \
        -Wno-implicit-function-declaration \
"
KERNEL_MODULE_AUTOLOAD_append += "\
	vgg804834_ts_i2c \
	isl76683 \
	"
