FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append = " \
	file://i2c.cfg \
	file://audio.cfg \
	file://ts_vgg804834_0tslwc.cfg \
	file://mipidis_panel_vgg804834_otslwc.cfg \
	file://isl76683.cfg \
	file://drm_panel_simple.cfg \
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
	file://0032-gnk_g2l_v2l-fixed-mipi-dsi-vgg804834-otslwc-timing-v.patch \
	file://0033-gnk_g2l_v2l-fixed-sd-mmc-cd-gpios-confilc.patch \
	file://0034-gnk_g2l_v2l-modify-gnk-smarcboard-name-in-dts.patch \
	file://0035-gnk-g2l-fixed-g2l-dtb-configure.patch \
	file://0036-gnk-g2l-fixed-build-error.patch \
	file://0001-AUDIO-CM7104-add-cm7104-alsa-driver.patch \
	file://0002-AUDIO-CM7104-add-CM7104-config.patch \
	file://0003-DTB-Makefile-remove-R9A07G043-rzg2ul-dtb.patch \
	file://0004-DTB-add-apollo-board-dts.patch \
	file://0005-DTB-CAN_BUS-add-canbus-pin-pmux.patch \
	file://0006-DTB-use-apollo-board-pinmux.patch \
	file://0007-DTS-SPI-add-spi1-pinmux.patch \
	file://0008-DTS-SPIDEV-fixed-spidev-compatible-name.patch \
	file://0009-DTS-SCIF-add-scif0-pinmux-debug-port.patch \
	file://0010-DTS-SCIF-add-scif2-pinmux.patch \
	file://0011-DTS-I2C-add-i2c-0-pin-setting.patch \
	file://0012-DTS-I2C-add-i2c-1-pin-setting.patch \
	file://0013-DTS-I2C-add-i2c-3-pinmux.patch \
	file://0014-DTS-SDHI-add-sdhi-1-pinmux.patch \
	file://0015-DTS-USB-add-usb-0-pinmux.patch \
	file://0016-DTS-USB-add-usb-1-pinmux.patch \
	file://0017-DTS-PWM-add-gtp-4-pwm-function-pinmux.patch \
	file://0018-CANBUS-DEBUG_PORT-avoid-debug-port-unavailable.patch \
	file://0019-DTS-CAN-disabled-scif1-for-enabling-canbus-1.patch \
	file://0020-DTS-DISPLAY-add-RGB-pinmux.patch \
	file://0021-DTS-ADC-fixed-adc-trigger-pinmux.patch \
	file://0022-VIDEO-hack-virtual-channel-0.patch \
	file://0023-VIDEO-hack-video-bus-MEDIA_BUS_FMT_RBG888_1X24.patch \
	file://0024-DTS-PWM-enable-pwm-for-backlight.patch \
	file://0025-DTS-PANEL-change-panel-to-mipi_panel.patch \
	file://0026-DTS-DSI-PANEL-enable-mipi-dsi-panel.patch \
	file://0027-DTS-CSI-enable-csi2-ov5645.patch \
	file://0028-DTS-I2C-enable-i2c-0.patch \
	file://0029-DTS-RGB-enable-rgb-panel.patch \
	file://0030-DTS-AUDIO-add-cm7104-node.patch \
	file://0031-DTS-I2C-disabled-i2c_gpio.patch \
	file://0032-DTS-BACKLIGHT-PWM-setting-pwm-500hz.patch \
	file://0033-DTB-GPT4-disabled-gpt4-timer.patch \
	file://0034-DISPLAY-DSI_HDMI-enable-ep9593.patch \
	file://0035-DTB-fixed-wrong-node-name.patch \
	file://0036-Revert-VIDEO-hack-video-bus-MEDIA_BUS_FMT_RBG888_1X2.patch \
	file://0037-Revert-fixed-mipi-dsi-color-invert-issue.patch \
	file://0038-DTB-RGB_PANEL-disabled-rgb-panel-default.patch \
	file://0039-DTB-RGB_PANEL-panel-enable-change-to-invert.patch \
	file://0040-DTB-RGB_PANEL-DSI_PANEL-enable-rgb_panel-disable-dsi.patch \
	file://0041-DTB-RGB_PANEL-DSI_PANEL-disable-rgb_panel-enable-dsi.patch \
	file://0042-DSI_HOST-add-mipi_dsi-virtual-channel-property.patch \
	file://0043-DSI_TO_HDMI-EP9593-use-mipi_dsi_virtual_channel-as-1.patch \
	file://0044-SIMPLE_PANEL-EP9593-add-EP9593-video-out-timing.patch \
	file://0045-DTS-rename-r9a07g044l2-apollo.dts-to-r9a07g044l2-apo.patch \
	file://0046-DTS-new-dts-files-depend-panel-i-f-type.patch \
	file://0047-DTS-DSI-change-mipi-dsi-to-4-lans.patch \
	file://0048-DPI-add-6bit-8bit-select-function-for-panel.patch \
	file://0049-DTS-DPI-6.5_INCH-set-6bit-for-6.5-inch-panel.patch \
	file://0050-DTS-CAMERA-add-enable-and-reset-pin.patch \
"

COMPATIBLE_MACHINE_rzg2l = "(gnk-rzg2l)"
COMPATIBLE_MACHINE_rzv2l = "(gnk-rzv2l)"
COMPATIBLE_MACHINE_rzg2l = "(apollo-rzg2l)"

PARALLEL_MAKE = "-j 8"

CFLAGS += " \
        -Wno-maybe-uninitialized \
        -Wno-implicit-fallthr \
        -Wno-implicit-function-declaration \
"
KERNEL_MODULE_AUTOLOAD_append += "\
	vgg804834_ts_i2c \
	isl76683 \
	snd-soc-cm7104 \
	"
