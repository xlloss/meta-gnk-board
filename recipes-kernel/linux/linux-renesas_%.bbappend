FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append = " \
	file://i2c.cfg \
	file://audio.cfg \
	file://0001-gnk-v2l-g2l-new-r9a07g054l2-smarc-gnk.dts-r9a07g044l.patch \
	file://0002-gnk-vl2-g2l-clkgen-new-versaclock3-clk-driver.patch \
	file://0003-gnk-v2l-g2l-audio-enable-DA7218-audio-codec.patch \
	file://0004-gnk-v2l-g2l-audio-workaround-for-DA7218-not-support-.patch \
	file://0005-gnk-v2l-g2l-scif-enable-scif1.patch \
	file://0006-gnk-v2l-g2l-light-sensor-support-isl76683.patch \
	file://0007-gnk-v2l-g2l-light-sensor-isl76683-fixed-rcu-issue-wi.patch \
	file://0008-gnk-v2l-g2l-light-sensor-disabled-isl76683.patch \
	file://0009-gnk-v2l-scif-enable-scif2.patch \
	file://0010-gnk-v2l-canbus-delete-can-stb-node.patch \
	file://0011-gnk-v2l-g2l-mipi-dsi-workaround-mipi-dsi-panel-probe.patch \
	file://0012-gnk-v2l-g2l-mipi-dsi-add-support-mipi-panel-vgg80483.patch \
	file://0013-gnk-v2l-mipi-dsi-enable-mipi-panel-vgg804834-otslwc.patch \
	file://0014-gnk-v2l-spi-disabled-spi1.patch \
	file://0015-gnk-v2l-backlight-add-new-property-for-default-vlaue.patch \
	file://0016-gnk-v2l-dts-reserve-memeory-for-drp-ai.patch \
	file://0017-gnk-vl2-scif-enable-scif1-scif3.patch \
	file://0018-gnk-g2l-dts-enable-scif1-scif3-and-dsi.patch \
"

COMPATIBLE_MACHINE_rzv2l = "(greenpak-rzg2l|greenpak-rzv2l)"

PARALLEL_MAKE = "-j 8"

CFLAGS += " \
        -Wno-maybe-uninitialized \
        -Wno-implicit-fallthr \
        -Wno-implicit-function-declaration \
"
