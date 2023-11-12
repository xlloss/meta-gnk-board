FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append = " \
	file://i2c.cfg \
	file://audio.cfg \
	file://ts_vgg804834_0tslwc.cfg \
	file://mipidis_panel_vgg804834_otslwc.cfg \
	file://isl76683.cfg \
	file://0001-dts-new-gnk-board-dts.patch \
	file://0002-audio-enable-DA7218-audio-codec.patch \
	file://0003-audio-workaround-for-DA7218-not-support-clk-0Hz-in-s.patch \
	file://0004-scif-enable-scif1.patch \
	file://0005-light-sensor-support-isl76683.patch \
	file://0006-light-sensor-isl76683-fixed-rcu-issue-with-sdhci.patch \
	file://0007-light-sensor-disabled-isl76683.patch \
	file://0008-scif-enable-scif2.patch \
	file://0009-mipi-dsi-add-support-mipi-panel-vgg804834-otslwc.patch \
	file://0010-backlight-add-new-property-for-default-vlaue.patch \
	file://0011-scif-disable-scif1-scif3.patch \
	file://0012-scif-enable-scif1-scif3.patch \
	file://0013-camera-support-ov5640.patch \
	file://0014-camera-enable-ov5640.patch \
	file://0015-panel_backlight-dsi-panel-use-drm_panel_of_backlight.patch \
	file://0016-backlight-support-pwm-backlight-with-pwm-3-ch-a.patch \
	file://0017-backlight-enable-pwm-backlight.patch \
	file://0018-lightsensor-isl76683-disable-interrupt.patch \
	file://0019-lightsensor-enable-isl76683.patch \
	file://0020-touch-add-VGG804834-0TSLWC-I2C-Touch-Driver.patch \
	file://0021-touch-add-VGG804834-0TSLWC-TS-dts-note.patch \
	file://0022-dsi-panel-fixed-mipi-dsi-color-invert-issue.patch \
	file://0023-dsi-panel-fixed-mipi-dsi-vgg804834-otslwc-timing.patch \
	file://0024-sd-mmc-fixed-sd-mmc-cd-gpios-confilc.patch \
	file://0025-dts-fixed-board-name.patch \
"

COMPATIBLE_MACHINE_rzg2l = "(gnk-rzg2l)"

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
