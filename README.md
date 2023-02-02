===================================

Build Yocto Image

===================================


Step 1: Installation of required commands

	$ sudo apt-get install gawk wget git-core diffstat unzip texinfo gcc-multilib \
		build-essential chrpath socat cpio python3 python3-pip python3-pexpect \
		xz-utils debianutils iputils-ping python3-git python3-jinja2 \
		libegl1-mesa libsdl1.2-dev pylint3 xterm


Step 2: Download of required files
	$ cd ${WORK}
	$ git clone git://git.yoctoproject.org/poky

	$ git clone git://git.openembedded.org/meta-openembedded
	
	$ git clone https://github.com/renesas-rz/meta-renesas.git
	
	$ git clone http://git.yoctoproject.org/meta-gplv2
	
	$ git clone https://github.com/meta-qt5/meta-qt5.git
	
	$ git clone https://github.com/xlloss/meta-gnk-board.git
	


Step 3: Checkout

	$ cd ${WORK}/poky
	$ git checkout dunfell-23.0.14
	$ git cherry-pick 9e444

	$ cd ${WORK}/meta-openembedded
	$ git checkout -b tmp ec978232732edbdd875ac367b5a9c04b881f2e19

	$ cd ${WORK}/meta-gplv2
	$ git checkout -b tmp 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac

	$ cd ${WORK}/meta-qt5
	$ git checkout -b tmp c1b0c9f546289b1592d7a895640de103723a0305

	$ cd ${WORK}/meta-renesas
	$ git checkout -b tmp BSP-3.0.0


Step 4: Use RZG2L/RZV2L Verified Linux Package

	Please confirm with Version 3.0.0-update2-r01us0553ej0104-rz-g.pdf


Step 5: Execute source command

	$ cd ${WORK}
	$ source poky/oe-init-build-env build_yocto_rzg2l


Step 6: Copy bblayers.conf and local.conf

	$ cp ../meta-gnk-board/docs/template/conf/gnk-rzg2l/*  ./conf/


Step 7: Start Build Image

	$ bitbake core-image-weston


===================================

	Boot GNK Board

===================================

1. SPI Flash Boot
	Please confirm
	"Board Start-up Guide for RZ/G2L, RZ/G2LC, RZ/G2UL, RZ/V2L, RZ/Five SMARC EVK Rev.1.02.pdf"
	

2. eMMC Boot
	Please confirm
	"Board Start-up Guide for RZ/G2L, RZ/G2LC, RZ/G2UL, RZ/V2L, RZ/Five SMARC EVK Rev.1.02.pdf"
