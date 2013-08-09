Return-Path: <Holger.Behrens@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E77FE01601
	for <yocto@yoctoproject.org>; Fri,  9 Aug 2013 03:49:28 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r79Amvbf006958
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 9 Aug 2013 03:48:57 -0700 (PDT)
Received: from ism-holger-l1.corp.ad.wrs.com (128.224.204.228) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.342.3; Fri, 9 Aug 2013 03:48:57 -0700
From: Holger Behrens <holger.behrens@windriver.com>
To: <florin.sarbu@windriver.com>, <holger@windriver.com>
Date: Fri, 9 Aug 2013 12:48:44 +0200
Message-ID: <1376045330-17216-2-git-send-email-holger.behrens@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1376045330-17216-1-git-send-email-holger.behrens@windriver.com>
References: <1376045330-17216-1-git-send-email-holger.behrens@windriver.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com, genivi-meta-ivi@lists.genivi.org,
	yocto@yoctoproject.org
Subject: [meta-ivi][PATCH 2/8] meta-ivi: move hardware specifics to meta-ivi-bsp
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 09 Aug 2013 10:49:29 -0000
Content-Type: text/plain

Signed-off-by: Holger Behrens <holger.behrens@windriver.com>
---
 classes/sdcard_image.bbclass                       |   87 -
 conf/machine/vexpressa9.conf                       |   40 -
 meta-ivi-bsp/classes/sdcard_image.bbclass          |   87 +
 .../recipes-bsp/u-boot/files/no_delay.patch        |   13 +
 .../recipes-bsp/u-boot/u-boot_2011.06.bbappend     |    5 +
 .../xserver-xf86-config/vexpressa9/xorg.conf       |   26 +
 .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |    4 +
 ...-bus-add-the-AF_BUS-socket-address-family.patch | 6387 ++++++++++++++++++++
 .../linux/linux-yocto/beagle_qemu.cfg              |    5 +
 .../recipes-kernel/linux/linux-yocto/qemux86.cfg   |   13 +
 .../linux/linux-yocto/qemux86_64.cfg               |   13 +
 .../linux/linux-yocto/vexpress_a9.cfg              |  843 +++
 .../recipes-kernel/linux/linux-yocto_3.8.bbappend  |   25 +
 recipes-bsp/u-boot/files/no_delay.patch            |   13 -
 recipes-bsp/u-boot/u-boot_2011.06.bbappend         |    5 -
 .../xserver-xf86-config/vexpressa9/xorg.conf       |   26 -
 .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |    4 -
 ...-bus-add-the-AF_BUS-socket-address-family.patch | 6387 --------------------
 recipes-kernel/linux/linux-yocto/beagle_qemu.cfg   |    5 -
 recipes-kernel/linux/linux-yocto/qemux86.cfg       |   13 -
 recipes-kernel/linux/linux-yocto/qemux86_64.cfg    |   13 -
 recipes-kernel/linux/linux-yocto/vexpress_a9.cfg   |  843 ---
 recipes-kernel/linux/linux-yocto_3.8.bbappend      |   25 -
 23 files changed, 7421 insertions(+), 7461 deletions(-)
 delete mode 100644 classes/sdcard_image.bbclass
 delete mode 100644 conf/machine/vexpressa9.conf
 create mode 100644 meta-ivi-bsp/classes/sdcard_image.bbclass
 create mode 100644 meta-ivi-bsp/recipes-bsp/u-boot/files/no_delay.patch
 create mode 100644 meta-ivi-bsp/recipes-bsp/u-boot/u-boot_2011.06.bbappend
 create mode 100644 meta-ivi-bsp/recipes-graphics/xorg-xserver/xserver-xf86-config/vexpressa9/xorg.conf
 create mode 100644 meta-ivi-bsp/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
 create mode 100644 meta-ivi-bsp/recipes-kernel/linux/linux-yocto/0001-net-bus-add-the-AF_BUS-socket-address-family.patch
 create mode 100644 meta-ivi-bsp/recipes-kernel/linux/linux-yocto/beagle_qemu.cfg
 create mode 100644 meta-ivi-bsp/recipes-kernel/linux/linux-yocto/qemux86.cfg
 create mode 100644 meta-ivi-bsp/recipes-kernel/linux/linux-yocto/qemux86_64.cfg
 create mode 100644 meta-ivi-bsp/recipes-kernel/linux/linux-yocto/vexpress_a9.cfg
 create mode 100644 meta-ivi-bsp/recipes-kernel/linux/linux-yocto_3.8.bbappend
 delete mode 100644 recipes-bsp/u-boot/files/no_delay.patch
 delete mode 100644 recipes-bsp/u-boot/u-boot_2011.06.bbappend
 delete mode 100644 recipes-graphics/xorg-xserver/xserver-xf86-config/vexpressa9/xorg.conf
 delete mode 100644 recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
 delete mode 100644 recipes-kernel/linux/linux-yocto/0001-net-bus-add-the-AF_BUS-socket-address-family.patch
 delete mode 100644 recipes-kernel/linux/linux-yocto/beagle_qemu.cfg
 delete mode 100644 recipes-kernel/linux/linux-yocto/qemux86.cfg
 delete mode 100644 recipes-kernel/linux/linux-yocto/qemux86_64.cfg
 delete mode 100644 recipes-kernel/linux/linux-yocto/vexpress_a9.cfg
 delete mode 100644 recipes-kernel/linux/linux-yocto_3.8.bbappend

diff --git a/classes/sdcard_image.bbclass b/classes/sdcard_image.bbclass
deleted file mode 100644
index de3682f..0000000
--- a/classes/sdcard_image.bbclass
+++ /dev/null
@@ -1,87 +0,0 @@
-inherit image_types
-
-#
-# Create an image that can by written onto a SD card using dd.
-#
-# The disk layout used is:
-#
-#    0                      -> IMAGE_ROOTFS_ALIGNMENT         - reserved for other data
-#    IMAGE_ROOTFS_ALIGNMENT -> BOOT_SPACE                     - bootloader and/or kernel
-#    BOOT_SPACE             -> SDIMG_SIZE                     - rootfs
-#
-
-#                                                     Default Free space = 1.3x
-#                                                     Use IMAGE_OVERHEAD_FACTOR to add more space
-#                                                     <--------->
-#            4KiB              20MiB           SDIMG_ROOTFS
-# <-----------------------> <----------> <---------------------->
-#  ------------------------ ------------ ------------------------ -------------------------------
-# | IMAGE_ROOTFS_ALIGNMENT | BOOT_SPACE | ROOTFS_SIZE            |     IMAGE_ROOTFS_ALIGNMENT    |
-#  ------------------------ ------------ ------------------------ -------------------------------
-# ^                        ^            ^                        ^                               ^
-# |                        |            |                        |                               |
-# 0                      4096     4KiB + 20MiB       4KiB + 20Mib + SDIMG_ROOTFS   4KiB + 20MiB + SDIMG_ROOTFS + 4KiB
-
-
-# Boot partition volume id
-BOOTDD_VOLUME_ID ?= "${MACHINE}"
-
-# Boot partition size [in KiB]
-BOOT_SPACE ?= "20480"
-
-# Set alignment to 4MB [in KiB]
-IMAGE_ROOTFS_ALIGNMENT = "4096"
-
-# Use an uncompressed ext3 by default as rootfs
-SDIMG_ROOTFS_TYPE ?= "ext3"
-SDIMG_ROOTFS = "${IMAGE_NAME}.rootfs.${SDIMG_ROOTFS_TYPE}"
-
-IMAGE_DEPENDS_vexpressa9-sdimg = " \
-			parted-native \
-			mtools-native \
-			dosfstools-native \
-			virtual/kernel \
-			"
-
-# SD card image name
-SDIMG = "${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.vexpressa9-sdimg"
-
-IMAGEDATESTAMP = "${@time.strftime('%Y.%m.%d',time.gmtime())}"
-
-IMAGE_CMD_vexpressa9-sdimg () {
-	# Align partitions
-	BOOT_SPACE_ALIGNED=$(expr ${BOOT_SPACE} + ${IMAGE_ROOTFS_ALIGNMENT} - 1)
-	BOOT_SPACE_ALIGNED=$(expr ${BOOT_SPACE_ALIGNED} - ${BOOT_SPACE_ALIGNED} % ${IMAGE_ROOTFS_ALIGNMENT})
-	SDIMG_SIZE=$(expr ${IMAGE_ROOTFS_ALIGNMENT} + ${BOOT_SPACE_ALIGNED} + $ROOTFS_SIZE + ${IMAGE_ROOTFS_ALIGNMENT})
-
-	# Initialize sdcard image file
-	dd if=/dev/zero of=${SDIMG} bs=1 count=0 seek=$(expr 1024 \* ${SDIMG_SIZE})
-
-	# Create partition table
-	parted -s ${SDIMG} mklabel msdos
-	# Create boot partition and mark it as bootable
-	parted -s ${SDIMG} unit KiB mkpart primary fat32 ${IMAGE_ROOTFS_ALIGNMENT} $(expr ${BOOT_SPACE_ALIGNED} \+ ${IMAGE_ROOTFS_ALIGNMENT})
-	parted -s ${SDIMG} set 1 boot on
-	# Create rootfs partition
-	parted -s ${SDIMG} unit KiB mkpart primary ext2 $(expr ${BOOT_SPACE_ALIGNED} \+ ${IMAGE_ROOTFS_ALIGNMENT}) $(expr ${BOOT_SPACE_ALIGNED} \+ ${IMAGE_ROOTFS_ALIGNMENT} \+ ${ROOTFS_SIZE})
-	parted ${SDIMG} print
-
-	# Create a vfat image with boot files
-	BOOT_BLOCKS=$(LC_ALL=C parted -s ${SDIMG} unit b print | awk '/ 1 / { print substr($4, 1, length($4 -1)) / 512 /2 }')
-	mkfs.vfat -n "${BOOTDD_VOLUME_ID}" -S 512 -C ${WORKDIR}/boot.img $BOOT_BLOCKS
-	mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}-${MACHINE}.bin ::kernel.img
-
-	# Add stamp file
-	echo "${IMAGE_NAME}-${IMAGEDATESTAMP}" > ${WORKDIR}/image-version-info
-	mcopy -i ${WORKDIR}/boot.img -v ${WORKDIR}//image-version-info ::
-
-	# Burn Partitions
-	dd if=${WORKDIR}/boot.img of=${SDIMG} conv=notrunc seek=1 bs=$(expr ${IMAGE_ROOTFS_ALIGNMENT} \* 1024) && sync && sync
-	# If SDIMG_ROOTFS_TYPE is a .xz file use xzcat
-	if [[ "$SDIMG_ROOTFS_TYPE" == *.xz ]]
-	then
-		xzcat ${SDIMG_ROOTFS} | dd of=${SDIMG} conv=notrunc seek=1 bs=$(expr 1024 \* ${BOOT_SPACE_ALIGNED} + ${IMAGE_ROOTFS_ALIGNMENT} \* 1024) && sync && sync
-	else
-		dd if=${SDIMG_ROOTFS} of=${SDIMG} conv=notrunc seek=1 bs=$(expr 1024 \* ${BOOT_SPACE_ALIGNED} + ${IMAGE_ROOTFS_ALIGNMENT} \* 1024) && sync && sync
-	fi
-}
diff --git a/conf/machine/vexpressa9.conf b/conf/machine/vexpressa9.conf
deleted file mode 100644
index 8720b2b..0000000
--- a/conf/machine/vexpressa9.conf
+++ /dev/null
@@ -1,40 +0,0 @@
-#@TYPE: Machine
-#@NAME: vexpress-a9 machine
-#@DESCRIPTION: Machine configuration for the vexpress a9 board 
-
-PREFERRED_PROVIDER_virtual/xserver = "xserver-xorg"
-
-# Ship all kernel modules by default
-MACHINE_EXTRA_RRECOMMENDS = " kernel-modules"
-
-# Allow for MMC booting (required by the NAND-less)
-EXTRA_IMAGEDEPENDS += ""
-
-# Uncomment the following line to enable the hard floating point abi. Note that
-# this breaks some binary libraries and 3D (neither of which ship with
-# meta-yocto). For maximum compatibility, leave this disabled.
-#DEFAULTTUNE ?= "cortexa8hf-neon"
-include conf/machine/include/tune-cortexa9.inc
-
-IMAGE_CLASSES += "sdcard_image"
-
-IMAGE_FSTYPES += "tar.bz2 ext3 vexpressa9-sdimg"
-EXTRA_IMAGECMD_jffs2 = "-lnp "
-
-# 2.6.37 and later kernels use OMAP_SERIAL, ttyO2
-# earlier kernels use ttyS2
-SERIAL_CONSOLE = "115200 ttyO2"
-
-PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
-PREFERRED_VERSION_linux-yocto ?= "3.8%"
-
-PREFERRED_PROVIDER_jpeg = "jpeg"
-PREFERRED_PROVIDER_jpeg-native = "jpeg-native"
-
-KERNEL_IMAGETYPE = "uImage"
-
-UBOOT_MACHINE = "ca9x4_ct_vxp_config"
-UBOOT_ENTRYPOINT = "0x80008000"
-UBOOT_LOADADDRESS = "0x80008000"
-
-MACHINE_FEATURES = "kernel26 apm usbgadget usbhost vfat alsa"
diff --git a/meta-ivi-bsp/classes/sdcard_image.bbclass b/meta-ivi-bsp/classes/sdcard_image.bbclass
new file mode 100644
index 0000000..de3682f
--- /dev/null
+++ b/meta-ivi-bsp/classes/sdcard_image.bbclass
@@ -0,0 +1,87 @@
+inherit image_types
+
+#
+# Create an image that can by written onto a SD card using dd.
+#
+# The disk layout used is:
+#
+#    0                      -> IMAGE_ROOTFS_ALIGNMENT         - reserved for other data
+#    IMAGE_ROOTFS_ALIGNMENT -> BOOT_SPACE                     - bootloader and/or kernel
+#    BOOT_SPACE             -> SDIMG_SIZE                     - rootfs
+#
+
+#                                                     Default Free space = 1.3x
+#                                                     Use IMAGE_OVERHEAD_FACTOR to add more space
+#                                                     <--------->
+#            4KiB              20MiB           SDIMG_ROOTFS
+# <-----------------------> <----------> <---------------------->
+#  ------------------------ ------------ ------------------------ -------------------------------
+# | IMAGE_ROOTFS_ALIGNMENT | BOOT_SPACE | ROOTFS_SIZE            |     IMAGE_ROOTFS_ALIGNMENT    |
+#  ------------------------ ------------ ------------------------ -------------------------------
+# ^                        ^            ^                        ^                               ^
+# |                        |            |                        |                               |
+# 0                      4096     4KiB + 20MiB       4KiB + 20Mib + SDIMG_ROOTFS   4KiB + 20MiB + SDIMG_ROOTFS + 4KiB
+
+
+# Boot partition volume id
+BOOTDD_VOLUME_ID ?= "${MACHINE}"
+
+# Boot partition size [in KiB]
+BOOT_SPACE ?= "20480"
+
+# Set alignment to 4MB [in KiB]
+IMAGE_ROOTFS_ALIGNMENT = "4096"
+
+# Use an uncompressed ext3 by default as rootfs
+SDIMG_ROOTFS_TYPE ?= "ext3"
+SDIMG_ROOTFS = "${IMAGE_NAME}.rootfs.${SDIMG_ROOTFS_TYPE}"
+
+IMAGE_DEPENDS_vexpressa9-sdimg = " \
+			parted-native \
+			mtools-native \
+			dosfstools-native \
+			virtual/kernel \
+			"
+
+# SD card image name
+SDIMG = "${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.vexpressa9-sdimg"
+
+IMAGEDATESTAMP = "${@time.strftime('%Y.%m.%d',time.gmtime())}"
+
+IMAGE_CMD_vexpressa9-sdimg () {
+	# Align partitions
+	BOOT_SPACE_ALIGNED=$(expr ${BOOT_SPACE} + ${IMAGE_ROOTFS_ALIGNMENT} - 1)
+	BOOT_SPACE_ALIGNED=$(expr ${BOOT_SPACE_ALIGNED} - ${BOOT_SPACE_ALIGNED} % ${IMAGE_ROOTFS_ALIGNMENT})
+	SDIMG_SIZE=$(expr ${IMAGE_ROOTFS_ALIGNMENT} + ${BOOT_SPACE_ALIGNED} + $ROOTFS_SIZE + ${IMAGE_ROOTFS_ALIGNMENT})
+
+	# Initialize sdcard image file
+	dd if=/dev/zero of=${SDIMG} bs=1 count=0 seek=$(expr 1024 \* ${SDIMG_SIZE})
+
+	# Create partition table
+	parted -s ${SDIMG} mklabel msdos
+	# Create boot partition and mark it as bootable
+	parted -s ${SDIMG} unit KiB mkpart primary fat32 ${IMAGE_ROOTFS_ALIGNMENT} $(expr ${BOOT_SPACE_ALIGNED} \+ ${IMAGE_ROOTFS_ALIGNMENT})
+	parted -s ${SDIMG} set 1 boot on
+	# Create rootfs partition
+	parted -s ${SDIMG} unit KiB mkpart primary ext2 $(expr ${BOOT_SPACE_ALIGNED} \+ ${IMAGE_ROOTFS_ALIGNMENT}) $(expr ${BOOT_SPACE_ALIGNED} \+ ${IMAGE_ROOTFS_ALIGNMENT} \+ ${ROOTFS_SIZE})
+	parted ${SDIMG} print
+
+	# Create a vfat image with boot files
+	BOOT_BLOCKS=$(LC_ALL=C parted -s ${SDIMG} unit b print | awk '/ 1 / { print substr($4, 1, length($4 -1)) / 512 /2 }')
+	mkfs.vfat -n "${BOOTDD_VOLUME_ID}" -S 512 -C ${WORKDIR}/boot.img $BOOT_BLOCKS
+	mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}-${MACHINE}.bin ::kernel.img
+
+	# Add stamp file
+	echo "${IMAGE_NAME}-${IMAGEDATESTAMP}" > ${WORKDIR}/image-version-info
+	mcopy -i ${WORKDIR}/boot.img -v ${WORKDIR}//image-version-info ::
+
+	# Burn Partitions
+	dd if=${WORKDIR}/boot.img of=${SDIMG} conv=notrunc seek=1 bs=$(expr ${IMAGE_ROOTFS_ALIGNMENT} \* 1024) && sync && sync
+	# If SDIMG_ROOTFS_TYPE is a .xz file use xzcat
+	if [[ "$SDIMG_ROOTFS_TYPE" == *.xz ]]
+	then
+		xzcat ${SDIMG_ROOTFS} | dd of=${SDIMG} conv=notrunc seek=1 bs=$(expr 1024 \* ${BOOT_SPACE_ALIGNED} + ${IMAGE_ROOTFS_ALIGNMENT} \* 1024) && sync && sync
+	else
+		dd if=${SDIMG_ROOTFS} of=${SDIMG} conv=notrunc seek=1 bs=$(expr 1024 \* ${BOOT_SPACE_ALIGNED} + ${IMAGE_ROOTFS_ALIGNMENT} \* 1024) && sync && sync
+	fi
+}
diff --git a/meta-ivi-bsp/recipes-bsp/u-boot/files/no_delay.patch b/meta-ivi-bsp/recipes-bsp/u-boot/files/no_delay.patch
new file mode 100644
index 0000000..f280b7e
--- /dev/null
+++ b/meta-ivi-bsp/recipes-bsp/u-boot/files/no_delay.patch
@@ -0,0 +1,13 @@
+Index: git/include/configs/omap3_beagle.h
+===================================================================
+--- git.orig/include/configs/omap3_beagle.h	2012-01-20 02:19:54.582012450 +0200
++++ git/include/configs/omap3_beagle.h	2012-01-20 02:20:33.534011227 +0200
+@@ -195,7 +195,7 @@
+ 							/* partition */
+ 
+ /* Environment information */
+-#define CONFIG_BOOTDELAY		10
++#define CONFIG_BOOTDELAY		0
+ 
+ #define CONFIG_EXTRA_ENV_SETTINGS \
+ 	"loadaddr=0x82000000\0" \
diff --git a/meta-ivi-bsp/recipes-bsp/u-boot/u-boot_2011.06.bbappend b/meta-ivi-bsp/recipes-bsp/u-boot/u-boot_2011.06.bbappend
new file mode 100644
index 0000000..672a019
--- /dev/null
+++ b/meta-ivi-bsp/recipes-bsp/u-boot/u-boot_2011.06.bbappend
@@ -0,0 +1,5 @@
+# Find "files" directory
+FILESEXTRAPATHS := "${THISDIR}/files"
+
+# Patch for removing autostart countdown
+SRC_URI_append_imx53qsb += "file://no_delay.patch"
diff --git a/meta-ivi-bsp/recipes-graphics/xorg-xserver/xserver-xf86-config/vexpressa9/xorg.conf b/meta-ivi-bsp/recipes-graphics/xorg-xserver/xserver-xf86-config/vexpressa9/xorg.conf
new file mode 100644
index 0000000..182fe46
--- /dev/null
+++ b/meta-ivi-bsp/recipes-graphics/xorg-xserver/xserver-xf86-config/vexpressa9/xorg.conf
@@ -0,0 +1,26 @@
+
+Section "Device"
+    Identifier    "Graphics Controller"
+    Driver        "fbdev"
+EndSection
+
+Section "Monitor"
+    Identifier    "Generic Monitor"
+    Option        "DPMS"
+EndSection
+
+Section "Screen"
+    Identifier    "Default Screen"
+    Device        "Intel Graphics Driver"
+    Monitor        "Generic Monitor"
+    DefaultDepth    16
+EndSection
+
+Section "ServerLayout"
+    Identifier    "Default Layout"
+    Screen        "Default Screen"
+EndSection
+
+Section "ServerFlags"
+    Option        "DontZap"  "0"
+EndSection
diff --git a/meta-ivi-bsp/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend b/meta-ivi-bsp/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
new file mode 100644
index 0000000..dedce1f
--- /dev/null
+++ b/meta-ivi-bsp/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
@@ -0,0 +1,4 @@
+# Append path for meta-ivi layer to include bsp xorg.conf
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+PRINC := "${@int(PRINC) + 1}"
diff --git a/meta-ivi-bsp/recipes-kernel/linux/linux-yocto/0001-net-bus-add-the-AF_BUS-socket-address-family.patch b/meta-ivi-bsp/recipes-kernel/linux/linux-yocto/0001-net-bus-add-the-AF_BUS-socket-address-family.patch
new file mode 100644
index 0000000..1e05dd2
--- /dev/null
+++ b/meta-ivi-bsp/recipes-kernel/linux/linux-yocto/0001-net-bus-add-the-AF_BUS-socket-address-family.patch
@@ -0,0 +1,6387 @@
+From 8c071e4a4be17b7bb01ab2a911c1697902dc2c35 Mon Sep 17 00:00:00 2001
+From: Javier Martinez Canillas <javier.martinez@collabora.co.uk>
+Date: Wed, 20 Jun 2012 12:07:49 +0200
+Subject: [PATCH 1/1] net: bus: add the AF_BUS socket address family
+
+AF_BUS is a new socket address family that allows both unicast and
+multicast I on a local machine with total ordering for messages
+(every process on the same bus sees each message in the same order).
+
+A process can create buses to which other processes can connect and
+communicate with each other by sending messages. Processes' addresses are
+automatically assigned by the bus on connect and are unique. Messages can
+be sent either to process' unique address or to a bus multicast address.
+
+Signed-off-by: Javier Martinez Canillas <javier.martinez@collabora.co.uk>
+---
+ Documentation/networking/af_bus.txt |  558 ++++++++
+ drivers/connector/connector.c       |   32 +
+ include/linux/bus.h                 |   34 +
+ include/linux/connector.h           |    5 +-
+ include/linux/netfilter.h           |    1 +
+ include/linux/security.h            |   11 +
+ include/linux/socket.h              |    5 +-
+ include/net/af_bus.h                |  273 ++++
+ net/Kconfig                         |    1 +
+ net/Makefile                        |    1 +
+ net/bus/Kconfig                     |   15 +
+ net/bus/Makefile                    |    7 +
+ net/bus/af_bus.c                    | 2688 +++++++++++++++++++++++++++++++++++
+ net/bus/garbage.c                   |  322 +++++
+ net/core/scm.c                      |    3 +-
+ net/core/sock.c                     |    6 +-
+ net/netfilter/Kconfig               |    2 +
+ net/netfilter/Makefile              |    3 +
+ net/netfilter/nfdbus/Kconfig        |   12 +
+ net/netfilter/nfdbus/Makefile       |    6 +
+ net/netfilter/nfdbus/matchrule.c    | 1132 +++++++++++++++
+ net/netfilter/nfdbus/matchrule.h    |   82 ++
+ net/netfilter/nfdbus/message.c      |  194 +++
+ net/netfilter/nfdbus/message.h      |   71 +
+ net/netfilter/nfdbus/nfdbus.c       |  456 ++++++
+ net/netfilter/nfdbus/nfdbus.h       |   44 +
+ security/capability.c               |    7 +
+ security/security.c                 |    7 +
+ security/selinux/hooks.c            |   35 +
+ 29 files changed, 6007 insertions(+), 6 deletions(-)
+ create mode 100644 Documentation/networking/af_bus.txt
+ create mode 100644 include/linux/bus.h
+ create mode 100644 include/net/af_bus.h
+ create mode 100644 net/bus/Kconfig
+ create mode 100644 net/bus/Makefile
+ create mode 100644 net/bus/af_bus.c
+ create mode 100644 net/bus/garbage.c
+ create mode 100644 net/netfilter/nfdbus/Kconfig
+ create mode 100644 net/netfilter/nfdbus/Makefile
+ create mode 100644 net/netfilter/nfdbus/matchrule.c
+ create mode 100644 net/netfilter/nfdbus/matchrule.h
+ create mode 100644 net/netfilter/nfdbus/message.c
+ create mode 100644 net/netfilter/nfdbus/message.h
+ create mode 100644 net/netfilter/nfdbus/nfdbus.c
+ create mode 100644 net/netfilter/nfdbus/nfdbus.h
+
+diff --git a/Documentation/networking/af_bus.txt b/Documentation/networking/af_bus.txt
+new file mode 100644
+index 0000000..a0b078f
+--- /dev/null
++++ b/Documentation/networking/af_bus.txt
+@@ -0,0 +1,558 @@
++			The AF_BUS socket address family
++			================================
++
++Introduction
++------------
++
++AF_BUS is a message oriented inter process communication system.
++
++The principle features are:
++
++ - Reliable datagram based communication (all sockets are of type
++   SOCK_SEQPACKET)
++
++ - Multicast message delivery (one to many, unicast as a subset)
++
++ - Strict ordering (messages are delivered to every client in the same order)
++
++ - Ability to pass file descriptors
++
++ - Ability to pass credentials
++
++The basic concept is to provide a virtual bus on which multiple
++processes can communicate and policy is imposed by a "bus master".
++
++A process can create buses to which other processes can connect and
++communicate with each other by sending messages. Processes' addresses
++are automatically assigned by the bus on connect and are
++unique. Messages can be sent either to a process' unique address or to
++a bus multicast addresses.
++
++Netfilter rules or Berkeley Packet Filter can be used to restrict the
++messages that each peer is allowed to receive. This is especially
++important when sending to multicast addresses.
++
++Besides messages, process can send and receive ancillary data (i.e.,
++SCM_RIGHTS for passing file descriptors or SCM_CREDENTIALS for passing
++Unix credentials). In the case of a multicast message all recipients
++of a message may obtain a copy a file descriptor or credentials.
++
++A bus is created by processes connecting on an AF_BUS socket. The
++"bus master" binds itself instead of connecting to the NULL address.
++
++The socket address is made up of a path component and a numeric
++component. The path component is either a pathname or an abstract
++socket similar to a unix socket. The numeric component is used to
++uniquely identify each connection to the bus. Thus the path identifies
++a specific bus and the numeric component the attachment to that bus.
++
++The process that calls bind(2) on the socket is the owner of the bus
++and is called the bus master. The master is a special client of the
++bus and has some responsibility for the bus' operation. The master is
++assigned a fixed address with all the bits zero (0x0000000000000000).
++
++Each process connected to an AF_BUS socket has one or more addresses
++within that bus. These addresses are 64-bit unsigned integers,
++interpreted by splitting the address into two parts: the most
++significant 16 bits are a prefix identifying the type of address, and
++the remaining 48 bits are the actual client address within that
++prefix, as shown in this figure:
++
++Bit:  0             15 16                                            63
++     +----------------+------------------------------------------------+
++     |  Type prefix   |                Client address                  |
++     +----------------+------------------------------------------------+
++
++The prefix with all bits zero is reserved for use by the kernel, which
++automatically assigns one address from this prefix to each client on
++connection.  The address in this prefix with all bits zero is always
++assigned to the bus master. Addresses on the prefix 0x0000 are unique
++and will never repeat for the lifetime of the bus master.
++
++A client may have multiple addresses. When data is sent to other
++clients, those clients will always see the sender address that is in
++the prefix 0x0000 address space when calling recvmsg(2) or
++recvfrom(2). Similarly, the prefix 0x0000 address is returned by calls
++to getsockname(2) and getpeername(2).
++
++For each prefix, the address where the least significant 48 bits are
++all 1 (i.e., 0xffffffffffff) is also reserved, and can be used to send
++multicast messages to all the peers on a prefix.
++
++The non-reserved addresses in each of the remaining prefixes are
++managed by the bus master, which may assign additional addresses to
++any other connected socket.
++
++Having different name-spaces has two advantages:
++
++  - Clients can have addresses on different mutually-exclusive
++    scopes. This permits sending multicast packets to only clients
++    that have addresses on a given prefix.
++
++  - The addressing scheme can be more flexible. The kernel will only
++    assign unique addresses on the all-bits-zero prefix (0x0000) and
++    allows the bus master process to assign additional addresses to
++    clients on other prefixes.  By having different prefixes, the
++    kernel and bus master assignments will not collide.
++
++AF_BUS transport can support two network topologies. When a process
++first connects to the bus master, it can only communicate with the bus
++master. The process can't send and receive packets from other peers on
++the bus. So, from the client process point of view the network
++topology is point-to-point.
++
++The bus master can allow the connected peer to be part of the bus and
++start to communicate with other peers by setting a socket option with
++the setsockopt(2) system call using the accepted socket descriptor. At
++this point, the topology becomes a bus to the client process.
++
++Packets whose destination address is not assigned to any client are
++routed by default to the bus master (the client accepted socket
++descriptor).
++
++
++Semantics
++---------
++
++Bus features:
++
++ - Unicast and multicast addressing scheme.
++ - Ability to assign addresses from user-space with different prefixes.
++ - Automatic address assignment.
++ - Ordered packets delivery (FIFO, total ordering).
++ - File descriptor and credentials passing.
++ - Support for both point-to-point and bus network topologies.
++ - Bus control access managed from user-space.
++ - Netfilter hooks for packet sending, routing and receiving.
++
++A process (the "bus master") can create an AF_BUS bus with socket(2)
++and use bind(2) to assign an address to the bus. Then it can listen(2)
++on the created socket to start accepting incoming connections with
++accept(2).
++
++Processes can connect to the bus by creating a socket with socket(2)
++and using connect(2). The kernel will assign a unique address to each
++connection and messages can be sent and received by using BSD socket
++primitives.
++
++This uses the connect(2) semantic in a non-traditional way, with
++AF_BUS sockets, it's not possible to connect "my" socket to a specific
++peer socket whereas the traditional BSD sockets API usage, connect(2)
++either connects to stream sockets, or assigns a peer address to a
++datagram socket (so that send(2) can be used instead of sendto()).
++
++An AF_BUS socket address is represented as a combination of a bus
++address and a bus path name. Address are unique within a path. The
++unique bus address is further subdivided into a prefix and a client
++address. Thus the path identifies a specific bus and the numeric
++component the attachment to that bus.
++
++#define BUS_PATH_MAX    108
++
++/* Bus address */
++struct bus_addr {
++	uint64_t    s_addr; 	/* 16-bit prefix + 48-bit client address */
++};
++
++/* Structure describing an AF_BUS socket address. */
++struct sockaddr_bus {
++	sa_family_t     sbus_family; 	   	  /* AF_BUS */
++	struct bus_addr sbus_addr;                /* bus address */
++	char 		sbus_path[BUS_PATH_MAX];  /* pathname */
++};
++
++A process becomes a bus master for a given struct sockaddr_bus by
++calling bind(2) on an AF_BUS addresses. The argument must be { AF_BUS,
++0, path }. 
++
++AF_BUS supports both abstract and non-abstract path names. Abstract
++names are distinguished by the fact that sbus_path[0] == '\0' and they
++don't represent file system paths while non-abstract paths are bound
++to a file system path name. (See the unix(7) man page for a discussion
++of abstract socket addresses in the AF_UNIX address family.)
++
++Then the process calls listen(2) to accept incoming connections. If
++that process calls getsockname(2), the returned address will be {
++AF_BUS, 0, path }.
++
++The conventional string form of the full address is path + ":" +
++prefix + "/" + client address. Prefix and client address are
++represented in hex.
++
++For example the address:
++
++struct sockaddr_bus addr;
++addr.sbus_family = AF_BUS;
++strcpy(addr.sbus_path, "/tmp/test");
++addr.sbus_addr.s_addr   = 0x0002f00ddeadbeef;
++
++would be represented using the string /tmp/test:0002/f00ddeadbeef.
++
++If the bus_addr is 0, then both the prefix and client address may be
++omitted from the string form.  To connect to a bus as a client it is
++sufficient to specify the path, since the listening address always has
++bus_addr == 0. it is not meanigful to specify 'bus_addr' as other than
++0 on connect()
++
++The AF_BUS implementation will automatically assign a unique address
++to each client but the bus master can assign additional addresses on a
++different prefix by means of the setsockopt(2) system call. For
++example:
++
++struct bus_addr addr;
++addr.s_addr = 0x0001deadfee1dead;
++ret = setsockopt(afd, SOL_BUS, BUS_ADD_ADDR, &addr, sizeof(addr));
++
++where afd is the accepted socket descriptor in the daemon. To show graphically:
++
++	  L          The AF_BUS listening socket  }
++       /  |  \                                    }-- listener process
++     A1  A2  A3      The AF_BUS accepted sockets  }
++      |   |   |
++     C1  C2  C3      The AF_BUS connected sockets }-- client processes
++
++So if setsockopt(A1, SOL_BUS, BUS_ADD_ADDR, &addr, sizeof(addr)) is
++called, C1 will get the new address.
++
++The inverse operation is BUS_DEL_ADDR, which the bus master can use to
++remove a client socket AF_BUS address:
++
++ret = setsockopt(afd, SOL_BUS, BUS_DEL_ADDR, &addr, sizeof(addr));
++
++Besides assigning additional addresses, the bus master has to allow a
++client process to communicate with other peers on the bus using a
++setsockopt(2):
++
++ret = setsockopt(afd, SOL_BUS, BUS_JOIN_BUS, NULL, 0);
++
++Clients are not meant to send messages to each other until the master
++tells them (in a protocol-specific way) that the BUS_JOIN_BUS
++setsockopt(2) call was made.
++
++If a client sends a message to a destination other than the bus
++master's all-zero address before joining the bus, a EHOSTUNREACH (No
++route to host) error is returned since the only host that exists in
++the point-to-point network before the client joins the bus are the
++client and the bus master.  
++
++A EHOSTUNREACH is returned if a client that joined a bus tries to send
++a packet to a client from another bus. Cross-bus communication is not
++permited.
++
++When a process wants to send a unicast message to a peer, it fills a
++sockaddr structure and performs a socket operation (i.e., sendto(2))
++
++struct sockaddr_bus addr;
++char *msg = "Hello world";
++
++addr.sbus_family 	   = AF_BUS;
++strcpy(addr.sbus_path, "/tmp/test");
++addr.sbus_addr.s_addr   = 0x0001f00ddeadbeef;
++
++ret = sendto(sockfd, "Hello world", strlen("Hello world"), 0,
++	    (struct sockaddr*)&addr, sizeof(addr));
++
++The current implementation requires that the addr.sbus_path component
++match the one used to conenct() to the bus but in future this
++requirement will be removed.
++
++The kernel will first check that the socket is connected and that the
++bus path of the socket correspond with the destination, then it will
++extract the prefix and client address from the bus address using a
++fixed 16 -bit bitmask.
++
++prefix 		= bus address >> 48 & 0xffff
++client address 	= bus address & 0xffff
++
++If the client address is not all bits one, then the message is unicast
++and is delivered to the socket with that assigned address
++(0x0001f00ddeadbeef).  Otherwise the message is multicast and is
++delivered to all the peers with this address prefix (0x0001 in this
++case).
++
++So, when a process wants to send a multicast message, it just has to
++fill the address structure with the address prefix + 0xffffffffffff:
++
++struct sockaddr_bus addr;
++char *msg = "Hello world";
++
++addr.bus_family = AF_BUS;
++strcpy(addr.sbus_path, "/tmp/test");
++addr.bus_addr   = 0x0001ffffffffffff;
++
++ret = sendto(sockfd, "Hello world", strlen("Hello world"), 0,
++	    (struct sockaddr*)&addr, sizeof(addr));
++
++The kernel, will apply the binary and operation, learn that the
++address is 0xffffffffffff and send the message to all the peers on
++this prefix (0x0001).
++
++Socket transmit queued bytes are limited by a maximum send buffer size
++(sysctl_wmem_max) defined in the kernel and can be modified at runtime
++using the sysctl interface on /proc/sys/net/core/wmem_default. This
++parameter is global for all the sockets families in a Linux system.
++
++AF_BUS permits the definition of a per-bus maximum send buffer size
++using the BUS_SET_SENDBUF socket option. The bus master can call the
++setsockopt(2) system call using as a parameter the listening socket.
++The command sets a maximum write buffer that will be imposed on each
++new socket that connects to the bus:
++
++ret = setsockopt(serverfd, SOL_BUS, BUS_SET_SENDBUF, &sndbuf,
++sizeof(int));
++
++In the transmission path both Berkeley Packet Filters and Netfilter
++hooks are available, so they can be used to filter sending packets.
++
++
++Using this addressing scheme with D-Bus
++---------------------------------------
++
++As an example of a use case for AF_BUS, let's analyze how the D-Bus
++IPC system can be implemented on top of it.
++
++We define a new D-Bus address type "afbus".
++
++A D-Bus client may connect to an address of the form "afbus:path=X"
++where X is a string. This means that it connect()s to { AF_BUS, 0, X }.
++
++For example: afbus:path=/tmp/test connects to { AF_BUS, 0, /tmp/test }.
++
++A D-Bus daemon may listen on the address "afbus:", which means that it
++binds to { AF_BUS, 0, /tmp/test }. It will advertise an address of the
++form "afbus:path=/tmp/test" to clients, for instance via the
++--print-address option, or via dbus-launch setting the
++DBUS_SESSION_BUS_ADDRESS environment variable.  For instance, "afbus:"
++is an appropriate default listening address for the session bus,
++resulting in dbus-launch setting the DBUS_SESSION_BUS_ADDRESS
++environment variable to something like
++"afbus:path=/tmp/test,guid=...".
++
++A D-Bus daemon may listen on the address "afbus:file=/some/file",
++which means that it will do as above, then write its path into the
++given well-known file.  For instance,
++"afbus:file=/run/dbus/system_bus.afbus" is an appropriate listening
++address for the system bus. Only processes with suitable privileges to
++write to that file can impersonate the system bus.
++
++D-Bus clients wishing to connect to the well-known system bus should
++attempt to connect to afbus:file=/run/dbus/system_bus.afbus, falling
++back to unix:path=/var/run/dbus/system_bus_socket if that fails. On
++Linux systems, the well-known system bus daemon should attempt to
++listen on both of those addresses.
++
++The D-Bus daemon will serve as bus master as well since it will be the
++process that creates and listens on the AF_BUS socket.
++
++D-Bus clients will use the fixed bus master address (all zero bits) to
++send messages to the D-Bus daemon and the client's unique address to
++send messages to other D-Bus clients using the bus.
++
++When initially connected, D-Bus clients will only be able to
++communicate with the D-Bus daemon and will send authentication
++information (AUTH message and SCM_CREDENTIALS ancillary
++messages). Since the D-Bus daemon is also the bus master, it can allow
++D-Bus clients to join the bus and be able to send and receive D-Bus
++messages from other peers.
++
++On connection, the kernel will assign to each client an address in the
++prefix 0x0000. If a client attempts to send messages to clients other
++than the bus master, this is considered to be an error, and is
++prevented by the kernel.
++
++When the D-Bus daemon has authenticated a client and determined that
++it is authorized to be on this bus, it uses a setsockopt(2) call to
++tell the kernel that this client has permission to send messages. The
++D-Bus daemon then tells the client by sending the Hello() reply that
++it has made the setsockopt(2) call and that now is able to send
++messages to other peers on the bus.
++
++Well-known names are represented by addresses in the 0x0001, ... prefixes.
++
++Addresses in prefix 0x0000 must be mapped to D-Bus unique names in a
++way that can't collide with unique names allocated by the dbus-daemon
++for legacy clients.
++
++In order to be consistent with current D-Bus unique naming, the AF_BUS
++addresses can be mapped directly to D-Bus unique names, for example
++(0000/0000deadbeef to ":0.deadbeef"). Leading zeroes can be suppressed
++since the common case should be relatively small numbers (the kernel
++allocates client addresses sequentially, and machines could be
++rebooted occasionally).
++
++By having both AF_BUS and legacy D-Bus clients use the same address
++space, the D-Bus daemon can act as a proxy between clients and can be
++sure that D-Bus unique names will be unique for both AF_BUS and legacy
++clients.
++
++To act as a proxy between AF_BUS and legacy clients, each time the
++D-Bus daemon accepts a legacy connection (i.e., AF_UNIX), it will
++create an AF_BUS socket and establish a connection with itself. It
++will then associate this newly created connection with the legacy one.
++
++To explain it graphically:
++
++	  L          The AF_BUS listening socket  }
++       /  |  \                                    }-- listener process
++     A1  A2  A3      The AF_BUS accepted sockets  }
++      |   |   |
++     C1  C2  C3      The AF_BUS connected sockets, where:
++      |                    * C1 belongs to the listener process
++      |                    * C2 and C3 belongs to the client processes
++      |
++ L2--A4       The AF_UNIX listening and accepted sockets \
++      |                            in the listener process
++     C4       The AF_UNIX connected socket in the legacy client process
++
++
++where C2 and C3 are normal AF_BUS clients and C4 is a legacy
++client. The D-Bus daemon after accepting the connection using the
++legacy transport (A4), will create an AF_BUS socket pair (C1, A1)
++associated with the legacy client.
++
++Legacy clients will send messages to the D-Bus daemon using their
++legacy socket and the D-Bus daemon will extract the destination
++address, resolve to the corresponding AF_BUS address and use this to
++send the message to the right peer.  
++
++Conversely, when an AF_BUS client sends a D-Bus message to a legacy
++client, it will use the AF_BUS address of the connection associated
++with that client. The D-Bus daemon will receive the message, modify
++the message's content to set SENDER headers based on the AF_BUS source
++address and use the legacy transport to send the D-Bus message to the
++legacy client.
++
++As a special case, the bus daemon's all-zeroes address maps to
++"org.freedesktop.DBus" and vice versa.
++
++When a D-Bus client receives an AF_BUS message from the bus master
++(0/0), it must use the SENDER header field in the D-Bus message, as
++for any other D-Bus transport, to determine whether the message is
++actually from the D-Bus daemon (the SENDER is "org.freedesktop.DBus"
++or missing), or from another client (the SENDER starts with ":"). It
++is valid for messages from another AF_BUS client to be received via
++the D-Bus daemon; if they are, the SENDER header field will always be
++set.
++
++Besides its unique name, D-Bus services can have well-known names such
++as org.gnome.Keyring or org.freedesktop.Telepathy. These well-known
++names can also be used as a D-Bus message destination
++address. Well-known names are not numeric and AF_BUS is not able to
++parse D-Bus messages.
++
++To solve this, the D-Bus daemon will assign an additional AF_BUS
++address to each D-Bus client that owns a well-known name. The mapping
++between well-known names and AF_BUS address is maintained by the D-Bus
++daemon on a persistent data structure.
++
++D-Bus client libraries will maintain a cache of these mappings so they
++can send messages to services with well-known names using their mapped
++AF_BUS address.
++
++If a client intending to send a D-Bus message to a given well-known
++name does not have that well-known name in its cache, it must send the
++AF_BUS message to the listener (0000/000000000000) instead. 
++
++The listener must forward the D-Bus message to the owner of that
++well-known name, setting the SENDER header field if necessary. It may
++also send this AF_BUS-specific D-Bus signal to the sender, so that the
++sender can update its cache:
++
++     org.freedesktop.DBus.AF_BUS.Forwarded (STRING well_known_name,
++	 UINT64 af_bus_client)
++
++	 Emitted by the D-Bus daemon with sender "org.freedesktop.DBus"
++	 and object path "/org/freedesktop/DBus" to indicate that
++	 the well-known name well_known_name is represented by the
++	 AF_BUS address { AF_BUS, af_bus_client, path } where
++	 path is the path name used by this bus.
++
++	 For instance, if the well-known name "org.gnome.Keyring"
++	 is represented by AF_BUS address 0001/0000deadbeef,
++	 the signal would have arguments ("org.gnome.Keyring",
++	 0x00010000deadbeef), corresponding to the AF_BUS
++	 address { AF_BUS, 0x00010000deadbeef, /tmp/test }.
++
++If the D-Bus service for that well-known name is not active, then the
++D-Bus daemon will first do the service activation, assign an
++additional address to the recently activated service, store the
++well-known service to numeric address mapping on its persistent cache,
++and then send the AF_BUS.Forwarded signal back to the client.
++
++Once the mapping has been made, the AF_BUS address associated with a
++well-known name cannot be reused for the lifetime of the D-Bus daemon
++(which is the same as the lifetime of the socket). 
++
++Nevertheless the AF_BUS address associated with a well-known name can
++change, for example if a service goes away and a new instance gets
++activated. This new instance can have a different AF_BUS address.  The
++D-Bus daemon will maintain a list of the mappings that are currently
++valid so it can send the AF_BUS.
++
++Forwarded signal with the mapping information to the clients. Client
++libraries will maintain a fixed-size Last Recently Used (LRU) cache
++with previous mappings sent by the D-Bus daemon.
++
++If the clients overwrite a mapping due to the LRU replace policy and
++later want to send a D-Bus message to the overwritten well-known name,
++they will send the D-Bus message back to the D-Bus daemon and this
++will send the signal with the mapping information. 
++
++If a service goes away or if the service AF_BUS address changed and
++the client still has the old AF_BUS address in its cache, it will send
++the D-Bus message to the old destination. 
++
++Since packets whose destination AF_BUS addresses are not assigned to
++any process are routed by default to the bus master, the D-Bus daemon
++will receive these D-bus messages and send an AF_BUS.
++
++Forwarded signal back to the client with the new AF_BUS address so it
++can update its cache with the new mapping.
++
++For well-known names, the D-Bus daemon will use a different address
++prefix (0x0001) so it doesn't conflict with the D-Bus unique names
++address prefix (0x0000).
++
++Besides D-Bus method call messages which are unicast, D-Bus allows
++clients to send multicast messages (D-Bus signals). Clients can send
++signals messages using the bus unique name prefix multicast address
++(0x0001ffffffffffff).
++
++A netfilter hook is used to filter these multicast messages and only
++deliver to the correct peers based on match rules.
++
++
++D-Bus aware netfilter module
++----------------------------
++
++AF_BUS is designed to be a generic bus transport supporting both
++unicast and multicast communications.
++
++In order for D-Bus to operate efficiently, the transport method has to
++know the D-Bus message wire-protocol and D-Bus message structure. But
++adding this D-Bus specific knowledge to AF_BUS will break one of the
++fundamental design principles of any network protocol stack, namely
++layer-independence: layer n must not make any assumptions about the
++payload in layer n + 1.
++
++So, in order to have a clean protocol design but be able to allow the
++transport to analyze the D-Bus messages, netfilter hooks are used to
++do the filtering based on match rules.
++
++The kernel module has to maintain the match rules and the D-Bus daemon
++is responsible for managing this information. Every time an add match
++rule message is processed by the D-Bus daemon, this will update the
++netfilter module match rules set so the netfilter hook function can
++use that information to do the match rules based filtering.
++
++The D-Bus daemon and the netfilter module will use the generic netlink
++subsystem to do the kernel-to-user-space communication. Netlink is
++already used by most of the networking subsystem in Linux
++(iptables/netfilter, ip/routing, etc).
++
++We enforce a security scheme so only the bus master's user ID can
++update the netfilter module match rules set.
++
++The advantage of using the netfilter subsystem is that we decouple the
++mechanism from the policy. AF_BUS will only add a set of hook points
++and external modules will be used to enforce a given policy.
+diff --git a/drivers/connector/connector.c b/drivers/connector/connector.c
+index dde6a0f..a1f9364 100644
+--- a/drivers/connector/connector.c
++++ b/drivers/connector/connector.c
+@@ -118,6 +118,38 @@ nlmsg_failure:
+ EXPORT_SYMBOL_GPL(cn_netlink_send);
+ 
+ /*
++ * Send an unicast reply from a connector callback
++ *
++ */
++int cn_netlink_reply(struct cn_msg *msg, u32 pid, gfp_t gfp_mask)
++{
++	unsigned int size;
++	struct sk_buff *skb;
++	struct nlmsghdr *nlh;
++	struct cn_msg *data;
++	struct cn_dev *dev = &cdev;
++
++	size = NLMSG_SPACE(sizeof(*msg) + msg->len);
++
++	skb = alloc_skb(size, gfp_mask);
++	if (!skb)
++		return -ENOMEM;
++
++	nlh = nlmsg_put(skb, 0, msg->seq, NLMSG_DONE, size - sizeof(*nlh), 0);
++	if (nlh == NULL) {
++		kfree_skb(skb);
++		return -EMSGSIZE;
++	}
++
++	data = nlmsg_data(nlh);
++
++	memcpy(data, msg, sizeof(*data) + msg->len);
++
++	return netlink_unicast(dev->nls, skb, pid, 1);
++}
++EXPORT_SYMBOL_GPL(cn_netlink_reply);
++
++/*
+  * Callback helper - queues work and setup destructor for given data.
+  */
+ static int cn_call_callback(struct sk_buff *skb)
+diff --git a/include/linux/bus.h b/include/linux/bus.h
+new file mode 100644
+index 0000000..19cac36
+--- /dev/null
++++ b/include/linux/bus.h
+@@ -0,0 +1,34 @@
++#ifndef _LINUX_BUS_H
++#define _LINUX_BUS_H
++
++#include <linux/socket.h>
++
++/* 'protocol' to use in socket(AF_BUS, SOCK_SEQPACKET, protocol) */
++#define BUS_PROTO_NONE	0
++#define BUS_PROTO_DBUS	1
++#define BUS_PROTO_MAX	1
++
++#define BUS_PATH_MAX	108
++
++/**
++ * struct bus_addr - af_bus address
++ * @s_addr: an af_bus address (16-bit prefix + 48-bit client address)
++ */
++struct bus_addr {
++	u64 s_addr;
++};
++
++
++/**
++ * struct sockaddr_bus - af_bus socket address
++ * @sbus_family: the socket address family
++ * @sbus_addr: an af_bus address
++ * @sbus_path: a path name
++ */
++struct sockaddr_bus {
++	__kernel_sa_family_t sbus_family;
++	struct bus_addr      sbus_addr;
++	char sbus_path[BUS_PATH_MAX];
++};
++
++#endif /* _LINUX_BUS_H */
+diff --git a/include/linux/connector.h b/include/linux/connector.h
+index 7638407..519d010 100644
+--- a/include/linux/connector.h
++++ b/include/linux/connector.h
+@@ -44,8 +44,10 @@
+ #define CN_VAL_DRBD			0x1
+ #define CN_KVP_IDX			0x9	/* HyperV KVP */
+ #define CN_KVP_VAL			0x1	/* queries from the kernel */
++#define CN_IDX_NFDBUS                   0xA     /* netfilter D-Bus */
++#define CN_VAL_NFDBUS                   0x1
+ 
+-#define CN_NETLINK_USERS		10	/* Highest index + 1 */
++#define CN_NETLINK_USERS		11	/* Highest index + 1 */
+ 
+ /*
+  * Maximum connector's message size.
+@@ -125,6 +127,7 @@ int cn_add_callback(struct cb_id *id, const char *name,
+ 		    void (*callback)(struct cn_msg *, struct netlink_skb_parms *));
+ void cn_del_callback(struct cb_id *);
+ int cn_netlink_send(struct cn_msg *, u32, gfp_t);
++int cn_netlink_reply(struct cn_msg *, u32, gfp_t);
+ 
+ int cn_queue_add_callback(struct cn_queue_dev *dev, const char *name,
+ 			  struct cb_id *id,
+diff --git a/include/linux/netfilter.h b/include/linux/netfilter.h
+index 29734be..7cff0bd 100644
+--- a/include/linux/netfilter.h
++++ b/include/linux/netfilter.h
+@@ -67,6 +67,7 @@ enum {
+ 	NFPROTO_BRIDGE =  7,
+ 	NFPROTO_IPV6   = 10,
+ 	NFPROTO_DECNET = 12,
++	NFPROTO_BUS,
+ 	NFPROTO_NUMPROTO,
+ };
+ 
+diff --git a/include/linux/security.h b/include/linux/security.h
+index 673afbb..fa26c6d 100644
+--- a/include/linux/security.h
++++ b/include/linux/security.h
+@@ -1578,6 +1578,8 @@ struct security_operations {
+ 
+ #ifdef CONFIG_SECURITY_NETWORK
+ 	int (*unix_stream_connect) (struct sock *sock, struct sock *other, struct sock *newsk);
++	int (*bus_connect) (struct sock *sock, struct sock *other,
++			    struct sock *newsk);
+ 	int (*unix_may_send) (struct socket *sock, struct socket *other);
+ 
+ 	int (*socket_create) (int family, int type, int protocol, int kern);
+@@ -2517,6 +2519,8 @@ static inline int security_inode_getsecctx(struct inode *inode, void **ctx, u32
+ #ifdef CONFIG_SECURITY_NETWORK
+ 
+ int security_unix_stream_connect(struct sock *sock, struct sock *other, struct sock *newsk);
++int security_bus_connect(struct sock *sock, struct sock *other,
++			 struct sock *newsk);
+ int security_unix_may_send(struct socket *sock,  struct socket *other);
+ int security_socket_create(int family, int type, int protocol, int kern);
+ int security_socket_post_create(struct socket *sock, int family,
+@@ -2564,6 +2568,13 @@ static inline int security_unix_stream_connect(struct sock *sock,
+ 	return 0;
+ }
+ 
++static inline int security_bus_connect(struct socket *sock,
++				       struct sock *other,
++				       struct sock *newsk)
++{
++	return 0;
++}
++
+ static inline int security_unix_may_send(struct socket *sock,
+ 					 struct socket *other)
+ {
+diff --git a/include/linux/socket.h b/include/linux/socket.h
+index b84bbd4..59596d2 100644
+--- a/include/linux/socket.h
++++ b/include/linux/socket.h
+@@ -195,7 +195,8 @@ struct ucred {
+ #define AF_CAIF		37	/* CAIF sockets			*/
+ #define AF_ALG		38	/* Algorithm sockets		*/
+ #define AF_NFC		39	/* NFC sockets			*/
+-#define AF_MAX		40	/* For now.. */
++#define AF_BUS		40	/* BUS sockets			*/
++#define AF_MAX		41	/* For now.. */
+ 
+ /* Protocol families, same as address families. */
+ #define PF_UNSPEC	AF_UNSPEC
+@@ -238,6 +239,7 @@ struct ucred {
+ #define PF_CAIF		AF_CAIF
+ #define PF_ALG		AF_ALG
+ #define PF_NFC		AF_NFC
++#define PF_BUS		AF_BUS
+ #define PF_MAX		AF_MAX
+ 
+ /* Maximum queue length specifiable by listen.  */
+@@ -312,6 +314,7 @@ struct ucred {
+ #define SOL_IUCV	277
+ #define SOL_CAIF	278
+ #define SOL_ALG		279
++#define SOL_BUS		280
+ 
+ /* IPX options */
+ #define IPX_TYPE	1
+diff --git a/include/net/af_bus.h b/include/net/af_bus.h
+new file mode 100644
+index 0000000..e63eb49
+--- /dev/null
++++ b/include/net/af_bus.h
+@@ -0,0 +1,273 @@
++/*
++ * Copyright (c) 2012, GENIVI Alliance
++ *
++ * Authors:	Javier Martinez Canillas, <javier.martinez@collabora.co.uk>
++ *              Alban Crequy, <alban.crequy@collabora.co.uk>
++ *
++ *		This program is free software; you can redistribute it and/or
++ *		modify it under the terms of the GNU General Public License
++ *		as published by the Free Software Foundation; either version
++ *		2 of the License, or (at your option) any later version.
++ *
++ * Based on BSD Unix domain sockets (net/unix).
++ */
++
++#ifndef __LINUX_NET_AFBUS_H
++#define __LINUX_NET_AFBUS_H
++
++#include <linux/socket.h>
++#include <linux/bus.h>
++#include <linux/mutex.h>
++#include <net/sock.h>
++#include <net/tcp_states.h>
++
++extern void bus_inflight(struct file *fp);
++extern void bus_notinflight(struct file *fp);
++extern void bus_gc(void);
++extern void wait_for_bus_gc(void);
++extern struct sock *bus_get_socket(struct file *filp);
++extern struct sock *bus_peer_get(struct sock *);
++
++#define BUS_HASH_SIZE	256
++
++extern spinlock_t bus_address_lock;
++extern struct hlist_head bus_address_table[BUS_HASH_SIZE];
++
++#define BUS_MAX_QLEN    10
++#define BUS_MASTER_ADDR 0x0
++#define BUS_PREFIX_BITS 16
++#define BUS_CLIENT_BITS 48
++#define BUS_PREFIX_MASK 0xffff000000000000
++#define BUS_CLIENT_MASK 0x0000ffffffffffff
++
++/* AF_BUS socket options */
++#define BUS_ADD_ADDR 1
++#define BUS_JOIN_BUS 2
++#define BUS_DEL_ADDR 3
++#define BUS_SET_EAVESDROP 4
++#define BUS_UNSET_EAVESDROP 5
++#define BUS_SET_SENDBUF 6
++#define BUS_SET_MAXQLEN 7
++#define BUS_GET_QLENFULL 8
++
++/* Connection and socket states */
++enum {
++	BUS_ESTABLISHED = TCP_ESTABLISHED,
++	BUS_CLOSE = TCP_CLOSE,
++	BUS_LISTEN = TCP_LISTEN,
++	BUS_MAX_STATES
++};
++
++#define NF_BUS_SENDING 1
++
++extern unsigned int bus_tot_inflight;
++extern spinlock_t bus_table_lock;
++extern struct hlist_head bus_socket_table[BUS_HASH_SIZE + 1];
++
++/**
++ * struct bus_address - an af_bus address associated with an af_bus sock
++ * @refcnt: address reference counter
++ * @len: address length
++ * @hash: address hash value
++ * @addr_node: member of struct bus_sock.addr_list
++ * @table_node: member of struct hlist_head bus_address_table[hash]
++ * @sock: the af_bus sock that owns this address
++ * @name: the socket address for this address
++ */
++struct bus_address {
++	atomic_t	refcnt;
++	int		len;
++	unsigned	hash;
++	struct hlist_node addr_node;
++	struct hlist_node table_node;
++	struct sock  *sock;
++	struct sockaddr_bus name[0];
++};
++
++/**
++ * struct bus_send_context - sending context for an socket buffer
++ * @sender_socket: the sender socket associated with this sk_buff
++ * @siocb: used to send ancillary data
++ * @timeo: sending timeout
++ * @max_level: file descriptor passing maximum recursion level
++ * @namelen: length of socket address name
++ * @hash: socket name hash value
++ * @other: destination sock
++ * @sender: sender socket address name
++ * @recipient: recipient socket address name
++ * @authenticated: flag whether the sock already joined the bus
++ * @bus_master_side: flag whether the sock is an accepted socket
++ * @to_master: flag whether the destination is the bus master
++ * @multicast: flag whether the destination is a multicast address
++ * @deliver: flag whether the skb has to be delivered
++ * @eavesdropper: flag whether the sock is allowed to eavesdrop
++ * @main_recipient: flag whether the sock is the main recipient
++ */
++struct bus_send_context {
++	struct socket *sender_socket;
++	struct sock_iocb *siocb;
++	long timeo;
++	int max_level;
++	int namelen;
++	unsigned hash;
++	struct sock *other;
++	struct sockaddr_bus	*sender;
++	struct sockaddr_bus	*recipient;
++	unsigned int		authenticated:1;
++	unsigned int		bus_master_side:1;
++	unsigned int		to_master:1;
++	unsigned int		multicast:1;
++	unsigned int            deliver:1;
++	unsigned int            eavesdropper:1;
++	unsigned int            main_recipient:1;
++};
++
++/**
++ * struct bus_skb_parms - socket buffer parameters
++ * @pid: process id
++ * @cred: skb credentials
++ * @fp: passed file descriptors
++ * @secid: security id
++ * @sendctx: skb sending context
++ */
++struct bus_skb_parms {
++	struct pid		*pid;
++	const struct cred	*cred;
++	struct scm_fp_list	*fp;
++#ifdef CONFIG_SECURITY_NETWORK
++	u32			secid;
++#endif
++	struct bus_send_context	*sendctx;
++};
++
++#define BUSCB(skb)      (*(struct bus_skb_parms *)&((skb)->cb))
++#define BUSSID(skb)     (&BUSCB((skb)).secid)
++
++#define bus_state_lock(s)	spin_lock(&bus_sk(s)->lock)
++#define bus_state_unlock(s)	spin_unlock(&bus_sk(s)->lock)
++#define bus_state_lock_nested(s) \
++				spin_lock_nested(&bus_sk(s)->lock, \
++				SINGLE_DEPTH_NESTING)
++
++/**
++ * struct bus - a communication bus
++ * @master: the bus master sock
++ * @peers: list of struct bus_sock.bus_node allowed to join the bus
++ * @lock: protect peers concurrent access
++ * @send_lock: enforce atomic multicast delivery
++ * @kref: bus reference counter
++ * @addr_cnt: address number counter to assign prefix 0x0000 addresses
++ * @eavesdropper_cnt: eavesdroppers counter
++ */
++struct bus {
++	struct sock		*master;
++	struct hlist_head       peers;
++	spinlock_t		lock;
++	spinlock_t		send_lock;
++	struct kref             kref;
++	atomic64_t              addr_cnt;
++	atomic64_t              eavesdropper_cnt;
++};
++
++/**
++ * struct bus_sock - an af_bus socket
++ * @sk: associated sock
++ * @addr: sock principal address
++ * @addr_list: list of struct bus_address.addr_node
++ * @path: sock path name
++ * @readlock: protect from concurrent reading
++ * @peer: peer sock
++ * @other: the listening sock
++ * @link: list of candidates for garbage collection
++ * @inflight: number of times the file descriptor is in flight
++ * @lock: protect the sock from concurrent access
++ * @gc_candidate: flag whether the is a candidate for gc
++ * @gc_maybe_cycle: flag whether could be a cyclic reference
++ * @recursion_level: file passing current recursion level
++ * @peer_wq: peer sock wait queue
++ * @bus: bus that this sock belongs to
++ * @bus_master: flag whether the sock is the bus master
++ * @bus_master_side: flag whether is an accepted socket
++ * @authenticated: flag whether the sock joined the bus
++ * @eavesdropper: flag whether the sock is allowed to eavesdrop
++ * @bus_node: member of struct bus.peers list of joined socks
++ */
++struct bus_sock {
++	/* WARNING: sk has to be the first member */
++	struct sock		sk;
++	struct bus_address     *addr;
++	struct hlist_head       addr_list;
++	struct path		path;
++	struct mutex		readlock;
++	struct sock		*peer;
++	struct sock		*other;
++	struct list_head	link;
++	atomic_long_t		inflight;
++	spinlock_t		lock;
++	unsigned int		gc_candidate:1;
++	unsigned int		gc_maybe_cycle:1;
++	unsigned char		recursion_level;
++	struct socket_wq	peer_wq;
++	struct bus              *bus;
++	bool                    bus_master;
++	bool                    bus_master_side;
++	bool                    authenticated;
++	bool                    eavesdropper;
++	struct hlist_node	bus_node;
++};
++#define bus_sk(__sk) ((struct bus_sock *)__sk)
++
++#define peer_wait peer_wq.wait
++
++/**
++ * bus_same_bus - Test if two socket address belongs to the same bus
++ * @sbusaddr1: socket address name
++ * @sbusaddr2: socket address name
++ */
++static inline bool bus_same_bus(struct sockaddr_bus *sbusaddr1,
++				struct sockaddr_bus *sbusaddr2)
++{
++	int offset;
++
++	if (sbusaddr1->sbus_path[0] != sbusaddr2->sbus_path[0])
++		return false;
++
++	/*
++	 * abstract path names start with a null byte character,
++	 * so they have to be compared starting at the second char.
++	 */
++	offset = (sbusaddr1->sbus_path[0] == '\0');
++
++	return !strncmp(sbusaddr1->sbus_path + offset,
++		       sbusaddr2->sbus_path + offset,
++		       BUS_PATH_MAX);
++}
++
++static inline unsigned int bus_hash_fold(__wsum n)
++{
++	unsigned int hash = (__force unsigned int)n;
++	hash ^= hash>>16;
++	hash ^= hash>>8;
++	return hash&(BUS_HASH_SIZE-1);
++}
++
++static inline unsigned int bus_compute_hash(struct bus_addr addr)
++{
++	return bus_hash_fold(csum_partial((void *)&addr, sizeof(addr), 0));
++}
++
++long bus_inq_len(struct sock *sk);
++long bus_outq_len(struct sock *sk);
++
++#ifdef CONFIG_SYSCTL
++extern int bus_sysctl_register(struct net *net);
++extern void bus_sysctl_unregister(struct net *net);
++#else
++static inline int bus_sysctl_register(struct net *net) { return 0; }
++static inline void bus_sysctl_unregister(struct net *net) {}
++#endif
++
++bool bus_can_write(struct net *net, struct sockaddr_bus *addr, int len,
++		   int protocol);
++
++#endif /* __LINUX_NET_AFBUS_H */
+diff --git a/net/Kconfig b/net/Kconfig
+index e07272d..c9774a1 100644
+--- a/net/Kconfig
++++ b/net/Kconfig
+@@ -47,6 +47,7 @@ menu "Networking options"
+ 
+ source "net/packet/Kconfig"
+ source "net/unix/Kconfig"
++source "net/bus/Kconfig"
+ source "net/xfrm/Kconfig"
+ source "net/iucv/Kconfig"
+ 
+diff --git a/net/Makefile b/net/Makefile
+index ad432fa..3033018 100644
+--- a/net/Makefile
++++ b/net/Makefile
+@@ -19,6 +19,7 @@ obj-$(CONFIG_NETFILTER)		+= netfilter/
+ obj-$(CONFIG_INET)		+= ipv4/
+ obj-$(CONFIG_XFRM)		+= xfrm/
+ obj-$(CONFIG_UNIX)		+= unix/
++obj-$(CONFIG_AF_BUS)		+= bus/
+ obj-$(CONFIG_NET)		+= ipv6/
+ obj-$(CONFIG_PACKET)		+= packet/
+ obj-$(CONFIG_NET_KEY)		+= key/
+diff --git a/net/bus/Kconfig b/net/bus/Kconfig
+new file mode 100644
+index 0000000..5f01410
+--- /dev/null
++++ b/net/bus/Kconfig
+@@ -0,0 +1,15 @@
++#
++# Bus Domain Sockets
++#
++
++config AF_BUS
++	tristate "Bus domain sockets (EXPERIMENTAL)"
++	depends on EXPERIMENTAL
++	---help---
++	  If you say Y here, you will include support for Bus domain sockets.
++	  These sockets are used to create communication buses for IPC.
++
++	  To compile this driver as a module, choose M here: the module will be
++	  called bus.
++
++	  Say N unless you know what you are doing.
+diff --git a/net/bus/Makefile b/net/bus/Makefile
+new file mode 100644
+index 0000000..8c1fea2
+--- /dev/null
++++ b/net/bus/Makefile
+@@ -0,0 +1,7 @@
++#
++# Makefile for the Linux bus domain socket layer.
++#
++
++obj-$(CONFIG_AF_BUS)	+= af-bus.o
++
++af-bus-y		:= af_bus.o garbage.o
+diff --git a/net/bus/af_bus.c b/net/bus/af_bus.c
+new file mode 100644
+index 0000000..5a00225
+--- /dev/null
++++ b/net/bus/af_bus.c
+@@ -0,0 +1,2688 @@
++/*
++ * Implementation of Bus domain sockets.
++ *
++ * Copyright (c) 2012, GENIVI Alliance
++ *
++ * Authors:	Javier Martinez Canillas <javier.martinez@collabora.co.uk>
++ *              Alban Crequy <alban.crequy@collabora.co.uk>
++ *
++ *		This program is free software; you can redistribute it and/or
++ *		modify it under the terms of the GNU General Public License
++ *		as published by the Free Software Foundation; either version
++ *		2 of the License, or (at your option) any later version.
++ *
++ * Based on BSD Unix domain sockets (net/unix).
++ */
++
++#include <linux/module.h>
++#include <linux/kernel.h>
++#include <linux/signal.h>
++#include <linux/sched.h>
++#include <linux/errno.h>
++#include <linux/string.h>
++#include <linux/stat.h>
++#include <linux/dcache.h>
++#include <linux/namei.h>
++#include <linux/socket.h>
++#include <linux/bus.h>
++#include <linux/fcntl.h>
++#include <linux/termios.h>
++#include <linux/sockios.h>
++#include <linux/net.h>
++#include <linux/in.h>
++#include <linux/fs.h>
++#include <linux/slab.h>
++#include <linux/uaccess.h>
++#include <linux/skbuff.h>
++#include <linux/netdevice.h>
++#include <net/net_namespace.h>
++#include <net/sock.h>
++#include <net/af_bus.h>
++#include <linux/proc_fs.h>
++#include <linux/seq_file.h>
++#include <net/scm.h>
++#include <linux/init.h>
++#include <linux/poll.h>
++#include <linux/rtnetlink.h>
++#include <linux/mount.h>
++#include <net/checksum.h>
++#include <linux/security.h>
++
++struct hlist_head bus_socket_table[BUS_HASH_SIZE + 1];
++EXPORT_SYMBOL_GPL(bus_socket_table);
++struct hlist_head bus_address_table[BUS_HASH_SIZE];
++EXPORT_SYMBOL_GPL(bus_address_table);
++DEFINE_SPINLOCK(bus_table_lock);
++DEFINE_SPINLOCK(bus_address_lock);
++EXPORT_SYMBOL_GPL(bus_address_lock);
++static atomic_long_t bus_nr_socks;
++
++#define bus_sockets_unbound	(&bus_socket_table[BUS_HASH_SIZE])
++
++#define BUS_ABSTRACT(sk)	(bus_sk(sk)->addr->hash != BUS_HASH_SIZE)
++
++#ifdef CONFIG_SECURITY_NETWORK
++static void bus_get_secdata(struct scm_cookie *scm, struct sk_buff *skb)
++{
++	memcpy(BUSSID(skb), &scm->secid, sizeof(u32));
++}
++
++static inline void bus_set_secdata(struct scm_cookie *scm, struct sk_buff *skb)
++{
++	scm->secid = *BUSSID(skb);
++}
++#else
++static inline void bus_get_secdata(struct scm_cookie *scm, struct sk_buff *skb)
++{ }
++
++static inline void bus_set_secdata(struct scm_cookie *scm, struct sk_buff *skb)
++{ }
++#endif /* CONFIG_SECURITY_NETWORK */
++
++/*
++ *  SMP locking strategy:
++ *    bus_socket_table hash table is protected with spinlock bus_table_lock
++ *    bus_address_table hash table is protected with spinlock bus_address_lock
++ *    each bus is protected by a separate spin lock.
++ *    multicast atomic sending is protected by a separate spin lock.
++ *    each socket state is protected by a separate spin lock.
++ *    each socket address is protected by a separate spin lock.
++ *
++ *  When holding more than one lock, use the following hierarchy:
++ *  - bus_table_lock.
++ *  - bus_address_lock.
++ *  - socket lock.
++ *  - bus lock.
++ *  - bus send_lock.
++ *  - sock address lock.
++ */
++
++#define bus_peer(sk) (bus_sk(sk)->peer)
++
++static inline int bus_our_peer(struct sock *sk, struct sock *osk)
++{
++	return bus_peer(osk) == sk;
++}
++
++static inline int bus_recvq_full(struct sock const *sk)
++{
++	return skb_queue_len(&sk->sk_receive_queue) > sk->sk_max_ack_backlog;
++}
++
++static inline u16 bus_addr_prefix(struct sockaddr_bus *busaddr)
++{
++	return (busaddr->sbus_addr.s_addr & BUS_PREFIX_MASK) >> BUS_CLIENT_BITS;
++}
++
++static inline u64 bus_addr_client(struct sockaddr_bus *sbusaddr)
++{
++	return sbusaddr->sbus_addr.s_addr & BUS_CLIENT_MASK;
++}
++
++static inline bool bus_mc_addr(struct sockaddr_bus *sbusaddr)
++{
++	return bus_addr_client(sbusaddr) == BUS_CLIENT_MASK;
++}
++
++struct sock *bus_peer_get(struct sock *s)
++{
++	struct sock *peer;
++
++	bus_state_lock(s);
++	peer = bus_peer(s);
++	if (peer)
++		sock_hold(peer);
++	bus_state_unlock(s);
++	return peer;
++}
++EXPORT_SYMBOL_GPL(bus_peer_get);
++
++static inline void bus_release_addr(struct bus_address *addr)
++{
++	if (atomic_dec_and_test(&addr->refcnt))
++		kfree(addr);
++}
++
++/*
++ *	Check bus socket name:
++ *		- should be not zero length.
++ *	        - if started by not zero, should be NULL terminated (FS object)
++ *		- if started by zero, it is abstract name.
++ */
++
++static int bus_mkname(struct sockaddr_bus *sbusaddr, int len,
++		      unsigned int *hashp)
++{
++	int offset = (sbusaddr->sbus_path[0] == '\0');
++
++	if (len <= sizeof(short) || len > sizeof(*sbusaddr))
++		return -EINVAL;
++	if (!sbusaddr || sbusaddr->sbus_family != AF_BUS)
++		return -EINVAL;
++
++	len = strnlen(sbusaddr->sbus_path + offset, BUS_PATH_MAX) + 1 +
++		sizeof(__kernel_sa_family_t) +
++		sizeof(struct bus_addr);
++
++	*hashp = bus_compute_hash(sbusaddr->sbus_addr);
++	return len;
++}
++
++static void __bus_remove_address(struct bus_address *addr)
++{
++	hlist_del(&addr->table_node);
++}
++
++static void __bus_insert_address(struct hlist_head *list,
++				 struct bus_address *addr)
++{
++	hlist_add_head(&addr->table_node, list);
++}
++
++static inline void bus_remove_address(struct bus_address *addr)
++{
++	spin_lock(&bus_address_lock);
++	__bus_remove_address(addr);
++	spin_unlock(&bus_address_lock);
++}
++
++static inline void bus_insert_address(struct hlist_head *list,
++				      struct bus_address *addr)
++{
++	spin_lock(&bus_address_lock);
++	__bus_insert_address(list, addr);
++	spin_unlock(&bus_address_lock);
++}
++
++static void __bus_remove_socket(struct sock *sk)
++{
++	sk_del_node_init(sk);
++}
++
++static void __bus_insert_socket(struct hlist_head *list, struct sock *sk)
++{
++	WARN_ON(!sk_unhashed(sk));
++	sk_add_node(sk, list);
++}
++
++static inline void bus_remove_socket(struct sock *sk)
++{
++	spin_lock(&bus_table_lock);
++	__bus_remove_socket(sk);
++	spin_unlock(&bus_table_lock);
++}
++
++static inline void bus_insert_socket(struct hlist_head *list, struct sock *sk)
++{
++	spin_lock(&bus_table_lock);
++	__bus_insert_socket(list, sk);
++	spin_unlock(&bus_table_lock);
++}
++
++static inline bool __bus_has_prefix(struct sock *sk, u16 prefix)
++{
++	struct bus_sock *u = bus_sk(sk);
++	struct bus_address *addr;
++	struct hlist_node *node;
++	bool ret = false;
++
++	hlist_for_each_entry(addr, node, &u->addr_list, addr_node) {
++		if (bus_addr_prefix(addr->name) == prefix)
++			ret = true;
++	}
++
++	return ret;
++}
++
++static inline bool bus_has_prefix(struct sock *sk, u16 prefix)
++{
++	bool ret;
++
++	bus_state_lock(sk);
++	ret = __bus_has_prefix(sk, prefix);
++	bus_state_unlock(sk);
++
++	return ret;
++}
++
++static inline bool __bus_eavesdropper(struct sock *sk, u16 condition)
++{
++	struct bus_sock *u = bus_sk(sk);
++
++	return u->eavesdropper;
++}
++
++static inline bool bus_eavesdropper(struct sock *sk, u16 condition)
++{
++	bool ret;
++
++	bus_state_lock(sk);
++	ret = __bus_eavesdropper(sk, condition);
++	bus_state_unlock(sk);
++
++	return ret;
++}
++
++static inline bool bus_has_prefix_eavesdropper(struct sock *sk, u16 prefix)
++{
++	bool ret;
++
++	bus_state_lock(sk);
++	ret = __bus_has_prefix(sk, prefix) || __bus_eavesdropper(sk, 0);
++	bus_state_unlock(sk);
++
++	return ret;
++}
++
++static inline struct bus_address *__bus_get_address(struct sock *sk,
++						    struct bus_addr *sbus_addr)
++{
++	struct bus_sock *u = bus_sk(sk);
++	struct bus_address *addr = NULL;
++	struct hlist_node *node;
++
++	hlist_for_each_entry(addr, node, &u->addr_list, addr_node) {
++		if (addr->name->sbus_addr.s_addr == sbus_addr->s_addr)
++			return addr;
++	}
++
++	return NULL;
++}
++
++static inline struct bus_address *bus_get_address(struct sock *sk,
++						  struct bus_addr *sbus_addr)
++{
++	struct bus_address *addr;
++
++	bus_state_lock(sk);
++	addr = __bus_get_address(sk, sbus_addr);
++	bus_state_unlock(sk);
++
++	return addr;
++}
++
++static struct sock *__bus_find_socket_byname(struct net *net,
++					     struct sockaddr_bus *sbusname,
++					     int len, unsigned int hash)
++{
++	struct sock *s;
++	struct hlist_node *node;
++
++	sk_for_each(s, node, &bus_socket_table[hash]) {
++		struct bus_sock *u = bus_sk(s);
++
++		if (!net_eq(sock_net(s), net))
++			continue;
++
++		if (u->addr->len == len &&
++		    !memcmp(u->addr->name, sbusname, len))
++			return s;
++	}
++
++	return NULL;
++}
++
++static inline struct sock *bus_find_socket_byname(struct net *net,
++						  struct sockaddr_bus *sbusname,
++						  int len, unsigned int hash)
++{
++	struct sock *s;
++
++	spin_lock(&bus_table_lock);
++	s = __bus_find_socket_byname(net, sbusname, len, hash);
++	if (s)
++		sock_hold(s);
++	spin_unlock(&bus_table_lock);
++	return s;
++}
++
++static struct sock *__bus_find_socket_byaddress(struct net *net,
++						struct sockaddr_bus *sbusname,
++						int len, int protocol,
++						unsigned int hash)
++{
++	struct sock *s;
++	struct bus_address *addr;
++	struct hlist_node *node;
++	struct bus_sock *u;
++	int offset = (sbusname->sbus_path[0] == '\0');
++	int path_len = strnlen(sbusname->sbus_path + offset, BUS_PATH_MAX);
++
++	len = path_len + 1 + sizeof(__kernel_sa_family_t) +
++	      sizeof(struct bus_addr);
++
++	hlist_for_each_entry(addr, node, &bus_address_table[hash],
++			     table_node) {
++		s = addr->sock;
++		u = bus_sk(s);
++
++		if (s->sk_protocol != protocol)
++			continue;
++
++		if (!net_eq(sock_net(s), net))
++			continue;
++
++		if (addr->len == len &&
++		    addr->name->sbus_family == sbusname->sbus_family &&
++		    addr->name->sbus_addr.s_addr == sbusname->sbus_addr.s_addr
++		    && bus_same_bus(addr->name, sbusname))
++			goto found;
++	}
++	s = NULL;
++found:
++	return s;
++}
++
++static inline struct sock *bus_find_socket_byaddress(struct net *net,
++						     struct sockaddr_bus *name,
++						     int len, int protocol,
++						     unsigned int hash)
++{
++	struct sock *s;
++
++	spin_lock(&bus_address_lock);
++	s = __bus_find_socket_byaddress(net, name, len, protocol, hash);
++	if (s)
++		sock_hold(s);
++	spin_unlock(&bus_address_lock);
++	return s;
++}
++
++static inline int bus_writable(struct sock *sk)
++{
++	return (atomic_read(&sk->sk_wmem_alloc) << 2) <= sk->sk_sndbuf;
++}
++
++static void bus_write_space(struct sock *sk)
++{
++	struct bus_sock *u = bus_sk(sk);
++	struct bus_sock *p;
++	struct hlist_node *node;
++	struct socket_wq *wq;
++
++	if (bus_writable(sk)) {
++		rcu_read_lock();
++		wq = rcu_dereference(sk->sk_wq);
++		if (wq_has_sleeper(wq))
++			wake_up_interruptible_sync_poll(&wq->wait,
++				POLLOUT | POLLWRNORM | POLLWRBAND);
++		sk_wake_async(sk, SOCK_WAKE_SPACE, POLL_OUT);
++		rcu_read_unlock();
++
++		if (u && u->bus) {
++			spin_lock(&u->bus->lock);
++			hlist_for_each_entry(p, node, &u->bus->peers,
++					     bus_node) {
++				wake_up_interruptible_sync_poll(sk_sleep(&p->sk),
++								POLLOUT |
++								POLLWRNORM |
++								POLLWRBAND);
++				sk_wake_async(&p->sk, SOCK_WAKE_SPACE,
++					      POLL_OUT);
++			}
++			spin_unlock(&u->bus->lock);
++		}
++	}
++}
++
++static void bus_bus_release(struct kref *kref)
++{
++	struct bus *bus;
++
++	bus = container_of(kref, struct bus, kref);
++
++	kfree(bus);
++}
++
++static void bus_sock_destructor(struct sock *sk)
++{
++	struct bus_sock *u = bus_sk(sk);
++
++	skb_queue_purge(&sk->sk_receive_queue);
++
++	WARN_ON(atomic_read(&sk->sk_wmem_alloc));
++	WARN_ON(!sk_unhashed(sk));
++	WARN_ON(sk->sk_socket);
++	if (!sock_flag(sk, SOCK_DEAD)) {
++		pr_info("Attempt to release alive bus socket: %p\n", sk);
++		return;
++	}
++
++	if (u->bus) {
++		kref_put(&u->bus->kref, bus_bus_release);
++		u->bus = NULL;
++	}
++
++	atomic_long_dec(&bus_nr_socks);
++	local_bh_disable();
++	sock_prot_inuse_add(sock_net(sk), sk->sk_prot, -1);
++	local_bh_enable();
++#ifdef BUS_REFCNT_DEBUG
++	pr_debug("BUS %p is destroyed, %ld are still alive.\n", sk,
++		 atomic_long_read(&bus_nr_socks));
++#endif
++}
++
++static int bus_release_sock(struct sock *sk, int embrion)
++{
++	struct bus_sock *u = bus_sk(sk);
++	struct path path;
++	struct sock *skpair;
++	struct sk_buff *skb;
++	int state;
++	struct bus_address *addr;
++	struct hlist_node *node, *tmp;
++
++	bus_remove_socket(sk);
++
++	if (u->bus && u->authenticated &&
++	    !u->bus_master && !u->bus_master_side) {
++		spin_lock(&u->bus->lock);
++		hlist_del(&u->bus_node);
++		if (u->eavesdropper)
++			atomic64_dec(&u->bus->eavesdropper_cnt);
++		spin_unlock(&u->bus->lock);
++	}
++
++	/* Clear state */
++	bus_state_lock(sk);
++	sock_orphan(sk);
++	sk->sk_shutdown = SHUTDOWN_MASK;
++	path	     = u->path;
++	u->path.dentry = NULL;
++	u->path.mnt = NULL;
++	state = sk->sk_state;
++	sk->sk_state = BUS_CLOSE;
++
++	if (u->bus_master)
++			u->bus->master = NULL;
++
++	if (u->bus_master_side) {
++		bus_release_addr(u->addr);
++		u->addr = NULL;
++	} else {
++		u->addr = NULL;
++
++		spin_lock(&bus_address_lock);
++		hlist_for_each_entry_safe(addr, node, tmp, &u->addr_list,
++					  addr_node) {
++			hlist_del(&addr->addr_node);
++			__bus_remove_address(addr);
++			bus_release_addr(addr);
++		}
++		spin_unlock(&bus_address_lock);
++	}
++
++	bus_state_unlock(sk);
++
++	wake_up_interruptible_all(&u->peer_wait);
++
++	skpair = bus_peer(sk);
++
++	if (skpair != NULL) {
++		bus_state_lock(skpair);
++		/* No more writes */
++		skpair->sk_shutdown = SHUTDOWN_MASK;
++		if (!skb_queue_empty(&sk->sk_receive_queue) || embrion)
++			skpair->sk_err = ECONNRESET;
++		bus_state_unlock(skpair);
++		skpair->sk_state_change(skpair);
++		sk_wake_async(skpair, SOCK_WAKE_WAITD, POLL_HUP);
++		sock_put(skpair); /* It may now die */
++		bus_peer(sk) = NULL;
++	}
++
++	/* Try to flush out this socket. Throw out buffers at least */
++
++	while ((skb = skb_dequeue(&sk->sk_receive_queue)) != NULL) {
++		if (state == BUS_LISTEN)
++			bus_release_sock(skb->sk, 1);
++		/* passed fds are erased in the kfree_skb hook	      */
++		kfree_skb(skb);
++	}
++
++	if (path.dentry)
++		path_put(&path);
++
++	sock_put(sk);
++
++	/* ---- Socket is dead now and most probably destroyed ---- */
++
++	if (bus_tot_inflight)
++		bus_gc();		/* Garbage collect fds */
++
++	return 0;
++}
++
++static void init_peercred(struct sock *sk)
++{
++	put_pid(sk->sk_peer_pid);
++	if (sk->sk_peer_cred)
++		put_cred(sk->sk_peer_cred);
++	sk->sk_peer_pid  = get_pid(task_tgid(current));
++	sk->sk_peer_cred = get_current_cred();
++}
++
++static void copy_peercred(struct sock *sk, struct sock *peersk)
++{
++	put_pid(sk->sk_peer_pid);
++	if (sk->sk_peer_cred)
++		put_cred(sk->sk_peer_cred);
++	sk->sk_peer_pid  = get_pid(peersk->sk_peer_pid);
++	sk->sk_peer_cred = get_cred(peersk->sk_peer_cred);
++}
++
++static int bus_listen(struct socket *sock, int backlog)
++{
++	int err;
++	struct sock *sk = sock->sk;
++	struct bus_sock *u = bus_sk(sk);
++	struct pid *old_pid = NULL;
++	const struct cred *old_cred = NULL;
++
++	err = -EINVAL;
++	if (!u->addr || !u->bus_master)
++		goto out;	/* Only listens on an bound an master socket */
++	bus_state_lock(sk);
++	if (sk->sk_state != BUS_CLOSE && sk->sk_state != BUS_LISTEN)
++		goto out_unlock;
++	if (backlog > sk->sk_max_ack_backlog)
++		wake_up_interruptible_all(&u->peer_wait);
++	sk->sk_max_ack_backlog	= backlog;
++	sk->sk_state		= BUS_LISTEN;
++	/* set credentials so connect can copy them */
++	init_peercred(sk);
++	err = 0;
++
++out_unlock:
++	bus_state_unlock(sk);
++	put_pid(old_pid);
++	if (old_cred)
++		put_cred(old_cred);
++out:
++	return err;
++}
++
++static int bus_release(struct socket *);
++static int bus_bind(struct socket *, struct sockaddr *, int);
++static int bus_connect(struct socket *, struct sockaddr *,
++			       int addr_len, int flags);
++static int bus_accept(struct socket *, struct socket *, int);
++static int bus_getname(struct socket *, struct sockaddr *, int *, int);
++static unsigned int bus_poll(struct file *, struct socket *,
++				    poll_table *);
++static int bus_ioctl(struct socket *, unsigned int, unsigned long);
++static int bus_shutdown(struct socket *, int);
++static int bus_setsockopt(struct socket *, int, int, char __user *,
++			   unsigned int);
++static int bus_sendmsg(struct kiocb *, struct socket *,
++		       struct msghdr *, size_t);
++static int bus_recvmsg(struct kiocb *, struct socket *,
++		       struct msghdr *, size_t, int);
++
++static void bus_set_peek_off(struct sock *sk, int val)
++{
++	struct bus_sock *u = bus_sk(sk);
++
++	mutex_lock(&u->readlock);
++	sk->sk_peek_off = val;
++	mutex_unlock(&u->readlock);
++}
++
++static const struct proto_ops bus_seqpacket_ops = {
++	.family =	PF_BUS,
++	.owner =	THIS_MODULE,
++	.release =	bus_release,
++	.bind =		bus_bind,
++	.connect =	bus_connect,
++	.socketpair =	sock_no_socketpair,
++	.accept =	bus_accept,
++	.getname =	bus_getname,
++	.poll =		bus_poll,
++	.ioctl =	bus_ioctl,
++	.listen =	bus_listen,
++	.shutdown =	bus_shutdown,
++	.setsockopt =	bus_setsockopt,
++	.getsockopt =	sock_no_getsockopt,
++	.sendmsg =	bus_sendmsg,
++	.recvmsg =	bus_recvmsg,
++	.mmap =		sock_no_mmap,
++	.sendpage =	sock_no_sendpage,
++	.set_peek_off =	bus_set_peek_off,
++};
++
++static struct proto bus_proto = {
++	.name			= "BUS",
++	.owner			= THIS_MODULE,
++	.obj_size		= sizeof(struct bus_sock),
++};
++
++/*
++ * AF_BUS sockets do not interact with hardware, hence they
++ * dont trigger interrupts - so it's safe for them to have
++ * bh-unsafe locking for their sk_receive_queue.lock. Split off
++ * this special lock-class by reinitializing the spinlock key:
++ */
++static struct lock_class_key af_bus_sk_receive_queue_lock_key;
++
++static struct sock *bus_create1(struct net *net, struct socket *sock)
++{
++	struct sock *sk = NULL;
++	struct bus_sock *u;
++
++	atomic_long_inc(&bus_nr_socks);
++	if (atomic_long_read(&bus_nr_socks) > 2 * get_max_files())
++		goto out;
++
++	sk = sk_alloc(net, PF_BUS, GFP_KERNEL, &bus_proto);
++	if (!sk)
++		goto out;
++
++	sock_init_data(sock, sk);
++	lockdep_set_class(&sk->sk_receive_queue.lock,
++				&af_bus_sk_receive_queue_lock_key);
++
++	sk->sk_write_space	= bus_write_space;
++	sk->sk_max_ack_backlog	= BUS_MAX_QLEN;
++	sk->sk_destruct		= bus_sock_destructor;
++	u	  = bus_sk(sk);
++	u->path.dentry = NULL;
++	u->path.mnt = NULL;
++	u->bus = NULL;
++	u->bus_master = false;
++	u->authenticated = false;
++	u->eavesdropper = false;
++	spin_lock_init(&u->lock);
++	atomic_long_set(&u->inflight, 0);
++	INIT_LIST_HEAD(&u->link);
++	INIT_HLIST_HEAD(&u->addr_list);
++	INIT_HLIST_NODE(&u->bus_node);
++	mutex_init(&u->readlock); /* single task reading lock */
++	init_waitqueue_head(&u->peer_wait);
++	bus_insert_socket(bus_sockets_unbound, sk);
++out:
++	if (sk == NULL)
++		atomic_long_dec(&bus_nr_socks);
++	else {
++		local_bh_disable();
++		sock_prot_inuse_add(sock_net(sk), sk->sk_prot, 1);
++		local_bh_enable();
++	}
++	return sk;
++}
++
++static int bus_create(struct net *net, struct socket *sock, int protocol,
++		       int kern)
++{
++	struct sock *sk;
++
++	if (protocol < BUS_PROTO_NONE || protocol > BUS_PROTO_DBUS)
++		return -EPROTONOSUPPORT;
++
++	if (protocol != BUS_PROTO_NONE)
++		request_module("net-pf-%d-proto-%d", PF_BUS, protocol);
++
++	sock->state = SS_UNCONNECTED;
++
++	if (sock->type == SOCK_SEQPACKET)
++		sock->ops = &bus_seqpacket_ops;
++	else
++		return -ESOCKTNOSUPPORT;
++
++	sk = bus_create1(net, sock);
++	if (!sk)
++		return -ENOMEM;
++
++	sk->sk_protocol = protocol;
++
++	return 0;
++}
++
++static int bus_release(struct socket *sock)
++{
++	struct sock *sk = sock->sk;
++
++	if (!sk)
++		return 0;
++
++	sock->sk = NULL;
++
++	return bus_release_sock(sk, 0);
++}
++
++static struct sock *bus_find_other(struct net *net,
++				   struct sockaddr_bus *sbusname, int len,
++				   int protocol, unsigned int hash, int *error)
++{
++	struct sock *u;
++	struct path path;
++	int err = 0;
++
++	if (sbusname->sbus_path[0]) {
++		struct inode *inode;
++		err = kern_path(sbusname->sbus_path, LOOKUP_FOLLOW, &path);
++		if (err)
++			goto fail;
++		inode = path.dentry->d_inode;
++		err = inode_permission(inode, MAY_WRITE);
++		if (err)
++			goto put_fail;
++
++		err = -ECONNREFUSED;
++		if (!S_ISSOCK(inode->i_mode))
++			goto put_fail;
++		u = bus_find_socket_byaddress(net, sbusname, len, protocol,
++					      hash);
++		if (!u)
++			goto put_fail;
++
++		touch_atime(&path);
++		path_put(&path);
++
++	} else {
++		err = -ECONNREFUSED;
++		u = bus_find_socket_byaddress(net, sbusname, len, protocol, hash);
++		if (u) {
++			struct dentry *dentry;
++			dentry = bus_sk(u)->path.dentry;
++			if (dentry)
++				touch_atime(&bus_sk(u)->path);
++		} else
++			goto fail;
++	}
++
++	return u;
++
++put_fail:
++	path_put(&path);
++fail:
++	*error = err;
++	return NULL;
++}
++
++
++static int bus_bind(struct socket *sock, struct sockaddr *uaddr, int addr_len)
++{
++	struct sock *sk = sock->sk;
++	struct net *net = sock_net(sk);
++	struct bus_sock *u = bus_sk(sk);
++	struct sockaddr_bus *sbusaddr = (struct sockaddr_bus *)uaddr;
++	char *sbus_path = sbusaddr->sbus_path;
++	struct dentry *dentry = NULL;
++	struct path path;
++	int err;
++	unsigned int hash;
++	struct bus_address *addr;
++	struct hlist_head *list;
++	struct bus *bus;
++
++	err = -EINVAL;
++	if (sbusaddr->sbus_family != AF_BUS)
++		goto out;
++
++	/* If the address is available, the socket is the bus master */
++	sbusaddr->sbus_addr.s_addr = BUS_MASTER_ADDR;
++
++	err = bus_mkname(sbusaddr, addr_len, &hash);
++	if (err < 0)
++		goto out;
++	addr_len = err;
++
++	mutex_lock(&u->readlock);
++
++	err = -EINVAL;
++	if (u->addr)
++		goto out_up;
++
++	err = -ENOMEM;
++	addr = kzalloc(sizeof(*addr) + sizeof(struct sockaddr_bus), GFP_KERNEL);
++	if (!addr)
++		goto out_up;
++
++	memcpy(addr->name, sbusaddr, sizeof(struct sockaddr_bus));
++	addr->len = addr_len;
++	addr->hash = hash;
++	atomic_set(&addr->refcnt, 1);
++	addr->sock = sk;
++	INIT_HLIST_NODE(&addr->addr_node);
++	INIT_HLIST_NODE(&addr->table_node);
++
++	if (sbus_path[0]) {
++		umode_t mode;
++		err = 0;
++		/*
++		 * Get the parent directory, calculate the hash for last
++		 * component.
++		 */
++		dentry = kern_path_create(AT_FDCWD, sbus_path, &path, 0);
++		err = PTR_ERR(dentry);
++		if (IS_ERR(dentry))
++			goto out_mknod_parent;
++
++		/*
++		 * All right, let's create it.
++		 */
++		mode = S_IFSOCK |
++		       (SOCK_INODE(sock)->i_mode & ~current_umask());
++		err = mnt_want_write(path.mnt);
++		if (err)
++			goto out_mknod_dput;
++		err = security_path_mknod(&path, dentry, mode, 0);
++		if (err)
++			goto out_mknod_drop_write;
++		err = vfs_mknod(path.dentry->d_inode, dentry, mode, 0);
++out_mknod_drop_write:
++		mnt_drop_write(path.mnt);
++		if (err)
++			goto out_mknod_dput;
++		mutex_unlock(&path.dentry->d_inode->i_mutex);
++		dput(path.dentry);
++		path.dentry = dentry;
++	}
++
++	err = -ENOMEM;
++	bus = kzalloc(sizeof(*bus), GFP_KERNEL);
++	if (!bus)
++		goto out_unlock;
++
++	spin_lock(&bus_table_lock);
++
++	if (!sbus_path[0]) {
++		err = -EADDRINUSE;
++		if (__bus_find_socket_byname(net, sbusaddr, addr_len, hash)) {
++			bus_release_addr(addr);
++			kfree(bus);
++			goto out_unlock;
++		}
++
++		list = &bus_socket_table[addr->hash];
++	} else {
++		list = &bus_socket_table[dentry->d_inode->i_ino &
++					 (BUS_HASH_SIZE-1)];
++		u->path = path;
++	}
++
++	kref_init(&bus->kref);
++	bus->master = sk;
++	INIT_HLIST_HEAD(&bus->peers);
++	spin_lock_init(&bus->lock);
++	spin_lock_init(&bus->send_lock);
++	atomic64_set(&bus->addr_cnt, 0);
++	atomic64_set(&bus->eavesdropper_cnt, 0);
++
++	hlist_add_head(&addr->addr_node, &u->addr_list);
++
++	err = 0;
++	__bus_remove_socket(sk);
++	u->addr = addr;
++	u->bus_master = true;
++	u->bus = bus;
++	__bus_insert_socket(list, sk);
++	bus_insert_address(&bus_address_table[addr->hash], addr);
++
++out_unlock:
++	spin_unlock(&bus_table_lock);
++out_up:
++	mutex_unlock(&u->readlock);
++out:
++	return err;
++
++out_mknod_dput:
++	dput(dentry);
++	mutex_unlock(&path.dentry->d_inode->i_mutex);
++	path_put(&path);
++out_mknod_parent:
++	if (err == -EEXIST)
++		err = -EADDRINUSE;
++	bus_release_addr(addr);
++	goto out_up;
++}
++
++static long bus_wait_for_peer(struct sock *other, long timeo)
++{
++	struct bus_sock *u = bus_sk(other);
++	int sched;
++	DEFINE_WAIT(wait);
++
++	prepare_to_wait_exclusive(&u->peer_wait, &wait, TASK_INTERRUPTIBLE);
++
++	sched = !sock_flag(other, SOCK_DEAD) &&
++		!(other->sk_shutdown & RCV_SHUTDOWN) &&
++		bus_recvq_full(other);
++
++	bus_state_unlock(other);
++
++	if (sched)
++		timeo = schedule_timeout(timeo);
++
++	finish_wait(&u->peer_wait, &wait);
++	return timeo;
++}
++
++static int bus_connect(struct socket *sock, struct sockaddr *uaddr,
++			       int addr_len, int flags)
++{
++	struct sockaddr_bus *sbusaddr = (struct sockaddr_bus *)uaddr;
++	struct sock *sk = sock->sk;
++	struct net *net = sock_net(sk);
++	struct bus_sock *u = bus_sk(sk), *newu, *otheru;
++	struct sock *newsk = NULL;
++	struct sock *other = NULL;
++	struct sk_buff *skb = NULL;
++	struct bus_address *addr = NULL;
++	unsigned int hash;
++	int st;
++	int err;
++	long timeo;
++
++	/* Only connections to the bus master is allowed */
++	sbusaddr->sbus_addr.s_addr = BUS_MASTER_ADDR;
++
++	err = bus_mkname(sbusaddr, addr_len, &hash);
++	if (err < 0)
++		goto out;
++	addr_len = err;
++
++	err = -ENOMEM;
++	addr = kzalloc(sizeof(*addr) + sizeof(struct sockaddr_bus), GFP_KERNEL);
++	if (!addr)
++		goto out;
++
++	atomic_set(&addr->refcnt, 1);
++	INIT_HLIST_NODE(&addr->addr_node);
++	INIT_HLIST_NODE(&addr->table_node);
++
++	timeo = sock_sndtimeo(sk, flags & O_NONBLOCK);
++
++	/* First of all allocate resources.
++	   If we will make it after state is locked,
++	   we will have to recheck all again in any case.
++	 */
++
++	err = -ENOMEM;
++
++	/* create new sock for complete connection */
++	newsk = bus_create1(sock_net(sk), NULL);
++	if (newsk == NULL)
++		goto out;
++
++	/* Allocate skb for sending to listening sock */
++	skb = sock_wmalloc(newsk, 1, 0, GFP_KERNEL);
++	if (skb == NULL)
++		goto out;
++
++restart:
++	/*  Find listening sock. */
++	other = bus_find_other(net, sbusaddr, addr_len, sk->sk_protocol, hash,
++			       &err);
++	if (!other)
++		goto out;
++
++	/* Latch state of peer */
++	bus_state_lock(other);
++
++	/* Apparently VFS overslept socket death. Retry. */
++	if (sock_flag(other, SOCK_DEAD)) {
++		bus_state_unlock(other);
++		sock_put(other);
++		goto restart;
++	}
++
++	err = -ECONNREFUSED;
++	if (other->sk_state != BUS_LISTEN)
++		goto out_unlock;
++	if (other->sk_shutdown & RCV_SHUTDOWN)
++		goto out_unlock;
++
++	if (bus_recvq_full(other)) {
++		err = -EAGAIN;
++		if (!timeo)
++			goto out_unlock;
++
++		timeo = bus_wait_for_peer(other, timeo);
++
++		err = sock_intr_errno(timeo);
++		if (signal_pending(current))
++			goto out;
++		sock_put(other);
++		goto restart;
++	}
++
++	/* Latch our state.
++
++	   It is tricky place. We need to grab our state lock and cannot
++	   drop lock on peer. It is dangerous because deadlock is
++	   possible. Connect to self case and simultaneous
++	   attempt to connect are eliminated by checking socket
++	   state. other is BUS_LISTEN, if sk is BUS_LISTEN we
++	   check this before attempt to grab lock.
++
++	   Well, and we have to recheck the state after socket locked.
++	 */
++	st = sk->sk_state;
++
++	switch (st) {
++	case BUS_CLOSE:
++		/* This is ok... continue with connect */
++		break;
++	case BUS_ESTABLISHED:
++		/* Socket is already connected */
++		err = -EISCONN;
++		goto out_unlock;
++	default:
++		err = -EINVAL;
++		goto out_unlock;
++	}
++
++	bus_state_lock_nested(sk);
++
++	if (sk->sk_state != st) {
++		bus_state_unlock(sk);
++		bus_state_unlock(other);
++		sock_put(other);
++		goto restart;
++	}
++
++	err = security_bus_connect(sk, other, newsk);
++	if (err) {
++		bus_state_unlock(sk);
++		goto out_unlock;
++	}
++
++	/* The way is open! Fastly set all the necessary fields... */
++
++	sock_hold(sk);
++	bus_peer(newsk)	= sk;
++	newsk->sk_state		= BUS_ESTABLISHED;
++	newsk->sk_type		= sk->sk_type;
++	newsk->sk_protocol	= sk->sk_protocol;
++	init_peercred(newsk);
++	newu = bus_sk(newsk);
++	RCU_INIT_POINTER(newsk->sk_wq, &newu->peer_wq);
++	otheru = bus_sk(other);
++
++	/* copy address information from listening to new sock*/
++	if (otheru->addr && otheru->bus_master) {
++		atomic_inc(&otheru->addr->refcnt);
++		newu->addr = otheru->addr;
++		memcpy(addr->name, otheru->addr->name,
++		       sizeof(struct sockaddr_bus));
++		addr->len = otheru->addr->len;
++		addr->name->sbus_addr.s_addr =
++			(atomic64_inc_return(&otheru->bus->addr_cnt) &
++			 BUS_CLIENT_MASK);
++		addr->hash = bus_compute_hash(addr->name->sbus_addr);
++		addr->sock = sk;
++		u->addr = addr;
++		kref_get(&otheru->bus->kref);
++		u->bus = otheru->bus;
++		u->bus_master_side = false;
++		kref_get(&otheru->bus->kref);
++		newu->bus = otheru->bus;
++		newu->bus_master_side = true;
++		hlist_add_head(&addr->addr_node, &u->addr_list);
++
++		bus_insert_address(&bus_address_table[addr->hash], addr);
++	}
++	if (otheru->path.dentry) {
++		path_get(&otheru->path);
++		newu->path = otheru->path;
++	}
++
++	/* Set credentials */
++	copy_peercred(sk, other);
++	sk->sk_sndbuf = other->sk_sndbuf;
++	sk->sk_max_ack_backlog	= other->sk_max_ack_backlog;
++	newsk->sk_sndbuf = other->sk_sndbuf;
++
++	sock->state	= SS_CONNECTED;
++	sk->sk_state	= BUS_ESTABLISHED;
++	sock_hold(newsk);
++
++	smp_mb__after_atomic_inc();	/* sock_hold() does an atomic_inc() */
++	bus_peer(sk)	= newsk;
++
++	bus_state_unlock(sk);
++
++	/* take ten and and send info to listening sock */
++	spin_lock(&other->sk_receive_queue.lock);
++	__skb_queue_tail(&other->sk_receive_queue, skb);
++	spin_unlock(&other->sk_receive_queue.lock);
++	bus_state_unlock(other);
++	other->sk_data_ready(other, 0);
++	sock_put(other);
++	return 0;
++
++out_unlock:
++	if (other)
++		bus_state_unlock(other);
++
++out:
++	kfree_skb(skb);
++	if (addr)
++		bus_release_addr(addr);
++	if (newsk)
++		bus_release_sock(newsk, 0);
++	if (other)
++		sock_put(other);
++	return err;
++}
++
++static int bus_accept(struct socket *sock, struct socket *newsock, int flags)
++{
++	struct sock *sk = sock->sk;
++	struct sock *tsk;
++	struct sk_buff *skb;
++	int err;
++
++	err = -EINVAL;
++	if (sk->sk_state != BUS_LISTEN)
++		goto out;
++
++	/* If socket state is BUS_LISTEN it cannot change (for now...),
++	 * so that no locks are necessary.
++	 */
++
++	skb = skb_recv_datagram(sk, 0, flags&O_NONBLOCK, &err);
++	if (!skb) {
++		/* This means receive shutdown. */
++		if (err == 0)
++			err = -EINVAL;
++		goto out;
++	}
++
++	tsk = skb->sk;
++	skb_free_datagram(sk, skb);
++	wake_up_interruptible(&bus_sk(sk)->peer_wait);
++
++	/* attach accepted sock to socket */
++	bus_state_lock(tsk);
++	newsock->state = SS_CONNECTED;
++	sock_graft(tsk, newsock);
++	bus_state_unlock(tsk);
++	return 0;
++
++out:
++	return err;
++}
++
++
++static int bus_getname(struct socket *sock, struct sockaddr *uaddr,
++		       int *uaddr_len, int peer)
++{
++	struct sock *sk = sock->sk;
++	struct bus_sock *u;
++	DECLARE_SOCKADDR(struct sockaddr_bus *, sbusaddr, uaddr);
++	int err = 0;
++
++	if (peer) {
++		sk = bus_peer_get(sk);
++
++		err = -ENOTCONN;
++		if (!sk)
++			goto out;
++		err = 0;
++	} else {
++		sock_hold(sk);
++	}
++
++	u = bus_sk(sk);
++
++	bus_state_lock(sk);
++	if (!u->addr) {
++		sbusaddr->sbus_family = AF_BUS;
++		sbusaddr->sbus_path[0] = 0;
++		*uaddr_len = sizeof(short);
++	} else {
++		struct bus_address *addr = u->addr;
++
++		*uaddr_len = sizeof(struct sockaddr_bus);
++		memcpy(sbusaddr, addr->name, *uaddr_len);
++	}
++	bus_state_unlock(sk);
++	sock_put(sk);
++out:
++	return err;
++}
++
++static void bus_detach_fds(struct scm_cookie *scm, struct sk_buff *skb)
++{
++	int i;
++
++	scm->fp = BUSCB(skb).fp;
++	BUSCB(skb).fp = NULL;
++
++	for (i = scm->fp->count-1; i >= 0; i--)
++		bus_notinflight(scm->fp->fp[i]);
++}
++
++static void bus_destruct_scm(struct sk_buff *skb)
++{
++	struct scm_cookie scm;
++	memset(&scm, 0, sizeof(scm));
++	scm.pid  = BUSCB(skb).pid;
++	scm.cred = BUSCB(skb).cred;
++	if (BUSCB(skb).fp)
++		bus_detach_fds(&scm, skb);
++
++	scm_destroy(&scm);
++	if (skb->sk)
++		sock_wfree(skb);
++}
++
++#define MAX_RECURSION_LEVEL 4
++
++static int bus_attach_fds(struct scm_cookie *scm, struct sk_buff *skb)
++{
++	int i;
++	unsigned char max_level = 0;
++	int bus_sock_count = 0;
++
++	for (i = scm->fp->count - 1; i >= 0; i--) {
++		struct sock *sk = bus_get_socket(scm->fp->fp[i]);
++
++		if (sk) {
++			bus_sock_count++;
++			max_level = max(max_level,
++					bus_sk(sk)->recursion_level);
++		}
++	}
++	if (unlikely(max_level > MAX_RECURSION_LEVEL))
++		return -ETOOMANYREFS;
++
++	/*
++	 * Need to duplicate file references for the sake of garbage
++	 * collection.  Otherwise a socket in the fps might become a
++	 * candidate for GC while the skb is not yet queued.
++	 */
++	BUSCB(skb).fp = scm_fp_dup(scm->fp);
++	if (!BUSCB(skb).fp)
++		return -ENOMEM;
++
++	if (bus_sock_count) {
++		for (i = scm->fp->count - 1; i >= 0; i--)
++			bus_inflight(scm->fp->fp[i]);
++	}
++	return max_level;
++}
++
++static int bus_scm_to_skb(struct scm_cookie *scm, struct sk_buff *skb,
++			  bool send_fds)
++{
++	int err = 0;
++
++	BUSCB(skb).pid  = get_pid(scm->pid);
++	if (scm->cred)
++		BUSCB(skb).cred = get_cred(scm->cred);
++	BUSCB(skb).fp = NULL;
++	if (scm->fp && send_fds)
++		err = bus_attach_fds(scm, skb);
++
++	skb->destructor = bus_destruct_scm;
++	return err;
++}
++
++/*
++ * Some apps rely on write() giving SCM_CREDENTIALS
++ * We include credentials if source or destination socket
++ * asserted SOCK_PASSCRED.
++ */
++static void maybe_add_creds(struct sk_buff *skb, const struct socket *sock,
++			    const struct sock *other)
++{
++	if (BUSCB(skb).cred)
++		return;
++	if (test_bit(SOCK_PASSCRED, &sock->flags) ||
++	    !other->sk_socket ||
++	    test_bit(SOCK_PASSCRED, &other->sk_socket->flags)) {
++		BUSCB(skb).pid  = get_pid(task_tgid(current));
++		BUSCB(skb).cred = get_current_cred();
++	}
++}
++
++/*
++ *	Send AF_BUS data.
++ */
++
++static void bus_deliver_skb(struct sk_buff *skb)
++{
++	struct bus_send_context *sendctx = BUSCB(skb).sendctx;
++	struct socket *sock = sendctx->sender_socket;
++
++	if (sock_flag(sendctx->other, SOCK_RCVTSTAMP))
++		__net_timestamp(skb);
++	maybe_add_creds(skb, sock, sendctx->other);
++	skb_queue_tail(&sendctx->other->sk_receive_queue, skb);
++	if (sendctx->max_level > bus_sk(sendctx->other)->recursion_level)
++		bus_sk(sendctx->other)->recursion_level = sendctx->max_level;
++}
++
++/**
++ * bus_sendmsg_finish - delivery an skb to a destination
++ * @skb: sk_buff to deliver
++ *
++ * Delivers a packet to a destination. The skb control buffer has
++ * all the information about the destination contained on sending
++ * context. If the sending is unicast, then the skb is delivered
++ * and the receiver notified but if the sending is multicast, the
++ * skb is just marked as delivered and the actual delivery is made
++ * outside the function with the bus->send_lock held to ensure that
++ * the multicast sending is atomic.
++ */
++static int bus_sendmsg_finish(struct sk_buff *skb)
++{
++	int err;
++	struct bus_send_context *sendctx;
++	struct socket *sock;
++	struct sock *sk;
++	struct net *net;
++	size_t len = skb->len;
++
++	sendctx = BUSCB(skb).sendctx;
++	sock = sendctx->sender_socket;
++	sk = sock->sk;
++	net = sock_net(sk);
++
++restart:
++	if (!sendctx->other) {
++		err = -ECONNRESET;
++		if (sendctx->recipient == NULL)
++			goto out_free;
++
++		sendctx->other = bus_find_other(net, sendctx->recipient,
++						sendctx->namelen,
++						sk->sk_protocol,
++						sendctx->hash, &err);
++
++		if (sendctx->other == NULL ||
++		    !bus_sk(sendctx->other)->authenticated) {
++
++			if (sendctx->other)
++				sock_put(sendctx->other);
++
++			if (!bus_sk(sk)->bus_master_side) {
++				err = -ENOTCONN;
++				sendctx->other = bus_peer_get(sk);
++				if (!sendctx->other)
++					goto out_free;
++			} else {
++				sendctx->other = sk;
++				sock_hold(sendctx->other);
++			}
++		}
++	}
++
++	if (sk_filter(sendctx->other, skb) < 0) {
++		/* Toss the packet but do not return any error to the sender */
++		err = len;
++		goto out_free;
++	}
++
++	bus_state_lock(sendctx->other);
++
++	if (sock_flag(sendctx->other, SOCK_DEAD)) {
++		/*
++		 *	Check with 1003.1g - what should
++		 *	datagram error
++		 */
++		bus_state_unlock(sendctx->other);
++		sock_put(sendctx->other);
++
++		err = 0;
++		bus_state_lock(sk);
++		if (bus_peer(sk) == sendctx->other) {
++			bus_peer(sk) = NULL;
++			bus_state_unlock(sk);
++			sock_put(sendctx->other);
++			err = -ECONNREFUSED;
++		} else {
++			bus_state_unlock(sk);
++		}
++
++		sendctx->other = NULL;
++		if (err)
++			goto out_free;
++		goto restart;
++	}
++
++	err = -EPIPE;
++	if (sendctx->other->sk_shutdown & RCV_SHUTDOWN)
++		goto out_unlock;
++
++	if (bus_recvq_full(sendctx->other)) {
++		if (!sendctx->timeo) {
++			err = -EAGAIN;
++			goto out_unlock;
++		}
++
++		sendctx->timeo = bus_wait_for_peer(sendctx->other,
++						   sendctx->timeo);
++
++		err = sock_intr_errno(sendctx->timeo);
++		if (signal_pending(current))
++			goto out_free;
++
++		goto restart;
++	}
++
++	if (!sendctx->multicast && !sendctx->eavesdropper) {
++		bus_deliver_skb(skb);
++		bus_state_unlock(sendctx->other);
++		sendctx->other->sk_data_ready(sendctx->other, 0);
++		sock_put(sendctx->other);
++	} else {
++		sendctx->deliver = 1;
++		bus_state_unlock(sendctx->other);
++	}
++
++	return len;
++
++out_unlock:
++	bus_state_unlock(sendctx->other);
++out_free:
++	kfree_skb(skb);
++	if (sendctx->other)
++		sock_put(sendctx->other);
++
++	return err;
++}
++
++/**
++ * bus_sendmsg_mcast - do a multicast sending
++ * @skb: sk_buff to deliver
++ *
++ * Send a packet to a multicast destination.
++ * The function is also called for unicast sending when eavesdropping
++ * is enabled. Since the unicast destination and the eavesdroppers
++ * have to receive the packet atomically.
++ */
++static int bus_sendmsg_mcast(struct sk_buff *skb)
++{
++	struct bus_send_context *sendctx;
++	struct bus_send_context *tmpctx;
++	struct socket *sock;
++	struct sock *sk;
++	struct net *net;
++	struct bus_sock *u, *s;
++	struct hlist_node *node;
++	u16 prefix = 0;
++	struct sk_buff **skb_set = NULL;
++	struct bus_send_context **sendctx_set = NULL;
++	int  rcp_cnt, send_cnt;
++	int i;
++	int err;
++	int len = skb->len;
++	bool (*is_receiver) (struct sock *, u16);
++	bool main_rcp_found = false;
++
++	sendctx = BUSCB(skb).sendctx;
++	sendctx->deliver = 0;
++	sock = sendctx->sender_socket;
++	sk = sock->sk;
++	u = bus_sk(sk);
++	net = sock_net(sk);
++
++	if (sendctx->multicast) {
++		prefix = bus_addr_prefix(sendctx->recipient);
++		if (sendctx->eavesdropper)
++			is_receiver = &bus_has_prefix_eavesdropper;
++		else
++			is_receiver = &bus_has_prefix;
++	} else {
++		is_receiver = &bus_eavesdropper;
++
++		/*
++		 * If the destination is not the peer accepted socket
++		 * we have to get the correct destination.
++		 */
++		if (!sendctx->to_master && sendctx->recipient) {
++			sendctx->other = bus_find_other(net, sendctx->recipient,
++							sendctx->namelen,
++							sk->sk_protocol,
++							sendctx->hash, &err);
++
++
++			if (sendctx->other == NULL ||
++			    !bus_sk(sendctx->other)->authenticated) {
++
++				if (sendctx->other)
++					sock_put(sendctx->other);
++
++				if (sendctx->other == NULL) {
++					if (!bus_sk(sk)->bus_master_side) {
++						err = -ENOTCONN;
++						sendctx->other = bus_peer_get(sk);
++						if (!sendctx->other)
++							goto out;
++					} else {
++						sendctx->other = sk;
++						sock_hold(sendctx->other);
++					}
++				}
++				sendctx->to_master = 1;
++			}
++		}
++	}
++
++
++try_again:
++	rcp_cnt = 0;
++	main_rcp_found = false;
++
++	spin_lock(&u->bus->lock);
++
++	hlist_for_each_entry(s, node, &u->bus->peers, bus_node) {
++
++		if (!net_eq(sock_net(&s->sk), net))
++			continue;
++
++		if (is_receiver(&s->sk, prefix) ||
++		    (!sendctx->multicast &&
++		     !sendctx->to_master &&
++		     &s->sk == sendctx->other))
++			rcp_cnt++;
++	}
++
++	spin_unlock(&u->bus->lock);
++
++	/*
++	 * Memory can't be allocated while holding a spinlock so
++	 * we have to release the lock, do the allocation for the
++	 * array to store each destination peer sk_buff and grab
++	 * the bus peer lock again. Peers could have joined the
++	 * bus while we relesed the lock so we allocate 5 more
++	 * recipients hoping that this will be enough to not having
++	 * to try again in case only a few peers joined the bus.
++	 */
++	rcp_cnt += 5;
++	skb_set = kzalloc(sizeof(struct sk_buff *) * rcp_cnt, GFP_KERNEL);
++
++	if (!skb_set) {
++		err = -ENOMEM;
++		goto out;
++	}
++
++	sendctx_set = kzalloc(sizeof(struct bus_send_context *) * rcp_cnt,
++			      GFP_KERNEL);
++	if (!sendctx_set) {
++		err = -ENOMEM;
++		goto out;
++	}
++
++	for (i = 0; i < rcp_cnt; i++) {
++		skb_set[i] = skb_clone(skb, GFP_KERNEL);
++		if (!skb_set[i]) {
++			err = -ENOMEM;
++			goto out_free;
++		}
++		sendctx_set[i] = BUSCB(skb_set[i]).sendctx
++			= kmalloc(sizeof(*sendctx) * rcp_cnt, GFP_KERNEL);
++		if (!sendctx_set[i]) {
++			err = -ENOMEM;
++			goto out_free;
++		}
++		memcpy(sendctx_set[i], sendctx, sizeof(*sendctx));
++		err = bus_scm_to_skb(sendctx_set[i]->siocb->scm,
++				     skb_set[i], true);
++		if (err < 0)
++			goto out_free;
++		bus_get_secdata(sendctx_set[i]->siocb->scm,
++				skb_set[i]);
++
++		sendctx_set[i]->other = NULL;
++	}
++
++	send_cnt = 0;
++
++	spin_lock(&u->bus->lock);
++
++	hlist_for_each_entry(s, node, &u->bus->peers, bus_node) {
++
++		if (!net_eq(sock_net(&s->sk), net))
++			continue;
++
++		if (send_cnt >= rcp_cnt) {
++			spin_unlock(&u->bus->lock);
++
++			for (i = 0; i < rcp_cnt; i++) {
++				sock_put(sendctx_set[i]->other);
++				kfree_skb(skb_set[i]);
++				kfree(sendctx_set[i]);
++			}
++			kfree(skb_set);
++			kfree(sendctx_set);
++			sendctx_set = NULL;
++			skb_set = NULL;
++			goto try_again;
++		}
++
++		if (is_receiver(&s->sk, prefix) ||
++		    (!sendctx->multicast &&
++		     !sendctx->to_master &&
++		     &s->sk == sendctx->other)) {
++			skb_set_owner_w(skb_set[send_cnt], &s->sk);
++			tmpctx = BUSCB(skb_set[send_cnt]).sendctx;
++			sock_hold(&s->sk);
++			if (&s->sk == sendctx->other) {
++				tmpctx->main_recipient = 1;
++				main_rcp_found = true;
++			}
++			tmpctx->other = &s->sk;
++			tmpctx->recipient = s->addr->name;
++			tmpctx->eavesdropper = bus_eavesdropper(&s->sk, 0);
++
++			send_cnt++;
++		}
++	}
++
++	spin_unlock(&u->bus->lock);
++
++	/*
++	 * Peers have left the bus so we have to free
++	 * their pre-allocated bus_send_context and
++	 * socket buffers.
++	 */
++	if (send_cnt < rcp_cnt) {
++		for (i = send_cnt; i < rcp_cnt; i++) {
++			kfree_skb(skb_set[i]);
++			kfree(sendctx_set[i]);
++		}
++		rcp_cnt = send_cnt;
++	}
++
++	for (i = 0; i < send_cnt; i++) {
++		tmpctx = BUSCB(skb_set[i]).sendctx;
++		tmpctx->deliver = 0;
++		err = NF_HOOK(NFPROTO_BUS, NF_BUS_SENDING, skb_set[i],
++			      NULL, NULL, bus_sendmsg_finish);
++		if (err == -EPERM)
++			sock_put(tmpctx->other);
++	}
++
++	/*
++	 * If the send context is not multicast, the destination
++	 * coud be either the peer accepted socket descriptor or
++	 * a peer that is not an eavesdropper. If the peer is not
++	 * the accepted socket descriptor and has been authenticated,
++	 * it is a member of the bus peer list so it has already been
++	 * marked for delivery.
++	 * But if the destination is the accepted socket descriptor
++	 * or is a non-authenticated peer it is not a member of the
++	 * bus peer list so the packet has to be explicitly deliver
++	 * to it.
++	 */
++
++	if (!sendctx->multicast &&
++	    (sendctx->to_master ||
++	     (sendctx->bus_master_side && !main_rcp_found))) {
++		sendctx->main_recipient = 1;
++		err = NF_HOOK(NFPROTO_BUS, NF_BUS_SENDING, skb, NULL, NULL,
++			bus_sendmsg_finish);
++		if (err == -EPERM)
++			sock_put(sendctx->other);
++	}
++
++	spin_lock(&u->bus->send_lock);
++
++	for (i = 0; i < send_cnt; i++) {
++		tmpctx = sendctx_set[i];
++		if (tmpctx->deliver != 1)
++			continue;
++
++		bus_state_lock(tmpctx->other);
++		bus_deliver_skb(skb_set[i]);
++		bus_state_unlock(tmpctx->other);
++	}
++
++	if (!sendctx->multicast &&
++	    sendctx->deliver == 1 &&
++	    !bus_sk(sendctx->other)->eavesdropper) {
++		bus_state_lock(sendctx->other);
++		bus_deliver_skb(skb);
++		bus_state_unlock(sendctx->other);
++	}
++
++	spin_unlock(&u->bus->send_lock);
++
++	for (i = 0; i < send_cnt; i++) {
++		tmpctx = sendctx_set[i];
++		if (tmpctx->deliver != 1)
++			continue;
++
++		tmpctx->other->sk_data_ready(tmpctx->other, 0);
++		sock_put(tmpctx->other);
++	}
++
++	if (!sendctx->multicast &&
++	    sendctx->deliver == 1 &&
++	    !bus_sk(sendctx->other)->eavesdropper) {
++		sendctx->other->sk_data_ready(sendctx->other, 0);
++		sock_put(sendctx->other);
++	}
++
++	err = len;
++	goto out;
++
++out_free:
++	for (i = 0; i < rcp_cnt; i++) {
++		if (skb_set[i])
++			kfree_skb(skb_set[i]);
++	}
++
++out:
++	kfree(skb_set);
++	if (sendctx_set) {
++		for (i = 0; i < rcp_cnt; i++)
++			kfree(sendctx_set[i]);
++		kfree(sendctx_set);
++	}
++
++	if (sendctx->deliver == 0) {
++		if (!sendctx->to_master &&
++		    !(sendctx->bus_master_side && !main_rcp_found))
++			kfree_skb(skb);
++		if (!sendctx->to_master &&
++		    !(sendctx->bus_master_side && !main_rcp_found))
++			if (sendctx->other)
++				sock_put(sendctx->other);
++	}
++	scm_destroy(sendctx->siocb->scm);
++
++	return err;
++}
++
++static inline void bus_copy_path(struct sockaddr_bus *dest,
++				 struct sockaddr_bus *src)
++{
++	int offset;
++
++	/*
++	 * abstract path names start with a null byte character,
++	 * so they have to be compared starting at the second char.
++	 */
++	offset = (src->sbus_path[0] == '\0');
++
++	strncpy(dest->sbus_path + offset,
++		src->sbus_path + offset,
++		BUS_PATH_MAX);
++}
++
++/**
++ * bus_sendmsg - send an skb to a destination
++ * @kiocb: I/O control block info
++ * @sock: sender socket
++ * @msg: message header
++ * @len: message length
++ *
++ * Send an socket buffer to a destination. The destination could be
++ * either an unicast or a multicast address. In any case, a copy of
++ * the packet has to be send to all the sockets that are allowed to
++ * eavesdrop the communication bus.
++ *
++ * If the destination address is not associated with any socket, the
++ * packet is default routed to the bus master (the sender accepted
++ * socket).
++ *
++ * The af_bus sending path is hooked to the netfilter subsystem so
++ * netfilter hooks can filter or modify the packet before delivery.
++ */
++static int bus_sendmsg(struct kiocb *kiocb, struct socket *sock,
++				struct msghdr *msg, size_t len)
++{
++	struct sock *sk = sock->sk;
++	struct bus_sock *u = bus_sk(sk);
++	struct sockaddr_bus *sbusaddr = msg->msg_name;
++	int err;
++	struct sk_buff *skb;
++	struct scm_cookie tmp_scm;
++	bool to_master = false;
++	bool multicast = false;
++	struct bus_send_context sendctx;
++
++	err = sock_error(sk);
++	if (err)
++		return err;
++
++	if (sk->sk_state != BUS_ESTABLISHED)
++		return -ENOTCONN;
++
++	if (!msg->msg_namelen)
++		sbusaddr = NULL;
++
++	if (sbusaddr)
++		bus_copy_path(sbusaddr, u->addr->name);
++
++	if ((!sbusaddr && !u->bus_master_side) ||
++	    (sbusaddr && sbusaddr->sbus_addr.s_addr == BUS_MASTER_ADDR))
++		to_master = true;
++	else if (sbusaddr && !u->bus_master_side && !u->authenticated)
++		return -EHOSTUNREACH;
++
++	sendctx.namelen = 0; /* fake GCC */
++	sendctx.siocb = kiocb_to_siocb(kiocb);
++	sendctx.other = NULL;
++
++	if (NULL == sendctx.siocb->scm)
++		sendctx.siocb->scm = &tmp_scm;
++	wait_for_bus_gc();
++	err = scm_send(sock, msg, sendctx.siocb->scm, false);
++	if (err < 0)
++		return err;
++
++	err = -EOPNOTSUPP;
++	if (msg->msg_flags&MSG_OOB)
++		goto out;
++
++	if (sbusaddr && !to_master) {
++		err = bus_mkname(sbusaddr, msg->msg_namelen, &sendctx.hash);
++		if (err < 0)
++			goto out;
++		sendctx.namelen = err;
++		multicast = bus_mc_addr(sbusaddr);
++	} else {
++		err = -ENOTCONN;
++		sendctx.other = bus_peer_get(sk);
++		if (!sendctx.other)
++			goto out;
++	}
++
++	err = -EMSGSIZE;
++	if (len > sk->sk_sndbuf - 32)
++		goto out;
++
++	sendctx.timeo = sock_sndtimeo(sk, msg->msg_flags & MSG_DONTWAIT);
++
++restart:
++	bus_state_lock(sk);
++	if (bus_recvq_full(sk)) {
++		err = -EAGAIN;
++		if (!sendctx.timeo) {
++			bus_state_unlock(sk);
++			goto out;
++		}
++
++		sendctx.timeo = bus_wait_for_peer(sk, sendctx.timeo);
++
++		err = sock_intr_errno(sendctx.timeo);
++		if (signal_pending(current))
++			goto out;
++
++		goto restart;
++	} else {
++		bus_state_unlock(sk);
++	}
++
++	skb = sock_alloc_send_skb(sk, len, msg->msg_flags&MSG_DONTWAIT, &err);
++	if (skb == NULL)
++		goto out;
++
++	err = bus_scm_to_skb(sendctx.siocb->scm, skb, true);
++	if (err < 0)
++		goto out_free;
++	sendctx.max_level = err + 1;
++	bus_get_secdata(sendctx.siocb->scm, skb);
++
++	skb_reset_transport_header(skb);
++	err = memcpy_fromiovec(skb_put(skb, len), msg->msg_iov, len);
++	if (err)
++		goto out_free;
++
++	sendctx.sender_socket = sock;
++	if (u->bus_master_side && sendctx.other) {
++		/* if the bus master sent an unicast message to a peer, we
++		 * need the address of that peer
++		 */
++		sendctx.sender = bus_sk(sendctx.other)->addr->name;
++	} else {
++		sendctx.sender = u->addr->name;
++	}
++	sendctx.recipient = sbusaddr;
++	sendctx.authenticated = u->authenticated;
++	sendctx.bus_master_side = u->bus_master_side;
++	sendctx.to_master = to_master;
++	sendctx.multicast = multicast;
++	sendctx.eavesdropper = atomic64_read(&u->bus->eavesdropper_cnt) ? 1 : 0;
++	BUSCB(skb).sendctx = &sendctx;
++
++	if (sendctx.multicast || sendctx.eavesdropper) {
++		sendctx.main_recipient = 0;
++		err = bus_sendmsg_mcast(skb);
++		return sendctx.multicast ? len : err;
++	} else {
++		sendctx.main_recipient = 1;
++		len = NF_HOOK(NFPROTO_BUS, NF_BUS_SENDING, skb, NULL, NULL,
++			      bus_sendmsg_finish);
++
++		if (len == -EPERM) {
++			err = len;
++			goto out;
++		} else {
++			scm_destroy(sendctx.siocb->scm);
++			return len;
++		}
++	}
++
++out_free:
++	kfree_skb(skb);
++out:
++	if (sendctx.other)
++		sock_put(sendctx.other);
++	scm_destroy(sendctx.siocb->scm);
++	return err;
++}
++
++static void bus_copy_addr(struct msghdr *msg, struct sock *sk)
++{
++	struct bus_sock *u = bus_sk(sk);
++
++	msg->msg_namelen = 0;
++	if (u->addr) {
++		msg->msg_namelen = u->addr->len;
++		memcpy(msg->msg_name, u->addr->name,
++		       sizeof(struct sockaddr_bus));
++	}
++}
++
++static int bus_recvmsg(struct kiocb *iocb, struct socket *sock,
++			  struct msghdr *msg, size_t size, int flags)
++{
++	struct sock_iocb *siocb = kiocb_to_siocb(iocb);
++	struct scm_cookie tmp_scm;
++	struct sock *sk = sock->sk;
++	struct bus_sock *u = bus_sk(sk);
++	int noblock = flags & MSG_DONTWAIT;
++	struct sk_buff *skb;
++	int err;
++	int peeked, skip;
++
++	if (sk->sk_state != BUS_ESTABLISHED)
++		return -ENOTCONN;
++
++	err = -EOPNOTSUPP;
++	if (flags&MSG_OOB)
++		goto out;
++
++	msg->msg_namelen = 0;
++
++	err = mutex_lock_interruptible(&u->readlock);
++	if (err) {
++		err = sock_intr_errno(sock_rcvtimeo(sk, noblock));
++		goto out;
++	}
++
++	skip = sk_peek_offset(sk, flags);
++
++	skb = __skb_recv_datagram(sk, flags, &peeked, &skip, &err);
++	if (!skb) {
++		bus_state_lock(sk);
++		/* Signal EOF on disconnected non-blocking SEQPACKET socket. */
++		if (err == -EAGAIN && (sk->sk_shutdown & RCV_SHUTDOWN))
++			err = 0;
++		bus_state_unlock(sk);
++		goto out_unlock;
++	}
++
++	wake_up_interruptible_sync_poll(&u->peer_wait,
++					POLLOUT | POLLWRNORM | POLLWRBAND);
++
++	if (msg->msg_name)
++		bus_copy_addr(msg, skb->sk);
++
++	if (size > skb->len - skip)
++		size = skb->len - skip;
++	else if (size < skb->len - skip)
++		msg->msg_flags |= MSG_TRUNC;
++
++	err = skb_copy_datagram_iovec(skb, skip, msg->msg_iov, size);
++	if (err)
++		goto out_free;
++
++	if (sock_flag(sk, SOCK_RCVTSTAMP))
++		__sock_recv_timestamp(msg, sk, skb);
++
++	if (!siocb->scm) {
++		siocb->scm = &tmp_scm;
++		memset(&tmp_scm, 0, sizeof(tmp_scm));
++	}
++	scm_set_cred(siocb->scm, BUSCB(skb).pid, BUSCB(skb).cred);
++	bus_set_secdata(siocb->scm, skb);
++
++	if (!(flags & MSG_PEEK)) {
++		if (BUSCB(skb).fp)
++			bus_detach_fds(siocb->scm, skb);
++
++		sk_peek_offset_bwd(sk, skb->len);
++	} else {
++		/* It is questionable: on PEEK we could:
++		   - do not return fds - good, but too simple 8)
++		   - return fds, and do not return them on read (old strategy,
++		     apparently wrong)
++		   - clone fds (I chose it for now, it is the most universal
++		     solution)
++
++		   POSIX 1003.1g does not actually define this clearly
++		   at all. POSIX 1003.1g doesn't define a lot of things
++		   clearly however!
++
++		*/
++
++		sk_peek_offset_fwd(sk, size);
++
++		if (BUSCB(skb).fp)
++			siocb->scm->fp = scm_fp_dup(BUSCB(skb).fp);
++	}
++	err = (flags & MSG_TRUNC) ? skb->len - skip : size;
++
++	scm_recv(sock, msg, siocb->scm, flags);
++
++out_free:
++	skb_free_datagram(sk, skb);
++out_unlock:
++	mutex_unlock(&u->readlock);
++out:
++	return err;
++}
++
++static int bus_shutdown(struct socket *sock, int mode)
++{
++	struct sock *sk = sock->sk;
++	struct sock *other;
++
++	mode = (mode+1)&(RCV_SHUTDOWN|SEND_SHUTDOWN);
++
++	if (!mode)
++		return 0;
++
++	bus_state_lock(sk);
++	sk->sk_shutdown |= mode;
++	other = bus_peer(sk);
++	if (other)
++		sock_hold(other);
++	bus_state_unlock(sk);
++	sk->sk_state_change(sk);
++
++	if (other) {
++
++		int peer_mode = 0;
++
++		if (mode&RCV_SHUTDOWN)
++			peer_mode |= SEND_SHUTDOWN;
++		if (mode&SEND_SHUTDOWN)
++			peer_mode |= RCV_SHUTDOWN;
++		bus_state_lock(other);
++		other->sk_shutdown |= peer_mode;
++		bus_state_unlock(other);
++		other->sk_state_change(other);
++		if (peer_mode == SHUTDOWN_MASK)
++			sk_wake_async(other, SOCK_WAKE_WAITD, POLL_HUP);
++		else if (peer_mode & RCV_SHUTDOWN)
++			sk_wake_async(other, SOCK_WAKE_WAITD, POLL_IN);
++		sock_put(other);
++	}
++
++	return 0;
++}
++
++static int bus_add_addr(struct sock *sk, struct bus_addr *sbus_addr)
++{
++	struct bus_address *addr;
++	struct sock *other;
++	struct bus_sock *u = bus_sk(sk);
++	struct net *net = sock_net(sk);
++	int ret = 0;
++
++	addr = kzalloc(sizeof(*addr) + sizeof(struct sockaddr_bus), GFP_KERNEL);
++	if (!addr) {
++		ret = -ENOMEM;
++		goto out;
++	}
++
++	memcpy(addr->name, u->addr->name, sizeof(struct sockaddr_bus));
++	addr->len = u->addr->len;
++
++	addr->name->sbus_addr.s_addr = sbus_addr->s_addr;
++	addr->hash = bus_compute_hash(addr->name->sbus_addr);
++	other = bus_find_socket_byaddress(net, addr->name, addr->len,
++					  sk->sk_protocol, addr->hash);
++
++	if (other) {
++		sock_put(other);
++		kfree(addr);
++		ret = -EADDRINUSE;
++		goto out;
++	}
++
++	atomic_set(&addr->refcnt, 1);
++	INIT_HLIST_NODE(&addr->addr_node);
++	INIT_HLIST_NODE(&addr->table_node);
++
++	addr->sock = sk;
++
++	hlist_add_head(&addr->addr_node, &u->addr_list);
++	bus_insert_address(&bus_address_table[addr->hash], addr);
++
++out:
++	sock_put(sk);
++
++	return ret;
++}
++
++static int bus_del_addr(struct sock *sk, struct bus_addr *sbus_addr)
++{
++	struct bus_address *addr;
++	int ret = 0;
++
++	bus_state_lock(sk);
++	addr = __bus_get_address(sk, sbus_addr);
++	if (!addr) {
++		ret = -EINVAL;
++		bus_state_unlock(sk);
++		goto out;
++	}
++	hlist_del(&addr->addr_node);
++	bus_state_unlock(sk);
++
++	bus_remove_address(addr);
++	bus_release_addr(addr);
++out:
++	sock_put(sk);
++
++	return ret;
++}
++
++static int bus_join_bus(struct sock *sk)
++{
++	struct sock *peer;
++	struct bus_sock *u = bus_sk(sk), *peeru;
++	int err = 0;
++
++	peer = bus_peer_get(sk);
++	if (!peer)
++		return -ENOTCONN;
++	peeru = bus_sk(peer);
++
++	if (!u->bus_master_side || peeru->authenticated) {
++		err = -EINVAL;
++		goto sock_put_out;
++	}
++
++	if (sk->sk_state != BUS_ESTABLISHED) {
++		err = -ENOTCONN;
++		goto sock_put_out;
++	}
++
++	if (peer->sk_shutdown != 0) {
++		err = -ENOTCONN;
++		goto sock_put_out;
++	}
++
++	bus_state_lock(peer);
++	peeru->authenticated = true;
++	bus_state_unlock(peer);
++
++	spin_lock(&u->bus->lock);
++	hlist_add_head(&peeru->bus_node, &u->bus->peers);
++	spin_unlock(&u->bus->lock);
++
++sock_put_out:
++	sock_put(peer);
++	return err;
++}
++
++static int __bus_set_eavesdrop(struct sock *sk, bool eavesdrop)
++{
++	struct sock *peer = bus_peer_get(sk);
++	struct bus_sock *u = bus_sk(sk), *peeru;
++	int err = 0;
++
++	if (!peer)
++		return -ENOTCONN;
++
++	if (sk->sk_state != BUS_ESTABLISHED) {
++		err = -ENOTCONN;
++		goto sock_put_out;
++	}
++
++	peeru = bus_sk(peer);
++
++	if (!u->bus_master_side || !peeru->authenticated) {
++		err = -EINVAL;
++		goto sock_put_out;
++	}
++
++	if (peer->sk_shutdown != 0) {
++		err = -ENOTCONN;
++		goto sock_put_out;
++	}
++
++	bus_state_lock(peeru);
++	if (peeru->eavesdropper != eavesdrop) {
++		peeru->eavesdropper = eavesdrop;
++		if (eavesdrop)
++			atomic64_inc(&u->bus->eavesdropper_cnt);
++		else
++			atomic64_dec(&u->bus->eavesdropper_cnt);
++	}
++	bus_state_unlock(peeru);
++
++sock_put_out:
++	sock_put(peer);
++	return err;
++}
++
++static int bus_set_eavesdrop(struct sock *sk)
++{
++	return __bus_set_eavesdrop(sk, true);
++}
++
++static int bus_unset_eavesdrop(struct sock *sk)
++{
++	return __bus_set_eavesdrop(sk, false);
++}
++
++static inline void sk_sendbuf_set(struct sock *sk, int sndbuf)
++{
++	bus_state_lock(sk);
++	sk->sk_sndbuf = sndbuf;
++	bus_state_unlock(sk);
++}
++
++static inline void sk_maxqlen_set(struct sock *sk, int qlen)
++{
++	bus_state_lock(sk);
++	sk->sk_max_ack_backlog = qlen;
++	bus_state_unlock(sk);
++}
++
++static int bus_get_qlenfull(struct sock *sk)
++{
++	struct sock *peer;
++	struct bus_sock *u = bus_sk(sk), *peeru;
++	int ret = 0;
++
++	peer = bus_peer_get(sk);
++	if (!peer)
++		return -ENOTCONN;
++
++	peeru = bus_sk(peer);
++
++	if (!u->bus_master_side || peeru->authenticated) {
++		ret = -EINVAL;
++		goto sock_put_out;
++	}
++
++	if (sk->sk_state != BUS_ESTABLISHED) {
++		ret = -ENOTCONN;
++		goto sock_put_out;
++	}
++
++	if (peer->sk_shutdown != 0) {
++		ret = -ENOTCONN;
++		goto sock_put_out;
++	}
++
++	ret = bus_recvq_full(peer);
++
++sock_put_out:
++	sock_put(peer);
++	return ret;
++}
++
++static int bus_setsockopt(struct socket *sock, int level, int optname,
++			   char __user *optval, unsigned int optlen)
++{
++	struct bus_addr addr;
++	int res;
++	int val;
++
++	if (level != SOL_BUS)
++		return -ENOPROTOOPT;
++
++	switch (optname) {
++	case BUS_ADD_ADDR:
++	case BUS_DEL_ADDR:
++		if (optlen < sizeof(struct bus_addr))
++			return -EINVAL;
++
++		if (!bus_sk(sock->sk)->bus_master_side)
++			return -EINVAL;
++
++		if (copy_from_user(&addr, optval, sizeof(struct bus_addr)))
++			return -EFAULT;
++
++		if (optname == BUS_ADD_ADDR)
++			res = bus_add_addr(bus_peer_get(sock->sk), &addr);
++		else
++			res = bus_del_addr(bus_peer_get(sock->sk), &addr);
++		break;
++	case BUS_JOIN_BUS:
++		res = bus_join_bus(sock->sk);
++		break;
++	case BUS_SET_EAVESDROP:
++		res = bus_set_eavesdrop(sock->sk);
++		break;
++	case BUS_UNSET_EAVESDROP:
++		res = bus_unset_eavesdrop(sock->sk);
++		break;
++	case BUS_SET_SENDBUF:
++	case BUS_SET_MAXQLEN:
++		if (sock->sk->sk_state != BUS_LISTEN) {
++			res = -EINVAL;
++		} else {
++			res = -EFAULT;
++
++			if (copy_from_user(&val, optval, optlen))
++				break;
++
++			res = 0;
++
++			if (optname == BUS_SET_SENDBUF)
++				sk_sendbuf_set(sock->sk, val);
++			else
++				sk_maxqlen_set(sock->sk, val);
++		}
++		break;
++	case BUS_GET_QLENFULL:
++		res = bus_get_qlenfull(sock->sk);
++
++		if (copy_to_user(&res, optval, optlen)) {
++			res = -EFAULT;
++			break;
++		}
++		res = 0;
++		break;
++	default:
++		res = -EINVAL;
++		break;
++	}
++
++	return res;
++}
++
++long bus_inq_len(struct sock *sk)
++{
++	struct sk_buff *skb;
++	long amount = 0;
++
++	if (sk->sk_state == BUS_LISTEN)
++		return -EINVAL;
++
++	spin_lock(&sk->sk_receive_queue.lock);
++	skb_queue_walk(&sk->sk_receive_queue, skb)
++		amount += skb->len;
++	spin_unlock(&sk->sk_receive_queue.lock);
++
++	return amount;
++}
++EXPORT_SYMBOL_GPL(bus_inq_len);
++
++long bus_outq_len(struct sock *sk)
++{
++	return sk_wmem_alloc_get(sk);
++}
++EXPORT_SYMBOL_GPL(bus_outq_len);
++
++static int bus_ioctl(struct socket *sock, unsigned int cmd, unsigned long arg)
++{
++	struct sock *sk = sock->sk;
++	long amount = 0;
++	int err;
++
++	switch (cmd) {
++	case SIOCOUTQ:
++		amount = bus_outq_len(sk);
++		err = put_user(amount, (int __user *)arg);
++		break;
++	case SIOCINQ:
++		amount = bus_inq_len(sk);
++		if (amount < 0)
++			err = amount;
++		else
++			err = put_user(amount, (int __user *)arg);
++		break;
++	default:
++		err = -ENOIOCTLCMD;
++		break;
++	}
++	return err;
++}
++
++static unsigned int bus_poll(struct file *file, struct socket *sock,
++				    poll_table *wait)
++{
++	struct sock *sk = sock->sk, *other;
++	unsigned int mask, writable;
++	struct bus_sock *u = bus_sk(sk), *p;
++	struct hlist_node *node;
++
++	sock_poll_wait(file, sk_sleep(sk), wait);
++	mask = 0;
++
++	/* exceptional events? */
++	if (sk->sk_err || !skb_queue_empty(&sk->sk_error_queue))
++		mask |= POLLERR;
++	if (sk->sk_shutdown & RCV_SHUTDOWN)
++		mask |= POLLRDHUP | POLLIN | POLLRDNORM;
++	if (sk->sk_shutdown == SHUTDOWN_MASK)
++		mask |= POLLHUP;
++
++	/* readable? */
++	if (!skb_queue_empty(&sk->sk_receive_queue))
++		mask |= POLLIN | POLLRDNORM;
++
++	/* Connection-based need to check for termination and startup */
++	if (sk->sk_state == BUS_CLOSE)
++		mask |= POLLHUP;
++
++	/* No write status requested, avoid expensive OUT tests. */
++	if (!(poll_requested_events(wait) & (POLLWRBAND|POLLWRNORM|POLLOUT)))
++		return mask;
++
++	writable = bus_writable(sk);
++	other = bus_peer_get(sk);
++	if (other) {
++		if (bus_recvq_full(other))
++			writable = 0;
++		sock_put(other);
++	}
++
++	/*
++	 * If the socket has already joined the bus we have to check
++	 * that each peer receiver queue on the bus is not full.
++	 */
++	if (!u->bus_master_side && u->authenticated) {
++		spin_lock(&u->bus->lock);
++		hlist_for_each_entry(p, node, &u->bus->peers, bus_node) {
++			if (bus_recvq_full(&p->sk)) {
++				writable = 0;
++				break;
++			}
++		}
++		spin_unlock(&u->bus->lock);
++	}
++
++	if (writable)
++		mask |= POLLOUT | POLLWRNORM | POLLWRBAND;
++	else
++		set_bit(SOCK_ASYNC_NOSPACE, &sk->sk_socket->flags);
++
++	return mask;
++}
++
++#ifdef CONFIG_PROC_FS
++static struct sock *first_bus_socket(int *i)
++{
++	for (*i = 0; *i <= BUS_HASH_SIZE; (*i)++) {
++		if (!hlist_empty(&bus_socket_table[*i]))
++			return __sk_head(&bus_socket_table[*i]);
++	}
++	return NULL;
++}
++
++static struct sock *next_bus_socket(int *i, struct sock *s)
++{
++	struct sock *next = sk_next(s);
++	/* More in this chain? */
++	if (next)
++		return next;
++	/* Look for next non-empty chain. */
++	for ((*i)++; *i <= BUS_HASH_SIZE; (*i)++) {
++		if (!hlist_empty(&bus_socket_table[*i]))
++			return __sk_head(&bus_socket_table[*i]);
++	}
++	return NULL;
++}
++
++struct bus_iter_state {
++	struct seq_net_private p;
++	int i;
++};
++
++static struct sock *bus_seq_idx(struct seq_file *seq, loff_t pos)
++{
++	struct bus_iter_state *iter = seq->private;
++	loff_t off = 0;
++	struct sock *s;
++
++	for (s = first_bus_socket(&iter->i); s;
++	     s = next_bus_socket(&iter->i, s)) {
++		if (sock_net(s) != seq_file_net(seq))
++			continue;
++		if (off == pos)
++			return s;
++		++off;
++	}
++	return NULL;
++}
++
++static void *bus_seq_start(struct seq_file *seq, loff_t *pos)
++	__acquires(bus_table_lock)
++{
++	spin_lock(&bus_table_lock);
++	return *pos ? bus_seq_idx(seq, *pos - 1) : SEQ_START_TOKEN;
++}
++
++static void *bus_seq_next(struct seq_file *seq, void *v, loff_t *pos)
++{
++	struct bus_iter_state *iter = seq->private;
++	struct sock *sk = v;
++	++*pos;
++
++	if (v == SEQ_START_TOKEN)
++		sk = first_bus_socket(&iter->i);
++	else
++		sk = next_bus_socket(&iter->i, sk);
++	while (sk && (sock_net(sk) != seq_file_net(seq)))
++		sk = next_bus_socket(&iter->i, sk);
++	return sk;
++}
++
++static void bus_seq_stop(struct seq_file *seq, void *v)
++	__releases(bus_table_lock)
++{
++	spin_unlock(&bus_table_lock);
++}
++
++static int bus_seq_show(struct seq_file *seq, void *v)
++{
++
++	if (v == SEQ_START_TOKEN)
++		seq_puts(seq, "Num       RefCount Protocol Flags    Type St " \
++			 "Inode Path\n");
++	else {
++		struct sock *s = v;
++		struct bus_sock *u = bus_sk(s);
++		bus_state_lock(s);
++
++		seq_printf(seq, "%pK: %08X %08X %08X %04X %02X %5lu",
++			s,
++			atomic_read(&s->sk_refcnt),
++			0,
++			s->sk_state == BUS_LISTEN ? __SO_ACCEPTCON : 0,
++			s->sk_type,
++			s->sk_socket ?
++			(s->sk_state == BUS_ESTABLISHED ? SS_CONNECTED : SS_UNCONNECTED) :
++			(s->sk_state == BUS_ESTABLISHED ? SS_CONNECTING : SS_DISCONNECTING),
++			sock_i_ino(s));
++
++		if (u->addr) {
++			int i, len;
++			seq_putc(seq, ' ');
++
++			i = 0;
++			len = u->addr->len - sizeof(short);
++			if (!BUS_ABSTRACT(s))
++				len--;
++			else {
++				seq_putc(seq, '@');
++				i++;
++			}
++			for ( ; i < len; i++)
++				seq_putc(seq, u->addr->name->sbus_path[i]);
++		}
++		bus_state_unlock(s);
++		seq_putc(seq, '\n');
++	}
++
++	return 0;
++}
++
++static const struct seq_operations bus_seq_ops = {
++	.start  = bus_seq_start,
++	.next   = bus_seq_next,
++	.stop   = bus_seq_stop,
++	.show   = bus_seq_show,
++};
++
++static int bus_seq_open(struct inode *inode, struct file *file)
++{
++	return seq_open_net(inode, file, &bus_seq_ops,
++			    sizeof(struct bus_iter_state));
++}
++
++static const struct file_operations bus_seq_fops = {
++	.owner		= THIS_MODULE,
++	.open		= bus_seq_open,
++	.read		= seq_read,
++	.llseek		= seq_lseek,
++	.release	= seq_release_net,
++};
++
++#endif
++
++static const struct net_proto_family bus_family_ops = {
++	.family = PF_BUS,
++	.create = bus_create,
++	.owner	= THIS_MODULE,
++};
++
++static int __init af_bus_init(void)
++{
++	int rc = -1;
++	struct sk_buff *dummy_skb;
++
++	BUILD_BUG_ON(sizeof(struct bus_skb_parms) > sizeof(dummy_skb->cb));
++
++	rc = proto_register(&bus_proto, 1);
++	if (rc != 0) {
++		pr_crit("%s: Cannot create bus_sock SLAB cache!\n", __func__);
++		return rc;
++	}
++
++	sock_register(&bus_family_ops);
++	return rc;
++}
++
++static void __exit af_bus_exit(void)
++{
++	sock_unregister(PF_BUS);
++	proto_unregister(&bus_proto);
++}
++
++module_init(af_bus_init);
++module_exit(af_bus_exit);
++
++MODULE_AUTHOR("Alban Crequy, Javier Martinez Canillas");
++MODULE_DESCRIPTION("Linux Bus domain sockets");
++MODULE_LICENSE("GPL");
++MODULE_ALIAS_NETPROTO(PF_BUS);
+diff --git a/net/bus/garbage.c b/net/bus/garbage.c
+new file mode 100644
+index 0000000..2435f38
+--- /dev/null
++++ b/net/bus/garbage.c
+@@ -0,0 +1,322 @@
++/*
++ * Garbage Collector For AF_BUS sockets
++ *
++ * Based on Garbage Collector For AF_UNIX sockets (net/unix/garbage.c).
++ */
++
++#include <linux/kernel.h>
++#include <linux/string.h>
++#include <linux/socket.h>
++#include <linux/un.h>
++#include <linux/net.h>
++#include <linux/fs.h>
++#include <linux/skbuff.h>
++#include <linux/netdevice.h>
++#include <linux/file.h>
++#include <linux/proc_fs.h>
++#include <linux/mutex.h>
++#include <linux/wait.h>
++
++#include <net/sock.h>
++#include <net/af_bus.h>
++#include <net/scm.h>
++#include <net/tcp_states.h>
++
++/* Internal data structures and random procedures: */
++
++static LIST_HEAD(gc_inflight_list);
++static LIST_HEAD(gc_candidates);
++static DEFINE_SPINLOCK(bus_gc_lock);
++static DECLARE_WAIT_QUEUE_HEAD(bus_gc_wait);
++
++unsigned int bus_tot_inflight;
++
++
++struct sock *bus_get_socket(struct file *filp)
++{
++	struct sock *u_sock = NULL;
++	struct inode *inode = filp->f_path.dentry->d_inode;
++
++	/*
++	 *	Socket ?
++	 */
++	if (S_ISSOCK(inode->i_mode) && !(filp->f_mode & FMODE_PATH)) {
++		struct socket *sock = SOCKET_I(inode);
++		struct sock *s = sock->sk;
++
++		/*
++		 *	PF_BUS ?
++		 */
++		if (s && sock->ops && sock->ops->family == PF_BUS)
++			u_sock = s;
++	}
++	return u_sock;
++}
++
++/*
++ *	Keep the number of times in flight count for the file
++ *	descriptor if it is for an AF_BUS socket.
++ */
++
++void bus_inflight(struct file *fp)
++{
++	struct sock *s = bus_get_socket(fp);
++	if (s) {
++		struct bus_sock *u = bus_sk(s);
++		spin_lock(&bus_gc_lock);
++		if (atomic_long_inc_return(&u->inflight) == 1) {
++			BUG_ON(!list_empty(&u->link));
++			list_add_tail(&u->link, &gc_inflight_list);
++		} else {
++			BUG_ON(list_empty(&u->link));
++		}
++		bus_tot_inflight++;
++		spin_unlock(&bus_gc_lock);
++	}
++}
++
++void bus_notinflight(struct file *fp)
++{
++	struct sock *s = bus_get_socket(fp);
++	if (s) {
++		struct bus_sock *u = bus_sk(s);
++		spin_lock(&bus_gc_lock);
++		BUG_ON(list_empty(&u->link));
++		if (atomic_long_dec_and_test(&u->inflight))
++			list_del_init(&u->link);
++		bus_tot_inflight--;
++		spin_unlock(&bus_gc_lock);
++	}
++}
++
++static void scan_inflight(struct sock *x, void (*func)(struct bus_sock *),
++			  struct sk_buff_head *hitlist)
++{
++	struct sk_buff *skb;
++	struct sk_buff *next;
++
++	spin_lock(&x->sk_receive_queue.lock);
++	skb_queue_walk_safe(&x->sk_receive_queue, skb, next) {
++		/*
++		 *	Do we have file descriptors ?
++		 */
++		if (BUSCB(skb).fp) {
++			bool hit = false;
++			/*
++			 *	Process the descriptors of this socket
++			 */
++			int nfd = BUSCB(skb).fp->count;
++			struct file **fp = BUSCB(skb).fp->fp;
++			while (nfd--) {
++				/*
++				 *	Get the socket the fd matches
++				 *	if it indeed does so
++				 */
++				struct sock *sk = bus_get_socket(*fp++);
++				if (sk) {
++					struct bus_sock *u = bus_sk(sk);
++
++					/*
++					 * Ignore non-candidates, they could
++					 * have been added to the queues after
++					 * starting the garbage collection
++					 */
++					if (u->gc_candidate) {
++						hit = true;
++						func(u);
++					}
++				}
++			}
++			if (hit && hitlist != NULL) {
++				__skb_unlink(skb, &x->sk_receive_queue);
++				__skb_queue_tail(hitlist, skb);
++			}
++		}
++	}
++	spin_unlock(&x->sk_receive_queue.lock);
++}
++
++static void scan_children(struct sock *x, void (*func)(struct bus_sock *),
++			  struct sk_buff_head *hitlist)
++{
++	if (x->sk_state != TCP_LISTEN)
++		scan_inflight(x, func, hitlist);
++	else {
++		struct sk_buff *skb;
++		struct sk_buff *next;
++		struct bus_sock *u;
++		LIST_HEAD(embryos);
++
++		/*
++		 * For a listening socket collect the queued embryos
++		 * and perform a scan on them as well.
++		 */
++		spin_lock(&x->sk_receive_queue.lock);
++		skb_queue_walk_safe(&x->sk_receive_queue, skb, next) {
++			u = bus_sk(skb->sk);
++
++			/*
++			 * An embryo cannot be in-flight, so it's safe
++			 * to use the list link.
++			 */
++			BUG_ON(!list_empty(&u->link));
++			list_add_tail(&u->link, &embryos);
++		}
++		spin_unlock(&x->sk_receive_queue.lock);
++
++		while (!list_empty(&embryos)) {
++			u = list_entry(embryos.next, struct bus_sock, link);
++			scan_inflight(&u->sk, func, hitlist);
++			list_del_init(&u->link);
++		}
++	}
++}
++
++static void dec_inflight(struct bus_sock *usk)
++{
++	atomic_long_dec(&usk->inflight);
++}
++
++static void inc_inflight(struct bus_sock *usk)
++{
++	atomic_long_inc(&usk->inflight);
++}
++
++static void inc_inflight_move_tail(struct bus_sock *u)
++{
++	atomic_long_inc(&u->inflight);
++	/*
++	 * If this still might be part of a cycle, move it to the end
++	 * of the list, so that it's checked even if it was already
++	 * passed over
++	 */
++	if (u->gc_maybe_cycle)
++		list_move_tail(&u->link, &gc_candidates);
++}
++
++static bool gc_in_progress = false;
++#define BUS_INFLIGHT_TRIGGER_GC 16000
++
++void wait_for_bus_gc(void)
++{
++	/*
++	 * If number of inflight sockets is insane,
++	 * force a garbage collect right now.
++	 */
++	if (bus_tot_inflight > BUS_INFLIGHT_TRIGGER_GC && !gc_in_progress)
++		bus_gc();
++	wait_event(bus_gc_wait, gc_in_progress == false);
++}
++
++/* The external entry point: bus_gc() */
++void bus_gc(void)
++{
++	struct bus_sock *u;
++	struct bus_sock *next;
++	struct sk_buff_head hitlist;
++	struct list_head cursor;
++	LIST_HEAD(not_cycle_list);
++
++	spin_lock(&bus_gc_lock);
++
++	/* Avoid a recursive GC. */
++	if (gc_in_progress)
++		goto out;
++
++	gc_in_progress = true;
++	/*
++	 * First, select candidates for garbage collection.  Only
++	 * in-flight sockets are considered, and from those only ones
++	 * which don't have any external reference.
++	 *
++	 * Holding bus_gc_lock will protect these candidates from
++	 * being detached, and hence from gaining an external
++	 * reference.  Since there are no possible receivers, all
++	 * buffers currently on the candidates' queues stay there
++	 * during the garbage collection.
++	 *
++	 * We also know that no new candidate can be added onto the
++	 * receive queues.  Other, non candidate sockets _can_ be
++	 * added to queue, so we must make sure only to touch
++	 * candidates.
++	 */
++	list_for_each_entry_safe(u, next, &gc_inflight_list, link) {
++		long total_refs;
++		long inflight_refs;
++
++		total_refs = file_count(u->sk.sk_socket->file);
++		inflight_refs = atomic_long_read(&u->inflight);
++
++		BUG_ON(inflight_refs < 1);
++		BUG_ON(total_refs < inflight_refs);
++		if (total_refs == inflight_refs) {
++			list_move_tail(&u->link, &gc_candidates);
++			u->gc_candidate = 1;
++			u->gc_maybe_cycle = 1;
++		}
++	}
++
++	/*
++	 * Now remove all internal in-flight reference to children of
++	 * the candidates.
++	 */
++	list_for_each_entry(u, &gc_candidates, link)
++		scan_children(&u->sk, dec_inflight, NULL);
++
++	/*
++	 * Restore the references for children of all candidates,
++	 * which have remaining references.  Do this recursively, so
++	 * only those remain, which form cyclic references.
++	 *
++	 * Use a "cursor" link, to make the list traversal safe, even
++	 * though elements might be moved about.
++	 */
++	list_add(&cursor, &gc_candidates);
++	while (cursor.next != &gc_candidates) {
++		u = list_entry(cursor.next, struct bus_sock, link);
++
++		/* Move cursor to after the current position. */
++		list_move(&cursor, &u->link);
++
++		if (atomic_long_read(&u->inflight) > 0) {
++			list_move_tail(&u->link, &not_cycle_list);
++			u->gc_maybe_cycle = 0;
++			scan_children(&u->sk, inc_inflight_move_tail, NULL);
++		}
++	}
++	list_del(&cursor);
++
++	/*
++	 * not_cycle_list contains those sockets which do not make up a
++	 * cycle.  Restore these to the inflight list.
++	 */
++	while (!list_empty(&not_cycle_list)) {
++		u = list_entry(not_cycle_list.next, struct bus_sock, link);
++		u->gc_candidate = 0;
++		list_move_tail(&u->link, &gc_inflight_list);
++	}
++
++	/*
++	 * Now gc_candidates contains only garbage.  Restore original
++	 * inflight counters for these as well, and remove the skbuffs
++	 * which are creating the cycle(s).
++	 */
++	skb_queue_head_init(&hitlist);
++	list_for_each_entry(u, &gc_candidates, link)
++	scan_children(&u->sk, inc_inflight, &hitlist);
++
++	spin_unlock(&bus_gc_lock);
++
++	/* Here we are. Hitlist is filled. Die. */
++	__skb_queue_purge(&hitlist);
++
++	spin_lock(&bus_gc_lock);
++
++	/* All candidates should have been detached by now. */
++	BUG_ON(!list_empty(&gc_candidates));
++	gc_in_progress = false;
++	wake_up(&bus_gc_wait);
++
++ out:
++	spin_unlock(&bus_gc_lock);
++}
+diff --git a/net/core/scm.c b/net/core/scm.c
+index 611c5ef..87e3152 100644
+--- a/net/core/scm.c
++++ b/net/core/scm.c
+@@ -158,7 +158,8 @@ int __scm_send(struct socket *sock, struct msghdr *msg, struct scm_cookie *p)
+ 		switch (cmsg->cmsg_type)
+ 		{
+ 		case SCM_RIGHTS:
+-			if (!sock->ops || sock->ops->family != PF_UNIX)
++			if (!sock->ops || (sock->ops->family != PF_UNIX &&
++					   sock->ops->family != PF_BUS))
+ 				goto error;
+ 			err=scm_fp_copy(cmsg, &p->fp);
+ 			if (err<0)
+diff --git a/net/core/sock.c b/net/core/sock.c
+index b2e14c0..17abe99 100644
+--- a/net/core/sock.c
++++ b/net/core/sock.c
+@@ -205,7 +205,7 @@ static const char *const af_family_key_strings[AF_MAX+1] = {
+   "sk_lock-AF_TIPC"  , "sk_lock-AF_BLUETOOTH", "sk_lock-IUCV"        ,
+   "sk_lock-AF_RXRPC" , "sk_lock-AF_ISDN"     , "sk_lock-AF_PHONET"   ,
+   "sk_lock-AF_IEEE802154", "sk_lock-AF_CAIF" , "sk_lock-AF_ALG"      ,
+-  "sk_lock-AF_NFC"   , "sk_lock-AF_MAX"
++  "sk_lock-AF_NFC"   , "sk_lock-AF_BUS"     , "sk_lock-AF_MAX"
+ };
+ static const char *const af_family_slock_key_strings[AF_MAX+1] = {
+   "slock-AF_UNSPEC", "slock-AF_UNIX"     , "slock-AF_INET"     ,
+@@ -221,7 +221,7 @@ static const char *const af_family_slock_key_strings[AF_MAX+1] = {
+   "slock-AF_TIPC"  , "slock-AF_BLUETOOTH", "slock-AF_IUCV"     ,
+   "slock-AF_RXRPC" , "slock-AF_ISDN"     , "slock-AF_PHONET"   ,
+   "slock-AF_IEEE802154", "slock-AF_CAIF" , "slock-AF_ALG"      ,
+-  "slock-AF_NFC"   , "slock-AF_MAX"
++  "slock-AF_NFC"   , "slock-AF_BUS"     , "slock-AF_MAX"
+ };
+ static const char *const af_family_clock_key_strings[AF_MAX+1] = {
+   "clock-AF_UNSPEC", "clock-AF_UNIX"     , "clock-AF_INET"     ,
+@@ -237,7 +237,7 @@ static const char *const af_family_clock_key_strings[AF_MAX+1] = {
+   "clock-AF_TIPC"  , "clock-AF_BLUETOOTH", "clock-AF_IUCV"     ,
+   "clock-AF_RXRPC" , "clock-AF_ISDN"     , "clock-AF_PHONET"   ,
+   "clock-AF_IEEE802154", "clock-AF_CAIF" , "clock-AF_ALG"      ,
+-  "clock-AF_NFC"   , "clock-AF_MAX"
++  "clock-AF_NFC"   , "clock-AF_BUS"     , "clock-AF_MAX"
+ };
+ 
+ /*
+diff --git a/net/netfilter/Kconfig b/net/netfilter/Kconfig
+index 0c6f67e..58ed81d 100644
+--- a/net/netfilter/Kconfig
++++ b/net/netfilter/Kconfig
+@@ -1151,3 +1151,5 @@ endmenu
+ source "net/netfilter/ipset/Kconfig"
+ 
+ source "net/netfilter/ipvs/Kconfig"
++
++source "net/netfilter/nfdbus/Kconfig"
+diff --git a/net/netfilter/Makefile b/net/netfilter/Makefile
+index ca36765..89752a0 100644
+--- a/net/netfilter/Makefile
++++ b/net/netfilter/Makefile
+@@ -119,3 +119,6 @@ obj-$(CONFIG_IP_SET) += ipset/
+ 
+ # IPVS
+ obj-$(CONFIG_IP_VS) += ipvs/
++
++# Dbus
++obj-$(CONFIG_NETFILTER_DBUS) += nfdbus/
+diff --git a/net/netfilter/nfdbus/Kconfig b/net/netfilter/nfdbus/Kconfig
+new file mode 100644
+index 0000000..25699a1
+--- /dev/null
++++ b/net/netfilter/nfdbus/Kconfig
+@@ -0,0 +1,12 @@
++#
++# Netfilter D-Bus module configuration
++#
++config NETFILTER_DBUS
++	tristate "Netfilter D-bus (EXPERIMENTAL)"
++	depends on AF_BUS && CONNECTOR && EXPERIMENTAL
++	---help---
++	  If you say Y here, you will include support for a netfilter hook to
++	  parse D-Bus messages sent using the AF_BUS socket address family.
++
++	  To compile this as a module, choose M here: the module will be
++	  called netfilter_dbus.
+diff --git a/net/netfilter/nfdbus/Makefile b/net/netfilter/nfdbus/Makefile
+new file mode 100644
+index 0000000..1a825f8
+--- /dev/null
++++ b/net/netfilter/nfdbus/Makefile
+@@ -0,0 +1,6 @@
++#
++# Makefile for the netfilter D-Bus module
++#
++obj-$(CONFIG_NETFILTER_DBUS) += netfilter_dbus.o
++
++netfilter_dbus-y := nfdbus.o message.o matchrule.o
+diff --git a/net/netfilter/nfdbus/matchrule.c b/net/netfilter/nfdbus/matchrule.c
+new file mode 100644
+index 0000000..4106bd5
+--- /dev/null
++++ b/net/netfilter/nfdbus/matchrule.c
+@@ -0,0 +1,1132 @@
++/*
++ * matchrule.c  D-Bus match rule implementation
++ *
++ * Based on signals.c from dbus
++ *
++ * Copyright (C) 2010  Collabora, Ltd.
++ * Copyright (C) 2003, 2005  Red Hat, Inc.
++ *
++ * This program is free software; you can redistribute it and/or modify
++ * it under the terms of the GNU General Public License as published by
++ * the Free Software Foundation; either version 2 of the License, or
++ * (at your option) any later version.
++ *
++ * This program is distributed in the hope that it will be useful,
++ * but WITHOUT ANY WARRANTY; without even the implied warranty of
++ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
++ * GNU General Public License for more details.
++ *
++ * You should have received a copy of the GNU General Public License
++ * along with this program; if not, write to the Free Software
++ * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
++ *
++ */
++
++#include "matchrule.h"
++
++#include <linux/rbtree.h>
++#include <linux/list.h>
++#include <linux/slab.h>
++
++#include "message.h"
++
++enum bus_match_flags {
++	BUS_MATCH_MESSAGE_TYPE            = 1 << 0,
++	BUS_MATCH_INTERFACE               = 1 << 1,
++	BUS_MATCH_MEMBER                  = 1 << 2,
++	BUS_MATCH_SENDER                  = 1 << 3,
++	BUS_MATCH_DESTINATION             = 1 << 4,
++	BUS_MATCH_PATH                    = 1 << 5,
++	BUS_MATCH_ARGS                    = 1 << 6,
++	BUS_MATCH_PATH_NAMESPACE          = 1 << 7,
++	BUS_MATCH_CLIENT_IS_EAVESDROPPING = 1 << 8
++};
++
++struct bus_match_rule {
++	/* For debugging only*/
++	char *rule_text;
++
++	unsigned int flags; /**< BusMatchFlags */
++
++	int   message_type;
++	char *interface;
++	char *member;
++	char *sender;
++	char *destination;
++	char *path;
++
++	unsigned int *arg_lens;
++	char **args;
++	int args_len;
++
++	/* bus_match_rule is attached to rule_pool, either in a simple
++	 * double-linked list if the rule does not have any interface, or in a
++	 * red-black tree sorted by interface. If several rules can have the
++	 * same interface, the first one is attached with struct rb_node and the
++	 * next ones are in the list
++	 */
++
++	struct rb_node node;
++	/* Doubly-linked non-circular list. If the rule has an interface, it is
++	 * in the rb tree and the single head is right here. Otherwise, the
++	 * single head is in rule_pool->rules_without_iface. With this data
++	 * structure, we don't need any allocation to insert or remove the rule.
++	 */
++	struct hlist_head first;
++	struct hlist_node list;
++
++	/* used to delete all names from the tree */
++	struct list_head del_list;
++};
++
++struct dbus_name {
++	struct rb_node node;
++	char *name;
++
++	/* used to delete all names from the tree */
++	struct list_head del_list;
++};
++
++#define BUS_MATCH_ARG_IS_PATH  0x8000000u
++
++#define DBUS_STRING_MAX_LENGTH 1024
++
++/** Max length of a match rule string; to keep people from hosing the
++ * daemon with some huge rule
++ */
++#define DBUS_MAXIMUM_MATCH_RULE_LENGTH 1024
++
++struct bus_match_rule *bus_match_rule_new(gfp_t gfp_flags)
++{
++	struct bus_match_rule *rule;
++
++	rule = kzalloc(sizeof(struct bus_match_rule), gfp_flags);
++	if (rule == NULL)
++		return NULL;
++
++	return rule;
++}
++
++void bus_match_rule_free(struct bus_match_rule *rule)
++{
++	kfree(rule->rule_text);
++	kfree(rule->interface);
++	kfree(rule->member);
++	kfree(rule->sender);
++	kfree(rule->destination);
++	kfree(rule->path);
++	kfree(rule->arg_lens);
++
++	/* can't use dbus_free_string_array() since there
++	 * are embedded NULL
++	 */
++	if (rule->args) {
++		int i;
++
++		i = 0;
++		while (i < rule->args_len) {
++			kfree(rule->args[i]);
++			++i;
++		}
++
++		kfree(rule->args);
++	}
++
++	kfree(rule);
++}
++
++static int
++bus_match_rule_set_message_type(struct bus_match_rule *rule,
++				int type,
++				gfp_t gfp_flags)
++{
++	rule->flags |= BUS_MATCH_MESSAGE_TYPE;
++
++	rule->message_type = type;
++
++	return 1;
++}
++
++static int
++bus_match_rule_set_interface(struct bus_match_rule *rule,
++			     const char *interface,
++			     gfp_t gfp_flags)
++{
++	char *new;
++
++	WARN_ON(!interface);
++
++	new = kstrdup(interface, gfp_flags);
++	if (new == NULL)
++		return 0;
++
++	rule->flags |= BUS_MATCH_INTERFACE;
++	kfree(rule->interface);
++	rule->interface = new;
++
++	return 1;
++}
++
++static int
++bus_match_rule_set_member(struct bus_match_rule *rule,
++			  const char *member,
++			  gfp_t gfp_flags)
++{
++	char *new;
++
++	WARN_ON(!member);
++
++	new = kstrdup(member, gfp_flags);
++	if (new == NULL)
++		return 0;
++
++	rule->flags |= BUS_MATCH_MEMBER;
++	kfree(rule->member);
++	rule->member = new;
++
++	return 1;
++}
++
++static int
++bus_match_rule_set_sender(struct bus_match_rule *rule,
++			  const char *sender,
++			  gfp_t gfp_flags)
++{
++	char *new;
++
++	WARN_ON(!sender);
++
++	new = kstrdup(sender, gfp_flags);
++	if (new == NULL)
++		return 0;
++
++	rule->flags |= BUS_MATCH_SENDER;
++	kfree(rule->sender);
++	rule->sender = new;
++
++	return 1;
++}
++
++static int
++bus_match_rule_set_destination(struct bus_match_rule *rule,
++			       const char   *destination,
++			       gfp_t gfp_flags)
++{
++	char *new;
++
++	WARN_ON(!destination);
++
++	new = kstrdup(destination, gfp_flags);
++	if (new == NULL)
++		return 0;
++
++	rule->flags |= BUS_MATCH_DESTINATION;
++	kfree(rule->destination);
++	rule->destination = new;
++
++	return 1;
++}
++
++#define ISWHITE(c) (((c) == ' ') || ((c) == '\t') || ((c) == '\n') || \
++		    ((c) == '\r'))
++
++static int find_key(const char *str, int start, char *key, int *value_pos)
++{
++	const char *p;
++	const char *s;
++	const char *key_start;
++	const char *key_end;
++
++	s = str;
++
++	p = s + start;
++
++	while (*p && ISWHITE(*p))
++		++p;
++
++	key_start = p;
++
++	while (*p && *p != '=' && !ISWHITE(*p))
++		++p;
++
++	key_end = p;
++
++	while (*p && ISWHITE(*p))
++		++p;
++
++	if (key_start == key_end) {
++		/* Empty match rules or trailing whitespace are OK */
++		*value_pos = p - s;
++		return 1;
++	}
++
++	if (*p != '=') {
++		pr_warn("Match rule has a key with no subsequent '=' character");
++		return 0;
++	}
++	++p;
++
++	strncat(key, key_start, key_end - key_start);
++
++	*value_pos = p - s;
++
++	return 1;
++}
++
++static int find_value(const char *str, int start, const char *key, char *value,
++		      int *value_end)
++{
++	const char *p;
++	const char *s;
++	char quote_char;
++	int orig_len;
++
++	orig_len = strlen(value);
++
++	s = str;
++
++	p = s + start;
++
++	quote_char = '\0';
++
++	while (*p) {
++		if (quote_char == '\0') {
++			switch (*p) {
++			case '\0':
++				goto done;
++
++			case '\'':
++				quote_char = '\'';
++				goto next;
++
++			case ',':
++				++p;
++				goto done;
++
++			case '\\':
++				quote_char = '\\';
++				goto next;
++
++			default:
++				strncat(value, p, 1);
++			}
++		} else if (quote_char == '\\') {
++			/*\ only counts as an escape if escaping a quote mark */
++			if (*p != '\'')
++				strncat(value, "\\", 1);
++
++			strncat(value, p, 1);
++
++			quote_char = '\0';
++		} else {
++			if (*p == '\'')
++				quote_char = '\0';
++			else
++				strncat(value, p, 1);
++		}
++
++next:
++		++p;
++	}
++
++done:
++
++	if (quote_char == '\\')
++		strncat(value, "\\", 1);
++	else if (quote_char == '\'') {
++		pr_warn("Unbalanced quotation marks in match rule");
++		return 0;
++	}
++
++	/* Zero-length values are allowed */
++
++	*value_end = p - s;
++
++	return 1;
++}
++
++/* duplicates aren't allowed so the real legitimate max is only 6 or
++ * so. Leaving extra so we don't have to bother to update it.
++ * FIXME this is sort of busted now with arg matching, but we let
++ * you match on up to 10 args for now
++ */
++#define MAX_RULE_TOKENS 16
++
++/* this is slightly too high level to be termed a "token"
++ * but let's not be pedantic.
++ */
++struct rule_token {
++	char *key;
++	char *value;
++};
++
++static int tokenize_rule(const char *rule_text,
++			 struct rule_token tokens[MAX_RULE_TOKENS],
++			 gfp_t gfp_flags)
++{
++	int i;
++	int pos;
++	int retval;
++
++	retval = 0;
++
++	i = 0;
++	pos = 0;
++	while (i < MAX_RULE_TOKENS &&
++	       pos < strlen(rule_text)) {
++		char *key;
++		char *value;
++
++		key = kzalloc(DBUS_STRING_MAX_LENGTH, gfp_flags);
++		if (!key) {
++			pr_err("Out of memory");
++			return 0;
++		}
++
++		value = kzalloc(DBUS_STRING_MAX_LENGTH, gfp_flags);
++		if (!value) {
++			kfree(key);
++			pr_err("Out of memory");
++			return 0;
++		}
++
++		if (!find_key(rule_text, pos, key, &pos))
++			goto out;
++
++		if (strlen(key) == 0)
++			goto next;
++
++		tokens[i].key = key;
++
++		if (!find_value(rule_text, pos, tokens[i].key, value, &pos))
++			goto out;
++
++		tokens[i].value = value;
++
++next:
++		++i;
++	}
++
++	retval = 1;
++
++out:
++	if (!retval) {
++		i = 0;
++		while (tokens[i].key || tokens[i].value) {
++			kfree(tokens[i].key);
++			kfree(tokens[i].value);
++			tokens[i].key = NULL;
++			tokens[i].value = NULL;
++			++i;
++		}
++	}
++
++	return retval;
++}
++
++/*
++ * The format is comma-separated with strings quoted with single quotes
++ * as for the shell (to escape a literal single quote, use '\'').
++ *
++ * type='signal',sender='org.freedesktop.DBus',interface='org.freedesktop.DBus',
++ * member='Foo', path='/bar/foo',destination=':452345.34'
++ *
++ */
++struct bus_match_rule *bus_match_rule_parse(const char *rule_text,
++					    gfp_t gfp_flags)
++{
++	struct bus_match_rule *rule;
++	struct rule_token tokens[MAX_RULE_TOKENS+1]; /* NULL termination + 1 */
++	int i;
++
++	if (strlen(rule_text) > DBUS_MAXIMUM_MATCH_RULE_LENGTH) {
++		pr_warn("Match rule text is %ld bytes, maximum is %d",
++			    strlen(rule_text),
++			    DBUS_MAXIMUM_MATCH_RULE_LENGTH);
++		return NULL;
++	}
++
++	memset(tokens, '\0', sizeof(tokens));
++
++	rule = bus_match_rule_new(gfp_flags);
++	if (rule == NULL) {
++		pr_err("Out of memory");
++		goto failed;
++	}
++
++	rule->rule_text = kstrdup(rule_text, gfp_flags);
++	if (rule->rule_text == NULL) {
++		pr_err("Out of memory");
++		goto failed;
++	}
++
++	if (!tokenize_rule(rule_text, tokens, gfp_flags))
++		goto failed;
++
++	i = 0;
++	while (tokens[i].key != NULL) {
++		const char *key = tokens[i].key;
++		const char *value = tokens[i].value;
++
++		if (strcmp(key, "type") == 0) {
++			int t;
++
++			if (rule->flags & BUS_MATCH_MESSAGE_TYPE) {
++				pr_warn("Key %s specified twice in match rule\n",
++					key);
++				goto failed;
++			}
++
++			t = dbus_message_type_from_string(value);
++
++			if (t == DBUS_MESSAGE_TYPE_INVALID) {
++				pr_warn("Invalid message type (%s) in match rule\n",
++					value);
++				goto failed;
++			}
++
++			if (!bus_match_rule_set_message_type(rule, t,
++							     gfp_flags)) {
++				pr_err("Out of memeory");
++				goto failed;
++			}
++		} else if (strcmp(key, "sender") == 0) {
++			if (rule->flags & BUS_MATCH_SENDER) {
++				pr_warn("Key %s specified twice in match rule\n",
++					key);
++				goto failed;
++			}
++
++			if (!bus_match_rule_set_sender(rule, value,
++						       gfp_flags)) {
++				pr_err("Out of memeory");
++				goto failed;
++			}
++		} else if (strcmp(key, "interface") == 0) {
++			if (rule->flags & BUS_MATCH_INTERFACE) {
++				pr_warn("Key %s specified twice in match rule\n",
++					key);
++				goto failed;
++			}
++
++			if (!bus_match_rule_set_interface(rule, value,
++							  gfp_flags)) {
++				pr_err("Out of memeory");
++				goto failed;
++			}
++		} else if (strcmp(key, "member") == 0) {
++			if (rule->flags & BUS_MATCH_MEMBER) {
++				pr_warn("Key %s specified twice in match rule\n",
++					key);
++				goto failed;
++			}
++
++			if (!bus_match_rule_set_member(rule, value,
++						       gfp_flags)) {
++				pr_err("Out of memeory");
++				goto failed;
++			}
++		} else if (strcmp(key, "destination") == 0) {
++			if (rule->flags & BUS_MATCH_DESTINATION) {
++				pr_warn("Key %s specified twice in match rule\n",
++					key);
++				goto failed;
++			}
++
++			if (!bus_match_rule_set_destination(rule, value,
++							    gfp_flags)) {
++				pr_err("Out of memeory");
++				goto failed;
++			}
++		} else if (strcmp(key, "eavesdrop") == 0) {
++			if (strcmp(value, "true") == 0) {
++				rule->flags |= BUS_MATCH_CLIENT_IS_EAVESDROPPING;
++			} else if (strcmp(value, "false") == 0) {
++				rule->flags &= ~(BUS_MATCH_CLIENT_IS_EAVESDROPPING);
++			} else {
++				pr_warn("eavesdrop='%s' is invalid, " \
++					"it should be 'true' or 'false'\n",
++					value);
++				goto failed;
++			}
++		} else if (strncmp(key, "arg", 3) != 0) {
++			pr_warn("Unknown key \"%s\" in match rule\n",
++				   key);
++			goto failed;
++		}
++
++		++i;
++	}
++
++	goto out;
++
++failed:
++	if (rule) {
++		bus_match_rule_free(rule);
++		rule = NULL;
++	}
++
++out:
++
++	i = 0;
++	while (tokens[i].key || tokens[i].value) {
++		WARN_ON(i >= MAX_RULE_TOKENS);
++		kfree(tokens[i].key);
++		kfree(tokens[i].value);
++		++i;
++	}
++
++	return rule;
++}
++
++/* return the match rule containing the hlist_head. It may not be the first
++ * match rule in the list. */
++struct bus_match_rule *match_rule_search(struct rb_root *root,
++					 const char *interface)
++{
++	struct rb_node *node = root->rb_node;
++
++	while (node) {
++		struct bus_match_rule *data =
++			container_of(node, struct bus_match_rule, node);
++		int result;
++
++		result = strcmp(interface, data->interface);
++
++		if (result < 0)
++			node = node->rb_left;
++		else if (result > 0)
++			node = node->rb_right;
++		else
++			return data;
++	}
++	return NULL;
++}
++
++void match_rule_insert(struct rb_root *root, struct bus_match_rule *data)
++{
++	struct rb_node **new = &(root->rb_node), *parent = NULL;
++
++	/* Figure out where to put new node */
++	while (*new) {
++		struct bus_match_rule *this =
++			container_of(*new, struct bus_match_rule, node);
++		int result = strcmp(data->interface, this->interface);
++
++		parent = *new;
++		if (result < 0)
++			new = &((*new)->rb_left);
++		else if (result > 0)
++			new = &((*new)->rb_right);
++		else {
++			/* the head is not used */
++			INIT_HLIST_HEAD(&data->first);
++			/* Add it at the beginning of the list */
++			hlist_add_head(&data->list, &this->first);
++			return;
++		}
++	}
++
++	/* this rule is single in its list */
++	INIT_HLIST_HEAD(&data->first);
++	hlist_add_head(&data->list, &data->first);
++
++	/* Add new node and rebalance tree. */
++	rb_link_node(&data->node, parent, new);
++	rb_insert_color(&data->node, root);
++}
++
++struct bus_match_maker *bus_matchmaker_new(gfp_t gfp_flags)
++{
++	struct bus_match_maker *matchmaker;
++	int i;
++
++	matchmaker = kzalloc(sizeof(struct bus_match_maker), gfp_flags);
++	if (matchmaker == NULL)
++		return NULL;
++
++	for (i = DBUS_MESSAGE_TYPE_INVALID; i < DBUS_NUM_MESSAGE_TYPES; i++) {
++		struct rule_pool *p = matchmaker->rules_by_type + i;
++
++		p->rules_by_iface = RB_ROOT;
++	}
++
++	kref_init(&matchmaker->kref);
++
++	return matchmaker;
++}
++
++void bus_matchmaker_free(struct kref *kref)
++{
++	struct bus_match_maker *matchmaker;
++	struct list_head del_list;
++	struct rb_node *n;
++	int i;
++
++	matchmaker = container_of(kref, struct bus_match_maker, kref);
++
++	/* free names */
++	INIT_LIST_HEAD(&del_list);
++	n = matchmaker->names.rb_node;
++	if (n) {
++		struct dbus_name *dbus_name, *cur, *tmp;
++
++		dbus_name = rb_entry(n, struct dbus_name, node);
++		list_add_tail(&dbus_name->del_list, &del_list);
++
++		list_for_each_entry(cur, &del_list, del_list) {
++			struct dbus_name *right, *left;
++			if (cur->node.rb_right) {
++				right = rb_entry(cur->node.rb_right,
++						 struct dbus_name, node);
++				list_add_tail(&right->del_list, &del_list);
++			}
++			if (cur->node.rb_left) {
++				left = rb_entry(cur->node.rb_left,
++						struct dbus_name, node);
++				list_add_tail(&left->del_list, &del_list);
++			}
++		}
++		list_for_each_entry_safe(dbus_name, tmp, &del_list, del_list) {
++			kfree(dbus_name->name);
++			list_del(&dbus_name->del_list);
++			kfree(dbus_name);
++		}
++	}
++	WARN_ON(!list_empty_careful(&del_list));
++
++	/* free match rules */
++	for (i = 0 ; i < DBUS_NUM_MESSAGE_TYPES ; i++) {
++		struct rule_pool *pool = matchmaker->rules_by_type + i;
++		struct bus_match_rule *match_rule, *cur, *tmp;
++		struct hlist_node *list_tmp, *list_tmp2;
++
++		/* free match rules from the list */
++		hlist_for_each_entry_safe(cur, list_tmp, list_tmp2,
++					  &pool->rules_without_iface, list) {
++			bus_match_rule_free(cur);
++		}
++
++		/* free match rules from the tree */
++		if (!pool->rules_by_iface.rb_node)
++			continue;
++		match_rule = rb_entry(pool->rules_by_iface.rb_node,
++				      struct bus_match_rule, node);
++		list_add_tail(&match_rule->del_list, &del_list);
++
++		list_for_each_entry(cur, &del_list, del_list) {
++			struct bus_match_rule *right, *left;
++			if (cur->node.rb_right) {
++				right = rb_entry(cur->node.rb_right,
++						 struct bus_match_rule, node);
++				list_add_tail(&right->del_list, &del_list);
++			}
++			if (cur->node.rb_left) {
++				left = rb_entry(cur->node.rb_left,
++						struct bus_match_rule, node);
++				list_add_tail(&left->del_list, &del_list);
++			}
++		}
++		list_for_each_entry_safe(match_rule, tmp, &del_list, del_list) {
++			/* keep a ref during the loop to ensure the first
++			 * iteration of the loop does not delete it */
++			hlist_for_each_entry_safe(cur, list_tmp, list_tmp2,
++						  &match_rule->first, list) {
++				if (cur != match_rule)
++					bus_match_rule_free(cur);
++			}
++			list_del(&match_rule->del_list);
++			bus_match_rule_free(match_rule);
++		}
++		WARN_ON(!list_empty_careful(&del_list));
++	}
++
++	kfree(matchmaker);
++}
++
++/* The rule can't be modified after it's added. */
++int bus_matchmaker_add_rule(struct bus_match_maker *matchmaker,
++			    struct bus_match_rule *rule)
++{
++	struct rule_pool *pool;
++
++	WARN_ON(rule->message_type < 0);
++	WARN_ON(rule->message_type >= DBUS_NUM_MESSAGE_TYPES);
++
++	pool = matchmaker->rules_by_type + rule->message_type;
++
++	if (rule->interface)
++		match_rule_insert(&pool->rules_by_iface, rule);
++	else
++		hlist_add_head(&rule->list, &pool->rules_without_iface);
++
++	return 1;
++}
++
++static int match_rule_equal(struct bus_match_rule *a,
++			    struct bus_match_rule *b)
++{
++	if (a->flags != b->flags)
++		return 0;
++
++	if ((a->flags & BUS_MATCH_MESSAGE_TYPE) &&
++	    a->message_type != b->message_type)
++		return 0;
++
++	if ((a->flags & BUS_MATCH_MEMBER) &&
++	    strcmp(a->member, b->member) != 0)
++		return 0;
++
++	if ((a->flags & BUS_MATCH_PATH) &&
++	    strcmp(a->path, b->path) != 0)
++		return 0;
++
++	if ((a->flags & BUS_MATCH_INTERFACE) &&
++	    strcmp(a->interface, b->interface) != 0)
++		return 0;
++
++	if ((a->flags & BUS_MATCH_SENDER) &&
++	    strcmp(a->sender, b->sender) != 0)
++		return 0;
++
++	if ((a->flags & BUS_MATCH_DESTINATION) &&
++	    strcmp(a->destination, b->destination) != 0)
++		return 0;
++
++	if (a->flags & BUS_MATCH_ARGS) {
++		int i;
++
++		if (a->args_len != b->args_len)
++			return 0;
++
++		i = 0;
++		while (i < a->args_len) {
++			int length;
++
++			if ((a->args[i] != NULL) != (b->args[i] != NULL))
++				return 0;
++
++			if (a->arg_lens[i] != b->arg_lens[i])
++				return 0;
++
++			length = a->arg_lens[i] & ~BUS_MATCH_ARG_IS_PATH;
++
++			if (a->args[i] != NULL) {
++				WARN_ON(!b->args[i]);
++				if (memcmp(a->args[i], b->args[i], length) != 0)
++					return 0;
++			}
++
++			++i;
++		}
++	}
++
++	return 1;
++}
++
++/* Remove a single rule which is equal to the given rule by value */
++void bus_matchmaker_remove_rule_by_value(struct bus_match_maker *matchmaker,
++					 struct bus_match_rule *rule)
++{
++	struct rule_pool *pool;
++
++	WARN_ON(rule->message_type < 0);
++	WARN_ON(rule->message_type >= DBUS_NUM_MESSAGE_TYPES);
++
++	pool = matchmaker->rules_by_type + rule->message_type;
++
++	if (rule->interface) {
++		struct bus_match_rule *head =
++			match_rule_search(&pool->rules_by_iface,
++					  rule->interface);
++
++		struct hlist_node *cur;
++		struct bus_match_rule *cur_rule;
++		hlist_for_each_entry(cur_rule, cur, &head->first, list) {
++			if (match_rule_equal(cur_rule, rule)) {
++				hlist_del(cur);
++				if (hlist_empty(&head->first))
++					rb_erase(&head->node,
++						 &pool->rules_by_iface);
++				bus_match_rule_free(cur_rule);
++				break;
++			}
++		}
++	} else {
++		struct hlist_head *head = &pool->rules_without_iface;
++
++		struct hlist_node *cur;
++		struct bus_match_rule *cur_rule;
++		hlist_for_each_entry(cur_rule, cur, head, list) {
++			if (match_rule_equal(cur_rule, rule)) {
++				hlist_del(cur);
++				bus_match_rule_free(cur_rule);
++				break;
++			}
++		}
++	}
++
++}
++
++static int connection_is_primary_owner(struct bus_match_maker *connection,
++				       const char *service_name)
++{
++	struct rb_node *node = connection->names.rb_node;
++
++	if (!service_name)
++		return 0;
++
++	while (node) {
++		struct dbus_name *data = container_of(node, struct dbus_name,
++						      node);
++		int result;
++
++		result = strcmp(service_name, data->name);
++
++		if (result < 0)
++			node = node->rb_left;
++		else if (result > 0)
++			node = node->rb_right;
++		else
++			return 1;
++	}
++	return 0;
++}
++
++static int match_rule_matches(struct bus_match_maker *matchmaker,
++			      struct bus_match_maker *sender,
++			      int eavesdrop,
++			      struct bus_match_rule *rule,
++			      const struct dbus_message *message)
++{
++	/* Don't consider the rule if this is a eavesdropping match rule
++	 * and eavesdropping is not allowed on that peer */
++	if ((rule->flags & BUS_MATCH_CLIENT_IS_EAVESDROPPING) && !eavesdrop)
++		return 0;
++
++	/* Since D-Bus 1.5.6, match rules do not match messages which have a
++	 * DESTINATION field unless the match rule specifically requests this
++	 * by specifying eavesdrop='true' in the match rule. */
++	if (message->destination &&
++	    !(rule->flags & BUS_MATCH_CLIENT_IS_EAVESDROPPING))
++		return 0;
++
++	if (rule->flags & BUS_MATCH_MEMBER) {
++		const char *member;
++
++		WARN_ON(!rule->member);
++
++		member = message->member;
++		if (member == NULL)
++			return 0;
++
++		if (strcmp(member, rule->member) != 0)
++			return 0;
++	}
++
++	if (rule->flags & BUS_MATCH_SENDER) {
++		WARN_ON(!rule->sender);
++
++		if (sender == NULL) {
++			if (strcmp(rule->sender,
++				   "org.freedesktop.DBus") != 0)
++				return 0;
++		} else
++			if (!connection_is_primary_owner(sender, rule->sender))
++				return 0;
++	}
++
++	if (rule->flags & BUS_MATCH_DESTINATION) {
++		const char *destination;
++
++		WARN_ON(!rule->destination);
++
++		destination = message->destination;
++		if (destination == NULL)
++			return 0;
++
++		/* This will not just work out of the box because it this is
++		 * an eavesdropping match rule. */
++		if (matchmaker == NULL) {
++			if (strcmp(rule->destination,
++				   "org.freedesktop.DBus") != 0)
++				return 0;
++		} else
++			if (!connection_is_primary_owner(matchmaker,
++							 rule->destination))
++				return 0;
++	}
++
++	if (rule->flags & BUS_MATCH_PATH) {
++		const char *path;
++
++		WARN_ON(!rule->path);
++
++		path = message->path;
++		if (path == NULL)
++			return 0;
++
++		if (strcmp(path, rule->path) != 0)
++			return 0;
++	}
++
++	return 1;
++}
++
++static bool get_recipients_from_list(struct bus_match_maker *matchmaker,
++				     struct bus_match_maker *sender,
++				     int eavesdrop,
++				     struct hlist_head *rules,
++				     const struct dbus_message *message)
++{
++	struct hlist_node *cur;
++	struct bus_match_rule *rule;
++
++	if (rules == NULL) {
++		pr_debug("no rules of this type\n");
++		return 0;
++	}
++
++	hlist_for_each_entry(rule, cur, rules, list) {
++		if (match_rule_matches(matchmaker, sender, eavesdrop, rule,
++					message)) {
++			pr_debug("[YES] deliver with match rule \"%s\"\n",
++				 rule->rule_text);
++			return 1;
++		} else {
++			pr_debug("[NO]  deliver with match rule \"%s\"\n",
++				 rule->rule_text);
++		}
++	}
++	pr_debug("[NO]  no match rules\n");
++	return 0;
++}
++
++static struct hlist_head
++*bus_matchmaker_get_rules(struct bus_match_maker *matchmaker,
++			  int message_type, const char *interface)
++{
++	static struct hlist_head empty = {0,};
++	struct rule_pool *p;
++
++	WARN_ON(message_type < 0);
++	WARN_ON(message_type >= DBUS_NUM_MESSAGE_TYPES);
++
++	p = matchmaker->rules_by_type + message_type;
++
++	if (interface == NULL)
++		return &p->rules_without_iface;
++	else {
++		struct bus_match_rule *rule =
++			match_rule_search(&p->rules_by_iface, interface);
++		if (rule)
++			return &rule->first;
++		else
++			return &empty;
++	}
++}
++
++bool bus_matchmaker_filter(struct bus_match_maker *matchmaker,
++			   struct bus_match_maker *sender,
++			   int eavesdrop,
++			   const struct dbus_message *message)
++{
++	int type;
++	const char *interface;
++	struct hlist_head *neither, *just_type, *just_iface, *both;
++
++	type = message->type;
++	interface = message->interface;
++
++	neither = bus_matchmaker_get_rules(matchmaker,
++					   DBUS_MESSAGE_TYPE_INVALID, NULL);
++	just_type = just_iface = both = NULL;
++
++	if (interface != NULL)
++		just_iface = bus_matchmaker_get_rules(matchmaker,
++						      DBUS_MESSAGE_TYPE_INVALID,
++						      interface);
++
++	if (type > DBUS_MESSAGE_TYPE_INVALID && type < DBUS_NUM_MESSAGE_TYPES) {
++		just_type = bus_matchmaker_get_rules(matchmaker, type, NULL);
++
++		if (interface != NULL)
++			both = bus_matchmaker_get_rules(matchmaker, type,
++							interface);
++	}
++
++	if (get_recipients_from_list(matchmaker, sender, eavesdrop, neither,
++				     message))
++		return 1;
++	if (get_recipients_from_list(matchmaker, sender, eavesdrop, just_iface,
++				     message))
++		return 1;
++	if (get_recipients_from_list(matchmaker, sender, eavesdrop, just_type,
++				     message))
++		return 1;
++	if (get_recipients_from_list(matchmaker, sender, eavesdrop, both,
++				     message))
++		return 1;
++
++	return connection_is_primary_owner(matchmaker, message->destination);
++}
++
++void bus_matchmaker_add_name(struct bus_match_maker *matchmaker,
++			     const char *name,
++			     gfp_t gfp_flags)
++{
++	struct dbus_name *dbus_name;
++	struct rb_node **new = &(matchmaker->names.rb_node), *parent = NULL;
++
++	dbus_name = kmalloc(sizeof(struct dbus_name), gfp_flags);
++	if (!dbus_name)
++		return;
++	dbus_name->name = kstrdup(name, gfp_flags);
++	if (!dbus_name->name)
++		return;
++
++	/* Figure out where to put new node */
++	while (*new) {
++		struct dbus_name *this = container_of(*new, struct dbus_name,
++						      node);
++		int result = strcmp(dbus_name->name, this->name);
++
++		parent = *new;
++		if (result < 0)
++			new = &((*new)->rb_left);
++		else if (result > 0)
++			new = &((*new)->rb_right);
++		else
++			return;
++	}
++
++	/* Add new node and rebalance tree. */
++	rb_link_node(&dbus_name->node, parent, new);
++	rb_insert_color(&dbus_name->node, &matchmaker->names);
++}
++
++void bus_matchmaker_remove_name(struct bus_match_maker *matchmaker,
++				const char *name)
++{
++	struct rb_node *node = matchmaker->names.rb_node;
++
++	while (node) {
++		struct dbus_name *data = container_of(node, struct dbus_name,
++						      node);
++		int result;
++
++		result = strcmp(name, data->name);
++
++		if (result < 0)
++			node = node->rb_left;
++		else if (result > 0)
++			node = node->rb_right;
++		else {
++			rb_erase(&data->node, &matchmaker->names);
++			kfree(data->name);
++			kfree(data);
++		}
++	}
++
++}
++
+diff --git a/net/netfilter/nfdbus/matchrule.h b/net/netfilter/nfdbus/matchrule.h
+new file mode 100644
+index 0000000..e16580c
+--- /dev/null
++++ b/net/netfilter/nfdbus/matchrule.h
+@@ -0,0 +1,82 @@
++/*
++ * signals.h  Bus signal connection implementation
++ *
++ * Copyright (C) 2003  Red Hat, Inc.
++ *
++ * This program is free software; you can redistribute it and/or modify
++ * it under the terms of the GNU General Public License as published by
++ * the Free Software Foundation; either version 2 of the License, or
++ * (at your option) any later version.
++ *
++ * This program is distributed in the hope that it will be useful,
++ * but WITHOUT ANY WARRANTY; without even the implied warranty of
++ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
++ * GNU General Public License for more details.
++ *
++ * You should have received a copy of the GNU General Public License
++ * along with this program; if not, write to the Free Software
++ * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
++ *
++ */
++
++#ifndef BUS_SIGNALS_H
++#define BUS_SIGNALS_H
++
++#include <linux/gfp.h>
++#include <linux/list.h>
++#include <linux/rbtree.h>
++#include <linux/slab.h>
++#include <net/af_bus.h>
++
++#include "message.h"
++
++struct bus_match_rule *bus_match_rule_new(gfp_t gfp_flags);
++void bus_match_rule_free(struct bus_match_rule *rule);
++
++struct bus_match_rule *bus_match_rule_parse(const char *rule_text,
++					    gfp_t gfp_flags);
++
++struct rule_pool {
++	/* Maps non-NULL interface names to a list of bus_match_rule */
++	struct rb_root rules_by_iface;
++
++	/* List of bus_match_rule which don't specify an interface */
++	struct hlist_head rules_without_iface;
++};
++
++struct bus_match_maker {
++	struct sockaddr_bus addr;
++
++	struct hlist_node table_node;
++
++	/* Pools of rules, grouped by the type of message they match. 0
++	 * (DBUS_MESSAGE_TYPE_INVALID) represents rules that do not specify a
++	 * message type.
++	 */
++	struct rule_pool rules_by_type[DBUS_NUM_MESSAGE_TYPES];
++
++	struct rb_root names;
++
++	struct kref kref;
++};
++
++
++struct bus_match_maker *bus_matchmaker_new(gfp_t gfp_flags);
++void bus_matchmaker_free(struct kref *kref);
++
++int bus_matchmaker_add_rule(struct bus_match_maker *matchmaker,
++			    struct bus_match_rule *rule);
++void bus_matchmaker_remove_rule_by_value(struct bus_match_maker *matchmaker,
++					 struct bus_match_rule *value);
++
++bool bus_matchmaker_filter(struct bus_match_maker *matchmaker,
++			   struct bus_match_maker *sender,
++			   int eavesdrop,
++			   const struct dbus_message *message);
++
++void bus_matchmaker_add_name(struct bus_match_maker *matchmaker,
++			     const char *name, gfp_t gfp_flags);
++void bus_matchmaker_remove_name(struct bus_match_maker *matchmaker,
++				const char *name);
++
++#endif /* BUS_SIGNALS_H */
+diff --git a/net/netfilter/nfdbus/message.c b/net/netfilter/nfdbus/message.c
+new file mode 100644
+index 0000000..93c409c
+--- /dev/null
++++ b/net/netfilter/nfdbus/message.c
+@@ -0,0 +1,194 @@
++/*
++ * message.c  Basic D-Bus message parsing
++ *
++ * Copyright (C) 2010-2012  Collabora Ltd
++ * Authors:	Alban Crequy <alban.crequy@collabora.co.uk>
++ * Copyright (C) 2002, 2003, 2004, 2005  Red Hat Inc.
++ * Copyright (C) 2002, 2003  CodeFactory AB
++ *
++ * This program is free software; you can redistribute it and/or modify
++ * it under the terms of the GNU General Public License as published by
++ * the Free Software Foundation; either version 2 of the License, or
++ * (at your option) any later version.
++ *
++ * This program is distributed in the hope that it will be useful,
++ * but WITHOUT ANY WARRANTY; without even the implied warranty of
++ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
++ * GNU General Public License for more details.
++ *
++ * You should have received a copy of the GNU General Public License
++ * along with this program; if not, write to the Free Software
++ * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
++ *
++ */
++
++#include <linux/slab.h>
++
++#include "message.h"
++
++int dbus_message_type_from_string(const char *type_str)
++{
++	if (strcmp(type_str, "method_call") == 0)
++		return DBUS_MESSAGE_TYPE_METHOD_CALL;
++	if (strcmp(type_str, "method_return") == 0)
++		return DBUS_MESSAGE_TYPE_METHOD_RETURN;
++	else if (strcmp(type_str, "signal") == 0)
++		return DBUS_MESSAGE_TYPE_SIGNAL;
++	else if (strcmp(type_str, "error") == 0)
++		return DBUS_MESSAGE_TYPE_ERROR;
++	else
++		return DBUS_MESSAGE_TYPE_INVALID;
++}
++
++int dbus_message_parse(unsigned char *message, size_t len,
++		       struct dbus_message *dbus_message)
++{
++	unsigned char *cur;
++	int array_header_len;
++
++	dbus_message->message = message;
++
++	if (len < 4 + 4 + 4 + 4 || message[1] == 0 || message[1] > 4)
++		return -EINVAL;
++
++	dbus_message->type = message[1];
++	dbus_message->body_length = *((u32 *)(message + 4));
++	cur = message + 12;
++	array_header_len = *(u32 *)cur;
++	dbus_message->len_offset = 12;
++	cur += 4;
++	while (cur < message + len
++	       && cur < message + 12 + 4 + array_header_len) {
++		int header_code;
++		int signature_len;
++		unsigned char *signature;
++		int str_len;
++		unsigned char *str;
++
++		/* D-Bus alignment craziness */
++		if ((cur - message) % 8 != 0)
++			cur += 8 - (cur - message) % 8;
++
++		header_code = *(char *)cur;
++		cur++;
++		signature_len = *(char *)cur;
++		/* All header fields of the current D-Bus spec have a simple
++		 * type, either o, s, g, or u */
++		if (signature_len != 1)
++			return -EINVAL;
++		cur++;
++		signature = cur;
++		cur += signature_len + 1;
++		if (signature[0] != 'o' &&
++		    signature[0] != 's' &&
++		    signature[0] != 'g' &&
++		    signature[0] != 'u')
++			return -EINVAL;
++
++		if (signature[0] == 'u') {
++			cur += 4;
++			continue;
++		}
++
++		if (signature[0] != 'g') {
++			str_len = *(u32 *)cur;
++			cur += 4;
++		} else {
++			str_len = *(char *)cur;
++			cur += 1;
++		}
++
++		str = cur;
++		switch (header_code) {
++		case 1:
++			dbus_message->path = str;
++			break;
++		case 2:
++			dbus_message->interface = str;
++			break;
++		case 3:
++			dbus_message->member = str;
++			break;
++		case 6:
++			dbus_message->destination = str;
++			break;
++		case 7:
++			dbus_message->sender = str;
++			break;
++		case 8:
++			dbus_message->body_signature = str;
++			break;
++		}
++		cur += str_len + 1;
++	}
++
++	dbus_message->padding_end = (8 - (cur - message) % 8) % 8;
++
++	/* Jump to body D-Bus alignment craziness */
++	if ((cur - message) % 8 != 0)
++		cur += 8 - (cur - message) % 8;
++	dbus_message->new_header_offset = cur - message;
++
++	if (dbus_message->new_header_offset
++	    + dbus_message->body_length != len) {
++		pr_warn("Message truncated? " \
++			"Header %d + Body %d != Length %zd\n",
++			dbus_message->new_header_offset,
++			dbus_message->body_length, len);
++		return -EINVAL;
++	}
++
++	if (dbus_message->body_signature &&
++	    dbus_message->body_signature[0] == 's') {
++		int str_len;
++		str_len = *(u32 *)cur;
++		cur += 4;
++		dbus_message->arg0 = cur;
++		cur += str_len + 1;
++	}
++
++	if ((cur - message) % 4 != 0)
++		cur += 4 - (cur - message) % 4;
++
++	if (dbus_message->body_signature &&
++	    dbus_message->body_signature[0] == 's' &&
++	    dbus_message->body_signature[1] == 's') {
++		int str_len;
++		str_len = *(u32 *)cur;
++		cur += 4;
++		dbus_message->arg1 = cur;
++		cur += str_len + 1;
++	}
++
++	if ((cur - message) % 4 != 0)
++		cur += 4 - (cur - message) % 4;
++
++	if (dbus_message->body_signature &&
++	    dbus_message->body_signature[0] == 's' &&
++	    dbus_message->body_signature[1] == 's' &&
++	    dbus_message->body_signature[2] == 's') {
++		int str_len;
++		str_len = *(u32 *)cur;
++		cur += 4;
++		dbus_message->arg2 = cur;
++		cur += str_len + 1;
++	}
++
++	if ((cur - message) % 4 != 0)
++		cur += 4 - (cur - message) % 4;
++
++	if (dbus_message->type == DBUS_MESSAGE_TYPE_SIGNAL &&
++	    dbus_message->sender && dbus_message->path &&
++	    dbus_message->interface && dbus_message->member &&
++	    dbus_message->arg0 &&
++	    strcmp(dbus_message->sender, "org.freedesktop.DBus") == 0 &&
++	    strcmp(dbus_message->interface, "org.freedesktop.DBus") == 0 &&
++	    strcmp(dbus_message->path, "/org/freedesktop/DBus") == 0) {
++		if (strcmp(dbus_message->member, "NameAcquired") == 0)
++			dbus_message->name_acquired = dbus_message->arg0;
++		else if (strcmp(dbus_message->member, "NameLost") == 0)
++			dbus_message->name_lost = dbus_message->arg0;
++	}
++
++	return 0;
++}
+diff --git a/net/netfilter/nfdbus/message.h b/net/netfilter/nfdbus/message.h
+new file mode 100644
+index 0000000..e3ea4d3
+--- /dev/null
++++ b/net/netfilter/nfdbus/message.h
+@@ -0,0 +1,71 @@
++/*
++ * message.h  Basic D-Bus message parsing
++ *
++ * Copyright (C) 2010  Collabora Ltd
++ *
++ * This program is free software; you can redistribute it and/or modify
++ * it under the terms of the GNU General Public License as published by
++ * the Free Software Foundation; either version 2 of the License, or
++ * (at your option) any later version.
++ *
++ * This program is distributed in the hope that it will be useful,
++ * but WITHOUT ANY WARRANTY; without even the implied warranty of
++ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
++ * GNU General Public License for more details.
++ *
++ * You should have received a copy of the GNU General Public License
++ * along with this program; if not, write to the Free Software
++ * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
++ *
++ */
++
++#ifndef DBUS_MESSAGE_H
++#define DBUS_MESSAGE_H
++
++#include <linux/list.h>
++
++#define DBUS_MAXIMUM_MATCH_RULE_LENGTH 1024
++
++/* Types of message */
++
++#define DBUS_MESSAGE_TYPE_INVALID       0
++#define DBUS_MESSAGE_TYPE_METHOD_CALL   1
++#define DBUS_MESSAGE_TYPE_METHOD_RETURN 2
++#define DBUS_MESSAGE_TYPE_ERROR         3
++#define DBUS_MESSAGE_TYPE_SIGNAL        4
++#define DBUS_NUM_MESSAGE_TYPES          5
++
++/* No need to implement a feature-complete parser. It only implement what is
++ * needed by the bus. */
++struct dbus_message {
++	char *message;
++	size_t len;
++	size_t new_len;
++
++	/* direct pointers to the fields */
++	int type;
++	char *path;
++	char *interface;
++	char *member;
++	char *destination;
++	char *sender;
++	char *body_signature;
++	int body_length;
++	char *arg0;
++	char *arg1;
++	char *arg2;
++	char *name_acquired;
++	char *name_lost;
++
++	/* How to add the 'sender' field in the headers */
++	int new_header_offset;
++	int len_offset;
++	int padding_end;
++};
++
++int dbus_message_type_from_string(const char *type_str);
++
++int dbus_message_parse(unsigned char *message, size_t len,
++		       struct dbus_message *dbus_message);
++
++#endif /* DBUS_MESSAGE_H */
+diff --git a/net/netfilter/nfdbus/nfdbus.c b/net/netfilter/nfdbus/nfdbus.c
+new file mode 100644
+index 0000000..f6642e2
+--- /dev/null
++++ b/net/netfilter/nfdbus/nfdbus.c
+@@ -0,0 +1,456 @@
++/*
++ *  nfdbus.c - Netfilter module for AF_BUS/BUS_PROTO_DBUS.
++ */
++
++#define DRIVER_AUTHOR "Alban Crequy"
++#define DRIVER_DESC   "Netfilter module for AF_BUS/BUS_PROTO_DBUS."
++
++#include "nfdbus.h"
++
++#include <linux/module.h>
++#include <linux/kernel.h>
++#include <linux/init.h>
++#include <linux/skbuff.h>
++#include <linux/netfilter.h>
++#include <linux/connector.h>
++#include <net/af_bus.h>
++
++#include "message.h"
++#include "matchrule.h"
++
++static struct nf_hook_ops nfho_dbus;
++
++static struct cb_id cn_cmd_id = { CN_IDX_NFDBUS, CN_VAL_NFDBUS };
++
++static unsigned int hash;
++
++/* Scoped by AF_BUS address */
++struct hlist_head matchrules_table[BUS_HASH_SIZE];
++DEFINE_SPINLOCK(matchrules_lock);
++
++static struct bus_match_maker *find_match_maker(struct sockaddr_bus *addr,
++		bool create, bool delete)
++{
++	u64 hash;
++	struct hlist_node *node;
++	struct bus_match_maker *matchmaker;
++	int path_len = strlen(addr->sbus_path);
++
++	hash = csum_partial(addr->sbus_path,
++			    strlen(addr->sbus_path), 0);
++	hash ^= addr->sbus_addr.s_addr;
++	hash ^= hash >> 32;
++	hash ^= hash >> 16;
++	hash ^= hash >> 8;
++	hash &= 0xff;
++
++	spin_lock(&matchrules_lock);
++	hlist_for_each_entry(matchmaker, node, &matchrules_table[hash],
++			     table_node) {
++		if (addr->sbus_family == matchmaker->addr.sbus_family &&
++		    addr->sbus_addr.s_addr == matchmaker->addr.sbus_addr.s_addr &&
++		    !memcmp(addr->sbus_path, matchmaker->addr.sbus_path,
++			   path_len)) {
++			kref_get(&matchmaker->kref);
++			if (delete)
++				hlist_del(&matchmaker->table_node);
++			spin_unlock(&matchrules_lock);
++			pr_debug("Found matchmaker for hash %llu", hash);
++			return matchmaker;
++		}
++	}
++	spin_unlock(&matchrules_lock);
++
++	if (!create) {
++		pr_debug("Matchmaker for hash %llu not found", hash);
++		return NULL;
++	}
++
++	matchmaker = bus_matchmaker_new(GFP_ATOMIC);
++	matchmaker->addr.sbus_family = addr->sbus_family;
++	matchmaker->addr.sbus_addr.s_addr = addr->sbus_addr.s_addr;
++	memcpy(matchmaker->addr.sbus_path, addr->sbus_path, BUS_PATH_MAX);
++
++	pr_debug("Create new matchmaker for hash %llu\n", hash);
++	spin_lock(&matchrules_lock);
++	hlist_add_head(&matchmaker->table_node, &matchrules_table[hash]);
++	kref_get(&matchmaker->kref);
++	spin_unlock(&matchrules_lock);
++	return matchmaker;
++}
++
++static unsigned int dbus_filter(unsigned int hooknum,
++				struct sk_buff *skb,
++				const struct net_device *in,
++				const struct net_device *out,
++				int (*okfn)(struct sk_buff *))
++{
++	struct bus_send_context	*sendctx;
++	struct bus_match_maker *matchmaker = NULL;
++	struct bus_match_maker *sender = NULL;
++	struct dbus_message msg = {0,};
++	unsigned char *data;
++	size_t len;
++	int err;
++	int ret;
++
++	if (!skb->sk || skb->sk->sk_family != PF_BUS) {
++		WARN(1, "netfilter_dbus received an invalid skb");
++		return NF_DROP;
++	}
++
++	data = skb->data;
++	sendctx = BUSCB(skb).sendctx;
++	if (!sendctx || !sendctx->sender || !sendctx->sender_socket) {
++		WARN(1, "netfilter_dbus received an AF_BUS packet" \
++		     " without context. This is a bug. Dropping the"
++			" packet.");
++		return NF_DROP;
++	}
++
++	if (sendctx->sender_socket->sk->sk_protocol != BUS_PROTO_DBUS) {
++		/* This kernel module is for D-Bus. It must not
++		 * interfere with other users of AF_BUS. */
++		return NF_ACCEPT;
++	}
++	if (sendctx->recipient)
++		matchmaker = find_match_maker(sendctx->recipient, false, false);
++
++	len =  skb_tail_pointer(skb) - data;
++
++	if (sendctx->to_master && sendctx->main_recipient) {
++		pr_debug("AF_BUS packet to the bus master. ACCEPT.\n");
++		ret = NF_ACCEPT;
++		goto out;
++	}
++
++	if (sendctx->main_recipient && !sendctx->bus_master_side) {
++		pr_debug("AF_BUS packet from a peer to a peer (unicast). ACCEPT.\n");
++		ret = NF_ACCEPT;
++		goto out;
++	}
++
++	err = dbus_message_parse(data, len, &msg);
++	if (err) {
++		if (!sendctx->main_recipient) {
++			pr_debug("AF_BUS packet for an eavesdropper or " \
++				 "multicast is not parsable. DROP.\n");
++			ret = NF_DROP;
++			goto out;
++		} else if (sendctx->bus_master_side) {
++			pr_debug("AF_BUS packet from bus master is not parsable. ACCEPT.\n");
++			ret = NF_ACCEPT;
++			goto out;
++		} else {
++			pr_debug("AF_BUS packet from peer is not parsable. DROP.\n");
++			ret = NF_DROP;
++			goto out;
++		}
++	}
++
++	if (sendctx->bus_master_side && !sendctx->main_recipient) {
++		pr_debug("AF_BUS packet '%s' from the bus master is for an " \
++			 "eavesdropper. DROP.\n",
++		       msg.member ? msg.member : "");
++		ret = NF_DROP;
++		goto out;
++	}
++	if (sendctx->bus_master_side) {
++		if (msg.name_acquired) {
++			pr_debug("New name: %s [%p %p].\n",
++				 msg.name_acquired, sendctx->sender,
++				 sendctx->recipient);
++
++			sender = find_match_maker(sendctx->sender, true, false);
++			bus_matchmaker_add_name(sender, msg.name_acquired,
++						GFP_ATOMIC);
++		}
++		if (msg.name_lost) {
++			pr_debug("Lost name: %s [%p %p].\n",
++				 msg.name_lost, sendctx->sender,
++				 sendctx->recipient);
++
++			sender = find_match_maker(sendctx->sender, true, false);
++			bus_matchmaker_remove_name(sender, msg.name_acquired);
++		}
++
++		pr_debug("AF_BUS packet '%s' from the bus master. ACCEPT.\n",
++			 msg.member ? msg.member : "");
++		ret = NF_ACCEPT;
++		goto out;
++	}
++
++	pr_debug("Multicast AF_BUS packet, %ld bytes, " \
++		 "considering recipient %lld...\n", len,
++		 sendctx->recipient ? sendctx->recipient->sbus_addr.s_addr : 0);
++
++	pr_debug("Message type %d %s->%s [iface: %s][member: %s][matchmaker=%p]...\n",
++		 msg.type,
++		 msg.sender ? msg.sender : "",
++		 msg.destination ? msg.destination : "",
++		 msg.interface ? msg.interface : "",
++		 msg.member ? msg.member : "",
++		 matchmaker);
++
++	if (!matchmaker) {
++		pr_debug("No match rules for this recipient. DROP.\n");
++		ret = NF_DROP;
++		goto out;
++	}
++
++	sender = find_match_maker(sendctx->sender, true, false);
++	err = bus_matchmaker_filter(matchmaker, sender, sendctx->eavesdropper,
++				    &msg);
++	if (err) {
++		pr_debug("Matchmaker: ACCEPT.\n");
++		ret = NF_ACCEPT;
++		goto out;
++	} else {
++		pr_debug("Matchmaker: DROP.\n");
++		ret = NF_DROP;
++		goto out;
++	}
++
++out:
++	if (matchmaker)
++		kref_put(&matchmaker->kref, bus_matchmaker_free);
++	if (sender)
++		kref_put(&sender->kref, bus_matchmaker_free);
++	return ret;
++}
++
++/* Taken from drbd_nl_send_reply() */
++static void nfdbus_nl_send_reply(struct cn_msg *msg, int ret_code)
++{
++	char buffer[sizeof(struct cn_msg)+sizeof(struct nfdbus_nl_cfg_reply)];
++	struct cn_msg *cn_reply = (struct cn_msg *) buffer;
++	struct nfdbus_nl_cfg_reply *reply =
++		(struct nfdbus_nl_cfg_reply *)cn_reply->data;
++	int rr;
++
++	memset(buffer, 0, sizeof(buffer));
++	cn_reply->id = msg->id;
++
++	cn_reply->seq = msg->seq;
++	cn_reply->ack = msg->ack  + 1;
++	cn_reply->len = sizeof(struct nfdbus_nl_cfg_reply);
++	cn_reply->flags = 0;
++
++	reply->ret_code = ret_code;
++
++	rr = cn_netlink_send(cn_reply, 0, GFP_NOIO);
++	if (rr && rr != -ESRCH)
++		pr_debug("nfdbus: cn_netlink_send()=%d\n", rr);
++}
++
++/**
++ * nfdbus_check_perm - check if a pid is allowed to update match rules
++ * @sockaddr_bus: the socket address of the bus
++ * @pid: the process id that wants to update the match rules set
++ *
++ * Test if a given process id is allowed to update the match rules set
++ * for this bus. Only the process that owns the bus master listen socket
++ * is allowed to update the match rules set for the bus.
++ */
++static bool nfdbus_check_perm(struct sockaddr_bus *sbusname, pid_t pid)
++{
++	struct net *net = get_net_ns_by_pid(pid);
++	struct sock *s;
++	struct bus_address *addr;
++	struct hlist_node *node;
++	int offset = (sbusname->sbus_path[0] == '\0');
++	int path_len = strnlen(sbusname->sbus_path + offset, BUS_PATH_MAX);
++	int len;
++	if (!net)
++		return false;
++
++	len = path_len + 1 + sizeof(__kernel_sa_family_t) +
++	      sizeof(struct bus_addr);
++
++	spin_lock(&bus_address_lock);
++
++	hlist_for_each_entry(addr, node, &bus_address_table[hash],
++			     table_node) {
++		s = addr->sock;
++
++		if (s->sk_protocol != BUS_PROTO_DBUS)
++			continue;
++
++		if (!net_eq(sock_net(s), net))
++			continue;
++
++		if (addr->len == len &&
++		    addr->name->sbus_family == sbusname->sbus_family &&
++		    addr->name->sbus_addr.s_addr == BUS_MASTER_ADDR &&
++		    bus_same_bus(addr->name, sbusname) &&
++		    pid_nr(s->sk_peer_pid) == pid) {
++			spin_unlock(&bus_address_lock);
++			return true;
++		}
++	}
++
++	spin_unlock(&bus_address_lock);
++
++	return false;
++}
++
++static void cn_cmd_cb(struct cn_msg *msg, struct netlink_skb_parms *nsp)
++{
++	struct nfdbus_nl_cfg_req *nlp = (struct nfdbus_nl_cfg_req *)msg->data;
++	struct cn_msg *cn_reply;
++	struct nfdbus_nl_cfg_reply *reply;
++	int retcode, rr;
++	pid_t pid = task_tgid_vnr(current);
++	int reply_size = sizeof(struct cn_msg)
++		+ sizeof(struct nfdbus_nl_cfg_reply);
++
++	pr_debug("nfdbus: %s nsp->pid=%d pid=%d\n", __func__, nsp->pid, pid);
++
++	if (!nfdbus_check_perm(&nlp->addr, pid)) {
++		pr_debug(KERN_ERR "nfdbus: pid=%d is not allowed!\n", pid);
++		retcode = EPERM;
++		goto fail;
++	}
++
++	cn_reply = kzalloc(reply_size, GFP_KERNEL);
++	if (!cn_reply) {
++		retcode = ENOMEM;
++		goto fail;
++	}
++	reply = (struct nfdbus_nl_cfg_reply *) cn_reply->data;
++
++	if (msg->len < sizeof(struct nfdbus_nl_cfg_req)) {
++		reply->ret_code = EINVAL;
++	} else if (nlp->cmd == NFDBUS_CMD_ADDMATCH) {
++		struct bus_match_rule *rule;
++		struct bus_match_maker *matchmaker;
++		reply->ret_code = 0;
++
++		if (msg->len == 0)
++			reply->ret_code = EINVAL;
++
++		rule = bus_match_rule_parse(nlp->data, GFP_ATOMIC);
++		if (rule) {
++			matchmaker = find_match_maker(&nlp->addr, true, false);
++			pr_debug("Add match rule for matchmaker %p\n",
++				 matchmaker);
++			bus_matchmaker_add_rule(matchmaker, rule);
++			kref_put(&matchmaker->kref, bus_matchmaker_free);
++		} else {
++			reply->ret_code = EINVAL;
++		}
++	} else if (nlp->cmd == NFDBUS_CMD_REMOVEMATCH) {
++		struct bus_match_rule *rule;
++		struct bus_match_maker *matchmaker;
++
++		rule = bus_match_rule_parse(nlp->data, GFP_ATOMIC);
++		matchmaker = find_match_maker(&nlp->addr, false, false);
++		if (!matchmaker) {
++			reply->ret_code = EINVAL;
++		} else {
++			pr_debug("Remove match rule for matchmaker %p\n",
++				 matchmaker);
++			bus_matchmaker_remove_rule_by_value(matchmaker, rule);
++			kref_put(&matchmaker->kref, bus_matchmaker_free);
++			reply->ret_code = 0;
++		}
++		bus_match_rule_free(rule);
++
++	} else if (nlp->cmd == NFDBUS_CMD_REMOVEALLMATCH) {
++		struct bus_match_maker *matchmaker;
++
++		matchmaker = find_match_maker(&nlp->addr, false, true);
++		if (!matchmaker) {
++			reply->ret_code = EINVAL;
++		} else {
++			pr_debug("Remove matchmaker %p\n", matchmaker);
++			kref_put(&matchmaker->kref, bus_matchmaker_free);
++			kref_put(&matchmaker->kref, bus_matchmaker_free);
++			reply->ret_code = 0;
++		}
++
++	} else {
++		reply->ret_code = EINVAL;
++	}
++
++	cn_reply->id = msg->id;
++	cn_reply->seq = msg->seq;
++	cn_reply->ack = msg->ack  + 1;
++	cn_reply->len = sizeof(struct nfdbus_nl_cfg_reply);
++	cn_reply->flags = 0;
++
++	rr = cn_netlink_reply(cn_reply, nsp->pid, GFP_KERNEL);
++	if (rr && rr != -ESRCH)
++		pr_debug("nfdbus: cn_netlink_send()=%d\n", rr);
++	pr_debug("nfdbus: cn_netlink_reply(pid=%d)=%d\n", nsp->pid, rr);
++
++	kfree(cn_reply);
++	return;
++fail:
++	nfdbus_nl_send_reply(msg, retcode);
++}
++
++static int __init nfdbus_init(void)
++{
++	int err;
++	struct bus_addr master_addr;
++
++	master_addr.s_addr = BUS_MASTER_ADDR;
++	hash = bus_compute_hash(master_addr);
++
++	pr_debug("Loading netfilter_dbus\n");
++
++	/* Install D-Bus netfilter hook */
++	nfho_dbus.hook     = dbus_filter;
++	nfho_dbus.hooknum  = NF_BUS_SENDING;
++	nfho_dbus.pf       = NFPROTO_BUS; /* Do not use PF_BUS, you fool! */
++	nfho_dbus.priority = 0;
++	nfho_dbus.owner = THIS_MODULE;
++	err = nf_register_hook(&nfho_dbus);
++	if (err)
++		return err;
++	pr_debug("Netfilter hook for D-Bus: installed.\n");
++
++	/* Install connector hook */
++	err = cn_add_callback(&cn_cmd_id, "nfdbus", cn_cmd_cb);
++	if (err)
++		goto err_cn_cmd_out;
++	pr_debug("Connector hook: installed.\n");
++
++	return 0;
++
++err_cn_cmd_out:
++	nf_unregister_hook(&nfho_dbus);
++
++	return err;
++}
++
++static void __exit nfdbus_cleanup(void)
++{
++	int i;
++	struct hlist_node *node, *tmp;
++	struct bus_match_maker *matchmaker;
++	nf_unregister_hook(&nfho_dbus);
++
++	cn_del_callback(&cn_cmd_id);
++
++	spin_lock(&matchrules_lock);
++	for (i = 0; i < BUS_HASH_SIZE; i++) {
++		hlist_for_each_entry_safe(matchmaker, node, tmp,
++					  &matchrules_table[i], table_node) {
++			hlist_del(&matchmaker->table_node);
++			kref_put(&matchmaker->kref, bus_matchmaker_free);
++		}
++	}
++	spin_unlock(&matchrules_lock);
++
++	pr_debug("Unloading netfilter_dbus\n");
++}
++
++module_init(nfdbus_init);
++module_exit(nfdbus_cleanup);
++
++MODULE_LICENSE("GPL");
++MODULE_AUTHOR(DRIVER_AUTHOR);
++MODULE_DESCRIPTION(DRIVER_DESC);
++MODULE_ALIAS_NET_PF_PROTO(PF_BUS, BUS_PROTO_DBUS);
+diff --git a/net/netfilter/nfdbus/nfdbus.h b/net/netfilter/nfdbus/nfdbus.h
+new file mode 100644
+index 0000000..477bde3
+--- /dev/null
++++ b/net/netfilter/nfdbus/nfdbus.h
+@@ -0,0 +1,44 @@
++/*
++ * nfdbus.h  Netfilter module for AF_BUS/BUS_PROTO_DBUS.
++ *
++ * Copyright (C) 2012  Collabora Ltd
++ *
++ * This program is free software; you can redistribute it and/or modify
++ * it under the terms of the GNU General Public License as published by
++ * the Free Software Foundation; either version 2 of the License, or
++ * (at your option) any later version.
++ *
++ * This program is distributed in the hope that it will be useful,
++ * but WITHOUT ANY WARRANTY; without even the implied warranty of
++ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
++ * GNU General Public License for more details.
++ *
++ * You should have received a copy of the GNU General Public License
++ * along with this program; if not, write to the Free Software
++ * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
++ *
++ */
++
++#ifndef NETFILTER_DBUS_H
++#define NETFILTER_DBUS_H
++
++#include <linux/types.h>
++#include <linux/bus.h>
++
++#define NFDBUS_CMD_ADDMATCH        0x01
++#define NFDBUS_CMD_REMOVEMATCH     0x02
++#define NFDBUS_CMD_REMOVEALLMATCH  0x03
++
++struct nfdbus_nl_cfg_req {
++	__u32 cmd;
++	__u32 len;
++	struct sockaddr_bus addr;
++	__u64 pad;
++	unsigned char data[0];
++};
++
++struct nfdbus_nl_cfg_reply {
++	__u32 ret_code;
++};
++
++#endif /* NETFILTER_DBUS_H */
+diff --git a/security/capability.c b/security/capability.c
+index 5bb21b1..5b966a6 100644
+--- a/security/capability.c
++++ b/security/capability.c
+@@ -563,6 +563,12 @@ static int cap_unix_may_send(struct socket *sock, struct socket *other)
+ 	return 0;
+ }
+ 
++static int cap_bus_connect(struct sock *sock, struct sock *other,
++			   struct sock *newsk)
++{
++	return 0;
++}
++
+ static int cap_socket_create(int family, int type, int protocol, int kern)
+ {
+ 	return 0;
+@@ -1015,6 +1021,7 @@ void __init security_fixup_ops(struct security_operations *ops)
+ #ifdef CONFIG_SECURITY_NETWORK
+ 	set_to_cap_if_null(ops, unix_stream_connect);
+ 	set_to_cap_if_null(ops, unix_may_send);
++	set_to_cap_if_null(ops, bus_connect);
+ 	set_to_cap_if_null(ops, socket_create);
+ 	set_to_cap_if_null(ops, socket_post_create);
+ 	set_to_cap_if_null(ops, socket_bind);
+diff --git a/security/security.c b/security/security.c
+index bf619ff..54582ea 100644
+--- a/security/security.c
++++ b/security/security.c
+@@ -1018,6 +1018,13 @@ int security_unix_may_send(struct socket *sock,  struct socket *other)
+ }
+ EXPORT_SYMBOL(security_unix_may_send);
+ 
++int security_bus_connect(struct sock *sock, struct sock *other,
++				struct sock *newsk)
++{
++	return security_ops->bus_connect(sock, other, newsk);
++}
++EXPORT_SYMBOL(security_bus_connect);
++
+ int security_socket_create(int family, int type, int protocol, int kern)
+ {
+ 	return security_ops->socket_create(family, type, protocol, kern);
+diff --git a/security/selinux/hooks.c b/security/selinux/hooks.c
+index d85b793..37573f2 100644
+--- a/security/selinux/hooks.c
++++ b/security/selinux/hooks.c
+@@ -67,6 +67,7 @@
+ #include <linux/quota.h>
+ #include <linux/un.h>		/* for Unix socket types */
+ #include <net/af_unix.h>	/* for Unix socket types */
++#include <net/af_bus.h>	/* for Bus socket types */
+ #include <linux/parser.h>
+ #include <linux/nfs_mount.h>
+ #include <net/ipv6.h>
+@@ -4102,6 +4103,39 @@ static int selinux_socket_unix_may_send(struct socket *sock,
+ 			    &ad);
+ }
+ 
++static int selinux_socket_bus_connect(struct sock *sock, struct sock *other,
++				      struct sock *newsk)
++{
++	struct sk_security_struct *sksec_sock = sock->sk_security;
++	struct sk_security_struct *sksec_other = other->sk_security;
++	struct sk_security_struct *sksec_new = newsk->sk_security;
++	struct common_audit_data ad;
++	struct lsm_network_audit net = {0,};
++	int err;
++
++	ad.type = LSM_AUDIT_DATA_NET;
++	ad.u.net = &net;
++	ad.u.net->sk = other;
++
++	err = avc_has_perm(sksec_sock->sid, sksec_other->sid,
++			   sksec_other->sclass,
++			   UNIX_STREAM_SOCKET__CONNECTTO, &ad);
++	if (err)
++		return err;
++
++	/* server child socket */
++	sksec_new->peer_sid = sksec_sock->sid;
++	err = security_sid_mls_copy(sksec_other->sid, sksec_sock->sid,
++				    &sksec_new->sid);
++	if (err)
++		return err;
++
++	/* connecting socket */
++	sksec_sock->peer_sid = sksec_new->sid;
++
++	return 0;
++}
++
+ static int selinux_inet_sys_rcv_skb(int ifindex, char *addrp, u16 family,
+ 				    u32 peer_sid,
+ 				    struct common_audit_data *ad)
+@@ -5656,6 +5690,7 @@ static struct security_operations selinux_ops = {
+ 
+ 	.unix_stream_connect =		selinux_socket_unix_stream_connect,
+ 	.unix_may_send =		selinux_socket_unix_may_send,
++	.bus_connect =		        selinux_socket_bus_connect,
+ 
+ 	.socket_create =		selinux_socket_create,
+ 	.socket_post_create =		selinux_socket_post_create,
+-- 
+1.7.7.6
+
diff --git a/meta-ivi-bsp/recipes-kernel/linux/linux-yocto/beagle_qemu.cfg b/meta-ivi-bsp/recipes-kernel/linux/linux-yocto/beagle_qemu.cfg
new file mode 100644
index 0000000..0ace211
--- /dev/null
+++ b/meta-ivi-bsp/recipes-kernel/linux/linux-yocto/beagle_qemu.cfg
@@ -0,0 +1,5 @@
+CONFIG_PANEL_GENERIC_DPI=y
+
+CONFIG_USB_OHCI_HCD=y
+CONFIG_USB_OHCI_HCD_OMAP3=y
+CONFIG_USB_OHCI_LITTLE_ENDIAN=y
diff --git a/meta-ivi-bsp/recipes-kernel/linux/linux-yocto/qemux86.cfg b/meta-ivi-bsp/recipes-kernel/linux/linux-yocto/qemux86.cfg
new file mode 100644
index 0000000..eb78e01
--- /dev/null
+++ b/meta-ivi-bsp/recipes-kernel/linux/linux-yocto/qemux86.cfg
@@ -0,0 +1,13 @@
+#additional configs requested by SysInfra EG
+CONFIG_MEDIA_SUPPORT=y
+CONFIG_MEDIA_CONTROLLER=y
+
+# config for adding support for AF_BUS sockets
+CONFIG_AF_BUS=y
+CONFIG_NETFILTER_DBUS=y
+
+# Activate ecryptfs
+CONFIG_EXPERIMENTAL=y
+CONFIG_KEYS=y
+CONFIG_CRYPTO=y
+CONFIG_ECRYPT_FS=y
diff --git a/meta-ivi-bsp/recipes-kernel/linux/linux-yocto/qemux86_64.cfg b/meta-ivi-bsp/recipes-kernel/linux/linux-yocto/qemux86_64.cfg
new file mode 100644
index 0000000..eb78e01
--- /dev/null
+++ b/meta-ivi-bsp/recipes-kernel/linux/linux-yocto/qemux86_64.cfg
@@ -0,0 +1,13 @@
+#additional configs requested by SysInfra EG
+CONFIG_MEDIA_SUPPORT=y
+CONFIG_MEDIA_CONTROLLER=y
+
+# config for adding support for AF_BUS sockets
+CONFIG_AF_BUS=y
+CONFIG_NETFILTER_DBUS=y
+
+# Activate ecryptfs
+CONFIG_EXPERIMENTAL=y
+CONFIG_KEYS=y
+CONFIG_CRYPTO=y
+CONFIG_ECRYPT_FS=y
diff --git a/meta-ivi-bsp/recipes-kernel/linux/linux-yocto/vexpress_a9.cfg b/meta-ivi-bsp/recipes-kernel/linux/linux-yocto/vexpress_a9.cfg
new file mode 100644
index 0000000..bbe9ba3
--- /dev/null
+++ b/meta-ivi-bsp/recipes-kernel/linux/linux-yocto/vexpress_a9.cfg
@@ -0,0 +1,843 @@
+# Kernel fragment taken from linaro.org
+# http://releases.linaro.org/platform/linaro-n/hwpacks/11.09/
+
+CONFIG_AC97_BUS=y
+CONFIG_AEABI=y
+CONFIG_AIO=y
+CONFIG_ALIGNMENT_TRAP=y
+CONFIG_ANON_INODES=y
+CONFIG_ARCH_HAS_CPU_IDLE_WAIT=y
+CONFIG_ARCH_SUSPEND_POSSIBLE=y
+CONFIG_ARCH_VEXPRESS=y
+CONFIG_ARCH_VEXPRESS_CA9X4=y
+CONFIG_ARCH_WANT_OPTIONAL_GPIOLIB=y
+CONFIG_ARM=y
+CONFIG_ARM_AMBA=y
+CONFIG_ARM_CPU_TOPOLOGY=y
+CONFIG_ARM_DMA_MEM_BUFFERABLE=y
+CONFIG_ARM_ERRATA_720789=y
+CONFIG_ARM_ERRATA_751472=y
+CONFIG_ARM_GIC=y
+CONFIG_ARM_PATCH_PHYS_VIRT=y
+CONFIG_ARM_THUMB=y
+CONFIG_ARM_TIMER_SP804=y
+CONFIG_ARM_UNWIND=y
+CONFIG_AT76C50X_USB=m
+CONFIG_ATA=y
+CONFIG_ATAGS_PROC=y
+CONFIG_ATA_BMDMA=y
+CONFIG_ATA_SFF=y
+CONFIG_ATA_VERBOSE_ERROR=y
+CONFIG_ATH_COMMON=m
+CONFIG_AUDIT=y
+CONFIG_AUDIT_GENERIC=y
+CONFIG_AUTOFS4_FS=m
+CONFIG_AVERAGE=y
+CONFIG_B43=m
+CONFIG_B43LEGACY=m
+CONFIG_B43LEGACY_DEBUG=y
+CONFIG_B43LEGACY_DMA=y
+CONFIG_B43LEGACY_DMA_AND_PIO_MODE=y
+CONFIG_B43LEGACY_HWRNG=y
+CONFIG_B43LEGACY_LEDS=y
+CONFIG_B43LEGACY_PIO=y
+CONFIG_B43_HWRNG=y
+CONFIG_B43_LEDS=y
+CONFIG_B43_PHY_LP=y
+CONFIG_B43_PHY_N=y
+CONFIG_B43_PIO=y
+CONFIG_B43_SSB=y
+CONFIG_BASE_FULL=y
+CONFIG_BASE_SMALL=0
+CONFIG_BCMA_POSSIBLE=y
+CONFIG_BINARY_PRINTF=y
+CONFIG_BINFMT_ELF=y
+CONFIG_BITREVERSE=y
+CONFIG_BLK_DEV=y
+CONFIG_BLK_DEV_BSG=y
+CONFIG_BLK_DEV_DM=y
+CONFIG_BLK_DEV_INITRD=y
+CONFIG_BLK_DEV_LOOP=y
+CONFIG_BLK_DEV_LOOP_MIN_COUNT=8
+CONFIG_BLK_DEV_RAM=y
+CONFIG_BLK_DEV_RAM_COUNT=16
+CONFIG_BLK_DEV_RAM_SIZE=65536
+CONFIG_BLK_DEV_SD=y
+CONFIG_BLOCK=y
+CONFIG_BOOTPARAM_HUNG_TASK_PANIC_VALUE=0
+CONFIG_BOUNCE=y
+CONFIG_BRANCH_PROFILE_NONE=y
+CONFIG_BSD_PROCESS_ACCT=y
+CONFIG_BT=m
+CONFIG_BTRFS_FS=y
+CONFIG_BT_HCIBCM203X=m
+CONFIG_BT_HCIBPA10X=m
+CONFIG_BT_HCIUART=m
+CONFIG_BT_HCIUART_BCSP=y
+CONFIG_BT_HCIUART_H4=y
+CONFIG_BT_HCIUART_LL=y
+CONFIG_BUG=y
+CONFIG_CACHE_L2X0=y
+CONFIG_CACHE_PL310=y
+CONFIG_CAN_PM_TRACE=y
+CONFIG_CARL9170=m
+CONFIG_CARL9170_LEDS=y
+CONFIG_CARL9170_WPC=y
+CONFIG_CC_OPTIMIZE_FOR_SIZE=y
+CONFIG_CC_STACKPROTECTOR=y
+CONFIG_CFG80211=m
+CONFIG_CFG80211_DEFAULT_PS=y
+CONFIG_CFG80211_WEXT=y
+CONFIG_CGROUPS=y
+CONFIG_CLKDEV_LOOKUP=y
+CONFIG_CLKSRC_MMIO=y
+CONFIG_CMDLINE="root=/dev/nfs nfsroot=10.1.69.3:/work/nfsroot ip=dhcp console=ttyAMA0 mem=128M"
+CONFIG_CMDLINE_FROM_BOOTLOADER=y
+CONFIG_CONNECTOR=y
+CONFIG_CONSOLE_TRANSLATIONS=y
+CONFIG_CONTEXT_SWITCH_TRACER=y
+CONFIG_CORE_DUMP_DEFAULT_ELF_HEADERS=y
+CONFIG_CPUSETS=y
+CONFIG_CPU_32v6K=y
+CONFIG_CPU_32v7=y
+CONFIG_CPU_ABRT_EV7=y
+CONFIG_CPU_CACHE_V7=y
+CONFIG_CPU_CACHE_VIPT=y
+CONFIG_CPU_COPY_V6=y
+CONFIG_CPU_CP15=y
+CONFIG_CPU_CP15_MMU=y
+CONFIG_CPU_HAS_ASID=y
+CONFIG_CPU_HAS_PMU=y
+CONFIG_CPU_PABRT_V7=y
+CONFIG_CPU_PM=y
+CONFIG_CPU_RMAP=y
+CONFIG_CPU_TLB_V7=y
+CONFIG_CPU_V7=y
+CONFIG_CRAMFS=y
+CONFIG_CRC16=y
+CONFIG_CRC32=y
+CONFIG_CRC7=y
+CONFIG_CRC_CCITT=y
+CONFIG_CRC_ITU_T=y
+CONFIG_CRC_T10DIF=y
+CONFIG_CROSS_COMPILE=""
+CONFIG_CRYPTO=y
+CONFIG_CRYPTO_AEAD2=y
+CONFIG_CRYPTO_AES=m
+CONFIG_CRYPTO_ALGAPI=y
+CONFIG_CRYPTO_ALGAPI2=y
+CONFIG_CRYPTO_ARC4=m
+CONFIG_CRYPTO_BLKCIPHER=m
+CONFIG_CRYPTO_BLKCIPHER2=y
+CONFIG_CRYPTO_BLOWFISH=m
+CONFIG_CRYPTO_CBC=m
+CONFIG_CRYPTO_CRC32C=y
+CONFIG_CRYPTO_DEFLATE=y
+CONFIG_CRYPTO_ECB=m
+CONFIG_CRYPTO_HASH=y
+CONFIG_CRYPTO_HASH2=y
+CONFIG_CRYPTO_HW=y
+CONFIG_CRYPTO_LZO=y
+CONFIG_CRYPTO_MANAGER=m
+CONFIG_CRYPTO_MANAGER2=y
+CONFIG_CRYPTO_MANAGER_DISABLE_TESTS=y
+CONFIG_CRYPTO_MICHAEL_MIC=y
+CONFIG_CRYPTO_PCOMP2=y
+CONFIG_CRYPTO_RNG2=y
+CONFIG_CRYPTO_SERPENT=m
+CONFIG_CRYPTO_SHA256=m
+CONFIG_CRYPTO_TWOFISH=m
+CONFIG_CRYPTO_TWOFISH_COMMON=m
+CONFIG_CRYPTO_WORKQUEUE=y
+CONFIG_DEBUG_BUGVERBOSE=y
+CONFIG_DEBUG_FS=y
+CONFIG_DEBUG_INFO=y
+CONFIG_DEBUG_KERNEL=y
+CONFIG_DEBUG_LL=y
+CONFIG_DEBUG_LOCK_ALLOC=y
+CONFIG_DEBUG_MEMORY_INIT=y
+CONFIG_DEBUG_MUTEXES=y
+CONFIG_DEBUG_PREEMPT=y
+CONFIG_DEBUG_SPINLOCK=y
+CONFIG_DEBUG_USER=y
+CONFIG_DECOMPRESS_BZIP2=y
+CONFIG_DECOMPRESS_GZIP=y
+CONFIG_DECOMPRESS_LZMA=y
+CONFIG_DECOMPRESS_LZO=y
+CONFIG_DECOMPRESS_XZ=y
+CONFIG_DEFAULT_CFQ=y
+CONFIG_DEFAULT_HOSTNAME="(none)"
+CONFIG_DEFAULT_HUNG_TASK_TIMEOUT=120
+CONFIG_DEFAULT_IOSCHED="cfq"
+CONFIG_DEFAULT_MESSAGE_LOGLEVEL=4
+CONFIG_DEFAULT_MMAP_MIN_ADDR=32768
+CONFIG_DEFAULT_SECURITY="apparmor"
+CONFIG_DEFAULT_SECURITY_APPARMOR=y
+CONFIG_DEFAULT_TCP_CONG="cubic"
+CONFIG_DEFCONFIG_LIST="/lib/modules/$UNAME_RELEASE/.config"
+CONFIG_DETECT_HUNG_TASK=y
+CONFIG_DEVTMPFS=y
+CONFIG_DEVTMPFS_MOUNT=y
+CONFIG_DNOTIFY=y
+CONFIG_DNS_RESOLVER=y
+CONFIG_DTC=y
+CONFIG_DUMMY_CONSOLE=y
+CONFIG_DYNAMIC_FTRACE=y
+CONFIG_EARLY_PRINTK=y
+CONFIG_ELF_CORE=y
+CONFIG_ENABLE_MUST_CHECK=y
+CONFIG_ENABLE_WARN_DEPRECATED=y
+CONFIG_EPOLL=y
+CONFIG_EVENTFD=y
+CONFIG_EVENT_POWER_TRACING_DEPRECATED=y
+CONFIG_EVENT_TRACING=y
+CONFIG_EXPERIMENTAL=y
+CONFIG_EXPERT=y
+CONFIG_EXT2_FS=y
+CONFIG_EXT3_DEFAULTS_TO_ORDERED=y
+CONFIG_EXT3_FS=y
+CONFIG_EXT3_FS_XATTR=y
+CONFIG_EXT4_FS=y
+CONFIG_EXT4_FS_XATTR=y
+CONFIG_EXTRA_FIRMWARE=""
+CONFIG_FAT_DEFAULT_CODEPAGE=437
+CONFIG_FAT_DEFAULT_IOCHARSET="iso8859-1"
+CONFIG_FAT_FS=y
+CONFIG_FB=y
+CONFIG_FB_ARMCLCD=y
+CONFIG_FB_CFB_COPYAREA=y
+CONFIG_FB_CFB_FILLRECT=y
+CONFIG_FB_CFB_IMAGEBLIT=y
+CONFIG_FILE_LOCKING=y
+CONFIG_FIRMWARE_IN_KERNEL=y
+CONFIG_FLATMEM=y
+CONFIG_FLATMEM_MANUAL=y
+CONFIG_FLAT_NODE_MEM_MAP=y
+CONFIG_FONT_8x16=y
+CONFIG_FONT_8x8=y
+CONFIG_FORCE_MAX_ZONEORDER=11
+CONFIG_FRAMEBUFFER_CONSOLE=y
+CONFIG_FRAME_WARN=1024
+CONFIG_FREEZER=y
+CONFIG_FSNOTIFY=y
+CONFIG_FS_MBCACHE=y
+CONFIG_FS_POSIX_ACL=y
+CONFIG_FTRACE=y
+CONFIG_FTRACE_MCOUNT_RECORD=y
+CONFIG_FUNCTION_TRACER=y
+CONFIG_FUTEX=y
+CONFIG_FW_LOADER=y
+CONFIG_GENERIC_ACL=y
+CONFIG_GENERIC_CALIBRATE_DELAY=y
+CONFIG_GENERIC_CLOCKEVENTS=y
+CONFIG_GENERIC_CLOCKEVENTS_BROADCAST=y
+CONFIG_GENERIC_CLOCKEVENTS_BUILD=y
+CONFIG_GENERIC_HARDIRQS=y
+CONFIG_GENERIC_HWEIGHT=y
+CONFIG_GENERIC_IRQ_PROBE=y
+CONFIG_GENERIC_IRQ_SHOW=y
+CONFIG_GENERIC_LOCKBREAK=y
+CONFIG_GENERIC_TRACER=y
+CONFIG_HARDIRQS_SW_RESEND=y
+CONFIG_HAS_DMA=y
+CONFIG_HAS_IOMEM=y
+CONFIG_HAVE_AOUT=y
+CONFIG_HAVE_ARCH_KGDB=y
+CONFIG_HAVE_ARCH_PFN_VALID=y
+CONFIG_HAVE_ARM_SCU=y
+CONFIG_HAVE_ARM_TWD=y
+CONFIG_HAVE_CLK=y
+CONFIG_HAVE_C_RECORDMCOUNT=y
+CONFIG_HAVE_DMA_API_DEBUG=y
+CONFIG_HAVE_DYNAMIC_FTRACE=y
+CONFIG_HAVE_FTRACE_MCOUNT_RECORD=y
+CONFIG_HAVE_FUNCTION_TRACER=y
+CONFIG_HAVE_GENERIC_DMA_COHERENT=y
+CONFIG_HAVE_GENERIC_HARDIRQS=y
+CONFIG_HAVE_HW_BREAKPOINT=y
+CONFIG_HAVE_IRQ_WORK=y
+CONFIG_HAVE_KERNEL_GZIP=y
+CONFIG_HAVE_KERNEL_LZMA=y
+CONFIG_HAVE_KERNEL_LZO=y
+CONFIG_HAVE_KPROBES=y
+CONFIG_HAVE_KRETPROBES=y
+CONFIG_HAVE_MACH_CLKDEV=y
+CONFIG_HAVE_MEMBLOCK=y
+CONFIG_HAVE_OPROFILE=y
+CONFIG_HAVE_PATA_PLATFORM=y
+CONFIG_HAVE_PERF_EVENTS=y
+CONFIG_HAVE_PROC_CPU=y
+CONFIG_HAVE_REGS_AND_STACK_ACCESS_API=y
+CONFIG_HID=y
+CONFIG_HID_A4TECH=y
+CONFIG_HID_APPLE=y
+CONFIG_HID_BELKIN=y
+CONFIG_HID_CHERRY=y
+CONFIG_HID_CHICONY=y
+CONFIG_HID_CYPRESS=y
+CONFIG_HID_DRAGONRISE=y
+CONFIG_HID_EZKEY=y
+CONFIG_HID_GREENASIA=y
+CONFIG_HID_GYRATION=y
+CONFIG_HID_KENSINGTON=y
+CONFIG_HID_KYE=y
+CONFIG_HID_LOGITECH=y
+CONFIG_HID_MICROSOFT=y
+CONFIG_HID_MONTEREY=y
+CONFIG_HID_NTRIG=y
+CONFIG_HID_PANTHERLORD=y
+CONFIG_HID_PETALYNX=y
+CONFIG_HID_SAMSUNG=y
+CONFIG_HID_SMARTJOYPLUS=y
+CONFIG_HID_SONY=y
+CONFIG_HID_SUNPLUS=y
+CONFIG_HID_SUPPORT=y
+CONFIG_HID_THRUSTMASTER=y
+CONFIG_HID_TOPSEED=y
+CONFIG_HID_TWINHAN=y
+CONFIG_HID_ZEROPLUS=y
+CONFIG_HIGHMEM=y
+CONFIG_HIGH_RES_TIMERS=y
+CONFIG_HOTPLUG=y
+CONFIG_HOTPLUG_CPU=y
+CONFIG_HWMON=m
+CONFIG_HW_CONSOLE=y
+CONFIG_HW_PERF_EVENTS=y
+CONFIG_HW_RANDOM=m
+CONFIG_HZ=100
+CONFIG_I2C=y
+CONFIG_I2C_ALGOBIT=y
+CONFIG_I2C_BOARDINFO=y
+CONFIG_I2C_CHARDEV=y
+CONFIG_I2C_COMPAT=y
+CONFIG_I2C_HELPER_AUTO=y
+CONFIG_I2C_VERSATILE=y
+CONFIG_ICST=y
+CONFIG_IKCONFIG=y
+CONFIG_IKCONFIG_PROC=y
+CONFIG_INET=y
+CONFIG_INET6_XFRM_MODE_BEET=y
+CONFIG_INET6_XFRM_MODE_TRANSPORT=y
+CONFIG_INET6_XFRM_MODE_TUNNEL=y
+CONFIG_INET_DIAG=y
+CONFIG_INET_TCP_DIAG=y
+CONFIG_INET_TUNNEL=y
+CONFIG_INET_XFRM_MODE_BEET=y
+CONFIG_INET_XFRM_MODE_TRANSPORT=y
+CONFIG_INET_XFRM_MODE_TUNNEL=y
+CONFIG_INITRAMFS_SOURCE=""
+CONFIG_INIT_ENV_ARG_LIMIT=32
+CONFIG_INOTIFY_USER=y
+CONFIG_INPUT=y
+CONFIG_INPUT_EVDEV=y
+CONFIG_INPUT_JOYDEV=y
+CONFIG_INPUT_KEYBOARD=y
+CONFIG_INPUT_MISC=y
+CONFIG_INPUT_MOUSE=y
+CONFIG_INPUT_MOUSEDEV=m
+CONFIG_INPUT_MOUSEDEV_PSAUX=y
+CONFIG_INPUT_MOUSEDEV_SCREEN_X=1024
+CONFIG_INPUT_MOUSEDEV_SCREEN_Y=768
+CONFIG_INPUT_TOUCHSCREEN=y
+CONFIG_INPUT_TWL4030_PWRBUTTON=y
+CONFIG_INPUT_UINPUT=y
+CONFIG_IOMMU_SUPPORT=y
+CONFIG_IOSCHED_CFQ=y
+CONFIG_IOSCHED_DEADLINE=y
+CONFIG_IOSCHED_NOOP=y
+CONFIG_IPV6=y
+CONFIG_IPV6_NDISC_NODETYPE=y
+CONFIG_IPV6_SIT=y
+CONFIG_IP_MULTICAST=y
+CONFIG_IP_NF_ARPTABLES=m
+CONFIG_IP_NF_IPTABLES=m
+CONFIG_IP_NF_QUEUE=m
+CONFIG_IP_PNP=y
+CONFIG_IP_PNP_BOOTP=y
+CONFIG_IP_PNP_DHCP=y
+CONFIG_IP_PNP_RARP=y
+CONFIG_IRQ_DOMAIN=y
+CONFIG_IRQ_WORK=y
+CONFIG_ISO9660_FS=m
+CONFIG_JBD=y
+CONFIG_JBD2=y
+CONFIG_JFFS2_CMODE_PRIORITY=y
+CONFIG_JFFS2_COMPRESSION_OPTIONS=y
+CONFIG_JFFS2_FS=y
+CONFIG_JFFS2_FS_DEBUG=0
+CONFIG_JFFS2_FS_POSIX_ACL=y
+CONFIG_JFFS2_FS_SECURITY=y
+CONFIG_JFFS2_FS_WRITEBUFFER=y
+CONFIG_JFFS2_FS_XATTR=y
+CONFIG_JFFS2_LZO=y
+CONFIG_JFFS2_RTIME=y
+CONFIG_JFFS2_RUBIN=y
+CONFIG_JFFS2_SUMMARY=y
+CONFIG_JFFS2_ZLIB=y
+CONFIG_JOLIET=y
+CONFIG_KALLSYMS=y
+CONFIG_KALLSYMS_ALL=y
+CONFIG_KERNEL_GZIP=y
+CONFIG_KEXEC=y
+CONFIG_KEYBOARD_ATKBD=y
+CONFIG_KEYBOARD_TWL4030=y
+CONFIG_KEYS=y
+CONFIG_KPROBES=y
+CONFIG_KPROBES_SANITY_TEST=y
+CONFIG_KPROBE_EVENT=y
+CONFIG_KRETPROBES=y
+CONFIG_KS8851=y
+CONFIG_KS8851_MLL=y
+CONFIG_KTIME_SCALAR=y
+CONFIG_LBDAF=y
+CONFIG_LEDS_CLASS=y
+CONFIG_LEDS_TRIGGERS=y
+CONFIG_LEDS_TRIGGER_BACKLIGHT=m
+CONFIG_LEDS_TRIGGER_DEFAULT_ON=m
+CONFIG_LEDS_TRIGGER_HEARTBEAT=y
+CONFIG_LEDS_TRIGGER_TIMER=m
+CONFIG_LIB80211=m
+CONFIG_LIBCRC32C=y
+CONFIG_LIBERTAS=m
+CONFIG_LIBERTAS_SDIO=m
+CONFIG_LIBERTAS_SPI=m
+CONFIG_LIBERTAS_THINFIRM=m
+CONFIG_LIBERTAS_THINFIRM_USB=m
+CONFIG_LIBERTAS_USB=m
+CONFIG_LOCAL_TIMERS=y
+CONFIG_LOCKD=y
+CONFIG_LOCKDEP=y
+CONFIG_LOCKDEP_SUPPORT=y
+CONFIG_LOCKD_V4=y
+CONFIG_LOGO=y
+CONFIG_LOGO_LINUX_CLUT224=y
+CONFIG_LOGO_LINUX_MONO=y
+CONFIG_LOGO_LINUX_VGA16=y
+CONFIG_LOG_BUF_SHIFT=17
+CONFIG_LSM_MMAP_MIN_ADDR=0
+CONFIG_LZO_COMPRESS=y
+CONFIG_LZO_DECOMPRESS=y
+CONFIG_MAC80211=m
+CONFIG_MAC80211_HAS_RC=y
+CONFIG_MAC80211_HWSIM=m
+CONFIG_MAC80211_LEDS=y
+CONFIG_MAC80211_RC_DEFAULT="minstrel_ht"
+CONFIG_MAC80211_RC_DEFAULT_MINSTREL=y
+CONFIG_MAC80211_RC_MINSTREL=y
+CONFIG_MAC80211_RC_MINSTREL_HT=y
+CONFIG_MAC80211_RC_PID=y
+CONFIG_MAGIC_SYSRQ=y
+CONFIG_MD=y
+CONFIG_MII=y
+CONFIG_MISC_FILESYSTEMS=y
+CONFIG_MMC=y
+CONFIG_MMC_ARMMMCI=y
+CONFIG_MMC_BLOCK=y
+CONFIG_MMC_BLOCK_BOUNCE=y
+CONFIG_MMC_BLOCK_MINORS=8
+CONFIG_MMU=y
+CONFIG_MODULES=y
+CONFIG_MODULE_FORCE_LOAD=y
+CONFIG_MODULE_FORCE_UNLOAD=y
+CONFIG_MODULE_SRCVERSION_ALL=y
+CONFIG_MODULE_UNLOAD=y
+CONFIG_MODVERSIONS=y
+CONFIG_MOUSE_PS2=m
+CONFIG_MOUSE_PS2_ALPS=y
+CONFIG_MOUSE_PS2_LOGIPS2PP=y
+CONFIG_MOUSE_PS2_SYNAPTICS=y
+CONFIG_MOUSE_PS2_TRACKPOINT=y
+CONFIG_MSDOS_FS=y
+CONFIG_MSDOS_PARTITION=y
+CONFIG_MTD=y
+CONFIG_MTD_BLKDEVS=y
+CONFIG_MTD_BLOCK=y
+CONFIG_MTD_CFI=y
+CONFIG_MTD_CFI_I1=y
+CONFIG_MTD_CFI_I2=y
+CONFIG_MTD_CFI_INTELEXT=y
+CONFIG_MTD_CFI_UTIL=y
+CONFIG_MTD_CHAR=y
+CONFIG_MTD_CMDLINE_PARTS=y
+CONFIG_MTD_GEN_PROBE=y
+CONFIG_MTD_MAP_BANK_WIDTH_1=y
+CONFIG_MTD_MAP_BANK_WIDTH_2=y
+CONFIG_MTD_MAP_BANK_WIDTH_4=y
+CONFIG_MTD_NAND=y
+CONFIG_MTD_NAND_ECC=y
+CONFIG_MTD_NAND_IDS=y
+CONFIG_MTD_OF_PARTS=y
+CONFIG_MTD_ONENAND=y
+CONFIG_MTD_ONENAND_VERIFY_WRITE=y
+CONFIG_MTD_OOPS=y
+CONFIG_MTD_UBI=y
+CONFIG_MTD_UBI_BEB_RESERVE=1
+CONFIG_MTD_UBI_WL_THRESHOLD=4096
+CONFIG_MWIFIEX=m
+CONFIG_MWIFIEX_SDIO=m
+CONFIG_NAMESPACES=y
+CONFIG_NEED_DMA_MAP_STATE=y
+CONFIG_NEON=y
+CONFIG_NET=y
+CONFIG_NETDEVICES=y
+CONFIG_NETFILTER=y
+CONFIG_NETFILTER_ADVANCED=y
+CONFIG_NETFILTER_NETLINK_LOG=m
+CONFIG_NETFILTER_NETLINK_QUEUE=m
+CONFIG_NETFILTER_XTABLES=m
+CONFIG_NETLABEL=y
+CONFIG_NETWORK_FILESYSTEMS=y
+CONFIG_NETWORK_SECMARK=y
+CONFIG_NET_KEY=y
+CONFIG_NET_KEY_MIGRATE=y
+CONFIG_NET_SCHED=y
+CONFIG_NEW_LEDS=y
+CONFIG_NFS_ACL_SUPPORT=y
+CONFIG_NFS_COMMON=y
+CONFIG_NFS_FS=y
+CONFIG_NFS_USE_KERNEL_DNS=y
+CONFIG_NFS_V3=y
+CONFIG_NFS_V3_ACL=y
+CONFIG_NFS_V4=y
+CONFIG_NF_CONNTRACK=m
+CONFIG_NF_DEFRAG_IPV4=m
+CONFIG_NLATTR=y
+CONFIG_NLS=y
+CONFIG_NLS_CODEPAGE_437=y
+CONFIG_NLS_DEFAULT="iso8859-1"
+CONFIG_NLS_ISO8859_1=y
+CONFIG_NOP_TRACER=y
+CONFIG_NO_HZ=y
+CONFIG_NR_CPUS=4
+CONFIG_OC_ETM=y
+CONFIG_OF=y
+CONFIG_OF_ADDRESS=y
+CONFIG_OF_DEVICE=y
+CONFIG_OF_EARLY_FLATTREE=y
+CONFIG_OF_FLATTREE=y
+CONFIG_OF_I2C=y
+CONFIG_OF_IRQ=y
+CONFIG_OF_MDIO=y
+CONFIG_OF_NET=y
+CONFIG_OF_SPI=y
+CONFIG_OPROFILE=y
+CONFIG_OUTER_CACHE=y
+CONFIG_OUTER_CACHE_SYNC=y
+CONFIG_P54_COMMON=m
+CONFIG_P54_LEDS=y
+CONFIG_P54_SPI=m
+CONFIG_P54_USB=m
+CONFIG_PACKET=y
+CONFIG_PAGEFLAGS_EXTENDED=y
+CONFIG_PAGE_OFFSET=0x80000000
+CONFIG_PARTITION_ADVANCED=y
+CONFIG_PERF_EVENTS=y
+CONFIG_PERF_USE_VMALLOC=y
+CONFIG_PHYLIB=y
+CONFIG_PLAT_VERSATILE=y
+CONFIG_PLAT_VERSATILE_CLCD=y
+CONFIG_PLAT_VERSATILE_SCHED_CLOCK=y
+CONFIG_PM=y
+CONFIG_PM_ADVANCED_DEBUG=y
+CONFIG_PM_CLK=y
+CONFIG_PM_DEBUG=y
+CONFIG_PM_RUNTIME=y
+CONFIG_PM_SLEEP=y
+CONFIG_PM_SLEEP_SMP=y
+CONFIG_POSIX_MQUEUE=y
+CONFIG_POSIX_MQUEUE_SYSCTL=y
+CONFIG_POWER_SUPPLY=y
+CONFIG_PREEMPT=y
+CONFIG_PREEMPT_COUNT=y
+CONFIG_PREEMPT_RCU=y
+CONFIG_PREVENT_FIRMWARE_BUILD=y
+CONFIG_PRINTK=y
+CONFIG_PRINTK_TIME=y
+CONFIG_PROC_EVENTS=y
+CONFIG_PROC_FS=y
+CONFIG_PROC_PAGE_MONITOR=y
+CONFIG_PROC_PID_CPUSET=y
+CONFIG_PROC_SYSCTL=y
+CONFIG_PROFILING=y
+CONFIG_PROVE_LOCKING=y
+CONFIG_RCU_CPU_STALL_TIMEOUT=60
+CONFIG_RCU_CPU_STALL_VERBOSE=y
+CONFIG_RCU_FANOUT=32
+CONFIG_RD_BZIP2=y
+CONFIG_RD_GZIP=y
+CONFIG_RD_LZMA=y
+CONFIG_RD_LZO=y
+CONFIG_RD_XZ=y
+CONFIG_REGMAP=y
+CONFIG_RELAY=y
+CONFIG_RFS_ACCEL=y
+CONFIG_RING_BUFFER=y
+CONFIG_RING_BUFFER_ALLOW_SWAP=y
+CONFIG_ROOT_NFS=y
+CONFIG_RPS=y
+CONFIG_RT2500USB=m
+CONFIG_RT2800USB=m
+CONFIG_RT2800USB_RT33XX=y
+CONFIG_RT2800USB_RT35XX=y
+CONFIG_RT2800USB_RT53XX=y
+CONFIG_RT2800USB_UNKNOWN=y
+CONFIG_RT2800_LIB=m
+CONFIG_RT2X00=m
+CONFIG_RT2X00_LIB=m
+CONFIG_RT2X00_LIB_CRYPTO=y
+CONFIG_RT2X00_LIB_FIRMWARE=y
+CONFIG_RT2X00_LIB_LEDS=y
+CONFIG_RT2X00_LIB_USB=m
+CONFIG_RT73USB=m
+CONFIG_RTC_CLASS=y
+CONFIG_RTC_DRV_PL031=y
+CONFIG_RTC_DRV_TWL4030=y
+CONFIG_RTC_HCTOSYS=y
+CONFIG_RTC_HCTOSYS_DEVICE="rtc0"
+CONFIG_RTC_INTF_DEV=y
+CONFIG_RTC_INTF_PROC=y
+CONFIG_RTC_INTF_SYSFS=y
+CONFIG_RTC_LIB=y
+CONFIG_RTL8187=m
+CONFIG_RTL8187_LEDS=y
+CONFIG_RTL8192CU=m
+CONFIG_RTL8192C_COMMON=m
+CONFIG_RTLWIFI=m
+CONFIG_RT_MUTEXES=y
+CONFIG_RWSEM_GENERIC_SPINLOCK=y
+CONFIG_SCHEDSTATS=y
+CONFIG_SCHED_DEBUG=y
+CONFIG_SCSI=y
+CONFIG_SCSI_DMA=y
+CONFIG_SCSI_LOWLEVEL=y
+CONFIG_SCSI_MOD=y
+CONFIG_SCSI_MULTI_LUN=y
+CONFIG_SCSI_PROC_FS=y
+CONFIG_SCSI_SCAN_ASYNC=y
+CONFIG_SCSI_WAIT_SCAN=m
+CONFIG_SDIO_UART=y
+CONFIG_SECCOMP=y
+CONFIG_SECURITY=y
+CONFIG_SECURITYFS=y
+CONFIG_SECURITY_APPARMOR=y
+CONFIG_SECURITY_APPARMOR_BOOTPARAM_VALUE=1
+CONFIG_SECURITY_NETWORK=y
+CONFIG_SECURITY_PATH=y
+CONFIG_SECURITY_SELINUX=y
+CONFIG_SECURITY_SELINUX_AVC_STATS=y
+CONFIG_SECURITY_SELINUX_CHECKREQPROT_VALUE=1
+CONFIG_SECURITY_SELINUX_DEVELOP=y
+CONFIG_SECURITY_SMACK=y
+CONFIG_SELECT_MEMORY_MODEL=y
+CONFIG_SERIAL_8250=y
+CONFIG_SERIAL_8250_CONSOLE=y
+CONFIG_SERIAL_8250_DETECT_IRQ=y
+CONFIG_SERIAL_8250_EXTENDED=y
+CONFIG_SERIAL_8250_MANY_PORTS=y
+CONFIG_SERIAL_8250_NR_UARTS=32
+CONFIG_SERIAL_8250_RSA=y
+CONFIG_SERIAL_8250_RUNTIME_UARTS=4
+CONFIG_SERIAL_8250_SHARE_IRQ=y
+CONFIG_SERIAL_AMBA_PL011=y
+CONFIG_SERIAL_AMBA_PL011_CONSOLE=y
+CONFIG_SERIAL_CORE=y
+CONFIG_SERIAL_CORE_CONSOLE=y
+CONFIG_SERIO=y
+CONFIG_SERIO_AMBAKMI=y
+CONFIG_SERIO_LIBPS2=y
+CONFIG_SERIO_SERPORT=y
+CONFIG_SHMEM=y
+CONFIG_SIGNALFD=y
+CONFIG_SLAB=y
+CONFIG_SLABINFO=y
+CONFIG_SMC91X=y
+CONFIG_SMP=y
+CONFIG_SMP_ON_UP=y
+CONFIG_SMSC911X=y
+CONFIG_SMSC_PHY=y
+CONFIG_SND=y
+CONFIG_SND_AC97_CODEC=y
+CONFIG_SND_ARM=y
+CONFIG_SND_ARMAACI=y
+CONFIG_SND_DEBUG=y
+CONFIG_SND_DRIVERS=y
+CONFIG_SND_HWDEP=m
+CONFIG_SND_JACK=y
+CONFIG_SND_MIXER_OSS=m
+CONFIG_SND_OSSEMUL=y
+CONFIG_SND_PCM=y
+CONFIG_SND_PCM_OSS=m
+CONFIG_SND_PCM_OSS_PLUGINS=y
+CONFIG_SND_RAWMIDI=m
+CONFIG_SND_SOC=m
+CONFIG_SND_SOC_I2C_AND_SPI=m
+CONFIG_SND_SPI=y
+CONFIG_SND_SUPPORT_OLD_API=y
+CONFIG_SND_TIMER=y
+CONFIG_SND_USB=y
+CONFIG_SND_USB_AUDIO=m
+CONFIG_SND_VERBOSE_PRINTK=y
+CONFIG_SND_VERBOSE_PROCFS=y
+CONFIG_SND_VMASTER=y
+CONFIG_SOUND=y
+CONFIG_SOUND_OSS_CORE=y
+CONFIG_SOUND_OSS_CORE_PRECLAIM=y
+CONFIG_SPI=y
+CONFIG_SPI_BITBANG=m
+CONFIG_SPI_MASTER=y
+CONFIG_SPI_PL022=y
+CONFIG_SPLIT_PTLOCK_CPUS=999999
+CONFIG_SSB=m
+CONFIG_SSB_BLOCKIO=y
+CONFIG_SSB_POSSIBLE=y
+CONFIG_SSB_SDIOHOST_POSSIBLE=y
+CONFIG_STACKTRACE=y
+CONFIG_STACKTRACE_SUPPORT=y
+CONFIG_STANDALONE=y
+CONFIG_STOP_MACHINE=y
+CONFIG_STRICT_DEVMEM=y
+CONFIG_SUNRPC=y
+CONFIG_SUNRPC_GSS=y
+CONFIG_SUSPEND=y
+CONFIG_SUSPEND_FREEZER=y
+CONFIG_SWAP=y
+CONFIG_SWP_EMULATE=y
+CONFIG_SYN_COOKIES=y
+CONFIG_SYSCTL=y
+CONFIG_SYSCTL_SYSCALL=y
+CONFIG_SYSFS=y
+CONFIG_SYSVIPC=y
+CONFIG_SYSVIPC_SYSCTL=y
+CONFIG_SYS_SUPPORTS_APM_EMULATION=y
+CONFIG_TCP_CONG_CUBIC=y
+CONFIG_TICK_ONESHOT=y
+CONFIG_TIMERFD=y
+CONFIG_TIMER_STATS=y
+CONFIG_TMPFS=y
+CONFIG_TMPFS_POSIX_ACL=y
+CONFIG_TMPFS_XATTR=y
+CONFIG_TOUCHSCREEN_ADS7846=m
+CONFIG_TRACEPOINTS=y
+CONFIG_TRACE_IRQFLAGS=y
+CONFIG_TRACE_IRQFLAGS_SUPPORT=y
+CONFIG_TRACING=y
+CONFIG_TRACING_SUPPORT=y
+CONFIG_TREE_PREEMPT_RCU=y
+CONFIG_TUN=y
+CONFIG_TWL4030_CORE=y
+CONFIG_TWL4030_POWER=y
+CONFIG_TWL4030_WATCHDOG=y
+CONFIG_TWL6030_USB=y
+CONFIG_UBIFS_FS=y
+CONFIG_UBIFS_FS_LZO=y
+CONFIG_UBIFS_FS_ZLIB=y
+CONFIG_UEVENT_HELPER_PATH="/sbin/hotplug"
+CONFIG_UID16=y
+CONFIG_UNIX=y
+CONFIG_UNIX98_PTYS=y
+CONFIG_USB=y
+CONFIG_USB_ALI_M5632=y
+CONFIG_USB_AN2720=y
+CONFIG_USB_ANNOUNCE_NEW_DEVICES=y
+CONFIG_USB_ARCH_HAS_HCD=y
+CONFIG_USB_ARMLINUX=y
+CONFIG_USB_BELKIN=y
+CONFIG_USB_DEBUG=y
+CONFIG_USB_DEVICE_CLASS=y
+CONFIG_USB_EPSON2888=y
+CONFIG_USB_FUSB300=y
+CONFIG_USB_GADGET=y
+CONFIG_USB_GADGET_DEBUG=y
+CONFIG_USB_GADGET_DEBUG_FILES=y
+CONFIG_USB_GADGET_DEBUG_FS=y
+CONFIG_USB_GADGET_DUALSPEED=y
+CONFIG_USB_GADGET_VBUS_DRAW=2
+CONFIG_USB_HID=y
+CONFIG_USB_ISP1760_HCD=y
+CONFIG_USB_KC2190=y
+CONFIG_USB_LIBUSUAL=y
+CONFIG_USB_MASS_STORAGE=m
+CONFIG_USB_MON=y
+CONFIG_USB_NET_AX8817X=y
+CONFIG_USB_NET_CDCETHER=y
+CONFIG_USB_NET_CDC_NCM=y
+CONFIG_USB_NET_CDC_SUBSET=y
+CONFIG_USB_NET_NET1080=y
+CONFIG_USB_NET_RNDIS_HOST=m
+CONFIG_USB_NET_RNDIS_WLAN=m
+CONFIG_USB_NET_SMSC95XX=y
+CONFIG_USB_NET_ZAURUS=y
+CONFIG_USB_OTG=y
+CONFIG_USB_OTG_UTILS=y
+CONFIG_USB_STORAGE=y
+CONFIG_USB_SUPPORT=y
+CONFIG_USB_SUSPEND=y
+CONFIG_USB_TEST=y
+CONFIG_USB_USBNET=y
+CONFIG_USB_WDM=y
+CONFIG_USB_ZD1201=m
+CONFIG_USB_ZERO=m
+CONFIG_USE_GENERIC_SMP_HELPERS=y
+CONFIG_USE_OF=y
+CONFIG_VECTORS_BASE=0xffff0000
+CONFIG_VFAT_FS=y
+CONFIG_VFP=y
+CONFIG_VFPv3=y
+CONFIG_VIRT_TO_BUS=y
+CONFIG_VMSPLIT_2G=y
+CONFIG_VM_EVENT_COUNTERS=y
+CONFIG_VT=y
+CONFIG_VT_CONSOLE=y
+CONFIG_VT_HW_CONSOLE_BINDING=y
+CONFIG_WATCHDOG=y
+CONFIG_WEXT_CORE=y
+CONFIG_WEXT_PRIV=y
+CONFIG_WEXT_PROC=y
+CONFIG_WEXT_SPY=y
+CONFIG_WIRELESS=y
+CONFIG_WIRELESS_EXT=y
+CONFIG_WIRELESS_EXT_SYSFS=y
+CONFIG_WL1251=m
+CONFIG_WL1251_SDIO=m
+CONFIG_WL1251_SPI=m
+CONFIG_WL12XX=m
+CONFIG_WL12XX_MENU=m
+CONFIG_WL12XX_PLATFORM_DATA=y
+CONFIG_WL12XX_SDIO=m
+CONFIG_WL12XX_SPI=m
+CONFIG_WLAN=y
+CONFIG_XFRM=y
+CONFIG_XFRM_MIGRATE=y
+CONFIG_XFRM_USER=y
+CONFIG_XPS=y
+CONFIG_XZ_DEC=y
+CONFIG_XZ_DEC_ARM=y
+CONFIG_XZ_DEC_ARMTHUMB=y
+CONFIG_XZ_DEC_BCJ=y
+CONFIG_XZ_DEC_IA64=y
+CONFIG_XZ_DEC_POWERPC=y
+CONFIG_XZ_DEC_SPARC=y
+CONFIG_XZ_DEC_X86=y
+CONFIG_ZBOOT_ROM_BSS=0x0
+CONFIG_ZBOOT_ROM_TEXT=0x0
+CONFIG_ZD1211RW=m
+CONFIG_ZISOFS=y
+CONFIG_ZLIB_DEFLATE=y
+CONFIG_ZLIB_INFLATE=y
+CONFIG_ZONE_DMA_FLAG=0
+
+#additional configs requested by SysInfra EG
+CONFIG_MEDIA_SUPPORT=y
+CONFIG_MEDIA_CONTROLLER=y
+
+# config for adding support for AF_BUS sockets
+CONFIG_AF_BUS=y
+CONFIG_NETFILTER_DBUS=y
+
+CONFIG_REGULATOR=n
+
+# Activate ecryptfs
+CONFIG_EXPERIMENTAL=y
+CONFIG_KEYS=y
+CONFIG_CRYPTO=y
+CONFIG_ECRYPT_FS=y
diff --git a/meta-ivi-bsp/recipes-kernel/linux/linux-yocto_3.8.bbappend b/meta-ivi-bsp/recipes-kernel/linux/linux-yocto_3.8.bbappend
new file mode 100644
index 0000000..c09d607
--- /dev/null
+++ b/meta-ivi-bsp/recipes-kernel/linux/linux-yocto_3.8.bbappend
@@ -0,0 +1,25 @@
+PRINC := "${@int(PRINC) + 2}"
+
+# find defconfig path
+FILESEXTRAPATHS := "${THISDIR}/${PN}"
+
+# Kernel configs
+SRC_URI_append_beagleboard = " \
+	file://beagle_qemu.cfg \
+	"
+
+SRC_URI_append_vexpressa9 = " \
+	file://vexpress_a9.cfg  \
+	"
+
+SRC_URI_append_qemux86 = " \
+	file://qemux86.cfg  \
+	"
+
+SRC_URI_append_qemux86-64 = " \
+	file://qemux86_64.cfg  \
+	"
+
+KMACHINE_vexpressa9 = "beagleboard"
+SRCREV_machine_vexpressa9 ?= "${AUTOREV}"
+COMPATIBLE_MACHINE_vexpressa9 = "vexpressa9"
diff --git a/recipes-bsp/u-boot/files/no_delay.patch b/recipes-bsp/u-boot/files/no_delay.patch
deleted file mode 100644
index f280b7e..0000000
--- a/recipes-bsp/u-boot/files/no_delay.patch
+++ /dev/null
@@ -1,13 +0,0 @@
-Index: git/include/configs/omap3_beagle.h
-===================================================================
---- git.orig/include/configs/omap3_beagle.h	2012-01-20 02:19:54.582012450 +0200
-+++ git/include/configs/omap3_beagle.h	2012-01-20 02:20:33.534011227 +0200
-@@ -195,7 +195,7 @@
- 							/* partition */
- 
- /* Environment information */
--#define CONFIG_BOOTDELAY		10
-+#define CONFIG_BOOTDELAY		0
- 
- #define CONFIG_EXTRA_ENV_SETTINGS \
- 	"loadaddr=0x82000000\0" \
diff --git a/recipes-bsp/u-boot/u-boot_2011.06.bbappend b/recipes-bsp/u-boot/u-boot_2011.06.bbappend
deleted file mode 100644
index 672a019..0000000
--- a/recipes-bsp/u-boot/u-boot_2011.06.bbappend
+++ /dev/null
@@ -1,5 +0,0 @@
-# Find "files" directory
-FILESEXTRAPATHS := "${THISDIR}/files"
-
-# Patch for removing autostart countdown
-SRC_URI_append_imx53qsb += "file://no_delay.patch"
diff --git a/recipes-graphics/xorg-xserver/xserver-xf86-config/vexpressa9/xorg.conf b/recipes-graphics/xorg-xserver/xserver-xf86-config/vexpressa9/xorg.conf
deleted file mode 100644
index 182fe46..0000000
--- a/recipes-graphics/xorg-xserver/xserver-xf86-config/vexpressa9/xorg.conf
+++ /dev/null
@@ -1,26 +0,0 @@
-
-Section "Device"
-    Identifier    "Graphics Controller"
-    Driver        "fbdev"
-EndSection
-
-Section "Monitor"
-    Identifier    "Generic Monitor"
-    Option        "DPMS"
-EndSection
-
-Section "Screen"
-    Identifier    "Default Screen"
-    Device        "Intel Graphics Driver"
-    Monitor        "Generic Monitor"
-    DefaultDepth    16
-EndSection
-
-Section "ServerLayout"
-    Identifier    "Default Layout"
-    Screen        "Default Screen"
-EndSection
-
-Section "ServerFlags"
-    Option        "DontZap"  "0"
-EndSection
diff --git a/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend b/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
deleted file mode 100644
index dedce1f..0000000
--- a/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
+++ /dev/null
@@ -1,4 +0,0 @@
-# Append path for meta-ivi layer to include bsp xorg.conf
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-
-PRINC := "${@int(PRINC) + 1}"
diff --git a/recipes-kernel/linux/linux-yocto/0001-net-bus-add-the-AF_BUS-socket-address-family.patch b/recipes-kernel/linux/linux-yocto/0001-net-bus-add-the-AF_BUS-socket-address-family.patch
deleted file mode 100644
index 1e05dd2..0000000
--- a/recipes-kernel/linux/linux-yocto/0001-net-bus-add-the-AF_BUS-socket-address-family.patch
+++ /dev/null
@@ -1,6387 +0,0 @@
-From 8c071e4a4be17b7bb01ab2a911c1697902dc2c35 Mon Sep 17 00:00:00 2001
-From: Javier Martinez Canillas <javier.martinez@collabora.co.uk>
-Date: Wed, 20 Jun 2012 12:07:49 +0200
-Subject: [PATCH 1/1] net: bus: add the AF_BUS socket address family
-
-AF_BUS is a new socket address family that allows both unicast and
-multicast I on a local machine with total ordering for messages
-(every process on the same bus sees each message in the same order).
-
-A process can create buses to which other processes can connect and
-communicate with each other by sending messages. Processes' addresses are
-automatically assigned by the bus on connect and are unique. Messages can
-be sent either to process' unique address or to a bus multicast address.
-
-Signed-off-by: Javier Martinez Canillas <javier.martinez@collabora.co.uk>
----
- Documentation/networking/af_bus.txt |  558 ++++++++
- drivers/connector/connector.c       |   32 +
- include/linux/bus.h                 |   34 +
- include/linux/connector.h           |    5 +-
- include/linux/netfilter.h           |    1 +
- include/linux/security.h            |   11 +
- include/linux/socket.h              |    5 +-
- include/net/af_bus.h                |  273 ++++
- net/Kconfig                         |    1 +
- net/Makefile                        |    1 +
- net/bus/Kconfig                     |   15 +
- net/bus/Makefile                    |    7 +
- net/bus/af_bus.c                    | 2688 +++++++++++++++++++++++++++++++++++
- net/bus/garbage.c                   |  322 +++++
- net/core/scm.c                      |    3 +-
- net/core/sock.c                     |    6 +-
- net/netfilter/Kconfig               |    2 +
- net/netfilter/Makefile              |    3 +
- net/netfilter/nfdbus/Kconfig        |   12 +
- net/netfilter/nfdbus/Makefile       |    6 +
- net/netfilter/nfdbus/matchrule.c    | 1132 +++++++++++++++
- net/netfilter/nfdbus/matchrule.h    |   82 ++
- net/netfilter/nfdbus/message.c      |  194 +++
- net/netfilter/nfdbus/message.h      |   71 +
- net/netfilter/nfdbus/nfdbus.c       |  456 ++++++
- net/netfilter/nfdbus/nfdbus.h       |   44 +
- security/capability.c               |    7 +
- security/security.c                 |    7 +
- security/selinux/hooks.c            |   35 +
- 29 files changed, 6007 insertions(+), 6 deletions(-)
- create mode 100644 Documentation/networking/af_bus.txt
- create mode 100644 include/linux/bus.h
- create mode 100644 include/net/af_bus.h
- create mode 100644 net/bus/Kconfig
- create mode 100644 net/bus/Makefile
- create mode 100644 net/bus/af_bus.c
- create mode 100644 net/bus/garbage.c
- create mode 100644 net/netfilter/nfdbus/Kconfig
- create mode 100644 net/netfilter/nfdbus/Makefile
- create mode 100644 net/netfilter/nfdbus/matchrule.c
- create mode 100644 net/netfilter/nfdbus/matchrule.h
- create mode 100644 net/netfilter/nfdbus/message.c
- create mode 100644 net/netfilter/nfdbus/message.h
- create mode 100644 net/netfilter/nfdbus/nfdbus.c
- create mode 100644 net/netfilter/nfdbus/nfdbus.h
-
-diff --git a/Documentation/networking/af_bus.txt b/Documentation/networking/af_bus.txt
-new file mode 100644
-index 0000000..a0b078f
---- /dev/null
-+++ b/Documentation/networking/af_bus.txt
-@@ -0,0 +1,558 @@
-+			The AF_BUS socket address family
-+			================================
-+
-+Introduction
-+------------
-+
-+AF_BUS is a message oriented inter process communication system.
-+
-+The principle features are:
-+
-+ - Reliable datagram based communication (all sockets are of type
-+   SOCK_SEQPACKET)
-+
-+ - Multicast message delivery (one to many, unicast as a subset)
-+
-+ - Strict ordering (messages are delivered to every client in the same order)
-+
-+ - Ability to pass file descriptors
-+
-+ - Ability to pass credentials
-+
-+The basic concept is to provide a virtual bus on which multiple
-+processes can communicate and policy is imposed by a "bus master".
-+
-+A process can create buses to which other processes can connect and
-+communicate with each other by sending messages. Processes' addresses
-+are automatically assigned by the bus on connect and are
-+unique. Messages can be sent either to a process' unique address or to
-+a bus multicast addresses.
-+
-+Netfilter rules or Berkeley Packet Filter can be used to restrict the
-+messages that each peer is allowed to receive. This is especially
-+important when sending to multicast addresses.
-+
-+Besides messages, process can send and receive ancillary data (i.e.,
-+SCM_RIGHTS for passing file descriptors or SCM_CREDENTIALS for passing
-+Unix credentials). In the case of a multicast message all recipients
-+of a message may obtain a copy a file descriptor or credentials.
-+
-+A bus is created by processes connecting on an AF_BUS socket. The
-+"bus master" binds itself instead of connecting to the NULL address.
-+
-+The socket address is made up of a path component and a numeric
-+component. The path component is either a pathname or an abstract
-+socket similar to a unix socket. The numeric component is used to
-+uniquely identify each connection to the bus. Thus the path identifies
-+a specific bus and the numeric component the attachment to that bus.
-+
-+The process that calls bind(2) on the socket is the owner of the bus
-+and is called the bus master. The master is a special client of the
-+bus and has some responsibility for the bus' operation. The master is
-+assigned a fixed address with all the bits zero (0x0000000000000000).
-+
-+Each process connected to an AF_BUS socket has one or more addresses
-+within that bus. These addresses are 64-bit unsigned integers,
-+interpreted by splitting the address into two parts: the most
-+significant 16 bits are a prefix identifying the type of address, and
-+the remaining 48 bits are the actual client address within that
-+prefix, as shown in this figure:
-+
-+Bit:  0             15 16                                            63
-+     +----------------+------------------------------------------------+
-+     |  Type prefix   |                Client address                  |
-+     +----------------+------------------------------------------------+
-+
-+The prefix with all bits zero is reserved for use by the kernel, which
-+automatically assigns one address from this prefix to each client on
-+connection.  The address in this prefix with all bits zero is always
-+assigned to the bus master. Addresses on the prefix 0x0000 are unique
-+and will never repeat for the lifetime of the bus master.
-+
-+A client may have multiple addresses. When data is sent to other
-+clients, those clients will always see the sender address that is in
-+the prefix 0x0000 address space when calling recvmsg(2) or
-+recvfrom(2). Similarly, the prefix 0x0000 address is returned by calls
-+to getsockname(2) and getpeername(2).
-+
-+For each prefix, the address where the least significant 48 bits are
-+all 1 (i.e., 0xffffffffffff) is also reserved, and can be used to send
-+multicast messages to all the peers on a prefix.
-+
-+The non-reserved addresses in each of the remaining prefixes are
-+managed by the bus master, which may assign additional addresses to
-+any other connected socket.
-+
-+Having different name-spaces has two advantages:
-+
-+  - Clients can have addresses on different mutually-exclusive
-+    scopes. This permits sending multicast packets to only clients
-+    that have addresses on a given prefix.
-+
-+  - The addressing scheme can be more flexible. The kernel will only
-+    assign unique addresses on the all-bits-zero prefix (0x0000) and
-+    allows the bus master process to assign additional addresses to
-+    clients on other prefixes.  By having different prefixes, the
-+    kernel and bus master assignments will not collide.
-+
-+AF_BUS transport can support two network topologies. When a process
-+first connects to the bus master, it can only communicate with the bus
-+master. The process can't send and receive packets from other peers on
-+the bus. So, from the client process point of view the network
-+topology is point-to-point.
-+
-+The bus master can allow the connected peer to be part of the bus and
-+start to communicate with other peers by setting a socket option with
-+the setsockopt(2) system call using the accepted socket descriptor. At
-+this point, the topology becomes a bus to the client process.
-+
-+Packets whose destination address is not assigned to any client are
-+routed by default to the bus master (the client accepted socket
-+descriptor).
-+
-+
-+Semantics
-+---------
-+
-+Bus features:
-+
-+ - Unicast and multicast addressing scheme.
-+ - Ability to assign addresses from user-space with different prefixes.
-+ - Automatic address assignment.
-+ - Ordered packets delivery (FIFO, total ordering).
-+ - File descriptor and credentials passing.
-+ - Support for both point-to-point and bus network topologies.
-+ - Bus control access managed from user-space.
-+ - Netfilter hooks for packet sending, routing and receiving.
-+
-+A process (the "bus master") can create an AF_BUS bus with socket(2)
-+and use bind(2) to assign an address to the bus. Then it can listen(2)
-+on the created socket to start accepting incoming connections with
-+accept(2).
-+
-+Processes can connect to the bus by creating a socket with socket(2)
-+and using connect(2). The kernel will assign a unique address to each
-+connection and messages can be sent and received by using BSD socket
-+primitives.
-+
-+This uses the connect(2) semantic in a non-traditional way, with
-+AF_BUS sockets, it's not possible to connect "my" socket to a specific
-+peer socket whereas the traditional BSD sockets API usage, connect(2)
-+either connects to stream sockets, or assigns a peer address to a
-+datagram socket (so that send(2) can be used instead of sendto()).
-+
-+An AF_BUS socket address is represented as a combination of a bus
-+address and a bus path name. Address are unique within a path. The
-+unique bus address is further subdivided into a prefix and a client
-+address. Thus the path identifies a specific bus and the numeric
-+component the attachment to that bus.
-+
-+#define BUS_PATH_MAX    108
-+
-+/* Bus address */
-+struct bus_addr {
-+	uint64_t    s_addr; 	/* 16-bit prefix + 48-bit client address */
-+};
-+
-+/* Structure describing an AF_BUS socket address. */
-+struct sockaddr_bus {
-+	sa_family_t     sbus_family; 	   	  /* AF_BUS */
-+	struct bus_addr sbus_addr;                /* bus address */
-+	char 		sbus_path[BUS_PATH_MAX];  /* pathname */
-+};
-+
-+A process becomes a bus master for a given struct sockaddr_bus by
-+calling bind(2) on an AF_BUS addresses. The argument must be { AF_BUS,
-+0, path }. 
-+
-+AF_BUS supports both abstract and non-abstract path names. Abstract
-+names are distinguished by the fact that sbus_path[0] == '\0' and they
-+don't represent file system paths while non-abstract paths are bound
-+to a file system path name. (See the unix(7) man page for a discussion
-+of abstract socket addresses in the AF_UNIX address family.)
-+
-+Then the process calls listen(2) to accept incoming connections. If
-+that process calls getsockname(2), the returned address will be {
-+AF_BUS, 0, path }.
-+
-+The conventional string form of the full address is path + ":" +
-+prefix + "/" + client address. Prefix and client address are
-+represented in hex.
-+
-+For example the address:
-+
-+struct sockaddr_bus addr;
-+addr.sbus_family = AF_BUS;
-+strcpy(addr.sbus_path, "/tmp/test");
-+addr.sbus_addr.s_addr   = 0x0002f00ddeadbeef;
-+
-+would be represented using the string /tmp/test:0002/f00ddeadbeef.
-+
-+If the bus_addr is 0, then both the prefix and client address may be
-+omitted from the string form.  To connect to a bus as a client it is
-+sufficient to specify the path, since the listening address always has
-+bus_addr == 0. it is not meanigful to specify 'bus_addr' as other than
-+0 on connect()
-+
-+The AF_BUS implementation will automatically assign a unique address
-+to each client but the bus master can assign additional addresses on a
-+different prefix by means of the setsockopt(2) system call. For
-+example:
-+
-+struct bus_addr addr;
-+addr.s_addr = 0x0001deadfee1dead;
-+ret = setsockopt(afd, SOL_BUS, BUS_ADD_ADDR, &addr, sizeof(addr));
-+
-+where afd is the accepted socket descriptor in the daemon. To show graphically:
-+
-+	  L          The AF_BUS listening socket  }
-+       /  |  \                                    }-- listener process
-+     A1  A2  A3      The AF_BUS accepted sockets  }
-+      |   |   |
-+     C1  C2  C3      The AF_BUS connected sockets }-- client processes
-+
-+So if setsockopt(A1, SOL_BUS, BUS_ADD_ADDR, &addr, sizeof(addr)) is
-+called, C1 will get the new address.
-+
-+The inverse operation is BUS_DEL_ADDR, which the bus master can use to
-+remove a client socket AF_BUS address:
-+
-+ret = setsockopt(afd, SOL_BUS, BUS_DEL_ADDR, &addr, sizeof(addr));
-+
-+Besides assigning additional addresses, the bus master has to allow a
-+client process to communicate with other peers on the bus using a
-+setsockopt(2):
-+
-+ret = setsockopt(afd, SOL_BUS, BUS_JOIN_BUS, NULL, 0);
-+
-+Clients are not meant to send messages to each other until the master
-+tells them (in a protocol-specific way) that the BUS_JOIN_BUS
-+setsockopt(2) call was made.
-+
-+If a client sends a message to a destination other than the bus
-+master's all-zero address before joining the bus, a EHOSTUNREACH (No
-+route to host) error is returned since the only host that exists in
-+the point-to-point network before the client joins the bus are the
-+client and the bus master.  
-+
-+A EHOSTUNREACH is returned if a client that joined a bus tries to send
-+a packet to a client from another bus. Cross-bus communication is not
-+permited.
-+
-+When a process wants to send a unicast message to a peer, it fills a
-+sockaddr structure and performs a socket operation (i.e., sendto(2))
-+
-+struct sockaddr_bus addr;
-+char *msg = "Hello world";
-+
-+addr.sbus_family 	   = AF_BUS;
-+strcpy(addr.sbus_path, "/tmp/test");
-+addr.sbus_addr.s_addr   = 0x0001f00ddeadbeef;
-+
-+ret = sendto(sockfd, "Hello world", strlen("Hello world"), 0,
-+	    (struct sockaddr*)&addr, sizeof(addr));
-+
-+The current implementation requires that the addr.sbus_path component
-+match the one used to conenct() to the bus but in future this
-+requirement will be removed.
-+
-+The kernel will first check that the socket is connected and that the
-+bus path of the socket correspond with the destination, then it will
-+extract the prefix and client address from the bus address using a
-+fixed 16 -bit bitmask.
-+
-+prefix 		= bus address >> 48 & 0xffff
-+client address 	= bus address & 0xffff
-+
-+If the client address is not all bits one, then the message is unicast
-+and is delivered to the socket with that assigned address
-+(0x0001f00ddeadbeef).  Otherwise the message is multicast and is
-+delivered to all the peers with this address prefix (0x0001 in this
-+case).
-+
-+So, when a process wants to send a multicast message, it just has to
-+fill the address structure with the address prefix + 0xffffffffffff:
-+
-+struct sockaddr_bus addr;
-+char *msg = "Hello world";
-+
-+addr.bus_family = AF_BUS;
-+strcpy(addr.sbus_path, "/tmp/test");
-+addr.bus_addr   = 0x0001ffffffffffff;
-+
-+ret = sendto(sockfd, "Hello world", strlen("Hello world"), 0,
-+	    (struct sockaddr*)&addr, sizeof(addr));
-+
-+The kernel, will apply the binary and operation, learn that the
-+address is 0xffffffffffff and send the message to all the peers on
-+this prefix (0x0001).
-+
-+Socket transmit queued bytes are limited by a maximum send buffer size
-+(sysctl_wmem_max) defined in the kernel and can be modified at runtime
-+using the sysctl interface on /proc/sys/net/core/wmem_default. This
-+parameter is global for all the sockets families in a Linux system.
-+
-+AF_BUS permits the definition of a per-bus maximum send buffer size
-+using the BUS_SET_SENDBUF socket option. The bus master can call the
-+setsockopt(2) system call using as a parameter the listening socket.
-+The command sets a maximum write buffer that will be imposed on each
-+new socket that connects to the bus:
-+
-+ret = setsockopt(serverfd, SOL_BUS, BUS_SET_SENDBUF, &sndbuf,
-+sizeof(int));
-+
-+In the transmission path both Berkeley Packet Filters and Netfilter
-+hooks are available, so they can be used to filter sending packets.
-+
-+
-+Using this addressing scheme with D-Bus
-+---------------------------------------
-+
-+As an example of a use case for AF_BUS, let's analyze how the D-Bus
-+IPC system can be implemented on top of it.
-+
-+We define a new D-Bus address type "afbus".
-+
-+A D-Bus client may connect to an address of the form "afbus:path=X"
-+where X is a string. This means that it connect()s to { AF_BUS, 0, X }.
-+
-+For example: afbus:path=/tmp/test connects to { AF_BUS, 0, /tmp/test }.
-+
-+A D-Bus daemon may listen on the address "afbus:", which means that it
-+binds to { AF_BUS, 0, /tmp/test }. It will advertise an address of the
-+form "afbus:path=/tmp/test" to clients, for instance via the
-+--print-address option, or via dbus-launch setting the
-+DBUS_SESSION_BUS_ADDRESS environment variable.  For instance, "afbus:"
-+is an appropriate default listening address for the session bus,
-+resulting in dbus-launch setting the DBUS_SESSION_BUS_ADDRESS
-+environment variable to something like
-+"afbus:path=/tmp/test,guid=...".
-+
-+A D-Bus daemon may listen on the address "afbus:file=/some/file",
-+which means that it will do as above, then write its path into the
-+given well-known file.  For instance,
-+"afbus:file=/run/dbus/system_bus.afbus" is an appropriate listening
-+address for the system bus. Only processes with suitable privileges to
-+write to that file can impersonate the system bus.
-+
-+D-Bus clients wishing to connect to the well-known system bus should
-+attempt to connect to afbus:file=/run/dbus/system_bus.afbus, falling
-+back to unix:path=/var/run/dbus/system_bus_socket if that fails. On
-+Linux systems, the well-known system bus daemon should attempt to
-+listen on both of those addresses.
-+
-+The D-Bus daemon will serve as bus master as well since it will be the
-+process that creates and listens on the AF_BUS socket.
-+
-+D-Bus clients will use the fixed bus master address (all zero bits) to
-+send messages to the D-Bus daemon and the client's unique address to
-+send messages to other D-Bus clients using the bus.
-+
-+When initially connected, D-Bus clients will only be able to
-+communicate with the D-Bus daemon and will send authentication
-+information (AUTH message and SCM_CREDENTIALS ancillary
-+messages). Since the D-Bus daemon is also the bus master, it can allow
-+D-Bus clients to join the bus and be able to send and receive D-Bus
-+messages from other peers.
-+
-+On connection, the kernel will assign to each client an address in the
-+prefix 0x0000. If a client attempts to send messages to clients other
-+than the bus master, this is considered to be an error, and is
-+prevented by the kernel.
-+
-+When the D-Bus daemon has authenticated a client and determined that
-+it is authorized to be on this bus, it uses a setsockopt(2) call to
-+tell the kernel that this client has permission to send messages. The
-+D-Bus daemon then tells the client by sending the Hello() reply that
-+it has made the setsockopt(2) call and that now is able to send
-+messages to other peers on the bus.
-+
-+Well-known names are represented by addresses in the 0x0001, ... prefixes.
-+
-+Addresses in prefix 0x0000 must be mapped to D-Bus unique names in a
-+way that can't collide with unique names allocated by the dbus-daemon
-+for legacy clients.
-+
-+In order to be consistent with current D-Bus unique naming, the AF_BUS
-+addresses can be mapped directly to D-Bus unique names, for example
-+(0000/0000deadbeef to ":0.deadbeef"). Leading zeroes can be suppressed
-+since the common case should be relatively small numbers (the kernel
-+allocates client addresses sequentially, and machines could be
-+rebooted occasionally).
-+
-+By having both AF_BUS and legacy D-Bus clients use the same address
-+space, the D-Bus daemon can act as a proxy between clients and can be
-+sure that D-Bus unique names will be unique for both AF_BUS and legacy
-+clients.
-+
-+To act as a proxy between AF_BUS and legacy clients, each time the
-+D-Bus daemon accepts a legacy connection (i.e., AF_UNIX), it will
-+create an AF_BUS socket and establish a connection with itself. It
-+will then associate this newly created connection with the legacy one.
-+
-+To explain it graphically:
-+
-+	  L          The AF_BUS listening socket  }
-+       /  |  \                                    }-- listener process
-+     A1  A2  A3      The AF_BUS accepted sockets  }
-+      |   |   |
-+     C1  C2  C3      The AF_BUS connected sockets, where:
-+      |                    * C1 belongs to the listener process
-+      |                    * C2 and C3 belongs to the client processes
-+      |
-+ L2--A4       The AF_UNIX listening and accepted sockets \
-+      |                            in the listener process
-+     C4       The AF_UNIX connected socket in the legacy client process
-+
-+
-+where C2 and C3 are normal AF_BUS clients and C4 is a legacy
-+client. The D-Bus daemon after accepting the connection using the
-+legacy transport (A4), will create an AF_BUS socket pair (C1, A1)
-+associated with the legacy client.
-+
-+Legacy clients will send messages to the D-Bus daemon using their
-+legacy socket and the D-Bus daemon will extract the destination
-+address, resolve to the corresponding AF_BUS address and use this to
-+send the message to the right peer.  
-+
-+Conversely, when an AF_BUS client sends a D-Bus message to a legacy
-+client, it will use the AF_BUS address of the connection associated
-+with that client. The D-Bus daemon will receive the message, modify
-+the message's content to set SENDER headers based on the AF_BUS source
-+address and use the legacy transport to send the D-Bus message to the
-+legacy client.
-+
-+As a special case, the bus daemon's all-zeroes address maps to
-+"org.freedesktop.DBus" and vice versa.
-+
-+When a D-Bus client receives an AF_BUS message from the bus master
-+(0/0), it must use the SENDER header field in the D-Bus message, as
-+for any other D-Bus transport, to determine whether the message is
-+actually from the D-Bus daemon (the SENDER is "org.freedesktop.DBus"
-+or missing), or from another client (the SENDER starts with ":"). It
-+is valid for messages from another AF_BUS client to be received via
-+the D-Bus daemon; if they are, the SENDER header field will always be
-+set.
-+
-+Besides its unique name, D-Bus services can have well-known names such
-+as org.gnome.Keyring or org.freedesktop.Telepathy. These well-known
-+names can also be used as a D-Bus message destination
-+address. Well-known names are not numeric and AF_BUS is not able to
-+parse D-Bus messages.
-+
-+To solve this, the D-Bus daemon will assign an additional AF_BUS
-+address to each D-Bus client that owns a well-known name. The mapping
-+between well-known names and AF_BUS address is maintained by the D-Bus
-+daemon on a persistent data structure.
-+
-+D-Bus client libraries will maintain a cache of these mappings so they
-+can send messages to services with well-known names using their mapped
-+AF_BUS address.
-+
-+If a client intending to send a D-Bus message to a given well-known
-+name does not have that well-known name in its cache, it must send the
-+AF_BUS message to the listener (0000/000000000000) instead. 
-+
-+The listener must forward the D-Bus message to the owner of that
-+well-known name, setting the SENDER header field if necessary. It may
-+also send this AF_BUS-specific D-Bus signal to the sender, so that the
-+sender can update its cache:
-+
-+     org.freedesktop.DBus.AF_BUS.Forwarded (STRING well_known_name,
-+	 UINT64 af_bus_client)
-+
-+	 Emitted by the D-Bus daemon with sender "org.freedesktop.DBus"
-+	 and object path "/org/freedesktop/DBus" to indicate that
-+	 the well-known name well_known_name is represented by the
-+	 AF_BUS address { AF_BUS, af_bus_client, path } where
-+	 path is the path name used by this bus.
-+
-+	 For instance, if the well-known name "org.gnome.Keyring"
-+	 is represented by AF_BUS address 0001/0000deadbeef,
-+	 the signal would have arguments ("org.gnome.Keyring",
-+	 0x00010000deadbeef), corresponding to the AF_BUS
-+	 address { AF_BUS, 0x00010000deadbeef, /tmp/test }.
-+
-+If the D-Bus service for that well-known name is not active, then the
-+D-Bus daemon will first do the service activation, assign an
-+additional address to the recently activated service, store the
-+well-known service to numeric address mapping on its persistent cache,
-+and then send the AF_BUS.Forwarded signal back to the client.
-+
-+Once the mapping has been made, the AF_BUS address associated with a
-+well-known name cannot be reused for the lifetime of the D-Bus daemon
-+(which is the same as the lifetime of the socket). 
-+
-+Nevertheless the AF_BUS address associated with a well-known name can
-+change, for example if a service goes away and a new instance gets
-+activated. This new instance can have a different AF_BUS address.  The
-+D-Bus daemon will maintain a list of the mappings that are currently
-+valid so it can send the AF_BUS.
-+
-+Forwarded signal with the mapping information to the clients. Client
-+libraries will maintain a fixed-size Last Recently Used (LRU) cache
-+with previous mappings sent by the D-Bus daemon.
-+
-+If the clients overwrite a mapping due to the LRU replace policy and
-+later want to send a D-Bus message to the overwritten well-known name,
-+they will send the D-Bus message back to the D-Bus daemon and this
-+will send the signal with the mapping information. 
-+
-+If a service goes away or if the service AF_BUS address changed and
-+the client still has the old AF_BUS address in its cache, it will send
-+the D-Bus message to the old destination. 
-+
-+Since packets whose destination AF_BUS addresses are not assigned to
-+any process are routed by default to the bus master, the D-Bus daemon
-+will receive these D-bus messages and send an AF_BUS.
-+
-+Forwarded signal back to the client with the new AF_BUS address so it
-+can update its cache with the new mapping.
-+
-+For well-known names, the D-Bus daemon will use a different address
-+prefix (0x0001) so it doesn't conflict with the D-Bus unique names
-+address prefix (0x0000).
-+
-+Besides D-Bus method call messages which are unicast, D-Bus allows
-+clients to send multicast messages (D-Bus signals). Clients can send
-+signals messages using the bus unique name prefix multicast address
-+(0x0001ffffffffffff).
-+
-+A netfilter hook is used to filter these multicast messages and only
-+deliver to the correct peers based on match rules.
-+
-+
-+D-Bus aware netfilter module
-+----------------------------
-+
-+AF_BUS is designed to be a generic bus transport supporting both
-+unicast and multicast communications.
-+
-+In order for D-Bus to operate efficiently, the transport method has to
-+know the D-Bus message wire-protocol and D-Bus message structure. But
-+adding this D-Bus specific knowledge to AF_BUS will break one of the
-+fundamental design principles of any network protocol stack, namely
-+layer-independence: layer n must not make any assumptions about the
-+payload in layer n + 1.
-+
-+So, in order to have a clean protocol design but be able to allow the
-+transport to analyze the D-Bus messages, netfilter hooks are used to
-+do the filtering based on match rules.
-+
-+The kernel module has to maintain the match rules and the D-Bus daemon
-+is responsible for managing this information. Every time an add match
-+rule message is processed by the D-Bus daemon, this will update the
-+netfilter module match rules set so the netfilter hook function can
-+use that information to do the match rules based filtering.
-+
-+The D-Bus daemon and the netfilter module will use the generic netlink
-+subsystem to do the kernel-to-user-space communication. Netlink is
-+already used by most of the networking subsystem in Linux
-+(iptables/netfilter, ip/routing, etc).
-+
-+We enforce a security scheme so only the bus master's user ID can
-+update the netfilter module match rules set.
-+
-+The advantage of using the netfilter subsystem is that we decouple the
-+mechanism from the policy. AF_BUS will only add a set of hook points
-+and external modules will be used to enforce a given policy.
-diff --git a/drivers/connector/connector.c b/drivers/connector/connector.c
-index dde6a0f..a1f9364 100644
---- a/drivers/connector/connector.c
-+++ b/drivers/connector/connector.c
-@@ -118,6 +118,38 @@ nlmsg_failure:
- EXPORT_SYMBOL_GPL(cn_netlink_send);
- 
- /*
-+ * Send an unicast reply from a connector callback
-+ *
-+ */
-+int cn_netlink_reply(struct cn_msg *msg, u32 pid, gfp_t gfp_mask)
-+{
-+	unsigned int size;
-+	struct sk_buff *skb;
-+	struct nlmsghdr *nlh;
-+	struct cn_msg *data;
-+	struct cn_dev *dev = &cdev;
-+
-+	size = NLMSG_SPACE(sizeof(*msg) + msg->len);
-+
-+	skb = alloc_skb(size, gfp_mask);
-+	if (!skb)
-+		return -ENOMEM;
-+
-+	nlh = nlmsg_put(skb, 0, msg->seq, NLMSG_DONE, size - sizeof(*nlh), 0);
-+	if (nlh == NULL) {
-+		kfree_skb(skb);
-+		return -EMSGSIZE;
-+	}
-+
-+	data = nlmsg_data(nlh);
-+
-+	memcpy(data, msg, sizeof(*data) + msg->len);
-+
-+	return netlink_unicast(dev->nls, skb, pid, 1);
-+}
-+EXPORT_SYMBOL_GPL(cn_netlink_reply);
-+
-+/*
-  * Callback helper - queues work and setup destructor for given data.
-  */
- static int cn_call_callback(struct sk_buff *skb)
-diff --git a/include/linux/bus.h b/include/linux/bus.h
-new file mode 100644
-index 0000000..19cac36
---- /dev/null
-+++ b/include/linux/bus.h
-@@ -0,0 +1,34 @@
-+#ifndef _LINUX_BUS_H
-+#define _LINUX_BUS_H
-+
-+#include <linux/socket.h>
-+
-+/* 'protocol' to use in socket(AF_BUS, SOCK_SEQPACKET, protocol) */
-+#define BUS_PROTO_NONE	0
-+#define BUS_PROTO_DBUS	1
-+#define BUS_PROTO_MAX	1
-+
-+#define BUS_PATH_MAX	108
-+
-+/**
-+ * struct bus_addr - af_bus address
-+ * @s_addr: an af_bus address (16-bit prefix + 48-bit client address)
-+ */
-+struct bus_addr {
-+	u64 s_addr;
-+};
-+
-+
-+/**
-+ * struct sockaddr_bus - af_bus socket address
-+ * @sbus_family: the socket address family
-+ * @sbus_addr: an af_bus address
-+ * @sbus_path: a path name
-+ */
-+struct sockaddr_bus {
-+	__kernel_sa_family_t sbus_family;
-+	struct bus_addr      sbus_addr;
-+	char sbus_path[BUS_PATH_MAX];
-+};
-+
-+#endif /* _LINUX_BUS_H */
-diff --git a/include/linux/connector.h b/include/linux/connector.h
-index 7638407..519d010 100644
---- a/include/linux/connector.h
-+++ b/include/linux/connector.h
-@@ -44,8 +44,10 @@
- #define CN_VAL_DRBD			0x1
- #define CN_KVP_IDX			0x9	/* HyperV KVP */
- #define CN_KVP_VAL			0x1	/* queries from the kernel */
-+#define CN_IDX_NFDBUS                   0xA     /* netfilter D-Bus */
-+#define CN_VAL_NFDBUS                   0x1
- 
--#define CN_NETLINK_USERS		10	/* Highest index + 1 */
-+#define CN_NETLINK_USERS		11	/* Highest index + 1 */
- 
- /*
-  * Maximum connector's message size.
-@@ -125,6 +127,7 @@ int cn_add_callback(struct cb_id *id, const char *name,
- 		    void (*callback)(struct cn_msg *, struct netlink_skb_parms *));
- void cn_del_callback(struct cb_id *);
- int cn_netlink_send(struct cn_msg *, u32, gfp_t);
-+int cn_netlink_reply(struct cn_msg *, u32, gfp_t);
- 
- int cn_queue_add_callback(struct cn_queue_dev *dev, const char *name,
- 			  struct cb_id *id,
-diff --git a/include/linux/netfilter.h b/include/linux/netfilter.h
-index 29734be..7cff0bd 100644
---- a/include/linux/netfilter.h
-+++ b/include/linux/netfilter.h
-@@ -67,6 +67,7 @@ enum {
- 	NFPROTO_BRIDGE =  7,
- 	NFPROTO_IPV6   = 10,
- 	NFPROTO_DECNET = 12,
-+	NFPROTO_BUS,
- 	NFPROTO_NUMPROTO,
- };
- 
-diff --git a/include/linux/security.h b/include/linux/security.h
-index 673afbb..fa26c6d 100644
---- a/include/linux/security.h
-+++ b/include/linux/security.h
-@@ -1578,6 +1578,8 @@ struct security_operations {
- 
- #ifdef CONFIG_SECURITY_NETWORK
- 	int (*unix_stream_connect) (struct sock *sock, struct sock *other, struct sock *newsk);
-+	int (*bus_connect) (struct sock *sock, struct sock *other,
-+			    struct sock *newsk);
- 	int (*unix_may_send) (struct socket *sock, struct socket *other);
- 
- 	int (*socket_create) (int family, int type, int protocol, int kern);
-@@ -2517,6 +2519,8 @@ static inline int security_inode_getsecctx(struct inode *inode, void **ctx, u32
- #ifdef CONFIG_SECURITY_NETWORK
- 
- int security_unix_stream_connect(struct sock *sock, struct sock *other, struct sock *newsk);
-+int security_bus_connect(struct sock *sock, struct sock *other,
-+			 struct sock *newsk);
- int security_unix_may_send(struct socket *sock,  struct socket *other);
- int security_socket_create(int family, int type, int protocol, int kern);
- int security_socket_post_create(struct socket *sock, int family,
-@@ -2564,6 +2568,13 @@ static inline int security_unix_stream_connect(struct sock *sock,
- 	return 0;
- }
- 
-+static inline int security_bus_connect(struct socket *sock,
-+				       struct sock *other,
-+				       struct sock *newsk)
-+{
-+	return 0;
-+}
-+
- static inline int security_unix_may_send(struct socket *sock,
- 					 struct socket *other)
- {
-diff --git a/include/linux/socket.h b/include/linux/socket.h
-index b84bbd4..59596d2 100644
---- a/include/linux/socket.h
-+++ b/include/linux/socket.h
-@@ -195,7 +195,8 @@ struct ucred {
- #define AF_CAIF		37	/* CAIF sockets			*/
- #define AF_ALG		38	/* Algorithm sockets		*/
- #define AF_NFC		39	/* NFC sockets			*/
--#define AF_MAX		40	/* For now.. */
-+#define AF_BUS		40	/* BUS sockets			*/
-+#define AF_MAX		41	/* For now.. */
- 
- /* Protocol families, same as address families. */
- #define PF_UNSPEC	AF_UNSPEC
-@@ -238,6 +239,7 @@ struct ucred {
- #define PF_CAIF		AF_CAIF
- #define PF_ALG		AF_ALG
- #define PF_NFC		AF_NFC
-+#define PF_BUS		AF_BUS
- #define PF_MAX		AF_MAX
- 
- /* Maximum queue length specifiable by listen.  */
-@@ -312,6 +314,7 @@ struct ucred {
- #define SOL_IUCV	277
- #define SOL_CAIF	278
- #define SOL_ALG		279
-+#define SOL_BUS		280
- 
- /* IPX options */
- #define IPX_TYPE	1
-diff --git a/include/net/af_bus.h b/include/net/af_bus.h
-new file mode 100644
-index 0000000..e63eb49
---- /dev/null
-+++ b/include/net/af_bus.h
-@@ -0,0 +1,273 @@
-+/*
-+ * Copyright (c) 2012, GENIVI Alliance
-+ *
-+ * Authors:	Javier Martinez Canillas, <javier.martinez@collabora.co.uk>
-+ *              Alban Crequy, <alban.crequy@collabora.co.uk>
-+ *
-+ *		This program is free software; you can redistribute it and/or
-+ *		modify it under the terms of the GNU General Public License
-+ *		as published by the Free Software Foundation; either version
-+ *		2 of the License, or (at your option) any later version.
-+ *
-+ * Based on BSD Unix domain sockets (net/unix).
-+ */
-+
-+#ifndef __LINUX_NET_AFBUS_H
-+#define __LINUX_NET_AFBUS_H
-+
-+#include <linux/socket.h>
-+#include <linux/bus.h>
-+#include <linux/mutex.h>
-+#include <net/sock.h>
-+#include <net/tcp_states.h>
-+
-+extern void bus_inflight(struct file *fp);
-+extern void bus_notinflight(struct file *fp);
-+extern void bus_gc(void);
-+extern void wait_for_bus_gc(void);
-+extern struct sock *bus_get_socket(struct file *filp);
-+extern struct sock *bus_peer_get(struct sock *);
-+
-+#define BUS_HASH_SIZE	256
-+
-+extern spinlock_t bus_address_lock;
-+extern struct hlist_head bus_address_table[BUS_HASH_SIZE];
-+
-+#define BUS_MAX_QLEN    10
-+#define BUS_MASTER_ADDR 0x0
-+#define BUS_PREFIX_BITS 16
-+#define BUS_CLIENT_BITS 48
-+#define BUS_PREFIX_MASK 0xffff000000000000
-+#define BUS_CLIENT_MASK 0x0000ffffffffffff
-+
-+/* AF_BUS socket options */
-+#define BUS_ADD_ADDR 1
-+#define BUS_JOIN_BUS 2
-+#define BUS_DEL_ADDR 3
-+#define BUS_SET_EAVESDROP 4
-+#define BUS_UNSET_EAVESDROP 5
-+#define BUS_SET_SENDBUF 6
-+#define BUS_SET_MAXQLEN 7
-+#define BUS_GET_QLENFULL 8
-+
-+/* Connection and socket states */
-+enum {
-+	BUS_ESTABLISHED = TCP_ESTABLISHED,
-+	BUS_CLOSE = TCP_CLOSE,
-+	BUS_LISTEN = TCP_LISTEN,
-+	BUS_MAX_STATES
-+};
-+
-+#define NF_BUS_SENDING 1
-+
-+extern unsigned int bus_tot_inflight;
-+extern spinlock_t bus_table_lock;
-+extern struct hlist_head bus_socket_table[BUS_HASH_SIZE + 1];
-+
-+/**
-+ * struct bus_address - an af_bus address associated with an af_bus sock
-+ * @refcnt: address reference counter
-+ * @len: address length
-+ * @hash: address hash value
-+ * @addr_node: member of struct bus_sock.addr_list
-+ * @table_node: member of struct hlist_head bus_address_table[hash]
-+ * @sock: the af_bus sock that owns this address
-+ * @name: the socket address for this address
-+ */
-+struct bus_address {
-+	atomic_t	refcnt;
-+	int		len;
-+	unsigned	hash;
-+	struct hlist_node addr_node;
-+	struct hlist_node table_node;
-+	struct sock  *sock;
-+	struct sockaddr_bus name[0];
-+};
-+
-+/**
-+ * struct bus_send_context - sending context for an socket buffer
-+ * @sender_socket: the sender socket associated with this sk_buff
-+ * @siocb: used to send ancillary data
-+ * @timeo: sending timeout
-+ * @max_level: file descriptor passing maximum recursion level
-+ * @namelen: length of socket address name
-+ * @hash: socket name hash value
-+ * @other: destination sock
-+ * @sender: sender socket address name
-+ * @recipient: recipient socket address name
-+ * @authenticated: flag whether the sock already joined the bus
-+ * @bus_master_side: flag whether the sock is an accepted socket
-+ * @to_master: flag whether the destination is the bus master
-+ * @multicast: flag whether the destination is a multicast address
-+ * @deliver: flag whether the skb has to be delivered
-+ * @eavesdropper: flag whether the sock is allowed to eavesdrop
-+ * @main_recipient: flag whether the sock is the main recipient
-+ */
-+struct bus_send_context {
-+	struct socket *sender_socket;
-+	struct sock_iocb *siocb;
-+	long timeo;
-+	int max_level;
-+	int namelen;
-+	unsigned hash;
-+	struct sock *other;
-+	struct sockaddr_bus	*sender;
-+	struct sockaddr_bus	*recipient;
-+	unsigned int		authenticated:1;
-+	unsigned int		bus_master_side:1;
-+	unsigned int		to_master:1;
-+	unsigned int		multicast:1;
-+	unsigned int            deliver:1;
-+	unsigned int            eavesdropper:1;
-+	unsigned int            main_recipient:1;
-+};
-+
-+/**
-+ * struct bus_skb_parms - socket buffer parameters
-+ * @pid: process id
-+ * @cred: skb credentials
-+ * @fp: passed file descriptors
-+ * @secid: security id
-+ * @sendctx: skb sending context
-+ */
-+struct bus_skb_parms {
-+	struct pid		*pid;
-+	const struct cred	*cred;
-+	struct scm_fp_list	*fp;
-+#ifdef CONFIG_SECURITY_NETWORK
-+	u32			secid;
-+#endif
-+	struct bus_send_context	*sendctx;
-+};
-+
-+#define BUSCB(skb)      (*(struct bus_skb_parms *)&((skb)->cb))
-+#define BUSSID(skb)     (&BUSCB((skb)).secid)
-+
-+#define bus_state_lock(s)	spin_lock(&bus_sk(s)->lock)
-+#define bus_state_unlock(s)	spin_unlock(&bus_sk(s)->lock)
-+#define bus_state_lock_nested(s) \
-+				spin_lock_nested(&bus_sk(s)->lock, \
-+				SINGLE_DEPTH_NESTING)
-+
-+/**
-+ * struct bus - a communication bus
-+ * @master: the bus master sock
-+ * @peers: list of struct bus_sock.bus_node allowed to join the bus
-+ * @lock: protect peers concurrent access
-+ * @send_lock: enforce atomic multicast delivery
-+ * @kref: bus reference counter
-+ * @addr_cnt: address number counter to assign prefix 0x0000 addresses
-+ * @eavesdropper_cnt: eavesdroppers counter
-+ */
-+struct bus {
-+	struct sock		*master;
-+	struct hlist_head       peers;
-+	spinlock_t		lock;
-+	spinlock_t		send_lock;
-+	struct kref             kref;
-+	atomic64_t              addr_cnt;
-+	atomic64_t              eavesdropper_cnt;
-+};
-+
-+/**
-+ * struct bus_sock - an af_bus socket
-+ * @sk: associated sock
-+ * @addr: sock principal address
-+ * @addr_list: list of struct bus_address.addr_node
-+ * @path: sock path name
-+ * @readlock: protect from concurrent reading
-+ * @peer: peer sock
-+ * @other: the listening sock
-+ * @link: list of candidates for garbage collection
-+ * @inflight: number of times the file descriptor is in flight
-+ * @lock: protect the sock from concurrent access
-+ * @gc_candidate: flag whether the is a candidate for gc
-+ * @gc_maybe_cycle: flag whether could be a cyclic reference
-+ * @recursion_level: file passing current recursion level
-+ * @peer_wq: peer sock wait queue
-+ * @bus: bus that this sock belongs to
-+ * @bus_master: flag whether the sock is the bus master
-+ * @bus_master_side: flag whether is an accepted socket
-+ * @authenticated: flag whether the sock joined the bus
-+ * @eavesdropper: flag whether the sock is allowed to eavesdrop
-+ * @bus_node: member of struct bus.peers list of joined socks
-+ */
-+struct bus_sock {
-+	/* WARNING: sk has to be the first member */
-+	struct sock		sk;
-+	struct bus_address     *addr;
-+	struct hlist_head       addr_list;
-+	struct path		path;
-+	struct mutex		readlock;
-+	struct sock		*peer;
-+	struct sock		*other;
-+	struct list_head	link;
-+	atomic_long_t		inflight;
-+	spinlock_t		lock;
-+	unsigned int		gc_candidate:1;
-+	unsigned int		gc_maybe_cycle:1;
-+	unsigned char		recursion_level;
-+	struct socket_wq	peer_wq;
-+	struct bus              *bus;
-+	bool                    bus_master;
-+	bool                    bus_master_side;
-+	bool                    authenticated;
-+	bool                    eavesdropper;
-+	struct hlist_node	bus_node;
-+};
-+#define bus_sk(__sk) ((struct bus_sock *)__sk)
-+
-+#define peer_wait peer_wq.wait
-+
-+/**
-+ * bus_same_bus - Test if two socket address belongs to the same bus
-+ * @sbusaddr1: socket address name
-+ * @sbusaddr2: socket address name
-+ */
-+static inline bool bus_same_bus(struct sockaddr_bus *sbusaddr1,
-+				struct sockaddr_bus *sbusaddr2)
-+{
-+	int offset;
-+
-+	if (sbusaddr1->sbus_path[0] != sbusaddr2->sbus_path[0])
-+		return false;
-+
-+	/*
-+	 * abstract path names start with a null byte character,
-+	 * so they have to be compared starting at the second char.
-+	 */
-+	offset = (sbusaddr1->sbus_path[0] == '\0');
-+
-+	return !strncmp(sbusaddr1->sbus_path + offset,
-+		       sbusaddr2->sbus_path + offset,
-+		       BUS_PATH_MAX);
-+}
-+
-+static inline unsigned int bus_hash_fold(__wsum n)
-+{
-+	unsigned int hash = (__force unsigned int)n;
-+	hash ^= hash>>16;
-+	hash ^= hash>>8;
-+	return hash&(BUS_HASH_SIZE-1);
-+}
-+
-+static inline unsigned int bus_compute_hash(struct bus_addr addr)
-+{
-+	return bus_hash_fold(csum_partial((void *)&addr, sizeof(addr), 0));
-+}
-+
-+long bus_inq_len(struct sock *sk);
-+long bus_outq_len(struct sock *sk);
-+
-+#ifdef CONFIG_SYSCTL
-+extern int bus_sysctl_register(struct net *net);
-+extern void bus_sysctl_unregister(struct net *net);
-+#else
-+static inline int bus_sysctl_register(struct net *net) { return 0; }
-+static inline void bus_sysctl_unregister(struct net *net) {}
-+#endif
-+
-+bool bus_can_write(struct net *net, struct sockaddr_bus *addr, int len,
-+		   int protocol);
-+
-+#endif /* __LINUX_NET_AFBUS_H */
-diff --git a/net/Kconfig b/net/Kconfig
-index e07272d..c9774a1 100644
---- a/net/Kconfig
-+++ b/net/Kconfig
-@@ -47,6 +47,7 @@ menu "Networking options"
- 
- source "net/packet/Kconfig"
- source "net/unix/Kconfig"
-+source "net/bus/Kconfig"
- source "net/xfrm/Kconfig"
- source "net/iucv/Kconfig"
- 
-diff --git a/net/Makefile b/net/Makefile
-index ad432fa..3033018 100644
---- a/net/Makefile
-+++ b/net/Makefile
-@@ -19,6 +19,7 @@ obj-$(CONFIG_NETFILTER)		+= netfilter/
- obj-$(CONFIG_INET)		+= ipv4/
- obj-$(CONFIG_XFRM)		+= xfrm/
- obj-$(CONFIG_UNIX)		+= unix/
-+obj-$(CONFIG_AF_BUS)		+= bus/
- obj-$(CONFIG_NET)		+= ipv6/
- obj-$(CONFIG_PACKET)		+= packet/
- obj-$(CONFIG_NET_KEY)		+= key/
-diff --git a/net/bus/Kconfig b/net/bus/Kconfig
-new file mode 100644
-index 0000000..5f01410
---- /dev/null
-+++ b/net/bus/Kconfig
-@@ -0,0 +1,15 @@
-+#
-+# Bus Domain Sockets
-+#
-+
-+config AF_BUS
-+	tristate "Bus domain sockets (EXPERIMENTAL)"
-+	depends on EXPERIMENTAL
-+	---help---
-+	  If you say Y here, you will include support for Bus domain sockets.
-+	  These sockets are used to create communication buses for IPC.
-+
-+	  To compile this driver as a module, choose M here: the module will be
-+	  called bus.
-+
-+	  Say N unless you know what you are doing.
-diff --git a/net/bus/Makefile b/net/bus/Makefile
-new file mode 100644
-index 0000000..8c1fea2
---- /dev/null
-+++ b/net/bus/Makefile
-@@ -0,0 +1,7 @@
-+#
-+# Makefile for the Linux bus domain socket layer.
-+#
-+
-+obj-$(CONFIG_AF_BUS)	+= af-bus.o
-+
-+af-bus-y		:= af_bus.o garbage.o
-diff --git a/net/bus/af_bus.c b/net/bus/af_bus.c
-new file mode 100644
-index 0000000..5a00225
---- /dev/null
-+++ b/net/bus/af_bus.c
-@@ -0,0 +1,2688 @@
-+/*
-+ * Implementation of Bus domain sockets.
-+ *
-+ * Copyright (c) 2012, GENIVI Alliance
-+ *
-+ * Authors:	Javier Martinez Canillas <javier.martinez@collabora.co.uk>
-+ *              Alban Crequy <alban.crequy@collabora.co.uk>
-+ *
-+ *		This program is free software; you can redistribute it and/or
-+ *		modify it under the terms of the GNU General Public License
-+ *		as published by the Free Software Foundation; either version
-+ *		2 of the License, or (at your option) any later version.
-+ *
-+ * Based on BSD Unix domain sockets (net/unix).
-+ */
-+
-+#include <linux/module.h>
-+#include <linux/kernel.h>
-+#include <linux/signal.h>
-+#include <linux/sched.h>
-+#include <linux/errno.h>
-+#include <linux/string.h>
-+#include <linux/stat.h>
-+#include <linux/dcache.h>
-+#include <linux/namei.h>
-+#include <linux/socket.h>
-+#include <linux/bus.h>
-+#include <linux/fcntl.h>
-+#include <linux/termios.h>
-+#include <linux/sockios.h>
-+#include <linux/net.h>
-+#include <linux/in.h>
-+#include <linux/fs.h>
-+#include <linux/slab.h>
-+#include <linux/uaccess.h>
-+#include <linux/skbuff.h>
-+#include <linux/netdevice.h>
-+#include <net/net_namespace.h>
-+#include <net/sock.h>
-+#include <net/af_bus.h>
-+#include <linux/proc_fs.h>
-+#include <linux/seq_file.h>
-+#include <net/scm.h>
-+#include <linux/init.h>
-+#include <linux/poll.h>
-+#include <linux/rtnetlink.h>
-+#include <linux/mount.h>
-+#include <net/checksum.h>
-+#include <linux/security.h>
-+
-+struct hlist_head bus_socket_table[BUS_HASH_SIZE + 1];
-+EXPORT_SYMBOL_GPL(bus_socket_table);
-+struct hlist_head bus_address_table[BUS_HASH_SIZE];
-+EXPORT_SYMBOL_GPL(bus_address_table);
-+DEFINE_SPINLOCK(bus_table_lock);
-+DEFINE_SPINLOCK(bus_address_lock);
-+EXPORT_SYMBOL_GPL(bus_address_lock);
-+static atomic_long_t bus_nr_socks;
-+
-+#define bus_sockets_unbound	(&bus_socket_table[BUS_HASH_SIZE])
-+
-+#define BUS_ABSTRACT(sk)	(bus_sk(sk)->addr->hash != BUS_HASH_SIZE)
-+
-+#ifdef CONFIG_SECURITY_NETWORK
-+static void bus_get_secdata(struct scm_cookie *scm, struct sk_buff *skb)
-+{
-+	memcpy(BUSSID(skb), &scm->secid, sizeof(u32));
-+}
-+
-+static inline void bus_set_secdata(struct scm_cookie *scm, struct sk_buff *skb)
-+{
-+	scm->secid = *BUSSID(skb);
-+}
-+#else
-+static inline void bus_get_secdata(struct scm_cookie *scm, struct sk_buff *skb)
-+{ }
-+
-+static inline void bus_set_secdata(struct scm_cookie *scm, struct sk_buff *skb)
-+{ }
-+#endif /* CONFIG_SECURITY_NETWORK */
-+
-+/*
-+ *  SMP locking strategy:
-+ *    bus_socket_table hash table is protected with spinlock bus_table_lock
-+ *    bus_address_table hash table is protected with spinlock bus_address_lock
-+ *    each bus is protected by a separate spin lock.
-+ *    multicast atomic sending is protected by a separate spin lock.
-+ *    each socket state is protected by a separate spin lock.
-+ *    each socket address is protected by a separate spin lock.
-+ *
-+ *  When holding more than one lock, use the following hierarchy:
-+ *  - bus_table_lock.
-+ *  - bus_address_lock.
-+ *  - socket lock.
-+ *  - bus lock.
-+ *  - bus send_lock.
-+ *  - sock address lock.
-+ */
-+
-+#define bus_peer(sk) (bus_sk(sk)->peer)
-+
-+static inline int bus_our_peer(struct sock *sk, struct sock *osk)
-+{
-+	return bus_peer(osk) == sk;
-+}
-+
-+static inline int bus_recvq_full(struct sock const *sk)
-+{
-+	return skb_queue_len(&sk->sk_receive_queue) > sk->sk_max_ack_backlog;
-+}
-+
-+static inline u16 bus_addr_prefix(struct sockaddr_bus *busaddr)
-+{
-+	return (busaddr->sbus_addr.s_addr & BUS_PREFIX_MASK) >> BUS_CLIENT_BITS;
-+}
-+
-+static inline u64 bus_addr_client(struct sockaddr_bus *sbusaddr)
-+{
-+	return sbusaddr->sbus_addr.s_addr & BUS_CLIENT_MASK;
-+}
-+
-+static inline bool bus_mc_addr(struct sockaddr_bus *sbusaddr)
-+{
-+	return bus_addr_client(sbusaddr) == BUS_CLIENT_MASK;
-+}
-+
-+struct sock *bus_peer_get(struct sock *s)
-+{
-+	struct sock *peer;
-+
-+	bus_state_lock(s);
-+	peer = bus_peer(s);
-+	if (peer)
-+		sock_hold(peer);
-+	bus_state_unlock(s);
-+	return peer;
-+}
-+EXPORT_SYMBOL_GPL(bus_peer_get);
-+
-+static inline void bus_release_addr(struct bus_address *addr)
-+{
-+	if (atomic_dec_and_test(&addr->refcnt))
-+		kfree(addr);
-+}
-+
-+/*
-+ *	Check bus socket name:
-+ *		- should be not zero length.
-+ *	        - if started by not zero, should be NULL terminated (FS object)
-+ *		- if started by zero, it is abstract name.
-+ */
-+
-+static int bus_mkname(struct sockaddr_bus *sbusaddr, int len,
-+		      unsigned int *hashp)
-+{
-+	int offset = (sbusaddr->sbus_path[0] == '\0');
-+
-+	if (len <= sizeof(short) || len > sizeof(*sbusaddr))
-+		return -EINVAL;
-+	if (!sbusaddr || sbusaddr->sbus_family != AF_BUS)
-+		return -EINVAL;
-+
-+	len = strnlen(sbusaddr->sbus_path + offset, BUS_PATH_MAX) + 1 +
-+		sizeof(__kernel_sa_family_t) +
-+		sizeof(struct bus_addr);
-+
-+	*hashp = bus_compute_hash(sbusaddr->sbus_addr);
-+	return len;
-+}
-+
-+static void __bus_remove_address(struct bus_address *addr)
-+{
-+	hlist_del(&addr->table_node);
-+}
-+
-+static void __bus_insert_address(struct hlist_head *list,
-+				 struct bus_address *addr)
-+{
-+	hlist_add_head(&addr->table_node, list);
-+}
-+
-+static inline void bus_remove_address(struct bus_address *addr)
-+{
-+	spin_lock(&bus_address_lock);
-+	__bus_remove_address(addr);
-+	spin_unlock(&bus_address_lock);
-+}
-+
-+static inline void bus_insert_address(struct hlist_head *list,
-+				      struct bus_address *addr)
-+{
-+	spin_lock(&bus_address_lock);
-+	__bus_insert_address(list, addr);
-+	spin_unlock(&bus_address_lock);
-+}
-+
-+static void __bus_remove_socket(struct sock *sk)
-+{
-+	sk_del_node_init(sk);
-+}
-+
-+static void __bus_insert_socket(struct hlist_head *list, struct sock *sk)
-+{
-+	WARN_ON(!sk_unhashed(sk));
-+	sk_add_node(sk, list);
-+}
-+
-+static inline void bus_remove_socket(struct sock *sk)
-+{
-+	spin_lock(&bus_table_lock);
-+	__bus_remove_socket(sk);
-+	spin_unlock(&bus_table_lock);
-+}
-+
-+static inline void bus_insert_socket(struct hlist_head *list, struct sock *sk)
-+{
-+	spin_lock(&bus_table_lock);
-+	__bus_insert_socket(list, sk);
-+	spin_unlock(&bus_table_lock);
-+}
-+
-+static inline bool __bus_has_prefix(struct sock *sk, u16 prefix)
-+{
-+	struct bus_sock *u = bus_sk(sk);
-+	struct bus_address *addr;
-+	struct hlist_node *node;
-+	bool ret = false;
-+
-+	hlist_for_each_entry(addr, node, &u->addr_list, addr_node) {
-+		if (bus_addr_prefix(addr->name) == prefix)
-+			ret = true;
-+	}
-+
-+	return ret;
-+}
-+
-+static inline bool bus_has_prefix(struct sock *sk, u16 prefix)
-+{
-+	bool ret;
-+
-+	bus_state_lock(sk);
-+	ret = __bus_has_prefix(sk, prefix);
-+	bus_state_unlock(sk);
-+
-+	return ret;
-+}
-+
-+static inline bool __bus_eavesdropper(struct sock *sk, u16 condition)
-+{
-+	struct bus_sock *u = bus_sk(sk);
-+
-+	return u->eavesdropper;
-+}
-+
-+static inline bool bus_eavesdropper(struct sock *sk, u16 condition)
-+{
-+	bool ret;
-+
-+	bus_state_lock(sk);
-+	ret = __bus_eavesdropper(sk, condition);
-+	bus_state_unlock(sk);
-+
-+	return ret;
-+}
-+
-+static inline bool bus_has_prefix_eavesdropper(struct sock *sk, u16 prefix)
-+{
-+	bool ret;
-+
-+	bus_state_lock(sk);
-+	ret = __bus_has_prefix(sk, prefix) || __bus_eavesdropper(sk, 0);
-+	bus_state_unlock(sk);
-+
-+	return ret;
-+}
-+
-+static inline struct bus_address *__bus_get_address(struct sock *sk,
-+						    struct bus_addr *sbus_addr)
-+{
-+	struct bus_sock *u = bus_sk(sk);
-+	struct bus_address *addr = NULL;
-+	struct hlist_node *node;
-+
-+	hlist_for_each_entry(addr, node, &u->addr_list, addr_node) {
-+		if (addr->name->sbus_addr.s_addr == sbus_addr->s_addr)
-+			return addr;
-+	}
-+
-+	return NULL;
-+}
-+
-+static inline struct bus_address *bus_get_address(struct sock *sk,
-+						  struct bus_addr *sbus_addr)
-+{
-+	struct bus_address *addr;
-+
-+	bus_state_lock(sk);
-+	addr = __bus_get_address(sk, sbus_addr);
-+	bus_state_unlock(sk);
-+
-+	return addr;
-+}
-+
-+static struct sock *__bus_find_socket_byname(struct net *net,
-+					     struct sockaddr_bus *sbusname,
-+					     int len, unsigned int hash)
-+{
-+	struct sock *s;
-+	struct hlist_node *node;
-+
-+	sk_for_each(s, node, &bus_socket_table[hash]) {
-+		struct bus_sock *u = bus_sk(s);
-+
-+		if (!net_eq(sock_net(s), net))
-+			continue;
-+
-+		if (u->addr->len == len &&
-+		    !memcmp(u->addr->name, sbusname, len))
-+			return s;
-+	}
-+
-+	return NULL;
-+}
-+
-+static inline struct sock *bus_find_socket_byname(struct net *net,
-+						  struct sockaddr_bus *sbusname,
-+						  int len, unsigned int hash)
-+{
-+	struct sock *s;
-+
-+	spin_lock(&bus_table_lock);
-+	s = __bus_find_socket_byname(net, sbusname, len, hash);
-+	if (s)
-+		sock_hold(s);
-+	spin_unlock(&bus_table_lock);
-+	return s;
-+}
-+
-+static struct sock *__bus_find_socket_byaddress(struct net *net,
-+						struct sockaddr_bus *sbusname,
-+						int len, int protocol,
-+						unsigned int hash)
-+{
-+	struct sock *s;
-+	struct bus_address *addr;
-+	struct hlist_node *node;
-+	struct bus_sock *u;
-+	int offset = (sbusname->sbus_path[0] == '\0');
-+	int path_len = strnlen(sbusname->sbus_path + offset, BUS_PATH_MAX);
-+
-+	len = path_len + 1 + sizeof(__kernel_sa_family_t) +
-+	      sizeof(struct bus_addr);
-+
-+	hlist_for_each_entry(addr, node, &bus_address_table[hash],
-+			     table_node) {
-+		s = addr->sock;
-+		u = bus_sk(s);
-+
-+		if (s->sk_protocol != protocol)
-+			continue;
-+
-+		if (!net_eq(sock_net(s), net))
-+			continue;
-+
-+		if (addr->len == len &&
-+		    addr->name->sbus_family == sbusname->sbus_family &&
-+		    addr->name->sbus_addr.s_addr == sbusname->sbus_addr.s_addr
-+		    && bus_same_bus(addr->name, sbusname))
-+			goto found;
-+	}
-+	s = NULL;
-+found:
-+	return s;
-+}
-+
-+static inline struct sock *bus_find_socket_byaddress(struct net *net,
-+						     struct sockaddr_bus *name,
-+						     int len, int protocol,
-+						     unsigned int hash)
-+{
-+	struct sock *s;
-+
-+	spin_lock(&bus_address_lock);
-+	s = __bus_find_socket_byaddress(net, name, len, protocol, hash);
-+	if (s)
-+		sock_hold(s);
-+	spin_unlock(&bus_address_lock);
-+	return s;
-+}
-+
-+static inline int bus_writable(struct sock *sk)
-+{
-+	return (atomic_read(&sk->sk_wmem_alloc) << 2) <= sk->sk_sndbuf;
-+}
-+
-+static void bus_write_space(struct sock *sk)
-+{
-+	struct bus_sock *u = bus_sk(sk);
-+	struct bus_sock *p;
-+	struct hlist_node *node;
-+	struct socket_wq *wq;
-+
-+	if (bus_writable(sk)) {
-+		rcu_read_lock();
-+		wq = rcu_dereference(sk->sk_wq);
-+		if (wq_has_sleeper(wq))
-+			wake_up_interruptible_sync_poll(&wq->wait,
-+				POLLOUT | POLLWRNORM | POLLWRBAND);
-+		sk_wake_async(sk, SOCK_WAKE_SPACE, POLL_OUT);
-+		rcu_read_unlock();
-+
-+		if (u && u->bus) {
-+			spin_lock(&u->bus->lock);
-+			hlist_for_each_entry(p, node, &u->bus->peers,
-+					     bus_node) {
-+				wake_up_interruptible_sync_poll(sk_sleep(&p->sk),
-+								POLLOUT |
-+								POLLWRNORM |
-+								POLLWRBAND);
-+				sk_wake_async(&p->sk, SOCK_WAKE_SPACE,
-+					      POLL_OUT);
-+			}
-+			spin_unlock(&u->bus->lock);
-+		}
-+	}
-+}
-+
-+static void bus_bus_release(struct kref *kref)
-+{
-+	struct bus *bus;
-+
-+	bus = container_of(kref, struct bus, kref);
-+
-+	kfree(bus);
-+}
-+
-+static void bus_sock_destructor(struct sock *sk)
-+{
-+	struct bus_sock *u = bus_sk(sk);
-+
-+	skb_queue_purge(&sk->sk_receive_queue);
-+
-+	WARN_ON(atomic_read(&sk->sk_wmem_alloc));
-+	WARN_ON(!sk_unhashed(sk));
-+	WARN_ON(sk->sk_socket);
-+	if (!sock_flag(sk, SOCK_DEAD)) {
-+		pr_info("Attempt to release alive bus socket: %p\n", sk);
-+		return;
-+	}
-+
-+	if (u->bus) {
-+		kref_put(&u->bus->kref, bus_bus_release);
-+		u->bus = NULL;
-+	}
-+
-+	atomic_long_dec(&bus_nr_socks);
-+	local_bh_disable();
-+	sock_prot_inuse_add(sock_net(sk), sk->sk_prot, -1);
-+	local_bh_enable();
-+#ifdef BUS_REFCNT_DEBUG
-+	pr_debug("BUS %p is destroyed, %ld are still alive.\n", sk,
-+		 atomic_long_read(&bus_nr_socks));
-+#endif
-+}
-+
-+static int bus_release_sock(struct sock *sk, int embrion)
-+{
-+	struct bus_sock *u = bus_sk(sk);
-+	struct path path;
-+	struct sock *skpair;
-+	struct sk_buff *skb;
-+	int state;
-+	struct bus_address *addr;
-+	struct hlist_node *node, *tmp;
-+
-+	bus_remove_socket(sk);
-+
-+	if (u->bus && u->authenticated &&
-+	    !u->bus_master && !u->bus_master_side) {
-+		spin_lock(&u->bus->lock);
-+		hlist_del(&u->bus_node);
-+		if (u->eavesdropper)
-+			atomic64_dec(&u->bus->eavesdropper_cnt);
-+		spin_unlock(&u->bus->lock);
-+	}
-+
-+	/* Clear state */
-+	bus_state_lock(sk);
-+	sock_orphan(sk);
-+	sk->sk_shutdown = SHUTDOWN_MASK;
-+	path	     = u->path;
-+	u->path.dentry = NULL;
-+	u->path.mnt = NULL;
-+	state = sk->sk_state;
-+	sk->sk_state = BUS_CLOSE;
-+
-+	if (u->bus_master)
-+			u->bus->master = NULL;
-+
-+	if (u->bus_master_side) {
-+		bus_release_addr(u->addr);
-+		u->addr = NULL;
-+	} else {
-+		u->addr = NULL;
-+
-+		spin_lock(&bus_address_lock);
-+		hlist_for_each_entry_safe(addr, node, tmp, &u->addr_list,
-+					  addr_node) {
-+			hlist_del(&addr->addr_node);
-+			__bus_remove_address(addr);
-+			bus_release_addr(addr);
-+		}
-+		spin_unlock(&bus_address_lock);
-+	}
-+
-+	bus_state_unlock(sk);
-+
-+	wake_up_interruptible_all(&u->peer_wait);
-+
-+	skpair = bus_peer(sk);
-+
-+	if (skpair != NULL) {
-+		bus_state_lock(skpair);
-+		/* No more writes */
-+		skpair->sk_shutdown = SHUTDOWN_MASK;
-+		if (!skb_queue_empty(&sk->sk_receive_queue) || embrion)
-+			skpair->sk_err = ECONNRESET;
-+		bus_state_unlock(skpair);
-+		skpair->sk_state_change(skpair);
-+		sk_wake_async(skpair, SOCK_WAKE_WAITD, POLL_HUP);
-+		sock_put(skpair); /* It may now die */
-+		bus_peer(sk) = NULL;
-+	}
-+
-+	/* Try to flush out this socket. Throw out buffers at least */
-+
-+	while ((skb = skb_dequeue(&sk->sk_receive_queue)) != NULL) {
-+		if (state == BUS_LISTEN)
-+			bus_release_sock(skb->sk, 1);
-+		/* passed fds are erased in the kfree_skb hook	      */
-+		kfree_skb(skb);
-+	}
-+
-+	if (path.dentry)
-+		path_put(&path);
-+
-+	sock_put(sk);
-+
-+	/* ---- Socket is dead now and most probably destroyed ---- */
-+
-+	if (bus_tot_inflight)
-+		bus_gc();		/* Garbage collect fds */
-+
-+	return 0;
-+}
-+
-+static void init_peercred(struct sock *sk)
-+{
-+	put_pid(sk->sk_peer_pid);
-+	if (sk->sk_peer_cred)
-+		put_cred(sk->sk_peer_cred);
-+	sk->sk_peer_pid  = get_pid(task_tgid(current));
-+	sk->sk_peer_cred = get_current_cred();
-+}
-+
-+static void copy_peercred(struct sock *sk, struct sock *peersk)
-+{
-+	put_pid(sk->sk_peer_pid);
-+	if (sk->sk_peer_cred)
-+		put_cred(sk->sk_peer_cred);
-+	sk->sk_peer_pid  = get_pid(peersk->sk_peer_pid);
-+	sk->sk_peer_cred = get_cred(peersk->sk_peer_cred);
-+}
-+
-+static int bus_listen(struct socket *sock, int backlog)
-+{
-+	int err;
-+	struct sock *sk = sock->sk;
-+	struct bus_sock *u = bus_sk(sk);
-+	struct pid *old_pid = NULL;
-+	const struct cred *old_cred = NULL;
-+
-+	err = -EINVAL;
-+	if (!u->addr || !u->bus_master)
-+		goto out;	/* Only listens on an bound an master socket */
-+	bus_state_lock(sk);
-+	if (sk->sk_state != BUS_CLOSE && sk->sk_state != BUS_LISTEN)
-+		goto out_unlock;
-+	if (backlog > sk->sk_max_ack_backlog)
-+		wake_up_interruptible_all(&u->peer_wait);
-+	sk->sk_max_ack_backlog	= backlog;
-+	sk->sk_state		= BUS_LISTEN;
-+	/* set credentials so connect can copy them */
-+	init_peercred(sk);
-+	err = 0;
-+
-+out_unlock:
-+	bus_state_unlock(sk);
-+	put_pid(old_pid);
-+	if (old_cred)
-+		put_cred(old_cred);
-+out:
-+	return err;
-+}
-+
-+static int bus_release(struct socket *);
-+static int bus_bind(struct socket *, struct sockaddr *, int);
-+static int bus_connect(struct socket *, struct sockaddr *,
-+			       int addr_len, int flags);
-+static int bus_accept(struct socket *, struct socket *, int);
-+static int bus_getname(struct socket *, struct sockaddr *, int *, int);
-+static unsigned int bus_poll(struct file *, struct socket *,
-+				    poll_table *);
-+static int bus_ioctl(struct socket *, unsigned int, unsigned long);
-+static int bus_shutdown(struct socket *, int);
-+static int bus_setsockopt(struct socket *, int, int, char __user *,
-+			   unsigned int);
-+static int bus_sendmsg(struct kiocb *, struct socket *,
-+		       struct msghdr *, size_t);
-+static int bus_recvmsg(struct kiocb *, struct socket *,
-+		       struct msghdr *, size_t, int);
-+
-+static void bus_set_peek_off(struct sock *sk, int val)
-+{
-+	struct bus_sock *u = bus_sk(sk);
-+
-+	mutex_lock(&u->readlock);
-+	sk->sk_peek_off = val;
-+	mutex_unlock(&u->readlock);
-+}
-+
-+static const struct proto_ops bus_seqpacket_ops = {
-+	.family =	PF_BUS,
-+	.owner =	THIS_MODULE,
-+	.release =	bus_release,
-+	.bind =		bus_bind,
-+	.connect =	bus_connect,
-+	.socketpair =	sock_no_socketpair,
-+	.accept =	bus_accept,
-+	.getname =	bus_getname,
-+	.poll =		bus_poll,
-+	.ioctl =	bus_ioctl,
-+	.listen =	bus_listen,
-+	.shutdown =	bus_shutdown,
-+	.setsockopt =	bus_setsockopt,
-+	.getsockopt =	sock_no_getsockopt,
-+	.sendmsg =	bus_sendmsg,
-+	.recvmsg =	bus_recvmsg,
-+	.mmap =		sock_no_mmap,
-+	.sendpage =	sock_no_sendpage,
-+	.set_peek_off =	bus_set_peek_off,
-+};
-+
-+static struct proto bus_proto = {
-+	.name			= "BUS",
-+	.owner			= THIS_MODULE,
-+	.obj_size		= sizeof(struct bus_sock),
-+};
-+
-+/*
-+ * AF_BUS sockets do not interact with hardware, hence they
-+ * dont trigger interrupts - so it's safe for them to have
-+ * bh-unsafe locking for their sk_receive_queue.lock. Split off
-+ * this special lock-class by reinitializing the spinlock key:
-+ */
-+static struct lock_class_key af_bus_sk_receive_queue_lock_key;
-+
-+static struct sock *bus_create1(struct net *net, struct socket *sock)
-+{
-+	struct sock *sk = NULL;
-+	struct bus_sock *u;
-+
-+	atomic_long_inc(&bus_nr_socks);
-+	if (atomic_long_read(&bus_nr_socks) > 2 * get_max_files())
-+		goto out;
-+
-+	sk = sk_alloc(net, PF_BUS, GFP_KERNEL, &bus_proto);
-+	if (!sk)
-+		goto out;
-+
-+	sock_init_data(sock, sk);
-+	lockdep_set_class(&sk->sk_receive_queue.lock,
-+				&af_bus_sk_receive_queue_lock_key);
-+
-+	sk->sk_write_space	= bus_write_space;
-+	sk->sk_max_ack_backlog	= BUS_MAX_QLEN;
-+	sk->sk_destruct		= bus_sock_destructor;
-+	u	  = bus_sk(sk);
-+	u->path.dentry = NULL;
-+	u->path.mnt = NULL;
-+	u->bus = NULL;
-+	u->bus_master = false;
-+	u->authenticated = false;
-+	u->eavesdropper = false;
-+	spin_lock_init(&u->lock);
-+	atomic_long_set(&u->inflight, 0);
-+	INIT_LIST_HEAD(&u->link);
-+	INIT_HLIST_HEAD(&u->addr_list);
-+	INIT_HLIST_NODE(&u->bus_node);
-+	mutex_init(&u->readlock); /* single task reading lock */
-+	init_waitqueue_head(&u->peer_wait);
-+	bus_insert_socket(bus_sockets_unbound, sk);
-+out:
-+	if (sk == NULL)
-+		atomic_long_dec(&bus_nr_socks);
-+	else {
-+		local_bh_disable();
-+		sock_prot_inuse_add(sock_net(sk), sk->sk_prot, 1);
-+		local_bh_enable();
-+	}
-+	return sk;
-+}
-+
-+static int bus_create(struct net *net, struct socket *sock, int protocol,
-+		       int kern)
-+{
-+	struct sock *sk;
-+
-+	if (protocol < BUS_PROTO_NONE || protocol > BUS_PROTO_DBUS)
-+		return -EPROTONOSUPPORT;
-+
-+	if (protocol != BUS_PROTO_NONE)
-+		request_module("net-pf-%d-proto-%d", PF_BUS, protocol);
-+
-+	sock->state = SS_UNCONNECTED;
-+
-+	if (sock->type == SOCK_SEQPACKET)
-+		sock->ops = &bus_seqpacket_ops;
-+	else
-+		return -ESOCKTNOSUPPORT;
-+
-+	sk = bus_create1(net, sock);
-+	if (!sk)
-+		return -ENOMEM;
-+
-+	sk->sk_protocol = protocol;
-+
-+	return 0;
-+}
-+
-+static int bus_release(struct socket *sock)
-+{
-+	struct sock *sk = sock->sk;
-+
-+	if (!sk)
-+		return 0;
-+
-+	sock->sk = NULL;
-+
-+	return bus_release_sock(sk, 0);
-+}
-+
-+static struct sock *bus_find_other(struct net *net,
-+				   struct sockaddr_bus *sbusname, int len,
-+				   int protocol, unsigned int hash, int *error)
-+{
-+	struct sock *u;
-+	struct path path;
-+	int err = 0;
-+
-+	if (sbusname->sbus_path[0]) {
-+		struct inode *inode;
-+		err = kern_path(sbusname->sbus_path, LOOKUP_FOLLOW, &path);
-+		if (err)
-+			goto fail;
-+		inode = path.dentry->d_inode;
-+		err = inode_permission(inode, MAY_WRITE);
-+		if (err)
-+			goto put_fail;
-+
-+		err = -ECONNREFUSED;
-+		if (!S_ISSOCK(inode->i_mode))
-+			goto put_fail;
-+		u = bus_find_socket_byaddress(net, sbusname, len, protocol,
-+					      hash);
-+		if (!u)
-+			goto put_fail;
-+
-+		touch_atime(&path);
-+		path_put(&path);
-+
-+	} else {
-+		err = -ECONNREFUSED;
-+		u = bus_find_socket_byaddress(net, sbusname, len, protocol, hash);
-+		if (u) {
-+			struct dentry *dentry;
-+			dentry = bus_sk(u)->path.dentry;
-+			if (dentry)
-+				touch_atime(&bus_sk(u)->path);
-+		} else
-+			goto fail;
-+	}
-+
-+	return u;
-+
-+put_fail:
-+	path_put(&path);
-+fail:
-+	*error = err;
-+	return NULL;
-+}
-+
-+
-+static int bus_bind(struct socket *sock, struct sockaddr *uaddr, int addr_len)
-+{
-+	struct sock *sk = sock->sk;
-+	struct net *net = sock_net(sk);
-+	struct bus_sock *u = bus_sk(sk);
-+	struct sockaddr_bus *sbusaddr = (struct sockaddr_bus *)uaddr;
-+	char *sbus_path = sbusaddr->sbus_path;
-+	struct dentry *dentry = NULL;
-+	struct path path;
-+	int err;
-+	unsigned int hash;
-+	struct bus_address *addr;
-+	struct hlist_head *list;
-+	struct bus *bus;
-+
-+	err = -EINVAL;
-+	if (sbusaddr->sbus_family != AF_BUS)
-+		goto out;
-+
-+	/* If the address is available, the socket is the bus master */
-+	sbusaddr->sbus_addr.s_addr = BUS_MASTER_ADDR;
-+
-+	err = bus_mkname(sbusaddr, addr_len, &hash);
-+	if (err < 0)
-+		goto out;
-+	addr_len = err;
-+
-+	mutex_lock(&u->readlock);
-+
-+	err = -EINVAL;
-+	if (u->addr)
-+		goto out_up;
-+
-+	err = -ENOMEM;
-+	addr = kzalloc(sizeof(*addr) + sizeof(struct sockaddr_bus), GFP_KERNEL);
-+	if (!addr)
-+		goto out_up;
-+
-+	memcpy(addr->name, sbusaddr, sizeof(struct sockaddr_bus));
-+	addr->len = addr_len;
-+	addr->hash = hash;
-+	atomic_set(&addr->refcnt, 1);
-+	addr->sock = sk;
-+	INIT_HLIST_NODE(&addr->addr_node);
-+	INIT_HLIST_NODE(&addr->table_node);
-+
-+	if (sbus_path[0]) {
-+		umode_t mode;
-+		err = 0;
-+		/*
-+		 * Get the parent directory, calculate the hash for last
-+		 * component.
-+		 */
-+		dentry = kern_path_create(AT_FDCWD, sbus_path, &path, 0);
-+		err = PTR_ERR(dentry);
-+		if (IS_ERR(dentry))
-+			goto out_mknod_parent;
-+
-+		/*
-+		 * All right, let's create it.
-+		 */
-+		mode = S_IFSOCK |
-+		       (SOCK_INODE(sock)->i_mode & ~current_umask());
-+		err = mnt_want_write(path.mnt);
-+		if (err)
-+			goto out_mknod_dput;
-+		err = security_path_mknod(&path, dentry, mode, 0);
-+		if (err)
-+			goto out_mknod_drop_write;
-+		err = vfs_mknod(path.dentry->d_inode, dentry, mode, 0);
-+out_mknod_drop_write:
-+		mnt_drop_write(path.mnt);
-+		if (err)
-+			goto out_mknod_dput;
-+		mutex_unlock(&path.dentry->d_inode->i_mutex);
-+		dput(path.dentry);
-+		path.dentry = dentry;
-+	}
-+
-+	err = -ENOMEM;
-+	bus = kzalloc(sizeof(*bus), GFP_KERNEL);
-+	if (!bus)
-+		goto out_unlock;
-+
-+	spin_lock(&bus_table_lock);
-+
-+	if (!sbus_path[0]) {
-+		err = -EADDRINUSE;
-+		if (__bus_find_socket_byname(net, sbusaddr, addr_len, hash)) {
-+			bus_release_addr(addr);
-+			kfree(bus);
-+			goto out_unlock;
-+		}
-+
-+		list = &bus_socket_table[addr->hash];
-+	} else {
-+		list = &bus_socket_table[dentry->d_inode->i_ino &
-+					 (BUS_HASH_SIZE-1)];
-+		u->path = path;
-+	}
-+
-+	kref_init(&bus->kref);
-+	bus->master = sk;
-+	INIT_HLIST_HEAD(&bus->peers);
-+	spin_lock_init(&bus->lock);
-+	spin_lock_init(&bus->send_lock);
-+	atomic64_set(&bus->addr_cnt, 0);
-+	atomic64_set(&bus->eavesdropper_cnt, 0);
-+
-+	hlist_add_head(&addr->addr_node, &u->addr_list);
-+
-+	err = 0;
-+	__bus_remove_socket(sk);
-+	u->addr = addr;
-+	u->bus_master = true;
-+	u->bus = bus;
-+	__bus_insert_socket(list, sk);
-+	bus_insert_address(&bus_address_table[addr->hash], addr);
-+
-+out_unlock:
-+	spin_unlock(&bus_table_lock);
-+out_up:
-+	mutex_unlock(&u->readlock);
-+out:
-+	return err;
-+
-+out_mknod_dput:
-+	dput(dentry);
-+	mutex_unlock(&path.dentry->d_inode->i_mutex);
-+	path_put(&path);
-+out_mknod_parent:
-+	if (err == -EEXIST)
-+		err = -EADDRINUSE;
-+	bus_release_addr(addr);
-+	goto out_up;
-+}
-+
-+static long bus_wait_for_peer(struct sock *other, long timeo)
-+{
-+	struct bus_sock *u = bus_sk(other);
-+	int sched;
-+	DEFINE_WAIT(wait);
-+
-+	prepare_to_wait_exclusive(&u->peer_wait, &wait, TASK_INTERRUPTIBLE);
-+
-+	sched = !sock_flag(other, SOCK_DEAD) &&
-+		!(other->sk_shutdown & RCV_SHUTDOWN) &&
-+		bus_recvq_full(other);
-+
-+	bus_state_unlock(other);
-+
-+	if (sched)
-+		timeo = schedule_timeout(timeo);
-+
-+	finish_wait(&u->peer_wait, &wait);
-+	return timeo;
-+}
-+
-+static int bus_connect(struct socket *sock, struct sockaddr *uaddr,
-+			       int addr_len, int flags)
-+{
-+	struct sockaddr_bus *sbusaddr = (struct sockaddr_bus *)uaddr;
-+	struct sock *sk = sock->sk;
-+	struct net *net = sock_net(sk);
-+	struct bus_sock *u = bus_sk(sk), *newu, *otheru;
-+	struct sock *newsk = NULL;
-+	struct sock *other = NULL;
-+	struct sk_buff *skb = NULL;
-+	struct bus_address *addr = NULL;
-+	unsigned int hash;
-+	int st;
-+	int err;
-+	long timeo;
-+
-+	/* Only connections to the bus master is allowed */
-+	sbusaddr->sbus_addr.s_addr = BUS_MASTER_ADDR;
-+
-+	err = bus_mkname(sbusaddr, addr_len, &hash);
-+	if (err < 0)
-+		goto out;
-+	addr_len = err;
-+
-+	err = -ENOMEM;
-+	addr = kzalloc(sizeof(*addr) + sizeof(struct sockaddr_bus), GFP_KERNEL);
-+	if (!addr)
-+		goto out;
-+
-+	atomic_set(&addr->refcnt, 1);
-+	INIT_HLIST_NODE(&addr->addr_node);
-+	INIT_HLIST_NODE(&addr->table_node);
-+
-+	timeo = sock_sndtimeo(sk, flags & O_NONBLOCK);
-+
-+	/* First of all allocate resources.
-+	   If we will make it after state is locked,
-+	   we will have to recheck all again in any case.
-+	 */
-+
-+	err = -ENOMEM;
-+
-+	/* create new sock for complete connection */
-+	newsk = bus_create1(sock_net(sk), NULL);
-+	if (newsk == NULL)
-+		goto out;
-+
-+	/* Allocate skb for sending to listening sock */
-+	skb = sock_wmalloc(newsk, 1, 0, GFP_KERNEL);
-+	if (skb == NULL)
-+		goto out;
-+
-+restart:
-+	/*  Find listening sock. */
-+	other = bus_find_other(net, sbusaddr, addr_len, sk->sk_protocol, hash,
-+			       &err);
-+	if (!other)
-+		goto out;
-+
-+	/* Latch state of peer */
-+	bus_state_lock(other);
-+
-+	/* Apparently VFS overslept socket death. Retry. */
-+	if (sock_flag(other, SOCK_DEAD)) {
-+		bus_state_unlock(other);
-+		sock_put(other);
-+		goto restart;
-+	}
-+
-+	err = -ECONNREFUSED;
-+	if (other->sk_state != BUS_LISTEN)
-+		goto out_unlock;
-+	if (other->sk_shutdown & RCV_SHUTDOWN)
-+		goto out_unlock;
-+
-+	if (bus_recvq_full(other)) {
-+		err = -EAGAIN;
-+		if (!timeo)
-+			goto out_unlock;
-+
-+		timeo = bus_wait_for_peer(other, timeo);
-+
-+		err = sock_intr_errno(timeo);
-+		if (signal_pending(current))
-+			goto out;
-+		sock_put(other);
-+		goto restart;
-+	}
-+
-+	/* Latch our state.
-+
-+	   It is tricky place. We need to grab our state lock and cannot
-+	   drop lock on peer. It is dangerous because deadlock is
-+	   possible. Connect to self case and simultaneous
-+	   attempt to connect are eliminated by checking socket
-+	   state. other is BUS_LISTEN, if sk is BUS_LISTEN we
-+	   check this before attempt to grab lock.
-+
-+	   Well, and we have to recheck the state after socket locked.
-+	 */
-+	st = sk->sk_state;
-+
-+	switch (st) {
-+	case BUS_CLOSE:
-+		/* This is ok... continue with connect */
-+		break;
-+	case BUS_ESTABLISHED:
-+		/* Socket is already connected */
-+		err = -EISCONN;
-+		goto out_unlock;
-+	default:
-+		err = -EINVAL;
-+		goto out_unlock;
-+	}
-+
-+	bus_state_lock_nested(sk);
-+
-+	if (sk->sk_state != st) {
-+		bus_state_unlock(sk);
-+		bus_state_unlock(other);
-+		sock_put(other);
-+		goto restart;
-+	}
-+
-+	err = security_bus_connect(sk, other, newsk);
-+	if (err) {
-+		bus_state_unlock(sk);
-+		goto out_unlock;
-+	}
-+
-+	/* The way is open! Fastly set all the necessary fields... */
-+
-+	sock_hold(sk);
-+	bus_peer(newsk)	= sk;
-+	newsk->sk_state		= BUS_ESTABLISHED;
-+	newsk->sk_type		= sk->sk_type;
-+	newsk->sk_protocol	= sk->sk_protocol;
-+	init_peercred(newsk);
-+	newu = bus_sk(newsk);
-+	RCU_INIT_POINTER(newsk->sk_wq, &newu->peer_wq);
-+	otheru = bus_sk(other);
-+
-+	/* copy address information from listening to new sock*/
-+	if (otheru->addr && otheru->bus_master) {
-+		atomic_inc(&otheru->addr->refcnt);
-+		newu->addr = otheru->addr;
-+		memcpy(addr->name, otheru->addr->name,
-+		       sizeof(struct sockaddr_bus));
-+		addr->len = otheru->addr->len;
-+		addr->name->sbus_addr.s_addr =
-+			(atomic64_inc_return(&otheru->bus->addr_cnt) &
-+			 BUS_CLIENT_MASK);
-+		addr->hash = bus_compute_hash(addr->name->sbus_addr);
-+		addr->sock = sk;
-+		u->addr = addr;
-+		kref_get(&otheru->bus->kref);
-+		u->bus = otheru->bus;
-+		u->bus_master_side = false;
-+		kref_get(&otheru->bus->kref);
-+		newu->bus = otheru->bus;
-+		newu->bus_master_side = true;
-+		hlist_add_head(&addr->addr_node, &u->addr_list);
-+
-+		bus_insert_address(&bus_address_table[addr->hash], addr);
-+	}
-+	if (otheru->path.dentry) {
-+		path_get(&otheru->path);
-+		newu->path = otheru->path;
-+	}
-+
-+	/* Set credentials */
-+	copy_peercred(sk, other);
-+	sk->sk_sndbuf = other->sk_sndbuf;
-+	sk->sk_max_ack_backlog	= other->sk_max_ack_backlog;
-+	newsk->sk_sndbuf = other->sk_sndbuf;
-+
-+	sock->state	= SS_CONNECTED;
-+	sk->sk_state	= BUS_ESTABLISHED;
-+	sock_hold(newsk);
-+
-+	smp_mb__after_atomic_inc();	/* sock_hold() does an atomic_inc() */
-+	bus_peer(sk)	= newsk;
-+
-+	bus_state_unlock(sk);
-+
-+	/* take ten and and send info to listening sock */
-+	spin_lock(&other->sk_receive_queue.lock);
-+	__skb_queue_tail(&other->sk_receive_queue, skb);
-+	spin_unlock(&other->sk_receive_queue.lock);
-+	bus_state_unlock(other);
-+	other->sk_data_ready(other, 0);
-+	sock_put(other);
-+	return 0;
-+
-+out_unlock:
-+	if (other)
-+		bus_state_unlock(other);
-+
-+out:
-+	kfree_skb(skb);
-+	if (addr)
-+		bus_release_addr(addr);
-+	if (newsk)
-+		bus_release_sock(newsk, 0);
-+	if (other)
-+		sock_put(other);
-+	return err;
-+}
-+
-+static int bus_accept(struct socket *sock, struct socket *newsock, int flags)
-+{
-+	struct sock *sk = sock->sk;
-+	struct sock *tsk;
-+	struct sk_buff *skb;
-+	int err;
-+
-+	err = -EINVAL;
-+	if (sk->sk_state != BUS_LISTEN)
-+		goto out;
-+
-+	/* If socket state is BUS_LISTEN it cannot change (for now...),
-+	 * so that no locks are necessary.
-+	 */
-+
-+	skb = skb_recv_datagram(sk, 0, flags&O_NONBLOCK, &err);
-+	if (!skb) {
-+		/* This means receive shutdown. */
-+		if (err == 0)
-+			err = -EINVAL;
-+		goto out;
-+	}
-+
-+	tsk = skb->sk;
-+	skb_free_datagram(sk, skb);
-+	wake_up_interruptible(&bus_sk(sk)->peer_wait);
-+
-+	/* attach accepted sock to socket */
-+	bus_state_lock(tsk);
-+	newsock->state = SS_CONNECTED;
-+	sock_graft(tsk, newsock);
-+	bus_state_unlock(tsk);
-+	return 0;
-+
-+out:
-+	return err;
-+}
-+
-+
-+static int bus_getname(struct socket *sock, struct sockaddr *uaddr,
-+		       int *uaddr_len, int peer)
-+{
-+	struct sock *sk = sock->sk;
-+	struct bus_sock *u;
-+	DECLARE_SOCKADDR(struct sockaddr_bus *, sbusaddr, uaddr);
-+	int err = 0;
-+
-+	if (peer) {
-+		sk = bus_peer_get(sk);
-+
-+		err = -ENOTCONN;
-+		if (!sk)
-+			goto out;
-+		err = 0;
-+	} else {
-+		sock_hold(sk);
-+	}
-+
-+	u = bus_sk(sk);
-+
-+	bus_state_lock(sk);
-+	if (!u->addr) {
-+		sbusaddr->sbus_family = AF_BUS;
-+		sbusaddr->sbus_path[0] = 0;
-+		*uaddr_len = sizeof(short);
-+	} else {
-+		struct bus_address *addr = u->addr;
-+
-+		*uaddr_len = sizeof(struct sockaddr_bus);
-+		memcpy(sbusaddr, addr->name, *uaddr_len);
-+	}
-+	bus_state_unlock(sk);
-+	sock_put(sk);
-+out:
-+	return err;
-+}
-+
-+static void bus_detach_fds(struct scm_cookie *scm, struct sk_buff *skb)
-+{
-+	int i;
-+
-+	scm->fp = BUSCB(skb).fp;
-+	BUSCB(skb).fp = NULL;
-+
-+	for (i = scm->fp->count-1; i >= 0; i--)
-+		bus_notinflight(scm->fp->fp[i]);
-+}
-+
-+static void bus_destruct_scm(struct sk_buff *skb)
-+{
-+	struct scm_cookie scm;
-+	memset(&scm, 0, sizeof(scm));
-+	scm.pid  = BUSCB(skb).pid;
-+	scm.cred = BUSCB(skb).cred;
-+	if (BUSCB(skb).fp)
-+		bus_detach_fds(&scm, skb);
-+
-+	scm_destroy(&scm);
-+	if (skb->sk)
-+		sock_wfree(skb);
-+}
-+
-+#define MAX_RECURSION_LEVEL 4
-+
-+static int bus_attach_fds(struct scm_cookie *scm, struct sk_buff *skb)
-+{
-+	int i;
-+	unsigned char max_level = 0;
-+	int bus_sock_count = 0;
-+
-+	for (i = scm->fp->count - 1; i >= 0; i--) {
-+		struct sock *sk = bus_get_socket(scm->fp->fp[i]);
-+
-+		if (sk) {
-+			bus_sock_count++;
-+			max_level = max(max_level,
-+					bus_sk(sk)->recursion_level);
-+		}
-+	}
-+	if (unlikely(max_level > MAX_RECURSION_LEVEL))
-+		return -ETOOMANYREFS;
-+
-+	/*
-+	 * Need to duplicate file references for the sake of garbage
-+	 * collection.  Otherwise a socket in the fps might become a
-+	 * candidate for GC while the skb is not yet queued.
-+	 */
-+	BUSCB(skb).fp = scm_fp_dup(scm->fp);
-+	if (!BUSCB(skb).fp)
-+		return -ENOMEM;
-+
-+	if (bus_sock_count) {
-+		for (i = scm->fp->count - 1; i >= 0; i--)
-+			bus_inflight(scm->fp->fp[i]);
-+	}
-+	return max_level;
-+}
-+
-+static int bus_scm_to_skb(struct scm_cookie *scm, struct sk_buff *skb,
-+			  bool send_fds)
-+{
-+	int err = 0;
-+
-+	BUSCB(skb).pid  = get_pid(scm->pid);
-+	if (scm->cred)
-+		BUSCB(skb).cred = get_cred(scm->cred);
-+	BUSCB(skb).fp = NULL;
-+	if (scm->fp && send_fds)
-+		err = bus_attach_fds(scm, skb);
-+
-+	skb->destructor = bus_destruct_scm;
-+	return err;
-+}
-+
-+/*
-+ * Some apps rely on write() giving SCM_CREDENTIALS
-+ * We include credentials if source or destination socket
-+ * asserted SOCK_PASSCRED.
-+ */
-+static void maybe_add_creds(struct sk_buff *skb, const struct socket *sock,
-+			    const struct sock *other)
-+{
-+	if (BUSCB(skb).cred)
-+		return;
-+	if (test_bit(SOCK_PASSCRED, &sock->flags) ||
-+	    !other->sk_socket ||
-+	    test_bit(SOCK_PASSCRED, &other->sk_socket->flags)) {
-+		BUSCB(skb).pid  = get_pid(task_tgid(current));
-+		BUSCB(skb).cred = get_current_cred();
-+	}
-+}
-+
-+/*
-+ *	Send AF_BUS data.
-+ */
-+
-+static void bus_deliver_skb(struct sk_buff *skb)
-+{
-+	struct bus_send_context *sendctx = BUSCB(skb).sendctx;
-+	struct socket *sock = sendctx->sender_socket;
-+
-+	if (sock_flag(sendctx->other, SOCK_RCVTSTAMP))
-+		__net_timestamp(skb);
-+	maybe_add_creds(skb, sock, sendctx->other);
-+	skb_queue_tail(&sendctx->other->sk_receive_queue, skb);
-+	if (sendctx->max_level > bus_sk(sendctx->other)->recursion_level)
-+		bus_sk(sendctx->other)->recursion_level = sendctx->max_level;
-+}
-+
-+/**
-+ * bus_sendmsg_finish - delivery an skb to a destination
-+ * @skb: sk_buff to deliver
-+ *
-+ * Delivers a packet to a destination. The skb control buffer has
-+ * all the information about the destination contained on sending
-+ * context. If the sending is unicast, then the skb is delivered
-+ * and the receiver notified but if the sending is multicast, the
-+ * skb is just marked as delivered and the actual delivery is made
-+ * outside the function with the bus->send_lock held to ensure that
-+ * the multicast sending is atomic.
-+ */
-+static int bus_sendmsg_finish(struct sk_buff *skb)
-+{
-+	int err;
-+	struct bus_send_context *sendctx;
-+	struct socket *sock;
-+	struct sock *sk;
-+	struct net *net;
-+	size_t len = skb->len;
-+
-+	sendctx = BUSCB(skb).sendctx;
-+	sock = sendctx->sender_socket;
-+	sk = sock->sk;
-+	net = sock_net(sk);
-+
-+restart:
-+	if (!sendctx->other) {
-+		err = -ECONNRESET;
-+		if (sendctx->recipient == NULL)
-+			goto out_free;
-+
-+		sendctx->other = bus_find_other(net, sendctx->recipient,
-+						sendctx->namelen,
-+						sk->sk_protocol,
-+						sendctx->hash, &err);
-+
-+		if (sendctx->other == NULL ||
-+		    !bus_sk(sendctx->other)->authenticated) {
-+
-+			if (sendctx->other)
-+				sock_put(sendctx->other);
-+
-+			if (!bus_sk(sk)->bus_master_side) {
-+				err = -ENOTCONN;
-+				sendctx->other = bus_peer_get(sk);
-+				if (!sendctx->other)
-+					goto out_free;
-+			} else {
-+				sendctx->other = sk;
-+				sock_hold(sendctx->other);
-+			}
-+		}
-+	}
-+
-+	if (sk_filter(sendctx->other, skb) < 0) {
-+		/* Toss the packet but do not return any error to the sender */
-+		err = len;
-+		goto out_free;
-+	}
-+
-+	bus_state_lock(sendctx->other);
-+
-+	if (sock_flag(sendctx->other, SOCK_DEAD)) {
-+		/*
-+		 *	Check with 1003.1g - what should
-+		 *	datagram error
-+		 */
-+		bus_state_unlock(sendctx->other);
-+		sock_put(sendctx->other);
-+
-+		err = 0;
-+		bus_state_lock(sk);
-+		if (bus_peer(sk) == sendctx->other) {
-+			bus_peer(sk) = NULL;
-+			bus_state_unlock(sk);
-+			sock_put(sendctx->other);
-+			err = -ECONNREFUSED;
-+		} else {
-+			bus_state_unlock(sk);
-+		}
-+
-+		sendctx->other = NULL;
-+		if (err)
-+			goto out_free;
-+		goto restart;
-+	}
-+
-+	err = -EPIPE;
-+	if (sendctx->other->sk_shutdown & RCV_SHUTDOWN)
-+		goto out_unlock;
-+
-+	if (bus_recvq_full(sendctx->other)) {
-+		if (!sendctx->timeo) {
-+			err = -EAGAIN;
-+			goto out_unlock;
-+		}
-+
-+		sendctx->timeo = bus_wait_for_peer(sendctx->other,
-+						   sendctx->timeo);
-+
-+		err = sock_intr_errno(sendctx->timeo);
-+		if (signal_pending(current))
-+			goto out_free;
-+
-+		goto restart;
-+	}
-+
-+	if (!sendctx->multicast && !sendctx->eavesdropper) {
-+		bus_deliver_skb(skb);
-+		bus_state_unlock(sendctx->other);
-+		sendctx->other->sk_data_ready(sendctx->other, 0);
-+		sock_put(sendctx->other);
-+	} else {
-+		sendctx->deliver = 1;
-+		bus_state_unlock(sendctx->other);
-+	}
-+
-+	return len;
-+
-+out_unlock:
-+	bus_state_unlock(sendctx->other);
-+out_free:
-+	kfree_skb(skb);
-+	if (sendctx->other)
-+		sock_put(sendctx->other);
-+
-+	return err;
-+}
-+
-+/**
-+ * bus_sendmsg_mcast - do a multicast sending
-+ * @skb: sk_buff to deliver
-+ *
-+ * Send a packet to a multicast destination.
-+ * The function is also called for unicast sending when eavesdropping
-+ * is enabled. Since the unicast destination and the eavesdroppers
-+ * have to receive the packet atomically.
-+ */
-+static int bus_sendmsg_mcast(struct sk_buff *skb)
-+{
-+	struct bus_send_context *sendctx;
-+	struct bus_send_context *tmpctx;
-+	struct socket *sock;
-+	struct sock *sk;
-+	struct net *net;
-+	struct bus_sock *u, *s;
-+	struct hlist_node *node;
-+	u16 prefix = 0;
-+	struct sk_buff **skb_set = NULL;
-+	struct bus_send_context **sendctx_set = NULL;
-+	int  rcp_cnt, send_cnt;
-+	int i;
-+	int err;
-+	int len = skb->len;
-+	bool (*is_receiver) (struct sock *, u16);
-+	bool main_rcp_found = false;
-+
-+	sendctx = BUSCB(skb).sendctx;
-+	sendctx->deliver = 0;
-+	sock = sendctx->sender_socket;
-+	sk = sock->sk;
-+	u = bus_sk(sk);
-+	net = sock_net(sk);
-+
-+	if (sendctx->multicast) {
-+		prefix = bus_addr_prefix(sendctx->recipient);
-+		if (sendctx->eavesdropper)
-+			is_receiver = &bus_has_prefix_eavesdropper;
-+		else
-+			is_receiver = &bus_has_prefix;
-+	} else {
-+		is_receiver = &bus_eavesdropper;
-+
-+		/*
-+		 * If the destination is not the peer accepted socket
-+		 * we have to get the correct destination.
-+		 */
-+		if (!sendctx->to_master && sendctx->recipient) {
-+			sendctx->other = bus_find_other(net, sendctx->recipient,
-+							sendctx->namelen,
-+							sk->sk_protocol,
-+							sendctx->hash, &err);
-+
-+
-+			if (sendctx->other == NULL ||
-+			    !bus_sk(sendctx->other)->authenticated) {
-+
-+				if (sendctx->other)
-+					sock_put(sendctx->other);
-+
-+				if (sendctx->other == NULL) {
-+					if (!bus_sk(sk)->bus_master_side) {
-+						err = -ENOTCONN;
-+						sendctx->other = bus_peer_get(sk);
-+						if (!sendctx->other)
-+							goto out;
-+					} else {
-+						sendctx->other = sk;
-+						sock_hold(sendctx->other);
-+					}
-+				}
-+				sendctx->to_master = 1;
-+			}
-+		}
-+	}
-+
-+
-+try_again:
-+	rcp_cnt = 0;
-+	main_rcp_found = false;
-+
-+	spin_lock(&u->bus->lock);
-+
-+	hlist_for_each_entry(s, node, &u->bus->peers, bus_node) {
-+
-+		if (!net_eq(sock_net(&s->sk), net))
-+			continue;
-+
-+		if (is_receiver(&s->sk, prefix) ||
-+		    (!sendctx->multicast &&
-+		     !sendctx->to_master &&
-+		     &s->sk == sendctx->other))
-+			rcp_cnt++;
-+	}
-+
-+	spin_unlock(&u->bus->lock);
-+
-+	/*
-+	 * Memory can't be allocated while holding a spinlock so
-+	 * we have to release the lock, do the allocation for the
-+	 * array to store each destination peer sk_buff and grab
-+	 * the bus peer lock again. Peers could have joined the
-+	 * bus while we relesed the lock so we allocate 5 more
-+	 * recipients hoping that this will be enough to not having
-+	 * to try again in case only a few peers joined the bus.
-+	 */
-+	rcp_cnt += 5;
-+	skb_set = kzalloc(sizeof(struct sk_buff *) * rcp_cnt, GFP_KERNEL);
-+
-+	if (!skb_set) {
-+		err = -ENOMEM;
-+		goto out;
-+	}
-+
-+	sendctx_set = kzalloc(sizeof(struct bus_send_context *) * rcp_cnt,
-+			      GFP_KERNEL);
-+	if (!sendctx_set) {
-+		err = -ENOMEM;
-+		goto out;
-+	}
-+
-+	for (i = 0; i < rcp_cnt; i++) {
-+		skb_set[i] = skb_clone(skb, GFP_KERNEL);
-+		if (!skb_set[i]) {
-+			err = -ENOMEM;
-+			goto out_free;
-+		}
-+		sendctx_set[i] = BUSCB(skb_set[i]).sendctx
-+			= kmalloc(sizeof(*sendctx) * rcp_cnt, GFP_KERNEL);
-+		if (!sendctx_set[i]) {
-+			err = -ENOMEM;
-+			goto out_free;
-+		}
-+		memcpy(sendctx_set[i], sendctx, sizeof(*sendctx));
-+		err = bus_scm_to_skb(sendctx_set[i]->siocb->scm,
-+				     skb_set[i], true);
-+		if (err < 0)
-+			goto out_free;
-+		bus_get_secdata(sendctx_set[i]->siocb->scm,
-+				skb_set[i]);
-+
-+		sendctx_set[i]->other = NULL;
-+	}
-+
-+	send_cnt = 0;
-+
-+	spin_lock(&u->bus->lock);
-+
-+	hlist_for_each_entry(s, node, &u->bus->peers, bus_node) {
-+
-+		if (!net_eq(sock_net(&s->sk), net))
-+			continue;
-+
-+		if (send_cnt >= rcp_cnt) {
-+			spin_unlock(&u->bus->lock);
-+
-+			for (i = 0; i < rcp_cnt; i++) {
-+				sock_put(sendctx_set[i]->other);
-+				kfree_skb(skb_set[i]);
-+				kfree(sendctx_set[i]);
-+			}
-+			kfree(skb_set);
-+			kfree(sendctx_set);
-+			sendctx_set = NULL;
-+			skb_set = NULL;
-+			goto try_again;
-+		}
-+
-+		if (is_receiver(&s->sk, prefix) ||
-+		    (!sendctx->multicast &&
-+		     !sendctx->to_master &&
-+		     &s->sk == sendctx->other)) {
-+			skb_set_owner_w(skb_set[send_cnt], &s->sk);
-+			tmpctx = BUSCB(skb_set[send_cnt]).sendctx;
-+			sock_hold(&s->sk);
-+			if (&s->sk == sendctx->other) {
-+				tmpctx->main_recipient = 1;
-+				main_rcp_found = true;
-+			}
-+			tmpctx->other = &s->sk;
-+			tmpctx->recipient = s->addr->name;
-+			tmpctx->eavesdropper = bus_eavesdropper(&s->sk, 0);
-+
-+			send_cnt++;
-+		}
-+	}
-+
-+	spin_unlock(&u->bus->lock);
-+
-+	/*
-+	 * Peers have left the bus so we have to free
-+	 * their pre-allocated bus_send_context and
-+	 * socket buffers.
-+	 */
-+	if (send_cnt < rcp_cnt) {
-+		for (i = send_cnt; i < rcp_cnt; i++) {
-+			kfree_skb(skb_set[i]);
-+			kfree(sendctx_set[i]);
-+		}
-+		rcp_cnt = send_cnt;
-+	}
-+
-+	for (i = 0; i < send_cnt; i++) {
-+		tmpctx = BUSCB(skb_set[i]).sendctx;
-+		tmpctx->deliver = 0;
-+		err = NF_HOOK(NFPROTO_BUS, NF_BUS_SENDING, skb_set[i],
-+			      NULL, NULL, bus_sendmsg_finish);
-+		if (err == -EPERM)
-+			sock_put(tmpctx->other);
-+	}
-+
-+	/*
-+	 * If the send context is not multicast, the destination
-+	 * coud be either the peer accepted socket descriptor or
-+	 * a peer that is not an eavesdropper. If the peer is not
-+	 * the accepted socket descriptor and has been authenticated,
-+	 * it is a member of the bus peer list so it has already been
-+	 * marked for delivery.
-+	 * But if the destination is the accepted socket descriptor
-+	 * or is a non-authenticated peer it is not a member of the
-+	 * bus peer list so the packet has to be explicitly deliver
-+	 * to it.
-+	 */
-+
-+	if (!sendctx->multicast &&
-+	    (sendctx->to_master ||
-+	     (sendctx->bus_master_side && !main_rcp_found))) {
-+		sendctx->main_recipient = 1;
-+		err = NF_HOOK(NFPROTO_BUS, NF_BUS_SENDING, skb, NULL, NULL,
-+			bus_sendmsg_finish);
-+		if (err == -EPERM)
-+			sock_put(sendctx->other);
-+	}
-+
-+	spin_lock(&u->bus->send_lock);
-+
-+	for (i = 0; i < send_cnt; i++) {
-+		tmpctx = sendctx_set[i];
-+		if (tmpctx->deliver != 1)
-+			continue;
-+
-+		bus_state_lock(tmpctx->other);
-+		bus_deliver_skb(skb_set[i]);
-+		bus_state_unlock(tmpctx->other);
-+	}
-+
-+	if (!sendctx->multicast &&
-+	    sendctx->deliver == 1 &&
-+	    !bus_sk(sendctx->other)->eavesdropper) {
-+		bus_state_lock(sendctx->other);
-+		bus_deliver_skb(skb);
-+		bus_state_unlock(sendctx->other);
-+	}
-+
-+	spin_unlock(&u->bus->send_lock);
-+
-+	for (i = 0; i < send_cnt; i++) {
-+		tmpctx = sendctx_set[i];
-+		if (tmpctx->deliver != 1)
-+			continue;
-+
-+		tmpctx->other->sk_data_ready(tmpctx->other, 0);
-+		sock_put(tmpctx->other);
-+	}
-+
-+	if (!sendctx->multicast &&
-+	    sendctx->deliver == 1 &&
-+	    !bus_sk(sendctx->other)->eavesdropper) {
-+		sendctx->other->sk_data_ready(sendctx->other, 0);
-+		sock_put(sendctx->other);
-+	}
-+
-+	err = len;
-+	goto out;
-+
-+out_free:
-+	for (i = 0; i < rcp_cnt; i++) {
-+		if (skb_set[i])
-+			kfree_skb(skb_set[i]);
-+	}
-+
-+out:
-+	kfree(skb_set);
-+	if (sendctx_set) {
-+		for (i = 0; i < rcp_cnt; i++)
-+			kfree(sendctx_set[i]);
-+		kfree(sendctx_set);
-+	}
-+
-+	if (sendctx->deliver == 0) {
-+		if (!sendctx->to_master &&
-+		    !(sendctx->bus_master_side && !main_rcp_found))
-+			kfree_skb(skb);
-+		if (!sendctx->to_master &&
-+		    !(sendctx->bus_master_side && !main_rcp_found))
-+			if (sendctx->other)
-+				sock_put(sendctx->other);
-+	}
-+	scm_destroy(sendctx->siocb->scm);
-+
-+	return err;
-+}
-+
-+static inline void bus_copy_path(struct sockaddr_bus *dest,
-+				 struct sockaddr_bus *src)
-+{
-+	int offset;
-+
-+	/*
-+	 * abstract path names start with a null byte character,
-+	 * so they have to be compared starting at the second char.
-+	 */
-+	offset = (src->sbus_path[0] == '\0');
-+
-+	strncpy(dest->sbus_path + offset,
-+		src->sbus_path + offset,
-+		BUS_PATH_MAX);
-+}
-+
-+/**
-+ * bus_sendmsg - send an skb to a destination
-+ * @kiocb: I/O control block info
-+ * @sock: sender socket
-+ * @msg: message header
-+ * @len: message length
-+ *
-+ * Send an socket buffer to a destination. The destination could be
-+ * either an unicast or a multicast address. In any case, a copy of
-+ * the packet has to be send to all the sockets that are allowed to
-+ * eavesdrop the communication bus.
-+ *
-+ * If the destination address is not associated with any socket, the
-+ * packet is default routed to the bus master (the sender accepted
-+ * socket).
-+ *
-+ * The af_bus sending path is hooked to the netfilter subsystem so
-+ * netfilter hooks can filter or modify the packet before delivery.
-+ */
-+static int bus_sendmsg(struct kiocb *kiocb, struct socket *sock,
-+				struct msghdr *msg, size_t len)
-+{
-+	struct sock *sk = sock->sk;
-+	struct bus_sock *u = bus_sk(sk);
-+	struct sockaddr_bus *sbusaddr = msg->msg_name;
-+	int err;
-+	struct sk_buff *skb;
-+	struct scm_cookie tmp_scm;
-+	bool to_master = false;
-+	bool multicast = false;
-+	struct bus_send_context sendctx;
-+
-+	err = sock_error(sk);
-+	if (err)
-+		return err;
-+
-+	if (sk->sk_state != BUS_ESTABLISHED)
-+		return -ENOTCONN;
-+
-+	if (!msg->msg_namelen)
-+		sbusaddr = NULL;
-+
-+	if (sbusaddr)
-+		bus_copy_path(sbusaddr, u->addr->name);
-+
-+	if ((!sbusaddr && !u->bus_master_side) ||
-+	    (sbusaddr && sbusaddr->sbus_addr.s_addr == BUS_MASTER_ADDR))
-+		to_master = true;
-+	else if (sbusaddr && !u->bus_master_side && !u->authenticated)
-+		return -EHOSTUNREACH;
-+
-+	sendctx.namelen = 0; /* fake GCC */
-+	sendctx.siocb = kiocb_to_siocb(kiocb);
-+	sendctx.other = NULL;
-+
-+	if (NULL == sendctx.siocb->scm)
-+		sendctx.siocb->scm = &tmp_scm;
-+	wait_for_bus_gc();
-+	err = scm_send(sock, msg, sendctx.siocb->scm, false);
-+	if (err < 0)
-+		return err;
-+
-+	err = -EOPNOTSUPP;
-+	if (msg->msg_flags&MSG_OOB)
-+		goto out;
-+
-+	if (sbusaddr && !to_master) {
-+		err = bus_mkname(sbusaddr, msg->msg_namelen, &sendctx.hash);
-+		if (err < 0)
-+			goto out;
-+		sendctx.namelen = err;
-+		multicast = bus_mc_addr(sbusaddr);
-+	} else {
-+		err = -ENOTCONN;
-+		sendctx.other = bus_peer_get(sk);
-+		if (!sendctx.other)
-+			goto out;
-+	}
-+
-+	err = -EMSGSIZE;
-+	if (len > sk->sk_sndbuf - 32)
-+		goto out;
-+
-+	sendctx.timeo = sock_sndtimeo(sk, msg->msg_flags & MSG_DONTWAIT);
-+
-+restart:
-+	bus_state_lock(sk);
-+	if (bus_recvq_full(sk)) {
-+		err = -EAGAIN;
-+		if (!sendctx.timeo) {
-+			bus_state_unlock(sk);
-+			goto out;
-+		}
-+
-+		sendctx.timeo = bus_wait_for_peer(sk, sendctx.timeo);
-+
-+		err = sock_intr_errno(sendctx.timeo);
-+		if (signal_pending(current))
-+			goto out;
-+
-+		goto restart;
-+	} else {
-+		bus_state_unlock(sk);
-+	}
-+
-+	skb = sock_alloc_send_skb(sk, len, msg->msg_flags&MSG_DONTWAIT, &err);
-+	if (skb == NULL)
-+		goto out;
-+
-+	err = bus_scm_to_skb(sendctx.siocb->scm, skb, true);
-+	if (err < 0)
-+		goto out_free;
-+	sendctx.max_level = err + 1;
-+	bus_get_secdata(sendctx.siocb->scm, skb);
-+
-+	skb_reset_transport_header(skb);
-+	err = memcpy_fromiovec(skb_put(skb, len), msg->msg_iov, len);
-+	if (err)
-+		goto out_free;
-+
-+	sendctx.sender_socket = sock;
-+	if (u->bus_master_side && sendctx.other) {
-+		/* if the bus master sent an unicast message to a peer, we
-+		 * need the address of that peer
-+		 */
-+		sendctx.sender = bus_sk(sendctx.other)->addr->name;
-+	} else {
-+		sendctx.sender = u->addr->name;
-+	}
-+	sendctx.recipient = sbusaddr;
-+	sendctx.authenticated = u->authenticated;
-+	sendctx.bus_master_side = u->bus_master_side;
-+	sendctx.to_master = to_master;
-+	sendctx.multicast = multicast;
-+	sendctx.eavesdropper = atomic64_read(&u->bus->eavesdropper_cnt) ? 1 : 0;
-+	BUSCB(skb).sendctx = &sendctx;
-+
-+	if (sendctx.multicast || sendctx.eavesdropper) {
-+		sendctx.main_recipient = 0;
-+		err = bus_sendmsg_mcast(skb);
-+		return sendctx.multicast ? len : err;
-+	} else {
-+		sendctx.main_recipient = 1;
-+		len = NF_HOOK(NFPROTO_BUS, NF_BUS_SENDING, skb, NULL, NULL,
-+			      bus_sendmsg_finish);
-+
-+		if (len == -EPERM) {
-+			err = len;
-+			goto out;
-+		} else {
-+			scm_destroy(sendctx.siocb->scm);
-+			return len;
-+		}
-+	}
-+
-+out_free:
-+	kfree_skb(skb);
-+out:
-+	if (sendctx.other)
-+		sock_put(sendctx.other);
-+	scm_destroy(sendctx.siocb->scm);
-+	return err;
-+}
-+
-+static void bus_copy_addr(struct msghdr *msg, struct sock *sk)
-+{
-+	struct bus_sock *u = bus_sk(sk);
-+
-+	msg->msg_namelen = 0;
-+	if (u->addr) {
-+		msg->msg_namelen = u->addr->len;
-+		memcpy(msg->msg_name, u->addr->name,
-+		       sizeof(struct sockaddr_bus));
-+	}
-+}
-+
-+static int bus_recvmsg(struct kiocb *iocb, struct socket *sock,
-+			  struct msghdr *msg, size_t size, int flags)
-+{
-+	struct sock_iocb *siocb = kiocb_to_siocb(iocb);
-+	struct scm_cookie tmp_scm;
-+	struct sock *sk = sock->sk;
-+	struct bus_sock *u = bus_sk(sk);
-+	int noblock = flags & MSG_DONTWAIT;
-+	struct sk_buff *skb;
-+	int err;
-+	int peeked, skip;
-+
-+	if (sk->sk_state != BUS_ESTABLISHED)
-+		return -ENOTCONN;
-+
-+	err = -EOPNOTSUPP;
-+	if (flags&MSG_OOB)
-+		goto out;
-+
-+	msg->msg_namelen = 0;
-+
-+	err = mutex_lock_interruptible(&u->readlock);
-+	if (err) {
-+		err = sock_intr_errno(sock_rcvtimeo(sk, noblock));
-+		goto out;
-+	}
-+
-+	skip = sk_peek_offset(sk, flags);
-+
-+	skb = __skb_recv_datagram(sk, flags, &peeked, &skip, &err);
-+	if (!skb) {
-+		bus_state_lock(sk);
-+		/* Signal EOF on disconnected non-blocking SEQPACKET socket. */
-+		if (err == -EAGAIN && (sk->sk_shutdown & RCV_SHUTDOWN))
-+			err = 0;
-+		bus_state_unlock(sk);
-+		goto out_unlock;
-+	}
-+
-+	wake_up_interruptible_sync_poll(&u->peer_wait,
-+					POLLOUT | POLLWRNORM | POLLWRBAND);
-+
-+	if (msg->msg_name)
-+		bus_copy_addr(msg, skb->sk);
-+
-+	if (size > skb->len - skip)
-+		size = skb->len - skip;
-+	else if (size < skb->len - skip)
-+		msg->msg_flags |= MSG_TRUNC;
-+
-+	err = skb_copy_datagram_iovec(skb, skip, msg->msg_iov, size);
-+	if (err)
-+		goto out_free;
-+
-+	if (sock_flag(sk, SOCK_RCVTSTAMP))
-+		__sock_recv_timestamp(msg, sk, skb);
-+
-+	if (!siocb->scm) {
-+		siocb->scm = &tmp_scm;
-+		memset(&tmp_scm, 0, sizeof(tmp_scm));
-+	}
-+	scm_set_cred(siocb->scm, BUSCB(skb).pid, BUSCB(skb).cred);
-+	bus_set_secdata(siocb->scm, skb);
-+
-+	if (!(flags & MSG_PEEK)) {
-+		if (BUSCB(skb).fp)
-+			bus_detach_fds(siocb->scm, skb);
-+
-+		sk_peek_offset_bwd(sk, skb->len);
-+	} else {
-+		/* It is questionable: on PEEK we could:
-+		   - do not return fds - good, but too simple 8)
-+		   - return fds, and do not return them on read (old strategy,
-+		     apparently wrong)
-+		   - clone fds (I chose it for now, it is the most universal
-+		     solution)
-+
-+		   POSIX 1003.1g does not actually define this clearly
-+		   at all. POSIX 1003.1g doesn't define a lot of things
-+		   clearly however!
-+
-+		*/
-+
-+		sk_peek_offset_fwd(sk, size);
-+
-+		if (BUSCB(skb).fp)
-+			siocb->scm->fp = scm_fp_dup(BUSCB(skb).fp);
-+	}
-+	err = (flags & MSG_TRUNC) ? skb->len - skip : size;
-+
-+	scm_recv(sock, msg, siocb->scm, flags);
-+
-+out_free:
-+	skb_free_datagram(sk, skb);
-+out_unlock:
-+	mutex_unlock(&u->readlock);
-+out:
-+	return err;
-+}
-+
-+static int bus_shutdown(struct socket *sock, int mode)
-+{
-+	struct sock *sk = sock->sk;
-+	struct sock *other;
-+
-+	mode = (mode+1)&(RCV_SHUTDOWN|SEND_SHUTDOWN);
-+
-+	if (!mode)
-+		return 0;
-+
-+	bus_state_lock(sk);
-+	sk->sk_shutdown |= mode;
-+	other = bus_peer(sk);
-+	if (other)
-+		sock_hold(other);
-+	bus_state_unlock(sk);
-+	sk->sk_state_change(sk);
-+
-+	if (other) {
-+
-+		int peer_mode = 0;
-+
-+		if (mode&RCV_SHUTDOWN)
-+			peer_mode |= SEND_SHUTDOWN;
-+		if (mode&SEND_SHUTDOWN)
-+			peer_mode |= RCV_SHUTDOWN;
-+		bus_state_lock(other);
-+		other->sk_shutdown |= peer_mode;
-+		bus_state_unlock(other);
-+		other->sk_state_change(other);
-+		if (peer_mode == SHUTDOWN_MASK)
-+			sk_wake_async(other, SOCK_WAKE_WAITD, POLL_HUP);
-+		else if (peer_mode & RCV_SHUTDOWN)
-+			sk_wake_async(other, SOCK_WAKE_WAITD, POLL_IN);
-+		sock_put(other);
-+	}
-+
-+	return 0;
-+}
-+
-+static int bus_add_addr(struct sock *sk, struct bus_addr *sbus_addr)
-+{
-+	struct bus_address *addr;
-+	struct sock *other;
-+	struct bus_sock *u = bus_sk(sk);
-+	struct net *net = sock_net(sk);
-+	int ret = 0;
-+
-+	addr = kzalloc(sizeof(*addr) + sizeof(struct sockaddr_bus), GFP_KERNEL);
-+	if (!addr) {
-+		ret = -ENOMEM;
-+		goto out;
-+	}
-+
-+	memcpy(addr->name, u->addr->name, sizeof(struct sockaddr_bus));
-+	addr->len = u->addr->len;
-+
-+	addr->name->sbus_addr.s_addr = sbus_addr->s_addr;
-+	addr->hash = bus_compute_hash(addr->name->sbus_addr);
-+	other = bus_find_socket_byaddress(net, addr->name, addr->len,
-+					  sk->sk_protocol, addr->hash);
-+
-+	if (other) {
-+		sock_put(other);
-+		kfree(addr);
-+		ret = -EADDRINUSE;
-+		goto out;
-+	}
-+
-+	atomic_set(&addr->refcnt, 1);
-+	INIT_HLIST_NODE(&addr->addr_node);
-+	INIT_HLIST_NODE(&addr->table_node);
-+
-+	addr->sock = sk;
-+
-+	hlist_add_head(&addr->addr_node, &u->addr_list);
-+	bus_insert_address(&bus_address_table[addr->hash], addr);
-+
-+out:
-+	sock_put(sk);
-+
-+	return ret;
-+}
-+
-+static int bus_del_addr(struct sock *sk, struct bus_addr *sbus_addr)
-+{
-+	struct bus_address *addr;
-+	int ret = 0;
-+
-+	bus_state_lock(sk);
-+	addr = __bus_get_address(sk, sbus_addr);
-+	if (!addr) {
-+		ret = -EINVAL;
-+		bus_state_unlock(sk);
-+		goto out;
-+	}
-+	hlist_del(&addr->addr_node);
-+	bus_state_unlock(sk);
-+
-+	bus_remove_address(addr);
-+	bus_release_addr(addr);
-+out:
-+	sock_put(sk);
-+
-+	return ret;
-+}
-+
-+static int bus_join_bus(struct sock *sk)
-+{
-+	struct sock *peer;
-+	struct bus_sock *u = bus_sk(sk), *peeru;
-+	int err = 0;
-+
-+	peer = bus_peer_get(sk);
-+	if (!peer)
-+		return -ENOTCONN;
-+	peeru = bus_sk(peer);
-+
-+	if (!u->bus_master_side || peeru->authenticated) {
-+		err = -EINVAL;
-+		goto sock_put_out;
-+	}
-+
-+	if (sk->sk_state != BUS_ESTABLISHED) {
-+		err = -ENOTCONN;
-+		goto sock_put_out;
-+	}
-+
-+	if (peer->sk_shutdown != 0) {
-+		err = -ENOTCONN;
-+		goto sock_put_out;
-+	}
-+
-+	bus_state_lock(peer);
-+	peeru->authenticated = true;
-+	bus_state_unlock(peer);
-+
-+	spin_lock(&u->bus->lock);
-+	hlist_add_head(&peeru->bus_node, &u->bus->peers);
-+	spin_unlock(&u->bus->lock);
-+
-+sock_put_out:
-+	sock_put(peer);
-+	return err;
-+}
-+
-+static int __bus_set_eavesdrop(struct sock *sk, bool eavesdrop)
-+{
-+	struct sock *peer = bus_peer_get(sk);
-+	struct bus_sock *u = bus_sk(sk), *peeru;
-+	int err = 0;
-+
-+	if (!peer)
-+		return -ENOTCONN;
-+
-+	if (sk->sk_state != BUS_ESTABLISHED) {
-+		err = -ENOTCONN;
-+		goto sock_put_out;
-+	}
-+
-+	peeru = bus_sk(peer);
-+
-+	if (!u->bus_master_side || !peeru->authenticated) {
-+		err = -EINVAL;
-+		goto sock_put_out;
-+	}
-+
-+	if (peer->sk_shutdown != 0) {
-+		err = -ENOTCONN;
-+		goto sock_put_out;
-+	}
-+
-+	bus_state_lock(peeru);
-+	if (peeru->eavesdropper != eavesdrop) {
-+		peeru->eavesdropper = eavesdrop;
-+		if (eavesdrop)
-+			atomic64_inc(&u->bus->eavesdropper_cnt);
-+		else
-+			atomic64_dec(&u->bus->eavesdropper_cnt);
-+	}
-+	bus_state_unlock(peeru);
-+
-+sock_put_out:
-+	sock_put(peer);
-+	return err;
-+}
-+
-+static int bus_set_eavesdrop(struct sock *sk)
-+{
-+	return __bus_set_eavesdrop(sk, true);
-+}
-+
-+static int bus_unset_eavesdrop(struct sock *sk)
-+{
-+	return __bus_set_eavesdrop(sk, false);
-+}
-+
-+static inline void sk_sendbuf_set(struct sock *sk, int sndbuf)
-+{
-+	bus_state_lock(sk);
-+	sk->sk_sndbuf = sndbuf;
-+	bus_state_unlock(sk);
-+}
-+
-+static inline void sk_maxqlen_set(struct sock *sk, int qlen)
-+{
-+	bus_state_lock(sk);
-+	sk->sk_max_ack_backlog = qlen;
-+	bus_state_unlock(sk);
-+}
-+
-+static int bus_get_qlenfull(struct sock *sk)
-+{
-+	struct sock *peer;
-+	struct bus_sock *u = bus_sk(sk), *peeru;
-+	int ret = 0;
-+
-+	peer = bus_peer_get(sk);
-+	if (!peer)
-+		return -ENOTCONN;
-+
-+	peeru = bus_sk(peer);
-+
-+	if (!u->bus_master_side || peeru->authenticated) {
-+		ret = -EINVAL;
-+		goto sock_put_out;
-+	}
-+
-+	if (sk->sk_state != BUS_ESTABLISHED) {
-+		ret = -ENOTCONN;
-+		goto sock_put_out;
-+	}
-+
-+	if (peer->sk_shutdown != 0) {
-+		ret = -ENOTCONN;
-+		goto sock_put_out;
-+	}
-+
-+	ret = bus_recvq_full(peer);
-+
-+sock_put_out:
-+	sock_put(peer);
-+	return ret;
-+}
-+
-+static int bus_setsockopt(struct socket *sock, int level, int optname,
-+			   char __user *optval, unsigned int optlen)
-+{
-+	struct bus_addr addr;
-+	int res;
-+	int val;
-+
-+	if (level != SOL_BUS)
-+		return -ENOPROTOOPT;
-+
-+	switch (optname) {
-+	case BUS_ADD_ADDR:
-+	case BUS_DEL_ADDR:
-+		if (optlen < sizeof(struct bus_addr))
-+			return -EINVAL;
-+
-+		if (!bus_sk(sock->sk)->bus_master_side)
-+			return -EINVAL;
-+
-+		if (copy_from_user(&addr, optval, sizeof(struct bus_addr)))
-+			return -EFAULT;
-+
-+		if (optname == BUS_ADD_ADDR)
-+			res = bus_add_addr(bus_peer_get(sock->sk), &addr);
-+		else
-+			res = bus_del_addr(bus_peer_get(sock->sk), &addr);
-+		break;
-+	case BUS_JOIN_BUS:
-+		res = bus_join_bus(sock->sk);
-+		break;
-+	case BUS_SET_EAVESDROP:
-+		res = bus_set_eavesdrop(sock->sk);
-+		break;
-+	case BUS_UNSET_EAVESDROP:
-+		res = bus_unset_eavesdrop(sock->sk);
-+		break;
-+	case BUS_SET_SENDBUF:
-+	case BUS_SET_MAXQLEN:
-+		if (sock->sk->sk_state != BUS_LISTEN) {
-+			res = -EINVAL;
-+		} else {
-+			res = -EFAULT;
-+
-+			if (copy_from_user(&val, optval, optlen))
-+				break;
-+
-+			res = 0;
-+
-+			if (optname == BUS_SET_SENDBUF)
-+				sk_sendbuf_set(sock->sk, val);
-+			else
-+				sk_maxqlen_set(sock->sk, val);
-+		}
-+		break;
-+	case BUS_GET_QLENFULL:
-+		res = bus_get_qlenfull(sock->sk);
-+
-+		if (copy_to_user(&res, optval, optlen)) {
-+			res = -EFAULT;
-+			break;
-+		}
-+		res = 0;
-+		break;
-+	default:
-+		res = -EINVAL;
-+		break;
-+	}
-+
-+	return res;
-+}
-+
-+long bus_inq_len(struct sock *sk)
-+{
-+	struct sk_buff *skb;
-+	long amount = 0;
-+
-+	if (sk->sk_state == BUS_LISTEN)
-+		return -EINVAL;
-+
-+	spin_lock(&sk->sk_receive_queue.lock);
-+	skb_queue_walk(&sk->sk_receive_queue, skb)
-+		amount += skb->len;
-+	spin_unlock(&sk->sk_receive_queue.lock);
-+
-+	return amount;
-+}
-+EXPORT_SYMBOL_GPL(bus_inq_len);
-+
-+long bus_outq_len(struct sock *sk)
-+{
-+	return sk_wmem_alloc_get(sk);
-+}
-+EXPORT_SYMBOL_GPL(bus_outq_len);
-+
-+static int bus_ioctl(struct socket *sock, unsigned int cmd, unsigned long arg)
-+{
-+	struct sock *sk = sock->sk;
-+	long amount = 0;
-+	int err;
-+
-+	switch (cmd) {
-+	case SIOCOUTQ:
-+		amount = bus_outq_len(sk);
-+		err = put_user(amount, (int __user *)arg);
-+		break;
-+	case SIOCINQ:
-+		amount = bus_inq_len(sk);
-+		if (amount < 0)
-+			err = amount;
-+		else
-+			err = put_user(amount, (int __user *)arg);
-+		break;
-+	default:
-+		err = -ENOIOCTLCMD;
-+		break;
-+	}
-+	return err;
-+}
-+
-+static unsigned int bus_poll(struct file *file, struct socket *sock,
-+				    poll_table *wait)
-+{
-+	struct sock *sk = sock->sk, *other;
-+	unsigned int mask, writable;
-+	struct bus_sock *u = bus_sk(sk), *p;
-+	struct hlist_node *node;
-+
-+	sock_poll_wait(file, sk_sleep(sk), wait);
-+	mask = 0;
-+
-+	/* exceptional events? */
-+	if (sk->sk_err || !skb_queue_empty(&sk->sk_error_queue))
-+		mask |= POLLERR;
-+	if (sk->sk_shutdown & RCV_SHUTDOWN)
-+		mask |= POLLRDHUP | POLLIN | POLLRDNORM;
-+	if (sk->sk_shutdown == SHUTDOWN_MASK)
-+		mask |= POLLHUP;
-+
-+	/* readable? */
-+	if (!skb_queue_empty(&sk->sk_receive_queue))
-+		mask |= POLLIN | POLLRDNORM;
-+
-+	/* Connection-based need to check for termination and startup */
-+	if (sk->sk_state == BUS_CLOSE)
-+		mask |= POLLHUP;
-+
-+	/* No write status requested, avoid expensive OUT tests. */
-+	if (!(poll_requested_events(wait) & (POLLWRBAND|POLLWRNORM|POLLOUT)))
-+		return mask;
-+
-+	writable = bus_writable(sk);
-+	other = bus_peer_get(sk);
-+	if (other) {
-+		if (bus_recvq_full(other))
-+			writable = 0;
-+		sock_put(other);
-+	}
-+
-+	/*
-+	 * If the socket has already joined the bus we have to check
-+	 * that each peer receiver queue on the bus is not full.
-+	 */
-+	if (!u->bus_master_side && u->authenticated) {
-+		spin_lock(&u->bus->lock);
-+		hlist_for_each_entry(p, node, &u->bus->peers, bus_node) {
-+			if (bus_recvq_full(&p->sk)) {
-+				writable = 0;
-+				break;
-+			}
-+		}
-+		spin_unlock(&u->bus->lock);
-+	}
-+
-+	if (writable)
-+		mask |= POLLOUT | POLLWRNORM | POLLWRBAND;
-+	else
-+		set_bit(SOCK_ASYNC_NOSPACE, &sk->sk_socket->flags);
-+
-+	return mask;
-+}
-+
-+#ifdef CONFIG_PROC_FS
-+static struct sock *first_bus_socket(int *i)
-+{
-+	for (*i = 0; *i <= BUS_HASH_SIZE; (*i)++) {
-+		if (!hlist_empty(&bus_socket_table[*i]))
-+			return __sk_head(&bus_socket_table[*i]);
-+	}
-+	return NULL;
-+}
-+
-+static struct sock *next_bus_socket(int *i, struct sock *s)
-+{
-+	struct sock *next = sk_next(s);
-+	/* More in this chain? */
-+	if (next)
-+		return next;
-+	/* Look for next non-empty chain. */
-+	for ((*i)++; *i <= BUS_HASH_SIZE; (*i)++) {
-+		if (!hlist_empty(&bus_socket_table[*i]))
-+			return __sk_head(&bus_socket_table[*i]);
-+	}
-+	return NULL;
-+}
-+
-+struct bus_iter_state {
-+	struct seq_net_private p;
-+	int i;
-+};
-+
-+static struct sock *bus_seq_idx(struct seq_file *seq, loff_t pos)
-+{
-+	struct bus_iter_state *iter = seq->private;
-+	loff_t off = 0;
-+	struct sock *s;
-+
-+	for (s = first_bus_socket(&iter->i); s;
-+	     s = next_bus_socket(&iter->i, s)) {
-+		if (sock_net(s) != seq_file_net(seq))
-+			continue;
-+		if (off == pos)
-+			return s;
-+		++off;
-+	}
-+	return NULL;
-+}
-+
-+static void *bus_seq_start(struct seq_file *seq, loff_t *pos)
-+	__acquires(bus_table_lock)
-+{
-+	spin_lock(&bus_table_lock);
-+	return *pos ? bus_seq_idx(seq, *pos - 1) : SEQ_START_TOKEN;
-+}
-+
-+static void *bus_seq_next(struct seq_file *seq, void *v, loff_t *pos)
-+{
-+	struct bus_iter_state *iter = seq->private;
-+	struct sock *sk = v;
-+	++*pos;
-+
-+	if (v == SEQ_START_TOKEN)
-+		sk = first_bus_socket(&iter->i);
-+	else
-+		sk = next_bus_socket(&iter->i, sk);
-+	while (sk && (sock_net(sk) != seq_file_net(seq)))
-+		sk = next_bus_socket(&iter->i, sk);
-+	return sk;
-+}
-+
-+static void bus_seq_stop(struct seq_file *seq, void *v)
-+	__releases(bus_table_lock)
-+{
-+	spin_unlock(&bus_table_lock);
-+}
-+
-+static int bus_seq_show(struct seq_file *seq, void *v)
-+{
-+
-+	if (v == SEQ_START_TOKEN)
-+		seq_puts(seq, "Num       RefCount Protocol Flags    Type St " \
-+			 "Inode Path\n");
-+	else {
-+		struct sock *s = v;
-+		struct bus_sock *u = bus_sk(s);
-+		bus_state_lock(s);
-+
-+		seq_printf(seq, "%pK: %08X %08X %08X %04X %02X %5lu",
-+			s,
-+			atomic_read(&s->sk_refcnt),
-+			0,
-+			s->sk_state == BUS_LISTEN ? __SO_ACCEPTCON : 0,
-+			s->sk_type,
-+			s->sk_socket ?
-+			(s->sk_state == BUS_ESTABLISHED ? SS_CONNECTED : SS_UNCONNECTED) :
-+			(s->sk_state == BUS_ESTABLISHED ? SS_CONNECTING : SS_DISCONNECTING),
-+			sock_i_ino(s));
-+
-+		if (u->addr) {
-+			int i, len;
-+			seq_putc(seq, ' ');
-+
-+			i = 0;
-+			len = u->addr->len - sizeof(short);
-+			if (!BUS_ABSTRACT(s))
-+				len--;
-+			else {
-+				seq_putc(seq, '@');
-+				i++;
-+			}
-+			for ( ; i < len; i++)
-+				seq_putc(seq, u->addr->name->sbus_path[i]);
-+		}
-+		bus_state_unlock(s);
-+		seq_putc(seq, '\n');
-+	}
-+
-+	return 0;
-+}
-+
-+static const struct seq_operations bus_seq_ops = {
-+	.start  = bus_seq_start,
-+	.next   = bus_seq_next,
-+	.stop   = bus_seq_stop,
-+	.show   = bus_seq_show,
-+};
-+
-+static int bus_seq_open(struct inode *inode, struct file *file)
-+{
-+	return seq_open_net(inode, file, &bus_seq_ops,
-+			    sizeof(struct bus_iter_state));
-+}
-+
-+static const struct file_operations bus_seq_fops = {
-+	.owner		= THIS_MODULE,
-+	.open		= bus_seq_open,
-+	.read		= seq_read,
-+	.llseek		= seq_lseek,
-+	.release	= seq_release_net,
-+};
-+
-+#endif
-+
-+static const struct net_proto_family bus_family_ops = {
-+	.family = PF_BUS,
-+	.create = bus_create,
-+	.owner	= THIS_MODULE,
-+};
-+
-+static int __init af_bus_init(void)
-+{
-+	int rc = -1;
-+	struct sk_buff *dummy_skb;
-+
-+	BUILD_BUG_ON(sizeof(struct bus_skb_parms) > sizeof(dummy_skb->cb));
-+
-+	rc = proto_register(&bus_proto, 1);
-+	if (rc != 0) {
-+		pr_crit("%s: Cannot create bus_sock SLAB cache!\n", __func__);
-+		return rc;
-+	}
-+
-+	sock_register(&bus_family_ops);
-+	return rc;
-+}
-+
-+static void __exit af_bus_exit(void)
-+{
-+	sock_unregister(PF_BUS);
-+	proto_unregister(&bus_proto);
-+}
-+
-+module_init(af_bus_init);
-+module_exit(af_bus_exit);
-+
-+MODULE_AUTHOR("Alban Crequy, Javier Martinez Canillas");
-+MODULE_DESCRIPTION("Linux Bus domain sockets");
-+MODULE_LICENSE("GPL");
-+MODULE_ALIAS_NETPROTO(PF_BUS);
-diff --git a/net/bus/garbage.c b/net/bus/garbage.c
-new file mode 100644
-index 0000000..2435f38
---- /dev/null
-+++ b/net/bus/garbage.c
-@@ -0,0 +1,322 @@
-+/*
-+ * Garbage Collector For AF_BUS sockets
-+ *
-+ * Based on Garbage Collector For AF_UNIX sockets (net/unix/garbage.c).
-+ */
-+
-+#include <linux/kernel.h>
-+#include <linux/string.h>
-+#include <linux/socket.h>
-+#include <linux/un.h>
-+#include <linux/net.h>
-+#include <linux/fs.h>
-+#include <linux/skbuff.h>
-+#include <linux/netdevice.h>
-+#include <linux/file.h>
-+#include <linux/proc_fs.h>
-+#include <linux/mutex.h>
-+#include <linux/wait.h>
-+
-+#include <net/sock.h>
-+#include <net/af_bus.h>
-+#include <net/scm.h>
-+#include <net/tcp_states.h>
-+
-+/* Internal data structures and random procedures: */
-+
-+static LIST_HEAD(gc_inflight_list);
-+static LIST_HEAD(gc_candidates);
-+static DEFINE_SPINLOCK(bus_gc_lock);
-+static DECLARE_WAIT_QUEUE_HEAD(bus_gc_wait);
-+
-+unsigned int bus_tot_inflight;
-+
-+
-+struct sock *bus_get_socket(struct file *filp)
-+{
-+	struct sock *u_sock = NULL;
-+	struct inode *inode = filp->f_path.dentry->d_inode;
-+
-+	/*
-+	 *	Socket ?
-+	 */
-+	if (S_ISSOCK(inode->i_mode) && !(filp->f_mode & FMODE_PATH)) {
-+		struct socket *sock = SOCKET_I(inode);
-+		struct sock *s = sock->sk;
-+
-+		/*
-+		 *	PF_BUS ?
-+		 */
-+		if (s && sock->ops && sock->ops->family == PF_BUS)
-+			u_sock = s;
-+	}
-+	return u_sock;
-+}
-+
-+/*
-+ *	Keep the number of times in flight count for the file
-+ *	descriptor if it is for an AF_BUS socket.
-+ */
-+
-+void bus_inflight(struct file *fp)
-+{
-+	struct sock *s = bus_get_socket(fp);
-+	if (s) {
-+		struct bus_sock *u = bus_sk(s);
-+		spin_lock(&bus_gc_lock);
-+		if (atomic_long_inc_return(&u->inflight) == 1) {
-+			BUG_ON(!list_empty(&u->link));
-+			list_add_tail(&u->link, &gc_inflight_list);
-+		} else {
-+			BUG_ON(list_empty(&u->link));
-+		}
-+		bus_tot_inflight++;
-+		spin_unlock(&bus_gc_lock);
-+	}
-+}
-+
-+void bus_notinflight(struct file *fp)
-+{
-+	struct sock *s = bus_get_socket(fp);
-+	if (s) {
-+		struct bus_sock *u = bus_sk(s);
-+		spin_lock(&bus_gc_lock);
-+		BUG_ON(list_empty(&u->link));
-+		if (atomic_long_dec_and_test(&u->inflight))
-+			list_del_init(&u->link);
-+		bus_tot_inflight--;
-+		spin_unlock(&bus_gc_lock);
-+	}
-+}
-+
-+static void scan_inflight(struct sock *x, void (*func)(struct bus_sock *),
-+			  struct sk_buff_head *hitlist)
-+{
-+	struct sk_buff *skb;
-+	struct sk_buff *next;
-+
-+	spin_lock(&x->sk_receive_queue.lock);
-+	skb_queue_walk_safe(&x->sk_receive_queue, skb, next) {
-+		/*
-+		 *	Do we have file descriptors ?
-+		 */
-+		if (BUSCB(skb).fp) {
-+			bool hit = false;
-+			/*
-+			 *	Process the descriptors of this socket
-+			 */
-+			int nfd = BUSCB(skb).fp->count;
-+			struct file **fp = BUSCB(skb).fp->fp;
-+			while (nfd--) {
-+				/*
-+				 *	Get the socket the fd matches
-+				 *	if it indeed does so
-+				 */
-+				struct sock *sk = bus_get_socket(*fp++);
-+				if (sk) {
-+					struct bus_sock *u = bus_sk(sk);
-+
-+					/*
-+					 * Ignore non-candidates, they could
-+					 * have been added to the queues after
-+					 * starting the garbage collection
-+					 */
-+					if (u->gc_candidate) {
-+						hit = true;
-+						func(u);
-+					}
-+				}
-+			}
-+			if (hit && hitlist != NULL) {
-+				__skb_unlink(skb, &x->sk_receive_queue);
-+				__skb_queue_tail(hitlist, skb);
-+			}
-+		}
-+	}
-+	spin_unlock(&x->sk_receive_queue.lock);
-+}
-+
-+static void scan_children(struct sock *x, void (*func)(struct bus_sock *),
-+			  struct sk_buff_head *hitlist)
-+{
-+	if (x->sk_state != TCP_LISTEN)
-+		scan_inflight(x, func, hitlist);
-+	else {
-+		struct sk_buff *skb;
-+		struct sk_buff *next;
-+		struct bus_sock *u;
-+		LIST_HEAD(embryos);
-+
-+		/*
-+		 * For a listening socket collect the queued embryos
-+		 * and perform a scan on them as well.
-+		 */
-+		spin_lock(&x->sk_receive_queue.lock);
-+		skb_queue_walk_safe(&x->sk_receive_queue, skb, next) {
-+			u = bus_sk(skb->sk);
-+
-+			/*
-+			 * An embryo cannot be in-flight, so it's safe
-+			 * to use the list link.
-+			 */
-+			BUG_ON(!list_empty(&u->link));
-+			list_add_tail(&u->link, &embryos);
-+		}
-+		spin_unlock(&x->sk_receive_queue.lock);
-+
-+		while (!list_empty(&embryos)) {
-+			u = list_entry(embryos.next, struct bus_sock, link);
-+			scan_inflight(&u->sk, func, hitlist);
-+			list_del_init(&u->link);
-+		}
-+	}
-+}
-+
-+static void dec_inflight(struct bus_sock *usk)
-+{
-+	atomic_long_dec(&usk->inflight);
-+}
-+
-+static void inc_inflight(struct bus_sock *usk)
-+{
-+	atomic_long_inc(&usk->inflight);
-+}
-+
-+static void inc_inflight_move_tail(struct bus_sock *u)
-+{
-+	atomic_long_inc(&u->inflight);
-+	/*
-+	 * If this still might be part of a cycle, move it to the end
-+	 * of the list, so that it's checked even if it was already
-+	 * passed over
-+	 */
-+	if (u->gc_maybe_cycle)
-+		list_move_tail(&u->link, &gc_candidates);
-+}
-+
-+static bool gc_in_progress = false;
-+#define BUS_INFLIGHT_TRIGGER_GC 16000
-+
-+void wait_for_bus_gc(void)
-+{
-+	/*
-+	 * If number of inflight sockets is insane,
-+	 * force a garbage collect right now.
-+	 */
-+	if (bus_tot_inflight > BUS_INFLIGHT_TRIGGER_GC && !gc_in_progress)
-+		bus_gc();
-+	wait_event(bus_gc_wait, gc_in_progress == false);
-+}
-+
-+/* The external entry point: bus_gc() */
-+void bus_gc(void)
-+{
-+	struct bus_sock *u;
-+	struct bus_sock *next;
-+	struct sk_buff_head hitlist;
-+	struct list_head cursor;
-+	LIST_HEAD(not_cycle_list);
-+
-+	spin_lock(&bus_gc_lock);
-+
-+	/* Avoid a recursive GC. */
-+	if (gc_in_progress)
-+		goto out;
-+
-+	gc_in_progress = true;
-+	/*
-+	 * First, select candidates for garbage collection.  Only
-+	 * in-flight sockets are considered, and from those only ones
-+	 * which don't have any external reference.
-+	 *
-+	 * Holding bus_gc_lock will protect these candidates from
-+	 * being detached, and hence from gaining an external
-+	 * reference.  Since there are no possible receivers, all
-+	 * buffers currently on the candidates' queues stay there
-+	 * during the garbage collection.
-+	 *
-+	 * We also know that no new candidate can be added onto the
-+	 * receive queues.  Other, non candidate sockets _can_ be
-+	 * added to queue, so we must make sure only to touch
-+	 * candidates.
-+	 */
-+	list_for_each_entry_safe(u, next, &gc_inflight_list, link) {
-+		long total_refs;
-+		long inflight_refs;
-+
-+		total_refs = file_count(u->sk.sk_socket->file);
-+		inflight_refs = atomic_long_read(&u->inflight);
-+
-+		BUG_ON(inflight_refs < 1);
-+		BUG_ON(total_refs < inflight_refs);
-+		if (total_refs == inflight_refs) {
-+			list_move_tail(&u->link, &gc_candidates);
-+			u->gc_candidate = 1;
-+			u->gc_maybe_cycle = 1;
-+		}
-+	}
-+
-+	/*
-+	 * Now remove all internal in-flight reference to children of
-+	 * the candidates.
-+	 */
-+	list_for_each_entry(u, &gc_candidates, link)
-+		scan_children(&u->sk, dec_inflight, NULL);
-+
-+	/*
-+	 * Restore the references for children of all candidates,
-+	 * which have remaining references.  Do this recursively, so
-+	 * only those remain, which form cyclic references.
-+	 *
-+	 * Use a "cursor" link, to make the list traversal safe, even
-+	 * though elements might be moved about.
-+	 */
-+	list_add(&cursor, &gc_candidates);
-+	while (cursor.next != &gc_candidates) {
-+		u = list_entry(cursor.next, struct bus_sock, link);
-+
-+		/* Move cursor to after the current position. */
-+		list_move(&cursor, &u->link);
-+
-+		if (atomic_long_read(&u->inflight) > 0) {
-+			list_move_tail(&u->link, &not_cycle_list);
-+			u->gc_maybe_cycle = 0;
-+			scan_children(&u->sk, inc_inflight_move_tail, NULL);
-+		}
-+	}
-+	list_del(&cursor);
-+
-+	/*
-+	 * not_cycle_list contains those sockets which do not make up a
-+	 * cycle.  Restore these to the inflight list.
-+	 */
-+	while (!list_empty(&not_cycle_list)) {
-+		u = list_entry(not_cycle_list.next, struct bus_sock, link);
-+		u->gc_candidate = 0;
-+		list_move_tail(&u->link, &gc_inflight_list);
-+	}
-+
-+	/*
-+	 * Now gc_candidates contains only garbage.  Restore original
-+	 * inflight counters for these as well, and remove the skbuffs
-+	 * which are creating the cycle(s).
-+	 */
-+	skb_queue_head_init(&hitlist);
-+	list_for_each_entry(u, &gc_candidates, link)
-+	scan_children(&u->sk, inc_inflight, &hitlist);
-+
-+	spin_unlock(&bus_gc_lock);
-+
-+	/* Here we are. Hitlist is filled. Die. */
-+	__skb_queue_purge(&hitlist);
-+
-+	spin_lock(&bus_gc_lock);
-+
-+	/* All candidates should have been detached by now. */
-+	BUG_ON(!list_empty(&gc_candidates));
-+	gc_in_progress = false;
-+	wake_up(&bus_gc_wait);
-+
-+ out:
-+	spin_unlock(&bus_gc_lock);
-+}
-diff --git a/net/core/scm.c b/net/core/scm.c
-index 611c5ef..87e3152 100644
---- a/net/core/scm.c
-+++ b/net/core/scm.c
-@@ -158,7 +158,8 @@ int __scm_send(struct socket *sock, struct msghdr *msg, struct scm_cookie *p)
- 		switch (cmsg->cmsg_type)
- 		{
- 		case SCM_RIGHTS:
--			if (!sock->ops || sock->ops->family != PF_UNIX)
-+			if (!sock->ops || (sock->ops->family != PF_UNIX &&
-+					   sock->ops->family != PF_BUS))
- 				goto error;
- 			err=scm_fp_copy(cmsg, &p->fp);
- 			if (err<0)
-diff --git a/net/core/sock.c b/net/core/sock.c
-index b2e14c0..17abe99 100644
---- a/net/core/sock.c
-+++ b/net/core/sock.c
-@@ -205,7 +205,7 @@ static const char *const af_family_key_strings[AF_MAX+1] = {
-   "sk_lock-AF_TIPC"  , "sk_lock-AF_BLUETOOTH", "sk_lock-IUCV"        ,
-   "sk_lock-AF_RXRPC" , "sk_lock-AF_ISDN"     , "sk_lock-AF_PHONET"   ,
-   "sk_lock-AF_IEEE802154", "sk_lock-AF_CAIF" , "sk_lock-AF_ALG"      ,
--  "sk_lock-AF_NFC"   , "sk_lock-AF_MAX"
-+  "sk_lock-AF_NFC"   , "sk_lock-AF_BUS"     , "sk_lock-AF_MAX"
- };
- static const char *const af_family_slock_key_strings[AF_MAX+1] = {
-   "slock-AF_UNSPEC", "slock-AF_UNIX"     , "slock-AF_INET"     ,
-@@ -221,7 +221,7 @@ static const char *const af_family_slock_key_strings[AF_MAX+1] = {
-   "slock-AF_TIPC"  , "slock-AF_BLUETOOTH", "slock-AF_IUCV"     ,
-   "slock-AF_RXRPC" , "slock-AF_ISDN"     , "slock-AF_PHONET"   ,
-   "slock-AF_IEEE802154", "slock-AF_CAIF" , "slock-AF_ALG"      ,
--  "slock-AF_NFC"   , "slock-AF_MAX"
-+  "slock-AF_NFC"   , "slock-AF_BUS"     , "slock-AF_MAX"
- };
- static const char *const af_family_clock_key_strings[AF_MAX+1] = {
-   "clock-AF_UNSPEC", "clock-AF_UNIX"     , "clock-AF_INET"     ,
-@@ -237,7 +237,7 @@ static const char *const af_family_clock_key_strings[AF_MAX+1] = {
-   "clock-AF_TIPC"  , "clock-AF_BLUETOOTH", "clock-AF_IUCV"     ,
-   "clock-AF_RXRPC" , "clock-AF_ISDN"     , "clock-AF_PHONET"   ,
-   "clock-AF_IEEE802154", "clock-AF_CAIF" , "clock-AF_ALG"      ,
--  "clock-AF_NFC"   , "clock-AF_MAX"
-+  "clock-AF_NFC"   , "clock-AF_BUS"     , "clock-AF_MAX"
- };
- 
- /*
-diff --git a/net/netfilter/Kconfig b/net/netfilter/Kconfig
-index 0c6f67e..58ed81d 100644
---- a/net/netfilter/Kconfig
-+++ b/net/netfilter/Kconfig
-@@ -1151,3 +1151,5 @@ endmenu
- source "net/netfilter/ipset/Kconfig"
- 
- source "net/netfilter/ipvs/Kconfig"
-+
-+source "net/netfilter/nfdbus/Kconfig"
-diff --git a/net/netfilter/Makefile b/net/netfilter/Makefile
-index ca36765..89752a0 100644
---- a/net/netfilter/Makefile
-+++ b/net/netfilter/Makefile
-@@ -119,3 +119,6 @@ obj-$(CONFIG_IP_SET) += ipset/
- 
- # IPVS
- obj-$(CONFIG_IP_VS) += ipvs/
-+
-+# Dbus
-+obj-$(CONFIG_NETFILTER_DBUS) += nfdbus/
-diff --git a/net/netfilter/nfdbus/Kconfig b/net/netfilter/nfdbus/Kconfig
-new file mode 100644
-index 0000000..25699a1
---- /dev/null
-+++ b/net/netfilter/nfdbus/Kconfig
-@@ -0,0 +1,12 @@
-+#
-+# Netfilter D-Bus module configuration
-+#
-+config NETFILTER_DBUS
-+	tristate "Netfilter D-bus (EXPERIMENTAL)"
-+	depends on AF_BUS && CONNECTOR && EXPERIMENTAL
-+	---help---
-+	  If you say Y here, you will include support for a netfilter hook to
-+	  parse D-Bus messages sent using the AF_BUS socket address family.
-+
-+	  To compile this as a module, choose M here: the module will be
-+	  called netfilter_dbus.
-diff --git a/net/netfilter/nfdbus/Makefile b/net/netfilter/nfdbus/Makefile
-new file mode 100644
-index 0000000..1a825f8
---- /dev/null
-+++ b/net/netfilter/nfdbus/Makefile
-@@ -0,0 +1,6 @@
-+#
-+# Makefile for the netfilter D-Bus module
-+#
-+obj-$(CONFIG_NETFILTER_DBUS) += netfilter_dbus.o
-+
-+netfilter_dbus-y := nfdbus.o message.o matchrule.o
-diff --git a/net/netfilter/nfdbus/matchrule.c b/net/netfilter/nfdbus/matchrule.c
-new file mode 100644
-index 0000000..4106bd5
---- /dev/null
-+++ b/net/netfilter/nfdbus/matchrule.c
-@@ -0,0 +1,1132 @@
-+/*
-+ * matchrule.c  D-Bus match rule implementation
-+ *
-+ * Based on signals.c from dbus
-+ *
-+ * Copyright (C) 2010  Collabora, Ltd.
-+ * Copyright (C) 2003, 2005  Red Hat, Inc.
-+ *
-+ * This program is free software; you can redistribute it and/or modify
-+ * it under the terms of the GNU General Public License as published by
-+ * the Free Software Foundation; either version 2 of the License, or
-+ * (at your option) any later version.
-+ *
-+ * This program is distributed in the hope that it will be useful,
-+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
-+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-+ * GNU General Public License for more details.
-+ *
-+ * You should have received a copy of the GNU General Public License
-+ * along with this program; if not, write to the Free Software
-+ * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
-+ *
-+ */
-+
-+#include "matchrule.h"
-+
-+#include <linux/rbtree.h>
-+#include <linux/list.h>
-+#include <linux/slab.h>
-+
-+#include "message.h"
-+
-+enum bus_match_flags {
-+	BUS_MATCH_MESSAGE_TYPE            = 1 << 0,
-+	BUS_MATCH_INTERFACE               = 1 << 1,
-+	BUS_MATCH_MEMBER                  = 1 << 2,
-+	BUS_MATCH_SENDER                  = 1 << 3,
-+	BUS_MATCH_DESTINATION             = 1 << 4,
-+	BUS_MATCH_PATH                    = 1 << 5,
-+	BUS_MATCH_ARGS                    = 1 << 6,
-+	BUS_MATCH_PATH_NAMESPACE          = 1 << 7,
-+	BUS_MATCH_CLIENT_IS_EAVESDROPPING = 1 << 8
-+};
-+
-+struct bus_match_rule {
-+	/* For debugging only*/
-+	char *rule_text;
-+
-+	unsigned int flags; /**< BusMatchFlags */
-+
-+	int   message_type;
-+	char *interface;
-+	char *member;
-+	char *sender;
-+	char *destination;
-+	char *path;
-+
-+	unsigned int *arg_lens;
-+	char **args;
-+	int args_len;
-+
-+	/* bus_match_rule is attached to rule_pool, either in a simple
-+	 * double-linked list if the rule does not have any interface, or in a
-+	 * red-black tree sorted by interface. If several rules can have the
-+	 * same interface, the first one is attached with struct rb_node and the
-+	 * next ones are in the list
-+	 */
-+
-+	struct rb_node node;
-+	/* Doubly-linked non-circular list. If the rule has an interface, it is
-+	 * in the rb tree and the single head is right here. Otherwise, the
-+	 * single head is in rule_pool->rules_without_iface. With this data
-+	 * structure, we don't need any allocation to insert or remove the rule.
-+	 */
-+	struct hlist_head first;
-+	struct hlist_node list;
-+
-+	/* used to delete all names from the tree */
-+	struct list_head del_list;
-+};
-+
-+struct dbus_name {
-+	struct rb_node node;
-+	char *name;
-+
-+	/* used to delete all names from the tree */
-+	struct list_head del_list;
-+};
-+
-+#define BUS_MATCH_ARG_IS_PATH  0x8000000u
-+
-+#define DBUS_STRING_MAX_LENGTH 1024
-+
-+/** Max length of a match rule string; to keep people from hosing the
-+ * daemon with some huge rule
-+ */
-+#define DBUS_MAXIMUM_MATCH_RULE_LENGTH 1024
-+
-+struct bus_match_rule *bus_match_rule_new(gfp_t gfp_flags)
-+{
-+	struct bus_match_rule *rule;
-+
-+	rule = kzalloc(sizeof(struct bus_match_rule), gfp_flags);
-+	if (rule == NULL)
-+		return NULL;
-+
-+	return rule;
-+}
-+
-+void bus_match_rule_free(struct bus_match_rule *rule)
-+{
-+	kfree(rule->rule_text);
-+	kfree(rule->interface);
-+	kfree(rule->member);
-+	kfree(rule->sender);
-+	kfree(rule->destination);
-+	kfree(rule->path);
-+	kfree(rule->arg_lens);
-+
-+	/* can't use dbus_free_string_array() since there
-+	 * are embedded NULL
-+	 */
-+	if (rule->args) {
-+		int i;
-+
-+		i = 0;
-+		while (i < rule->args_len) {
-+			kfree(rule->args[i]);
-+			++i;
-+		}
-+
-+		kfree(rule->args);
-+	}
-+
-+	kfree(rule);
-+}
-+
-+static int
-+bus_match_rule_set_message_type(struct bus_match_rule *rule,
-+				int type,
-+				gfp_t gfp_flags)
-+{
-+	rule->flags |= BUS_MATCH_MESSAGE_TYPE;
-+
-+	rule->message_type = type;
-+
-+	return 1;
-+}
-+
-+static int
-+bus_match_rule_set_interface(struct bus_match_rule *rule,
-+			     const char *interface,
-+			     gfp_t gfp_flags)
-+{
-+	char *new;
-+
-+	WARN_ON(!interface);
-+
-+	new = kstrdup(interface, gfp_flags);
-+	if (new == NULL)
-+		return 0;
-+
-+	rule->flags |= BUS_MATCH_INTERFACE;
-+	kfree(rule->interface);
-+	rule->interface = new;
-+
-+	return 1;
-+}
-+
-+static int
-+bus_match_rule_set_member(struct bus_match_rule *rule,
-+			  const char *member,
-+			  gfp_t gfp_flags)
-+{
-+	char *new;
-+
-+	WARN_ON(!member);
-+
-+	new = kstrdup(member, gfp_flags);
-+	if (new == NULL)
-+		return 0;
-+
-+	rule->flags |= BUS_MATCH_MEMBER;
-+	kfree(rule->member);
-+	rule->member = new;
-+
-+	return 1;
-+}
-+
-+static int
-+bus_match_rule_set_sender(struct bus_match_rule *rule,
-+			  const char *sender,
-+			  gfp_t gfp_flags)
-+{
-+	char *new;
-+
-+	WARN_ON(!sender);
-+
-+	new = kstrdup(sender, gfp_flags);
-+	if (new == NULL)
-+		return 0;
-+
-+	rule->flags |= BUS_MATCH_SENDER;
-+	kfree(rule->sender);
-+	rule->sender = new;
-+
-+	return 1;
-+}
-+
-+static int
-+bus_match_rule_set_destination(struct bus_match_rule *rule,
-+			       const char   *destination,
-+			       gfp_t gfp_flags)
-+{
-+	char *new;
-+
-+	WARN_ON(!destination);
-+
-+	new = kstrdup(destination, gfp_flags);
-+	if (new == NULL)
-+		return 0;
-+
-+	rule->flags |= BUS_MATCH_DESTINATION;
-+	kfree(rule->destination);
-+	rule->destination = new;
-+
-+	return 1;
-+}
-+
-+#define ISWHITE(c) (((c) == ' ') || ((c) == '\t') || ((c) == '\n') || \
-+		    ((c) == '\r'))
-+
-+static int find_key(const char *str, int start, char *key, int *value_pos)
-+{
-+	const char *p;
-+	const char *s;
-+	const char *key_start;
-+	const char *key_end;
-+
-+	s = str;
-+
-+	p = s + start;
-+
-+	while (*p && ISWHITE(*p))
-+		++p;
-+
-+	key_start = p;
-+
-+	while (*p && *p != '=' && !ISWHITE(*p))
-+		++p;
-+
-+	key_end = p;
-+
-+	while (*p && ISWHITE(*p))
-+		++p;
-+
-+	if (key_start == key_end) {
-+		/* Empty match rules or trailing whitespace are OK */
-+		*value_pos = p - s;
-+		return 1;
-+	}
-+
-+	if (*p != '=') {
-+		pr_warn("Match rule has a key with no subsequent '=' character");
-+		return 0;
-+	}
-+	++p;
-+
-+	strncat(key, key_start, key_end - key_start);
-+
-+	*value_pos = p - s;
-+
-+	return 1;
-+}
-+
-+static int find_value(const char *str, int start, const char *key, char *value,
-+		      int *value_end)
-+{
-+	const char *p;
-+	const char *s;
-+	char quote_char;
-+	int orig_len;
-+
-+	orig_len = strlen(value);
-+
-+	s = str;
-+
-+	p = s + start;
-+
-+	quote_char = '\0';
-+
-+	while (*p) {
-+		if (quote_char == '\0') {
-+			switch (*p) {
-+			case '\0':
-+				goto done;
-+
-+			case '\'':
-+				quote_char = '\'';
-+				goto next;
-+
-+			case ',':
-+				++p;
-+				goto done;
-+
-+			case '\\':
-+				quote_char = '\\';
-+				goto next;
-+
-+			default:
-+				strncat(value, p, 1);
-+			}
-+		} else if (quote_char == '\\') {
-+			/*\ only counts as an escape if escaping a quote mark */
-+			if (*p != '\'')
-+				strncat(value, "\\", 1);
-+
-+			strncat(value, p, 1);
-+
-+			quote_char = '\0';
-+		} else {
-+			if (*p == '\'')
-+				quote_char = '\0';
-+			else
-+				strncat(value, p, 1);
-+		}
-+
-+next:
-+		++p;
-+	}
-+
-+done:
-+
-+	if (quote_char == '\\')
-+		strncat(value, "\\", 1);
-+	else if (quote_char == '\'') {
-+		pr_warn("Unbalanced quotation marks in match rule");
-+		return 0;
-+	}
-+
-+	/* Zero-length values are allowed */
-+
-+	*value_end = p - s;
-+
-+	return 1;
-+}
-+
-+/* duplicates aren't allowed so the real legitimate max is only 6 or
-+ * so. Leaving extra so we don't have to bother to update it.
-+ * FIXME this is sort of busted now with arg matching, but we let
-+ * you match on up to 10 args for now
-+ */
-+#define MAX_RULE_TOKENS 16
-+
-+/* this is slightly too high level to be termed a "token"
-+ * but let's not be pedantic.
-+ */
-+struct rule_token {
-+	char *key;
-+	char *value;
-+};
-+
-+static int tokenize_rule(const char *rule_text,
-+			 struct rule_token tokens[MAX_RULE_TOKENS],
-+			 gfp_t gfp_flags)
-+{
-+	int i;
-+	int pos;
-+	int retval;
-+
-+	retval = 0;
-+
-+	i = 0;
-+	pos = 0;
-+	while (i < MAX_RULE_TOKENS &&
-+	       pos < strlen(rule_text)) {
-+		char *key;
-+		char *value;
-+
-+		key = kzalloc(DBUS_STRING_MAX_LENGTH, gfp_flags);
-+		if (!key) {
-+			pr_err("Out of memory");
-+			return 0;
-+		}
-+
-+		value = kzalloc(DBUS_STRING_MAX_LENGTH, gfp_flags);
-+		if (!value) {
-+			kfree(key);
-+			pr_err("Out of memory");
-+			return 0;
-+		}
-+
-+		if (!find_key(rule_text, pos, key, &pos))
-+			goto out;
-+
-+		if (strlen(key) == 0)
-+			goto next;
-+
-+		tokens[i].key = key;
-+
-+		if (!find_value(rule_text, pos, tokens[i].key, value, &pos))
-+			goto out;
-+
-+		tokens[i].value = value;
-+
-+next:
-+		++i;
-+	}
-+
-+	retval = 1;
-+
-+out:
-+	if (!retval) {
-+		i = 0;
-+		while (tokens[i].key || tokens[i].value) {
-+			kfree(tokens[i].key);
-+			kfree(tokens[i].value);
-+			tokens[i].key = NULL;
-+			tokens[i].value = NULL;
-+			++i;
-+		}
-+	}
-+
-+	return retval;
-+}
-+
-+/*
-+ * The format is comma-separated with strings quoted with single quotes
-+ * as for the shell (to escape a literal single quote, use '\'').
-+ *
-+ * type='signal',sender='org.freedesktop.DBus',interface='org.freedesktop.DBus',
-+ * member='Foo', path='/bar/foo',destination=':452345.34'
-+ *
-+ */
-+struct bus_match_rule *bus_match_rule_parse(const char *rule_text,
-+					    gfp_t gfp_flags)
-+{
-+	struct bus_match_rule *rule;
-+	struct rule_token tokens[MAX_RULE_TOKENS+1]; /* NULL termination + 1 */
-+	int i;
-+
-+	if (strlen(rule_text) > DBUS_MAXIMUM_MATCH_RULE_LENGTH) {
-+		pr_warn("Match rule text is %ld bytes, maximum is %d",
-+			    strlen(rule_text),
-+			    DBUS_MAXIMUM_MATCH_RULE_LENGTH);
-+		return NULL;
-+	}
-+
-+	memset(tokens, '\0', sizeof(tokens));
-+
-+	rule = bus_match_rule_new(gfp_flags);
-+	if (rule == NULL) {
-+		pr_err("Out of memory");
-+		goto failed;
-+	}
-+
-+	rule->rule_text = kstrdup(rule_text, gfp_flags);
-+	if (rule->rule_text == NULL) {
-+		pr_err("Out of memory");
-+		goto failed;
-+	}
-+
-+	if (!tokenize_rule(rule_text, tokens, gfp_flags))
-+		goto failed;
-+
-+	i = 0;
-+	while (tokens[i].key != NULL) {
-+		const char *key = tokens[i].key;
-+		const char *value = tokens[i].value;
-+
-+		if (strcmp(key, "type") == 0) {
-+			int t;
-+
-+			if (rule->flags & BUS_MATCH_MESSAGE_TYPE) {
-+				pr_warn("Key %s specified twice in match rule\n",
-+					key);
-+				goto failed;
-+			}
-+
-+			t = dbus_message_type_from_string(value);
-+
-+			if (t == DBUS_MESSAGE_TYPE_INVALID) {
-+				pr_warn("Invalid message type (%s) in match rule\n",
-+					value);
-+				goto failed;
-+			}
-+
-+			if (!bus_match_rule_set_message_type(rule, t,
-+							     gfp_flags)) {
-+				pr_err("Out of memeory");
-+				goto failed;
-+			}
-+		} else if (strcmp(key, "sender") == 0) {
-+			if (rule->flags & BUS_MATCH_SENDER) {
-+				pr_warn("Key %s specified twice in match rule\n",
-+					key);
-+				goto failed;
-+			}
-+
-+			if (!bus_match_rule_set_sender(rule, value,
-+						       gfp_flags)) {
-+				pr_err("Out of memeory");
-+				goto failed;
-+			}
-+		} else if (strcmp(key, "interface") == 0) {
-+			if (rule->flags & BUS_MATCH_INTERFACE) {
-+				pr_warn("Key %s specified twice in match rule\n",
-+					key);
-+				goto failed;
-+			}
-+
-+			if (!bus_match_rule_set_interface(rule, value,
-+							  gfp_flags)) {
-+				pr_err("Out of memeory");
-+				goto failed;
-+			}
-+		} else if (strcmp(key, "member") == 0) {
-+			if (rule->flags & BUS_MATCH_MEMBER) {
-+				pr_warn("Key %s specified twice in match rule\n",
-+					key);
-+				goto failed;
-+			}
-+
-+			if (!bus_match_rule_set_member(rule, value,
-+						       gfp_flags)) {
-+				pr_err("Out of memeory");
-+				goto failed;
-+			}
-+		} else if (strcmp(key, "destination") == 0) {
-+			if (rule->flags & BUS_MATCH_DESTINATION) {
-+				pr_warn("Key %s specified twice in match rule\n",
-+					key);
-+				goto failed;
-+			}
-+
-+			if (!bus_match_rule_set_destination(rule, value,
-+							    gfp_flags)) {
-+				pr_err("Out of memeory");
-+				goto failed;
-+			}
-+		} else if (strcmp(key, "eavesdrop") == 0) {
-+			if (strcmp(value, "true") == 0) {
-+				rule->flags |= BUS_MATCH_CLIENT_IS_EAVESDROPPING;
-+			} else if (strcmp(value, "false") == 0) {
-+				rule->flags &= ~(BUS_MATCH_CLIENT_IS_EAVESDROPPING);
-+			} else {
-+				pr_warn("eavesdrop='%s' is invalid, " \
-+					"it should be 'true' or 'false'\n",
-+					value);
-+				goto failed;
-+			}
-+		} else if (strncmp(key, "arg", 3) != 0) {
-+			pr_warn("Unknown key \"%s\" in match rule\n",
-+				   key);
-+			goto failed;
-+		}
-+
-+		++i;
-+	}
-+
-+	goto out;
-+
-+failed:
-+	if (rule) {
-+		bus_match_rule_free(rule);
-+		rule = NULL;
-+	}
-+
-+out:
-+
-+	i = 0;
-+	while (tokens[i].key || tokens[i].value) {
-+		WARN_ON(i >= MAX_RULE_TOKENS);
-+		kfree(tokens[i].key);
-+		kfree(tokens[i].value);
-+		++i;
-+	}
-+
-+	return rule;
-+}
-+
-+/* return the match rule containing the hlist_head. It may not be the first
-+ * match rule in the list. */
-+struct bus_match_rule *match_rule_search(struct rb_root *root,
-+					 const char *interface)
-+{
-+	struct rb_node *node = root->rb_node;
-+
-+	while (node) {
-+		struct bus_match_rule *data =
-+			container_of(node, struct bus_match_rule, node);
-+		int result;
-+
-+		result = strcmp(interface, data->interface);
-+
-+		if (result < 0)
-+			node = node->rb_left;
-+		else if (result > 0)
-+			node = node->rb_right;
-+		else
-+			return data;
-+	}
-+	return NULL;
-+}
-+
-+void match_rule_insert(struct rb_root *root, struct bus_match_rule *data)
-+{
-+	struct rb_node **new = &(root->rb_node), *parent = NULL;
-+
-+	/* Figure out where to put new node */
-+	while (*new) {
-+		struct bus_match_rule *this =
-+			container_of(*new, struct bus_match_rule, node);
-+		int result = strcmp(data->interface, this->interface);
-+
-+		parent = *new;
-+		if (result < 0)
-+			new = &((*new)->rb_left);
-+		else if (result > 0)
-+			new = &((*new)->rb_right);
-+		else {
-+			/* the head is not used */
-+			INIT_HLIST_HEAD(&data->first);
-+			/* Add it at the beginning of the list */
-+			hlist_add_head(&data->list, &this->first);
-+			return;
-+		}
-+	}
-+
-+	/* this rule is single in its list */
-+	INIT_HLIST_HEAD(&data->first);
-+	hlist_add_head(&data->list, &data->first);
-+
-+	/* Add new node and rebalance tree. */
-+	rb_link_node(&data->node, parent, new);
-+	rb_insert_color(&data->node, root);
-+}
-+
-+struct bus_match_maker *bus_matchmaker_new(gfp_t gfp_flags)
-+{
-+	struct bus_match_maker *matchmaker;
-+	int i;
-+
-+	matchmaker = kzalloc(sizeof(struct bus_match_maker), gfp_flags);
-+	if (matchmaker == NULL)
-+		return NULL;
-+
-+	for (i = DBUS_MESSAGE_TYPE_INVALID; i < DBUS_NUM_MESSAGE_TYPES; i++) {
-+		struct rule_pool *p = matchmaker->rules_by_type + i;
-+
-+		p->rules_by_iface = RB_ROOT;
-+	}
-+
-+	kref_init(&matchmaker->kref);
-+
-+	return matchmaker;
-+}
-+
-+void bus_matchmaker_free(struct kref *kref)
-+{
-+	struct bus_match_maker *matchmaker;
-+	struct list_head del_list;
-+	struct rb_node *n;
-+	int i;
-+
-+	matchmaker = container_of(kref, struct bus_match_maker, kref);
-+
-+	/* free names */
-+	INIT_LIST_HEAD(&del_list);
-+	n = matchmaker->names.rb_node;
-+	if (n) {
-+		struct dbus_name *dbus_name, *cur, *tmp;
-+
-+		dbus_name = rb_entry(n, struct dbus_name, node);
-+		list_add_tail(&dbus_name->del_list, &del_list);
-+
-+		list_for_each_entry(cur, &del_list, del_list) {
-+			struct dbus_name *right, *left;
-+			if (cur->node.rb_right) {
-+				right = rb_entry(cur->node.rb_right,
-+						 struct dbus_name, node);
-+				list_add_tail(&right->del_list, &del_list);
-+			}
-+			if (cur->node.rb_left) {
-+				left = rb_entry(cur->node.rb_left,
-+						struct dbus_name, node);
-+				list_add_tail(&left->del_list, &del_list);
-+			}
-+		}
-+		list_for_each_entry_safe(dbus_name, tmp, &del_list, del_list) {
-+			kfree(dbus_name->name);
-+			list_del(&dbus_name->del_list);
-+			kfree(dbus_name);
-+		}
-+	}
-+	WARN_ON(!list_empty_careful(&del_list));
-+
-+	/* free match rules */
-+	for (i = 0 ; i < DBUS_NUM_MESSAGE_TYPES ; i++) {
-+		struct rule_pool *pool = matchmaker->rules_by_type + i;
-+		struct bus_match_rule *match_rule, *cur, *tmp;
-+		struct hlist_node *list_tmp, *list_tmp2;
-+
-+		/* free match rules from the list */
-+		hlist_for_each_entry_safe(cur, list_tmp, list_tmp2,
-+					  &pool->rules_without_iface, list) {
-+			bus_match_rule_free(cur);
-+		}
-+
-+		/* free match rules from the tree */
-+		if (!pool->rules_by_iface.rb_node)
-+			continue;
-+		match_rule = rb_entry(pool->rules_by_iface.rb_node,
-+				      struct bus_match_rule, node);
-+		list_add_tail(&match_rule->del_list, &del_list);
-+
-+		list_for_each_entry(cur, &del_list, del_list) {
-+			struct bus_match_rule *right, *left;
-+			if (cur->node.rb_right) {
-+				right = rb_entry(cur->node.rb_right,
-+						 struct bus_match_rule, node);
-+				list_add_tail(&right->del_list, &del_list);
-+			}
-+			if (cur->node.rb_left) {
-+				left = rb_entry(cur->node.rb_left,
-+						struct bus_match_rule, node);
-+				list_add_tail(&left->del_list, &del_list);
-+			}
-+		}
-+		list_for_each_entry_safe(match_rule, tmp, &del_list, del_list) {
-+			/* keep a ref during the loop to ensure the first
-+			 * iteration of the loop does not delete it */
-+			hlist_for_each_entry_safe(cur, list_tmp, list_tmp2,
-+						  &match_rule->first, list) {
-+				if (cur != match_rule)
-+					bus_match_rule_free(cur);
-+			}
-+			list_del(&match_rule->del_list);
-+			bus_match_rule_free(match_rule);
-+		}
-+		WARN_ON(!list_empty_careful(&del_list));
-+	}
-+
-+	kfree(matchmaker);
-+}
-+
-+/* The rule can't be modified after it's added. */
-+int bus_matchmaker_add_rule(struct bus_match_maker *matchmaker,
-+			    struct bus_match_rule *rule)
-+{
-+	struct rule_pool *pool;
-+
-+	WARN_ON(rule->message_type < 0);
-+	WARN_ON(rule->message_type >= DBUS_NUM_MESSAGE_TYPES);
-+
-+	pool = matchmaker->rules_by_type + rule->message_type;
-+
-+	if (rule->interface)
-+		match_rule_insert(&pool->rules_by_iface, rule);
-+	else
-+		hlist_add_head(&rule->list, &pool->rules_without_iface);
-+
-+	return 1;
-+}
-+
-+static int match_rule_equal(struct bus_match_rule *a,
-+			    struct bus_match_rule *b)
-+{
-+	if (a->flags != b->flags)
-+		return 0;
-+
-+	if ((a->flags & BUS_MATCH_MESSAGE_TYPE) &&
-+	    a->message_type != b->message_type)
-+		return 0;
-+
-+	if ((a->flags & BUS_MATCH_MEMBER) &&
-+	    strcmp(a->member, b->member) != 0)
-+		return 0;
-+
-+	if ((a->flags & BUS_MATCH_PATH) &&
-+	    strcmp(a->path, b->path) != 0)
-+		return 0;
-+
-+	if ((a->flags & BUS_MATCH_INTERFACE) &&
-+	    strcmp(a->interface, b->interface) != 0)
-+		return 0;
-+
-+	if ((a->flags & BUS_MATCH_SENDER) &&
-+	    strcmp(a->sender, b->sender) != 0)
-+		return 0;
-+
-+	if ((a->flags & BUS_MATCH_DESTINATION) &&
-+	    strcmp(a->destination, b->destination) != 0)
-+		return 0;
-+
-+	if (a->flags & BUS_MATCH_ARGS) {
-+		int i;
-+
-+		if (a->args_len != b->args_len)
-+			return 0;
-+
-+		i = 0;
-+		while (i < a->args_len) {
-+			int length;
-+
-+			if ((a->args[i] != NULL) != (b->args[i] != NULL))
-+				return 0;
-+
-+			if (a->arg_lens[i] != b->arg_lens[i])
-+				return 0;
-+
-+			length = a->arg_lens[i] & ~BUS_MATCH_ARG_IS_PATH;
-+
-+			if (a->args[i] != NULL) {
-+				WARN_ON(!b->args[i]);
-+				if (memcmp(a->args[i], b->args[i], length) != 0)
-+					return 0;
-+			}
-+
-+			++i;
-+		}
-+	}
-+
-+	return 1;
-+}
-+
-+/* Remove a single rule which is equal to the given rule by value */
-+void bus_matchmaker_remove_rule_by_value(struct bus_match_maker *matchmaker,
-+					 struct bus_match_rule *rule)
-+{
-+	struct rule_pool *pool;
-+
-+	WARN_ON(rule->message_type < 0);
-+	WARN_ON(rule->message_type >= DBUS_NUM_MESSAGE_TYPES);
-+
-+	pool = matchmaker->rules_by_type + rule->message_type;
-+
-+	if (rule->interface) {
-+		struct bus_match_rule *head =
-+			match_rule_search(&pool->rules_by_iface,
-+					  rule->interface);
-+
-+		struct hlist_node *cur;
-+		struct bus_match_rule *cur_rule;
-+		hlist_for_each_entry(cur_rule, cur, &head->first, list) {
-+			if (match_rule_equal(cur_rule, rule)) {
-+				hlist_del(cur);
-+				if (hlist_empty(&head->first))
-+					rb_erase(&head->node,
-+						 &pool->rules_by_iface);
-+				bus_match_rule_free(cur_rule);
-+				break;
-+			}
-+		}
-+	} else {
-+		struct hlist_head *head = &pool->rules_without_iface;
-+
-+		struct hlist_node *cur;
-+		struct bus_match_rule *cur_rule;
-+		hlist_for_each_entry(cur_rule, cur, head, list) {
-+			if (match_rule_equal(cur_rule, rule)) {
-+				hlist_del(cur);
-+				bus_match_rule_free(cur_rule);
-+				break;
-+			}
-+		}
-+	}
-+
-+}
-+
-+static int connection_is_primary_owner(struct bus_match_maker *connection,
-+				       const char *service_name)
-+{
-+	struct rb_node *node = connection->names.rb_node;
-+
-+	if (!service_name)
-+		return 0;
-+
-+	while (node) {
-+		struct dbus_name *data = container_of(node, struct dbus_name,
-+						      node);
-+		int result;
-+
-+		result = strcmp(service_name, data->name);
-+
-+		if (result < 0)
-+			node = node->rb_left;
-+		else if (result > 0)
-+			node = node->rb_right;
-+		else
-+			return 1;
-+	}
-+	return 0;
-+}
-+
-+static int match_rule_matches(struct bus_match_maker *matchmaker,
-+			      struct bus_match_maker *sender,
-+			      int eavesdrop,
-+			      struct bus_match_rule *rule,
-+			      const struct dbus_message *message)
-+{
-+	/* Don't consider the rule if this is a eavesdropping match rule
-+	 * and eavesdropping is not allowed on that peer */
-+	if ((rule->flags & BUS_MATCH_CLIENT_IS_EAVESDROPPING) && !eavesdrop)
-+		return 0;
-+
-+	/* Since D-Bus 1.5.6, match rules do not match messages which have a
-+	 * DESTINATION field unless the match rule specifically requests this
-+	 * by specifying eavesdrop='true' in the match rule. */
-+	if (message->destination &&
-+	    !(rule->flags & BUS_MATCH_CLIENT_IS_EAVESDROPPING))
-+		return 0;
-+
-+	if (rule->flags & BUS_MATCH_MEMBER) {
-+		const char *member;
-+
-+		WARN_ON(!rule->member);
-+
-+		member = message->member;
-+		if (member == NULL)
-+			return 0;
-+
-+		if (strcmp(member, rule->member) != 0)
-+			return 0;
-+	}
-+
-+	if (rule->flags & BUS_MATCH_SENDER) {
-+		WARN_ON(!rule->sender);
-+
-+		if (sender == NULL) {
-+			if (strcmp(rule->sender,
-+				   "org.freedesktop.DBus") != 0)
-+				return 0;
-+		} else
-+			if (!connection_is_primary_owner(sender, rule->sender))
-+				return 0;
-+	}
-+
-+	if (rule->flags & BUS_MATCH_DESTINATION) {
-+		const char *destination;
-+
-+		WARN_ON(!rule->destination);
-+
-+		destination = message->destination;
-+		if (destination == NULL)
-+			return 0;
-+
-+		/* This will not just work out of the box because it this is
-+		 * an eavesdropping match rule. */
-+		if (matchmaker == NULL) {
-+			if (strcmp(rule->destination,
-+				   "org.freedesktop.DBus") != 0)
-+				return 0;
-+		} else
-+			if (!connection_is_primary_owner(matchmaker,
-+							 rule->destination))
-+				return 0;
-+	}
-+
-+	if (rule->flags & BUS_MATCH_PATH) {
-+		const char *path;
-+
-+		WARN_ON(!rule->path);
-+
-+		path = message->path;
-+		if (path == NULL)
-+			return 0;
-+
-+		if (strcmp(path, rule->path) != 0)
-+			return 0;
-+	}
-+
-+	return 1;
-+}
-+
-+static bool get_recipients_from_list(struct bus_match_maker *matchmaker,
-+				     struct bus_match_maker *sender,
-+				     int eavesdrop,
-+				     struct hlist_head *rules,
-+				     const struct dbus_message *message)
-+{
-+	struct hlist_node *cur;
-+	struct bus_match_rule *rule;
-+
-+	if (rules == NULL) {
-+		pr_debug("no rules of this type\n");
-+		return 0;
-+	}
-+
-+	hlist_for_each_entry(rule, cur, rules, list) {
-+		if (match_rule_matches(matchmaker, sender, eavesdrop, rule,
-+					message)) {
-+			pr_debug("[YES] deliver with match rule \"%s\"\n",
-+				 rule->rule_text);
-+			return 1;
-+		} else {
-+			pr_debug("[NO]  deliver with match rule \"%s\"\n",
-+				 rule->rule_text);
-+		}
-+	}
-+	pr_debug("[NO]  no match rules\n");
-+	return 0;
-+}
-+
-+static struct hlist_head
-+*bus_matchmaker_get_rules(struct bus_match_maker *matchmaker,
-+			  int message_type, const char *interface)
-+{
-+	static struct hlist_head empty = {0,};
-+	struct rule_pool *p;
-+
-+	WARN_ON(message_type < 0);
-+	WARN_ON(message_type >= DBUS_NUM_MESSAGE_TYPES);
-+
-+	p = matchmaker->rules_by_type + message_type;
-+
-+	if (interface == NULL)
-+		return &p->rules_without_iface;
-+	else {
-+		struct bus_match_rule *rule =
-+			match_rule_search(&p->rules_by_iface, interface);
-+		if (rule)
-+			return &rule->first;
-+		else
-+			return &empty;
-+	}
-+}
-+
-+bool bus_matchmaker_filter(struct bus_match_maker *matchmaker,
-+			   struct bus_match_maker *sender,
-+			   int eavesdrop,
-+			   const struct dbus_message *message)
-+{
-+	int type;
-+	const char *interface;
-+	struct hlist_head *neither, *just_type, *just_iface, *both;
-+
-+	type = message->type;
-+	interface = message->interface;
-+
-+	neither = bus_matchmaker_get_rules(matchmaker,
-+					   DBUS_MESSAGE_TYPE_INVALID, NULL);
-+	just_type = just_iface = both = NULL;
-+
-+	if (interface != NULL)
-+		just_iface = bus_matchmaker_get_rules(matchmaker,
-+						      DBUS_MESSAGE_TYPE_INVALID,
-+						      interface);
-+
-+	if (type > DBUS_MESSAGE_TYPE_INVALID && type < DBUS_NUM_MESSAGE_TYPES) {
-+		just_type = bus_matchmaker_get_rules(matchmaker, type, NULL);
-+
-+		if (interface != NULL)
-+			both = bus_matchmaker_get_rules(matchmaker, type,
-+							interface);
-+	}
-+
-+	if (get_recipients_from_list(matchmaker, sender, eavesdrop, neither,
-+				     message))
-+		return 1;
-+	if (get_recipients_from_list(matchmaker, sender, eavesdrop, just_iface,
-+				     message))
-+		return 1;
-+	if (get_recipients_from_list(matchmaker, sender, eavesdrop, just_type,
-+				     message))
-+		return 1;
-+	if (get_recipients_from_list(matchmaker, sender, eavesdrop, both,
-+				     message))
-+		return 1;
-+
-+	return connection_is_primary_owner(matchmaker, message->destination);
-+}
-+
-+void bus_matchmaker_add_name(struct bus_match_maker *matchmaker,
-+			     const char *name,
-+			     gfp_t gfp_flags)
-+{
-+	struct dbus_name *dbus_name;
-+	struct rb_node **new = &(matchmaker->names.rb_node), *parent = NULL;
-+
-+	dbus_name = kmalloc(sizeof(struct dbus_name), gfp_flags);
-+	if (!dbus_name)
-+		return;
-+	dbus_name->name = kstrdup(name, gfp_flags);
-+	if (!dbus_name->name)
-+		return;
-+
-+	/* Figure out where to put new node */
-+	while (*new) {
-+		struct dbus_name *this = container_of(*new, struct dbus_name,
-+						      node);
-+		int result = strcmp(dbus_name->name, this->name);
-+
-+		parent = *new;
-+		if (result < 0)
-+			new = &((*new)->rb_left);
-+		else if (result > 0)
-+			new = &((*new)->rb_right);
-+		else
-+			return;
-+	}
-+
-+	/* Add new node and rebalance tree. */
-+	rb_link_node(&dbus_name->node, parent, new);
-+	rb_insert_color(&dbus_name->node, &matchmaker->names);
-+}
-+
-+void bus_matchmaker_remove_name(struct bus_match_maker *matchmaker,
-+				const char *name)
-+{
-+	struct rb_node *node = matchmaker->names.rb_node;
-+
-+	while (node) {
-+		struct dbus_name *data = container_of(node, struct dbus_name,
-+						      node);
-+		int result;
-+
-+		result = strcmp(name, data->name);
-+
-+		if (result < 0)
-+			node = node->rb_left;
-+		else if (result > 0)
-+			node = node->rb_right;
-+		else {
-+			rb_erase(&data->node, &matchmaker->names);
-+			kfree(data->name);
-+			kfree(data);
-+		}
-+	}
-+
-+}
-+
-diff --git a/net/netfilter/nfdbus/matchrule.h b/net/netfilter/nfdbus/matchrule.h
-new file mode 100644
-index 0000000..e16580c
---- /dev/null
-+++ b/net/netfilter/nfdbus/matchrule.h
-@@ -0,0 +1,82 @@
-+/*
-+ * signals.h  Bus signal connection implementation
-+ *
-+ * Copyright (C) 2003  Red Hat, Inc.
-+ *
-+ * This program is free software; you can redistribute it and/or modify
-+ * it under the terms of the GNU General Public License as published by
-+ * the Free Software Foundation; either version 2 of the License, or
-+ * (at your option) any later version.
-+ *
-+ * This program is distributed in the hope that it will be useful,
-+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
-+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-+ * GNU General Public License for more details.
-+ *
-+ * You should have received a copy of the GNU General Public License
-+ * along with this program; if not, write to the Free Software
-+ * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
-+ *
-+ */
-+
-+#ifndef BUS_SIGNALS_H
-+#define BUS_SIGNALS_H
-+
-+#include <linux/gfp.h>
-+#include <linux/list.h>
-+#include <linux/rbtree.h>
-+#include <linux/slab.h>
-+#include <net/af_bus.h>
-+
-+#include "message.h"
-+
-+struct bus_match_rule *bus_match_rule_new(gfp_t gfp_flags);
-+void bus_match_rule_free(struct bus_match_rule *rule);
-+
-+struct bus_match_rule *bus_match_rule_parse(const char *rule_text,
-+					    gfp_t gfp_flags);
-+
-+struct rule_pool {
-+	/* Maps non-NULL interface names to a list of bus_match_rule */
-+	struct rb_root rules_by_iface;
-+
-+	/* List of bus_match_rule which don't specify an interface */
-+	struct hlist_head rules_without_iface;
-+};
-+
-+struct bus_match_maker {
-+	struct sockaddr_bus addr;
-+
-+	struct hlist_node table_node;
-+
-+	/* Pools of rules, grouped by the type of message they match. 0
-+	 * (DBUS_MESSAGE_TYPE_INVALID) represents rules that do not specify a
-+	 * message type.
-+	 */
-+	struct rule_pool rules_by_type[DBUS_NUM_MESSAGE_TYPES];
-+
-+	struct rb_root names;
-+
-+	struct kref kref;
-+};
-+
-+
-+struct bus_match_maker *bus_matchmaker_new(gfp_t gfp_flags);
-+void bus_matchmaker_free(struct kref *kref);
-+
-+int bus_matchmaker_add_rule(struct bus_match_maker *matchmaker,
-+			    struct bus_match_rule *rule);
-+void bus_matchmaker_remove_rule_by_value(struct bus_match_maker *matchmaker,
-+					 struct bus_match_rule *value);
-+
-+bool bus_matchmaker_filter(struct bus_match_maker *matchmaker,
-+			   struct bus_match_maker *sender,
-+			   int eavesdrop,
-+			   const struct dbus_message *message);
-+
-+void bus_matchmaker_add_name(struct bus_match_maker *matchmaker,
-+			     const char *name, gfp_t gfp_flags);
-+void bus_matchmaker_remove_name(struct bus_match_maker *matchmaker,
-+				const char *name);
-+
-+#endif /* BUS_SIGNALS_H */
-diff --git a/net/netfilter/nfdbus/message.c b/net/netfilter/nfdbus/message.c
-new file mode 100644
-index 0000000..93c409c
---- /dev/null
-+++ b/net/netfilter/nfdbus/message.c
-@@ -0,0 +1,194 @@
-+/*
-+ * message.c  Basic D-Bus message parsing
-+ *
-+ * Copyright (C) 2010-2012  Collabora Ltd
-+ * Authors:	Alban Crequy <alban.crequy@collabora.co.uk>
-+ * Copyright (C) 2002, 2003, 2004, 2005  Red Hat Inc.
-+ * Copyright (C) 2002, 2003  CodeFactory AB
-+ *
-+ * This program is free software; you can redistribute it and/or modify
-+ * it under the terms of the GNU General Public License as published by
-+ * the Free Software Foundation; either version 2 of the License, or
-+ * (at your option) any later version.
-+ *
-+ * This program is distributed in the hope that it will be useful,
-+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
-+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-+ * GNU General Public License for more details.
-+ *
-+ * You should have received a copy of the GNU General Public License
-+ * along with this program; if not, write to the Free Software
-+ * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
-+ *
-+ */
-+
-+#include <linux/slab.h>
-+
-+#include "message.h"
-+
-+int dbus_message_type_from_string(const char *type_str)
-+{
-+	if (strcmp(type_str, "method_call") == 0)
-+		return DBUS_MESSAGE_TYPE_METHOD_CALL;
-+	if (strcmp(type_str, "method_return") == 0)
-+		return DBUS_MESSAGE_TYPE_METHOD_RETURN;
-+	else if (strcmp(type_str, "signal") == 0)
-+		return DBUS_MESSAGE_TYPE_SIGNAL;
-+	else if (strcmp(type_str, "error") == 0)
-+		return DBUS_MESSAGE_TYPE_ERROR;
-+	else
-+		return DBUS_MESSAGE_TYPE_INVALID;
-+}
-+
-+int dbus_message_parse(unsigned char *message, size_t len,
-+		       struct dbus_message *dbus_message)
-+{
-+	unsigned char *cur;
-+	int array_header_len;
-+
-+	dbus_message->message = message;
-+
-+	if (len < 4 + 4 + 4 + 4 || message[1] == 0 || message[1] > 4)
-+		return -EINVAL;
-+
-+	dbus_message->type = message[1];
-+	dbus_message->body_length = *((u32 *)(message + 4));
-+	cur = message + 12;
-+	array_header_len = *(u32 *)cur;
-+	dbus_message->len_offset = 12;
-+	cur += 4;
-+	while (cur < message + len
-+	       && cur < message + 12 + 4 + array_header_len) {
-+		int header_code;
-+		int signature_len;
-+		unsigned char *signature;
-+		int str_len;
-+		unsigned char *str;
-+
-+		/* D-Bus alignment craziness */
-+		if ((cur - message) % 8 != 0)
-+			cur += 8 - (cur - message) % 8;
-+
-+		header_code = *(char *)cur;
-+		cur++;
-+		signature_len = *(char *)cur;
-+		/* All header fields of the current D-Bus spec have a simple
-+		 * type, either o, s, g, or u */
-+		if (signature_len != 1)
-+			return -EINVAL;
-+		cur++;
-+		signature = cur;
-+		cur += signature_len + 1;
-+		if (signature[0] != 'o' &&
-+		    signature[0] != 's' &&
-+		    signature[0] != 'g' &&
-+		    signature[0] != 'u')
-+			return -EINVAL;
-+
-+		if (signature[0] == 'u') {
-+			cur += 4;
-+			continue;
-+		}
-+
-+		if (signature[0] != 'g') {
-+			str_len = *(u32 *)cur;
-+			cur += 4;
-+		} else {
-+			str_len = *(char *)cur;
-+			cur += 1;
-+		}
-+
-+		str = cur;
-+		switch (header_code) {
-+		case 1:
-+			dbus_message->path = str;
-+			break;
-+		case 2:
-+			dbus_message->interface = str;
-+			break;
-+		case 3:
-+			dbus_message->member = str;
-+			break;
-+		case 6:
-+			dbus_message->destination = str;
-+			break;
-+		case 7:
-+			dbus_message->sender = str;
-+			break;
-+		case 8:
-+			dbus_message->body_signature = str;
-+			break;
-+		}
-+		cur += str_len + 1;
-+	}
-+
-+	dbus_message->padding_end = (8 - (cur - message) % 8) % 8;
-+
-+	/* Jump to body D-Bus alignment craziness */
-+	if ((cur - message) % 8 != 0)
-+		cur += 8 - (cur - message) % 8;
-+	dbus_message->new_header_offset = cur - message;
-+
-+	if (dbus_message->new_header_offset
-+	    + dbus_message->body_length != len) {
-+		pr_warn("Message truncated? " \
-+			"Header %d + Body %d != Length %zd\n",
-+			dbus_message->new_header_offset,
-+			dbus_message->body_length, len);
-+		return -EINVAL;
-+	}
-+
-+	if (dbus_message->body_signature &&
-+	    dbus_message->body_signature[0] == 's') {
-+		int str_len;
-+		str_len = *(u32 *)cur;
-+		cur += 4;
-+		dbus_message->arg0 = cur;
-+		cur += str_len + 1;
-+	}
-+
-+	if ((cur - message) % 4 != 0)
-+		cur += 4 - (cur - message) % 4;
-+
-+	if (dbus_message->body_signature &&
-+	    dbus_message->body_signature[0] == 's' &&
-+	    dbus_message->body_signature[1] == 's') {
-+		int str_len;
-+		str_len = *(u32 *)cur;
-+		cur += 4;
-+		dbus_message->arg1 = cur;
-+		cur += str_len + 1;
-+	}
-+
-+	if ((cur - message) % 4 != 0)
-+		cur += 4 - (cur - message) % 4;
-+
-+	if (dbus_message->body_signature &&
-+	    dbus_message->body_signature[0] == 's' &&
-+	    dbus_message->body_signature[1] == 's' &&
-+	    dbus_message->body_signature[2] == 's') {
-+		int str_len;
-+		str_len = *(u32 *)cur;
-+		cur += 4;
-+		dbus_message->arg2 = cur;
-+		cur += str_len + 1;
-+	}
-+
-+	if ((cur - message) % 4 != 0)
-+		cur += 4 - (cur - message) % 4;
-+
-+	if (dbus_message->type == DBUS_MESSAGE_TYPE_SIGNAL &&
-+	    dbus_message->sender && dbus_message->path &&
-+	    dbus_message->interface && dbus_message->member &&
-+	    dbus_message->arg0 &&
-+	    strcmp(dbus_message->sender, "org.freedesktop.DBus") == 0 &&
-+	    strcmp(dbus_message->interface, "org.freedesktop.DBus") == 0 &&
-+	    strcmp(dbus_message->path, "/org/freedesktop/DBus") == 0) {
-+		if (strcmp(dbus_message->member, "NameAcquired") == 0)
-+			dbus_message->name_acquired = dbus_message->arg0;
-+		else if (strcmp(dbus_message->member, "NameLost") == 0)
-+			dbus_message->name_lost = dbus_message->arg0;
-+	}
-+
-+	return 0;
-+}
-diff --git a/net/netfilter/nfdbus/message.h b/net/netfilter/nfdbus/message.h
-new file mode 100644
-index 0000000..e3ea4d3
---- /dev/null
-+++ b/net/netfilter/nfdbus/message.h
-@@ -0,0 +1,71 @@
-+/*
-+ * message.h  Basic D-Bus message parsing
-+ *
-+ * Copyright (C) 2010  Collabora Ltd
-+ *
-+ * This program is free software; you can redistribute it and/or modify
-+ * it under the terms of the GNU General Public License as published by
-+ * the Free Software Foundation; either version 2 of the License, or
-+ * (at your option) any later version.
-+ *
-+ * This program is distributed in the hope that it will be useful,
-+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
-+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-+ * GNU General Public License for more details.
-+ *
-+ * You should have received a copy of the GNU General Public License
-+ * along with this program; if not, write to the Free Software
-+ * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
-+ *
-+ */
-+
-+#ifndef DBUS_MESSAGE_H
-+#define DBUS_MESSAGE_H
-+
-+#include <linux/list.h>
-+
-+#define DBUS_MAXIMUM_MATCH_RULE_LENGTH 1024
-+
-+/* Types of message */
-+
-+#define DBUS_MESSAGE_TYPE_INVALID       0
-+#define DBUS_MESSAGE_TYPE_METHOD_CALL   1
-+#define DBUS_MESSAGE_TYPE_METHOD_RETURN 2
-+#define DBUS_MESSAGE_TYPE_ERROR         3
-+#define DBUS_MESSAGE_TYPE_SIGNAL        4
-+#define DBUS_NUM_MESSAGE_TYPES          5
-+
-+/* No need to implement a feature-complete parser. It only implement what is
-+ * needed by the bus. */
-+struct dbus_message {
-+	char *message;
-+	size_t len;
-+	size_t new_len;
-+
-+	/* direct pointers to the fields */
-+	int type;
-+	char *path;
-+	char *interface;
-+	char *member;
-+	char *destination;
-+	char *sender;
-+	char *body_signature;
-+	int body_length;
-+	char *arg0;
-+	char *arg1;
-+	char *arg2;
-+	char *name_acquired;
-+	char *name_lost;
-+
-+	/* How to add the 'sender' field in the headers */
-+	int new_header_offset;
-+	int len_offset;
-+	int padding_end;
-+};
-+
-+int dbus_message_type_from_string(const char *type_str);
-+
-+int dbus_message_parse(unsigned char *message, size_t len,
-+		       struct dbus_message *dbus_message);
-+
-+#endif /* DBUS_MESSAGE_H */
-diff --git a/net/netfilter/nfdbus/nfdbus.c b/net/netfilter/nfdbus/nfdbus.c
-new file mode 100644
-index 0000000..f6642e2
---- /dev/null
-+++ b/net/netfilter/nfdbus/nfdbus.c
-@@ -0,0 +1,456 @@
-+/*
-+ *  nfdbus.c - Netfilter module for AF_BUS/BUS_PROTO_DBUS.
-+ */
-+
-+#define DRIVER_AUTHOR "Alban Crequy"
-+#define DRIVER_DESC   "Netfilter module for AF_BUS/BUS_PROTO_DBUS."
-+
-+#include "nfdbus.h"
-+
-+#include <linux/module.h>
-+#include <linux/kernel.h>
-+#include <linux/init.h>
-+#include <linux/skbuff.h>
-+#include <linux/netfilter.h>
-+#include <linux/connector.h>
-+#include <net/af_bus.h>
-+
-+#include "message.h"
-+#include "matchrule.h"
-+
-+static struct nf_hook_ops nfho_dbus;
-+
-+static struct cb_id cn_cmd_id = { CN_IDX_NFDBUS, CN_VAL_NFDBUS };
-+
-+static unsigned int hash;
-+
-+/* Scoped by AF_BUS address */
-+struct hlist_head matchrules_table[BUS_HASH_SIZE];
-+DEFINE_SPINLOCK(matchrules_lock);
-+
-+static struct bus_match_maker *find_match_maker(struct sockaddr_bus *addr,
-+		bool create, bool delete)
-+{
-+	u64 hash;
-+	struct hlist_node *node;
-+	struct bus_match_maker *matchmaker;
-+	int path_len = strlen(addr->sbus_path);
-+
-+	hash = csum_partial(addr->sbus_path,
-+			    strlen(addr->sbus_path), 0);
-+	hash ^= addr->sbus_addr.s_addr;
-+	hash ^= hash >> 32;
-+	hash ^= hash >> 16;
-+	hash ^= hash >> 8;
-+	hash &= 0xff;
-+
-+	spin_lock(&matchrules_lock);
-+	hlist_for_each_entry(matchmaker, node, &matchrules_table[hash],
-+			     table_node) {
-+		if (addr->sbus_family == matchmaker->addr.sbus_family &&
-+		    addr->sbus_addr.s_addr == matchmaker->addr.sbus_addr.s_addr &&
-+		    !memcmp(addr->sbus_path, matchmaker->addr.sbus_path,
-+			   path_len)) {
-+			kref_get(&matchmaker->kref);
-+			if (delete)
-+				hlist_del(&matchmaker->table_node);
-+			spin_unlock(&matchrules_lock);
-+			pr_debug("Found matchmaker for hash %llu", hash);
-+			return matchmaker;
-+		}
-+	}
-+	spin_unlock(&matchrules_lock);
-+
-+	if (!create) {
-+		pr_debug("Matchmaker for hash %llu not found", hash);
-+		return NULL;
-+	}
-+
-+	matchmaker = bus_matchmaker_new(GFP_ATOMIC);
-+	matchmaker->addr.sbus_family = addr->sbus_family;
-+	matchmaker->addr.sbus_addr.s_addr = addr->sbus_addr.s_addr;
-+	memcpy(matchmaker->addr.sbus_path, addr->sbus_path, BUS_PATH_MAX);
-+
-+	pr_debug("Create new matchmaker for hash %llu\n", hash);
-+	spin_lock(&matchrules_lock);
-+	hlist_add_head(&matchmaker->table_node, &matchrules_table[hash]);
-+	kref_get(&matchmaker->kref);
-+	spin_unlock(&matchrules_lock);
-+	return matchmaker;
-+}
-+
-+static unsigned int dbus_filter(unsigned int hooknum,
-+				struct sk_buff *skb,
-+				const struct net_device *in,
-+				const struct net_device *out,
-+				int (*okfn)(struct sk_buff *))
-+{
-+	struct bus_send_context	*sendctx;
-+	struct bus_match_maker *matchmaker = NULL;
-+	struct bus_match_maker *sender = NULL;
-+	struct dbus_message msg = {0,};
-+	unsigned char *data;
-+	size_t len;
-+	int err;
-+	int ret;
-+
-+	if (!skb->sk || skb->sk->sk_family != PF_BUS) {
-+		WARN(1, "netfilter_dbus received an invalid skb");
-+		return NF_DROP;
-+	}
-+
-+	data = skb->data;
-+	sendctx = BUSCB(skb).sendctx;
-+	if (!sendctx || !sendctx->sender || !sendctx->sender_socket) {
-+		WARN(1, "netfilter_dbus received an AF_BUS packet" \
-+		     " without context. This is a bug. Dropping the"
-+			" packet.");
-+		return NF_DROP;
-+	}
-+
-+	if (sendctx->sender_socket->sk->sk_protocol != BUS_PROTO_DBUS) {
-+		/* This kernel module is for D-Bus. It must not
-+		 * interfere with other users of AF_BUS. */
-+		return NF_ACCEPT;
-+	}
-+	if (sendctx->recipient)
-+		matchmaker = find_match_maker(sendctx->recipient, false, false);
-+
-+	len =  skb_tail_pointer(skb) - data;
-+
-+	if (sendctx->to_master && sendctx->main_recipient) {
-+		pr_debug("AF_BUS packet to the bus master. ACCEPT.\n");
-+		ret = NF_ACCEPT;
-+		goto out;
-+	}
-+
-+	if (sendctx->main_recipient && !sendctx->bus_master_side) {
-+		pr_debug("AF_BUS packet from a peer to a peer (unicast). ACCEPT.\n");
-+		ret = NF_ACCEPT;
-+		goto out;
-+	}
-+
-+	err = dbus_message_parse(data, len, &msg);
-+	if (err) {
-+		if (!sendctx->main_recipient) {
-+			pr_debug("AF_BUS packet for an eavesdropper or " \
-+				 "multicast is not parsable. DROP.\n");
-+			ret = NF_DROP;
-+			goto out;
-+		} else if (sendctx->bus_master_side) {
-+			pr_debug("AF_BUS packet from bus master is not parsable. ACCEPT.\n");
-+			ret = NF_ACCEPT;
-+			goto out;
-+		} else {
-+			pr_debug("AF_BUS packet from peer is not parsable. DROP.\n");
-+			ret = NF_DROP;
-+			goto out;
-+		}
-+	}
-+
-+	if (sendctx->bus_master_side && !sendctx->main_recipient) {
-+		pr_debug("AF_BUS packet '%s' from the bus master is for an " \
-+			 "eavesdropper. DROP.\n",
-+		       msg.member ? msg.member : "");
-+		ret = NF_DROP;
-+		goto out;
-+	}
-+	if (sendctx->bus_master_side) {
-+		if (msg.name_acquired) {
-+			pr_debug("New name: %s [%p %p].\n",
-+				 msg.name_acquired, sendctx->sender,
-+				 sendctx->recipient);
-+
-+			sender = find_match_maker(sendctx->sender, true, false);
-+			bus_matchmaker_add_name(sender, msg.name_acquired,
-+						GFP_ATOMIC);
-+		}
-+		if (msg.name_lost) {
-+			pr_debug("Lost name: %s [%p %p].\n",
-+				 msg.name_lost, sendctx->sender,
-+				 sendctx->recipient);
-+
-+			sender = find_match_maker(sendctx->sender, true, false);
-+			bus_matchmaker_remove_name(sender, msg.name_acquired);
-+		}
-+
-+		pr_debug("AF_BUS packet '%s' from the bus master. ACCEPT.\n",
-+			 msg.member ? msg.member : "");
-+		ret = NF_ACCEPT;
-+		goto out;
-+	}
-+
-+	pr_debug("Multicast AF_BUS packet, %ld bytes, " \
-+		 "considering recipient %lld...\n", len,
-+		 sendctx->recipient ? sendctx->recipient->sbus_addr.s_addr : 0);
-+
-+	pr_debug("Message type %d %s->%s [iface: %s][member: %s][matchmaker=%p]...\n",
-+		 msg.type,
-+		 msg.sender ? msg.sender : "",
-+		 msg.destination ? msg.destination : "",
-+		 msg.interface ? msg.interface : "",
-+		 msg.member ? msg.member : "",
-+		 matchmaker);
-+
-+	if (!matchmaker) {
-+		pr_debug("No match rules for this recipient. DROP.\n");
-+		ret = NF_DROP;
-+		goto out;
-+	}
-+
-+	sender = find_match_maker(sendctx->sender, true, false);
-+	err = bus_matchmaker_filter(matchmaker, sender, sendctx->eavesdropper,
-+				    &msg);
-+	if (err) {
-+		pr_debug("Matchmaker: ACCEPT.\n");
-+		ret = NF_ACCEPT;
-+		goto out;
-+	} else {
-+		pr_debug("Matchmaker: DROP.\n");
-+		ret = NF_DROP;
-+		goto out;
-+	}
-+
-+out:
-+	if (matchmaker)
-+		kref_put(&matchmaker->kref, bus_matchmaker_free);
-+	if (sender)
-+		kref_put(&sender->kref, bus_matchmaker_free);
-+	return ret;
-+}
-+
-+/* Taken from drbd_nl_send_reply() */
-+static void nfdbus_nl_send_reply(struct cn_msg *msg, int ret_code)
-+{
-+	char buffer[sizeof(struct cn_msg)+sizeof(struct nfdbus_nl_cfg_reply)];
-+	struct cn_msg *cn_reply = (struct cn_msg *) buffer;
-+	struct nfdbus_nl_cfg_reply *reply =
-+		(struct nfdbus_nl_cfg_reply *)cn_reply->data;
-+	int rr;
-+
-+	memset(buffer, 0, sizeof(buffer));
-+	cn_reply->id = msg->id;
-+
-+	cn_reply->seq = msg->seq;
-+	cn_reply->ack = msg->ack  + 1;
-+	cn_reply->len = sizeof(struct nfdbus_nl_cfg_reply);
-+	cn_reply->flags = 0;
-+
-+	reply->ret_code = ret_code;
-+
-+	rr = cn_netlink_send(cn_reply, 0, GFP_NOIO);
-+	if (rr && rr != -ESRCH)
-+		pr_debug("nfdbus: cn_netlink_send()=%d\n", rr);
-+}
-+
-+/**
-+ * nfdbus_check_perm - check if a pid is allowed to update match rules
-+ * @sockaddr_bus: the socket address of the bus
-+ * @pid: the process id that wants to update the match rules set
-+ *
-+ * Test if a given process id is allowed to update the match rules set
-+ * for this bus. Only the process that owns the bus master listen socket
-+ * is allowed to update the match rules set for the bus.
-+ */
-+static bool nfdbus_check_perm(struct sockaddr_bus *sbusname, pid_t pid)
-+{
-+	struct net *net = get_net_ns_by_pid(pid);
-+	struct sock *s;
-+	struct bus_address *addr;
-+	struct hlist_node *node;
-+	int offset = (sbusname->sbus_path[0] == '\0');
-+	int path_len = strnlen(sbusname->sbus_path + offset, BUS_PATH_MAX);
-+	int len;
-+	if (!net)
-+		return false;
-+
-+	len = path_len + 1 + sizeof(__kernel_sa_family_t) +
-+	      sizeof(struct bus_addr);
-+
-+	spin_lock(&bus_address_lock);
-+
-+	hlist_for_each_entry(addr, node, &bus_address_table[hash],
-+			     table_node) {
-+		s = addr->sock;
-+
-+		if (s->sk_protocol != BUS_PROTO_DBUS)
-+			continue;
-+
-+		if (!net_eq(sock_net(s), net))
-+			continue;
-+
-+		if (addr->len == len &&
-+		    addr->name->sbus_family == sbusname->sbus_family &&
-+		    addr->name->sbus_addr.s_addr == BUS_MASTER_ADDR &&
-+		    bus_same_bus(addr->name, sbusname) &&
-+		    pid_nr(s->sk_peer_pid) == pid) {
-+			spin_unlock(&bus_address_lock);
-+			return true;
-+		}
-+	}
-+
-+	spin_unlock(&bus_address_lock);
-+
-+	return false;
-+}
-+
-+static void cn_cmd_cb(struct cn_msg *msg, struct netlink_skb_parms *nsp)
-+{
-+	struct nfdbus_nl_cfg_req *nlp = (struct nfdbus_nl_cfg_req *)msg->data;
-+	struct cn_msg *cn_reply;
-+	struct nfdbus_nl_cfg_reply *reply;
-+	int retcode, rr;
-+	pid_t pid = task_tgid_vnr(current);
-+	int reply_size = sizeof(struct cn_msg)
-+		+ sizeof(struct nfdbus_nl_cfg_reply);
-+
-+	pr_debug("nfdbus: %s nsp->pid=%d pid=%d\n", __func__, nsp->pid, pid);
-+
-+	if (!nfdbus_check_perm(&nlp->addr, pid)) {
-+		pr_debug(KERN_ERR "nfdbus: pid=%d is not allowed!\n", pid);
-+		retcode = EPERM;
-+		goto fail;
-+	}
-+
-+	cn_reply = kzalloc(reply_size, GFP_KERNEL);
-+	if (!cn_reply) {
-+		retcode = ENOMEM;
-+		goto fail;
-+	}
-+	reply = (struct nfdbus_nl_cfg_reply *) cn_reply->data;
-+
-+	if (msg->len < sizeof(struct nfdbus_nl_cfg_req)) {
-+		reply->ret_code = EINVAL;
-+	} else if (nlp->cmd == NFDBUS_CMD_ADDMATCH) {
-+		struct bus_match_rule *rule;
-+		struct bus_match_maker *matchmaker;
-+		reply->ret_code = 0;
-+
-+		if (msg->len == 0)
-+			reply->ret_code = EINVAL;
-+
-+		rule = bus_match_rule_parse(nlp->data, GFP_ATOMIC);
-+		if (rule) {
-+			matchmaker = find_match_maker(&nlp->addr, true, false);
-+			pr_debug("Add match rule for matchmaker %p\n",
-+				 matchmaker);
-+			bus_matchmaker_add_rule(matchmaker, rule);
-+			kref_put(&matchmaker->kref, bus_matchmaker_free);
-+		} else {
-+			reply->ret_code = EINVAL;
-+		}
-+	} else if (nlp->cmd == NFDBUS_CMD_REMOVEMATCH) {
-+		struct bus_match_rule *rule;
-+		struct bus_match_maker *matchmaker;
-+
-+		rule = bus_match_rule_parse(nlp->data, GFP_ATOMIC);
-+		matchmaker = find_match_maker(&nlp->addr, false, false);
-+		if (!matchmaker) {
-+			reply->ret_code = EINVAL;
-+		} else {
-+			pr_debug("Remove match rule for matchmaker %p\n",
-+				 matchmaker);
-+			bus_matchmaker_remove_rule_by_value(matchmaker, rule);
-+			kref_put(&matchmaker->kref, bus_matchmaker_free);
-+			reply->ret_code = 0;
-+		}
-+		bus_match_rule_free(rule);
-+
-+	} else if (nlp->cmd == NFDBUS_CMD_REMOVEALLMATCH) {
-+		struct bus_match_maker *matchmaker;
-+
-+		matchmaker = find_match_maker(&nlp->addr, false, true);
-+		if (!matchmaker) {
-+			reply->ret_code = EINVAL;
-+		} else {
-+			pr_debug("Remove matchmaker %p\n", matchmaker);
-+			kref_put(&matchmaker->kref, bus_matchmaker_free);
-+			kref_put(&matchmaker->kref, bus_matchmaker_free);
-+			reply->ret_code = 0;
-+		}
-+
-+	} else {
-+		reply->ret_code = EINVAL;
-+	}
-+
-+	cn_reply->id = msg->id;
-+	cn_reply->seq = msg->seq;
-+	cn_reply->ack = msg->ack  + 1;
-+	cn_reply->len = sizeof(struct nfdbus_nl_cfg_reply);
-+	cn_reply->flags = 0;
-+
-+	rr = cn_netlink_reply(cn_reply, nsp->pid, GFP_KERNEL);
-+	if (rr && rr != -ESRCH)
-+		pr_debug("nfdbus: cn_netlink_send()=%d\n", rr);
-+	pr_debug("nfdbus: cn_netlink_reply(pid=%d)=%d\n", nsp->pid, rr);
-+
-+	kfree(cn_reply);
-+	return;
-+fail:
-+	nfdbus_nl_send_reply(msg, retcode);
-+}
-+
-+static int __init nfdbus_init(void)
-+{
-+	int err;
-+	struct bus_addr master_addr;
-+
-+	master_addr.s_addr = BUS_MASTER_ADDR;
-+	hash = bus_compute_hash(master_addr);
-+
-+	pr_debug("Loading netfilter_dbus\n");
-+
-+	/* Install D-Bus netfilter hook */
-+	nfho_dbus.hook     = dbus_filter;
-+	nfho_dbus.hooknum  = NF_BUS_SENDING;
-+	nfho_dbus.pf       = NFPROTO_BUS; /* Do not use PF_BUS, you fool! */
-+	nfho_dbus.priority = 0;
-+	nfho_dbus.owner = THIS_MODULE;
-+	err = nf_register_hook(&nfho_dbus);
-+	if (err)
-+		return err;
-+	pr_debug("Netfilter hook for D-Bus: installed.\n");
-+
-+	/* Install connector hook */
-+	err = cn_add_callback(&cn_cmd_id, "nfdbus", cn_cmd_cb);
-+	if (err)
-+		goto err_cn_cmd_out;
-+	pr_debug("Connector hook: installed.\n");
-+
-+	return 0;
-+
-+err_cn_cmd_out:
-+	nf_unregister_hook(&nfho_dbus);
-+
-+	return err;
-+}
-+
-+static void __exit nfdbus_cleanup(void)
-+{
-+	int i;
-+	struct hlist_node *node, *tmp;
-+	struct bus_match_maker *matchmaker;
-+	nf_unregister_hook(&nfho_dbus);
-+
-+	cn_del_callback(&cn_cmd_id);
-+
-+	spin_lock(&matchrules_lock);
-+	for (i = 0; i < BUS_HASH_SIZE; i++) {
-+		hlist_for_each_entry_safe(matchmaker, node, tmp,
-+					  &matchrules_table[i], table_node) {
-+			hlist_del(&matchmaker->table_node);
-+			kref_put(&matchmaker->kref, bus_matchmaker_free);
-+		}
-+	}
-+	spin_unlock(&matchrules_lock);
-+
-+	pr_debug("Unloading netfilter_dbus\n");
-+}
-+
-+module_init(nfdbus_init);
-+module_exit(nfdbus_cleanup);
-+
-+MODULE_LICENSE("GPL");
-+MODULE_AUTHOR(DRIVER_AUTHOR);
-+MODULE_DESCRIPTION(DRIVER_DESC);
-+MODULE_ALIAS_NET_PF_PROTO(PF_BUS, BUS_PROTO_DBUS);
-diff --git a/net/netfilter/nfdbus/nfdbus.h b/net/netfilter/nfdbus/nfdbus.h
-new file mode 100644
-index 0000000..477bde3
---- /dev/null
-+++ b/net/netfilter/nfdbus/nfdbus.h
-@@ -0,0 +1,44 @@
-+/*
-+ * nfdbus.h  Netfilter module for AF_BUS/BUS_PROTO_DBUS.
-+ *
-+ * Copyright (C) 2012  Collabora Ltd
-+ *
-+ * This program is free software; you can redistribute it and/or modify
-+ * it under the terms of the GNU General Public License as published by
-+ * the Free Software Foundation; either version 2 of the License, or
-+ * (at your option) any later version.
-+ *
-+ * This program is distributed in the hope that it will be useful,
-+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
-+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-+ * GNU General Public License for more details.
-+ *
-+ * You should have received a copy of the GNU General Public License
-+ * along with this program; if not, write to the Free Software
-+ * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
-+ *
-+ */
-+
-+#ifndef NETFILTER_DBUS_H
-+#define NETFILTER_DBUS_H
-+
-+#include <linux/types.h>
-+#include <linux/bus.h>
-+
-+#define NFDBUS_CMD_ADDMATCH        0x01
-+#define NFDBUS_CMD_REMOVEMATCH     0x02
-+#define NFDBUS_CMD_REMOVEALLMATCH  0x03
-+
-+struct nfdbus_nl_cfg_req {
-+	__u32 cmd;
-+	__u32 len;
-+	struct sockaddr_bus addr;
-+	__u64 pad;
-+	unsigned char data[0];
-+};
-+
-+struct nfdbus_nl_cfg_reply {
-+	__u32 ret_code;
-+};
-+
-+#endif /* NETFILTER_DBUS_H */
-diff --git a/security/capability.c b/security/capability.c
-index 5bb21b1..5b966a6 100644
---- a/security/capability.c
-+++ b/security/capability.c
-@@ -563,6 +563,12 @@ static int cap_unix_may_send(struct socket *sock, struct socket *other)
- 	return 0;
- }
- 
-+static int cap_bus_connect(struct sock *sock, struct sock *other,
-+			   struct sock *newsk)
-+{
-+	return 0;
-+}
-+
- static int cap_socket_create(int family, int type, int protocol, int kern)
- {
- 	return 0;
-@@ -1015,6 +1021,7 @@ void __init security_fixup_ops(struct security_operations *ops)
- #ifdef CONFIG_SECURITY_NETWORK
- 	set_to_cap_if_null(ops, unix_stream_connect);
- 	set_to_cap_if_null(ops, unix_may_send);
-+	set_to_cap_if_null(ops, bus_connect);
- 	set_to_cap_if_null(ops, socket_create);
- 	set_to_cap_if_null(ops, socket_post_create);
- 	set_to_cap_if_null(ops, socket_bind);
-diff --git a/security/security.c b/security/security.c
-index bf619ff..54582ea 100644
---- a/security/security.c
-+++ b/security/security.c
-@@ -1018,6 +1018,13 @@ int security_unix_may_send(struct socket *sock,  struct socket *other)
- }
- EXPORT_SYMBOL(security_unix_may_send);
- 
-+int security_bus_connect(struct sock *sock, struct sock *other,
-+				struct sock *newsk)
-+{
-+	return security_ops->bus_connect(sock, other, newsk);
-+}
-+EXPORT_SYMBOL(security_bus_connect);
-+
- int security_socket_create(int family, int type, int protocol, int kern)
- {
- 	return security_ops->socket_create(family, type, protocol, kern);
-diff --git a/security/selinux/hooks.c b/security/selinux/hooks.c
-index d85b793..37573f2 100644
---- a/security/selinux/hooks.c
-+++ b/security/selinux/hooks.c
-@@ -67,6 +67,7 @@
- #include <linux/quota.h>
- #include <linux/un.h>		/* for Unix socket types */
- #include <net/af_unix.h>	/* for Unix socket types */
-+#include <net/af_bus.h>	/* for Bus socket types */
- #include <linux/parser.h>
- #include <linux/nfs_mount.h>
- #include <net/ipv6.h>
-@@ -4102,6 +4103,39 @@ static int selinux_socket_unix_may_send(struct socket *sock,
- 			    &ad);
- }
- 
-+static int selinux_socket_bus_connect(struct sock *sock, struct sock *other,
-+				      struct sock *newsk)
-+{
-+	struct sk_security_struct *sksec_sock = sock->sk_security;
-+	struct sk_security_struct *sksec_other = other->sk_security;
-+	struct sk_security_struct *sksec_new = newsk->sk_security;
-+	struct common_audit_data ad;
-+	struct lsm_network_audit net = {0,};
-+	int err;
-+
-+	ad.type = LSM_AUDIT_DATA_NET;
-+	ad.u.net = &net;
-+	ad.u.net->sk = other;
-+
-+	err = avc_has_perm(sksec_sock->sid, sksec_other->sid,
-+			   sksec_other->sclass,
-+			   UNIX_STREAM_SOCKET__CONNECTTO, &ad);
-+	if (err)
-+		return err;
-+
-+	/* server child socket */
-+	sksec_new->peer_sid = sksec_sock->sid;
-+	err = security_sid_mls_copy(sksec_other->sid, sksec_sock->sid,
-+				    &sksec_new->sid);
-+	if (err)
-+		return err;
-+
-+	/* connecting socket */
-+	sksec_sock->peer_sid = sksec_new->sid;
-+
-+	return 0;
-+}
-+
- static int selinux_inet_sys_rcv_skb(int ifindex, char *addrp, u16 family,
- 				    u32 peer_sid,
- 				    struct common_audit_data *ad)
-@@ -5656,6 +5690,7 @@ static struct security_operations selinux_ops = {
- 
- 	.unix_stream_connect =		selinux_socket_unix_stream_connect,
- 	.unix_may_send =		selinux_socket_unix_may_send,
-+	.bus_connect =		        selinux_socket_bus_connect,
- 
- 	.socket_create =		selinux_socket_create,
- 	.socket_post_create =		selinux_socket_post_create,
--- 
-1.7.7.6
-
diff --git a/recipes-kernel/linux/linux-yocto/beagle_qemu.cfg b/recipes-kernel/linux/linux-yocto/beagle_qemu.cfg
deleted file mode 100644
index 0ace211..0000000
--- a/recipes-kernel/linux/linux-yocto/beagle_qemu.cfg
+++ /dev/null
@@ -1,5 +0,0 @@
-CONFIG_PANEL_GENERIC_DPI=y
-
-CONFIG_USB_OHCI_HCD=y
-CONFIG_USB_OHCI_HCD_OMAP3=y
-CONFIG_USB_OHCI_LITTLE_ENDIAN=y
diff --git a/recipes-kernel/linux/linux-yocto/qemux86.cfg b/recipes-kernel/linux/linux-yocto/qemux86.cfg
deleted file mode 100644
index eb78e01..0000000
--- a/recipes-kernel/linux/linux-yocto/qemux86.cfg
+++ /dev/null
@@ -1,13 +0,0 @@
-#additional configs requested by SysInfra EG
-CONFIG_MEDIA_SUPPORT=y
-CONFIG_MEDIA_CONTROLLER=y
-
-# config for adding support for AF_BUS sockets
-CONFIG_AF_BUS=y
-CONFIG_NETFILTER_DBUS=y
-
-# Activate ecryptfs
-CONFIG_EXPERIMENTAL=y
-CONFIG_KEYS=y
-CONFIG_CRYPTO=y
-CONFIG_ECRYPT_FS=y
diff --git a/recipes-kernel/linux/linux-yocto/qemux86_64.cfg b/recipes-kernel/linux/linux-yocto/qemux86_64.cfg
deleted file mode 100644
index eb78e01..0000000
--- a/recipes-kernel/linux/linux-yocto/qemux86_64.cfg
+++ /dev/null
@@ -1,13 +0,0 @@
-#additional configs requested by SysInfra EG
-CONFIG_MEDIA_SUPPORT=y
-CONFIG_MEDIA_CONTROLLER=y
-
-# config for adding support for AF_BUS sockets
-CONFIG_AF_BUS=y
-CONFIG_NETFILTER_DBUS=y
-
-# Activate ecryptfs
-CONFIG_EXPERIMENTAL=y
-CONFIG_KEYS=y
-CONFIG_CRYPTO=y
-CONFIG_ECRYPT_FS=y
diff --git a/recipes-kernel/linux/linux-yocto/vexpress_a9.cfg b/recipes-kernel/linux/linux-yocto/vexpress_a9.cfg
deleted file mode 100644
index bbe9ba3..0000000
--- a/recipes-kernel/linux/linux-yocto/vexpress_a9.cfg
+++ /dev/null
@@ -1,843 +0,0 @@
-# Kernel fragment taken from linaro.org
-# http://releases.linaro.org/platform/linaro-n/hwpacks/11.09/
-
-CONFIG_AC97_BUS=y
-CONFIG_AEABI=y
-CONFIG_AIO=y
-CONFIG_ALIGNMENT_TRAP=y
-CONFIG_ANON_INODES=y
-CONFIG_ARCH_HAS_CPU_IDLE_WAIT=y
-CONFIG_ARCH_SUSPEND_POSSIBLE=y
-CONFIG_ARCH_VEXPRESS=y
-CONFIG_ARCH_VEXPRESS_CA9X4=y
-CONFIG_ARCH_WANT_OPTIONAL_GPIOLIB=y
-CONFIG_ARM=y
-CONFIG_ARM_AMBA=y
-CONFIG_ARM_CPU_TOPOLOGY=y
-CONFIG_ARM_DMA_MEM_BUFFERABLE=y
-CONFIG_ARM_ERRATA_720789=y
-CONFIG_ARM_ERRATA_751472=y
-CONFIG_ARM_GIC=y
-CONFIG_ARM_PATCH_PHYS_VIRT=y
-CONFIG_ARM_THUMB=y
-CONFIG_ARM_TIMER_SP804=y
-CONFIG_ARM_UNWIND=y
-CONFIG_AT76C50X_USB=m
-CONFIG_ATA=y
-CONFIG_ATAGS_PROC=y
-CONFIG_ATA_BMDMA=y
-CONFIG_ATA_SFF=y
-CONFIG_ATA_VERBOSE_ERROR=y
-CONFIG_ATH_COMMON=m
-CONFIG_AUDIT=y
-CONFIG_AUDIT_GENERIC=y
-CONFIG_AUTOFS4_FS=m
-CONFIG_AVERAGE=y
-CONFIG_B43=m
-CONFIG_B43LEGACY=m
-CONFIG_B43LEGACY_DEBUG=y
-CONFIG_B43LEGACY_DMA=y
-CONFIG_B43LEGACY_DMA_AND_PIO_MODE=y
-CONFIG_B43LEGACY_HWRNG=y
-CONFIG_B43LEGACY_LEDS=y
-CONFIG_B43LEGACY_PIO=y
-CONFIG_B43_HWRNG=y
-CONFIG_B43_LEDS=y
-CONFIG_B43_PHY_LP=y
-CONFIG_B43_PHY_N=y
-CONFIG_B43_PIO=y
-CONFIG_B43_SSB=y
-CONFIG_BASE_FULL=y
-CONFIG_BASE_SMALL=0
-CONFIG_BCMA_POSSIBLE=y
-CONFIG_BINARY_PRINTF=y
-CONFIG_BINFMT_ELF=y
-CONFIG_BITREVERSE=y
-CONFIG_BLK_DEV=y
-CONFIG_BLK_DEV_BSG=y
-CONFIG_BLK_DEV_DM=y
-CONFIG_BLK_DEV_INITRD=y
-CONFIG_BLK_DEV_LOOP=y
-CONFIG_BLK_DEV_LOOP_MIN_COUNT=8
-CONFIG_BLK_DEV_RAM=y
-CONFIG_BLK_DEV_RAM_COUNT=16
-CONFIG_BLK_DEV_RAM_SIZE=65536
-CONFIG_BLK_DEV_SD=y
-CONFIG_BLOCK=y
-CONFIG_BOOTPARAM_HUNG_TASK_PANIC_VALUE=0
-CONFIG_BOUNCE=y
-CONFIG_BRANCH_PROFILE_NONE=y
-CONFIG_BSD_PROCESS_ACCT=y
-CONFIG_BT=m
-CONFIG_BTRFS_FS=y
-CONFIG_BT_HCIBCM203X=m
-CONFIG_BT_HCIBPA10X=m
-CONFIG_BT_HCIUART=m
-CONFIG_BT_HCIUART_BCSP=y
-CONFIG_BT_HCIUART_H4=y
-CONFIG_BT_HCIUART_LL=y
-CONFIG_BUG=y
-CONFIG_CACHE_L2X0=y
-CONFIG_CACHE_PL310=y
-CONFIG_CAN_PM_TRACE=y
-CONFIG_CARL9170=m
-CONFIG_CARL9170_LEDS=y
-CONFIG_CARL9170_WPC=y
-CONFIG_CC_OPTIMIZE_FOR_SIZE=y
-CONFIG_CC_STACKPROTECTOR=y
-CONFIG_CFG80211=m
-CONFIG_CFG80211_DEFAULT_PS=y
-CONFIG_CFG80211_WEXT=y
-CONFIG_CGROUPS=y
-CONFIG_CLKDEV_LOOKUP=y
-CONFIG_CLKSRC_MMIO=y
-CONFIG_CMDLINE="root=/dev/nfs nfsroot=10.1.69.3:/work/nfsroot ip=dhcp console=ttyAMA0 mem=128M"
-CONFIG_CMDLINE_FROM_BOOTLOADER=y
-CONFIG_CONNECTOR=y
-CONFIG_CONSOLE_TRANSLATIONS=y
-CONFIG_CONTEXT_SWITCH_TRACER=y
-CONFIG_CORE_DUMP_DEFAULT_ELF_HEADERS=y
-CONFIG_CPUSETS=y
-CONFIG_CPU_32v6K=y
-CONFIG_CPU_32v7=y
-CONFIG_CPU_ABRT_EV7=y
-CONFIG_CPU_CACHE_V7=y
-CONFIG_CPU_CACHE_VIPT=y
-CONFIG_CPU_COPY_V6=y
-CONFIG_CPU_CP15=y
-CONFIG_CPU_CP15_MMU=y
-CONFIG_CPU_HAS_ASID=y
-CONFIG_CPU_HAS_PMU=y
-CONFIG_CPU_PABRT_V7=y
-CONFIG_CPU_PM=y
-CONFIG_CPU_RMAP=y
-CONFIG_CPU_TLB_V7=y
-CONFIG_CPU_V7=y
-CONFIG_CRAMFS=y
-CONFIG_CRC16=y
-CONFIG_CRC32=y
-CONFIG_CRC7=y
-CONFIG_CRC_CCITT=y
-CONFIG_CRC_ITU_T=y
-CONFIG_CRC_T10DIF=y
-CONFIG_CROSS_COMPILE=""
-CONFIG_CRYPTO=y
-CONFIG_CRYPTO_AEAD2=y
-CONFIG_CRYPTO_AES=m
-CONFIG_CRYPTO_ALGAPI=y
-CONFIG_CRYPTO_ALGAPI2=y
-CONFIG_CRYPTO_ARC4=m
-CONFIG_CRYPTO_BLKCIPHER=m
-CONFIG_CRYPTO_BLKCIPHER2=y
-CONFIG_CRYPTO_BLOWFISH=m
-CONFIG_CRYPTO_CBC=m
-CONFIG_CRYPTO_CRC32C=y
-CONFIG_CRYPTO_DEFLATE=y
-CONFIG_CRYPTO_ECB=m
-CONFIG_CRYPTO_HASH=y
-CONFIG_CRYPTO_HASH2=y
-CONFIG_CRYPTO_HW=y
-CONFIG_CRYPTO_LZO=y
-CONFIG_CRYPTO_MANAGER=m
-CONFIG_CRYPTO_MANAGER2=y
-CONFIG_CRYPTO_MANAGER_DISABLE_TESTS=y
-CONFIG_CRYPTO_MICHAEL_MIC=y
-CONFIG_CRYPTO_PCOMP2=y
-CONFIG_CRYPTO_RNG2=y
-CONFIG_CRYPTO_SERPENT=m
-CONFIG_CRYPTO_SHA256=m
-CONFIG_CRYPTO_TWOFISH=m
-CONFIG_CRYPTO_TWOFISH_COMMON=m
-CONFIG_CRYPTO_WORKQUEUE=y
-CONFIG_DEBUG_BUGVERBOSE=y
-CONFIG_DEBUG_FS=y
-CONFIG_DEBUG_INFO=y
-CONFIG_DEBUG_KERNEL=y
-CONFIG_DEBUG_LL=y
-CONFIG_DEBUG_LOCK_ALLOC=y
-CONFIG_DEBUG_MEMORY_INIT=y
-CONFIG_DEBUG_MUTEXES=y
-CONFIG_DEBUG_PREEMPT=y
-CONFIG_DEBUG_SPINLOCK=y
-CONFIG_DEBUG_USER=y
-CONFIG_DECOMPRESS_BZIP2=y
-CONFIG_DECOMPRESS_GZIP=y
-CONFIG_DECOMPRESS_LZMA=y
-CONFIG_DECOMPRESS_LZO=y
-CONFIG_DECOMPRESS_XZ=y
-CONFIG_DEFAULT_CFQ=y
-CONFIG_DEFAULT_HOSTNAME="(none)"
-CONFIG_DEFAULT_HUNG_TASK_TIMEOUT=120
-CONFIG_DEFAULT_IOSCHED="cfq"
-CONFIG_DEFAULT_MESSAGE_LOGLEVEL=4
-CONFIG_DEFAULT_MMAP_MIN_ADDR=32768
-CONFIG_DEFAULT_SECURITY="apparmor"
-CONFIG_DEFAULT_SECURITY_APPARMOR=y
-CONFIG_DEFAULT_TCP_CONG="cubic"
-CONFIG_DEFCONFIG_LIST="/lib/modules/$UNAME_RELEASE/.config"
-CONFIG_DETECT_HUNG_TASK=y
-CONFIG_DEVTMPFS=y
-CONFIG_DEVTMPFS_MOUNT=y
-CONFIG_DNOTIFY=y
-CONFIG_DNS_RESOLVER=y
-CONFIG_DTC=y
-CONFIG_DUMMY_CONSOLE=y
-CONFIG_DYNAMIC_FTRACE=y
-CONFIG_EARLY_PRINTK=y
-CONFIG_ELF_CORE=y
-CONFIG_ENABLE_MUST_CHECK=y
-CONFIG_ENABLE_WARN_DEPRECATED=y
-CONFIG_EPOLL=y
-CONFIG_EVENTFD=y
-CONFIG_EVENT_POWER_TRACING_DEPRECATED=y
-CONFIG_EVENT_TRACING=y
-CONFIG_EXPERIMENTAL=y
-CONFIG_EXPERT=y
-CONFIG_EXT2_FS=y
-CONFIG_EXT3_DEFAULTS_TO_ORDERED=y
-CONFIG_EXT3_FS=y
-CONFIG_EXT3_FS_XATTR=y
-CONFIG_EXT4_FS=y
-CONFIG_EXT4_FS_XATTR=y
-CONFIG_EXTRA_FIRMWARE=""
-CONFIG_FAT_DEFAULT_CODEPAGE=437
-CONFIG_FAT_DEFAULT_IOCHARSET="iso8859-1"
-CONFIG_FAT_FS=y
-CONFIG_FB=y
-CONFIG_FB_ARMCLCD=y
-CONFIG_FB_CFB_COPYAREA=y
-CONFIG_FB_CFB_FILLRECT=y
-CONFIG_FB_CFB_IMAGEBLIT=y
-CONFIG_FILE_LOCKING=y
-CONFIG_FIRMWARE_IN_KERNEL=y
-CONFIG_FLATMEM=y
-CONFIG_FLATMEM_MANUAL=y
-CONFIG_FLAT_NODE_MEM_MAP=y
-CONFIG_FONT_8x16=y
-CONFIG_FONT_8x8=y
-CONFIG_FORCE_MAX_ZONEORDER=11
-CONFIG_FRAMEBUFFER_CONSOLE=y
-CONFIG_FRAME_WARN=1024
-CONFIG_FREEZER=y
-CONFIG_FSNOTIFY=y
-CONFIG_FS_MBCACHE=y
-CONFIG_FS_POSIX_ACL=y
-CONFIG_FTRACE=y
-CONFIG_FTRACE_MCOUNT_RECORD=y
-CONFIG_FUNCTION_TRACER=y
-CONFIG_FUTEX=y
-CONFIG_FW_LOADER=y
-CONFIG_GENERIC_ACL=y
-CONFIG_GENERIC_CALIBRATE_DELAY=y
-CONFIG_GENERIC_CLOCKEVENTS=y
-CONFIG_GENERIC_CLOCKEVENTS_BROADCAST=y
-CONFIG_GENERIC_CLOCKEVENTS_BUILD=y
-CONFIG_GENERIC_HARDIRQS=y
-CONFIG_GENERIC_HWEIGHT=y
-CONFIG_GENERIC_IRQ_PROBE=y
-CONFIG_GENERIC_IRQ_SHOW=y
-CONFIG_GENERIC_LOCKBREAK=y
-CONFIG_GENERIC_TRACER=y
-CONFIG_HARDIRQS_SW_RESEND=y
-CONFIG_HAS_DMA=y
-CONFIG_HAS_IOMEM=y
-CONFIG_HAVE_AOUT=y
-CONFIG_HAVE_ARCH_KGDB=y
-CONFIG_HAVE_ARCH_PFN_VALID=y
-CONFIG_HAVE_ARM_SCU=y
-CONFIG_HAVE_ARM_TWD=y
-CONFIG_HAVE_CLK=y
-CONFIG_HAVE_C_RECORDMCOUNT=y
-CONFIG_HAVE_DMA_API_DEBUG=y
-CONFIG_HAVE_DYNAMIC_FTRACE=y
-CONFIG_HAVE_FTRACE_MCOUNT_RECORD=y
-CONFIG_HAVE_FUNCTION_TRACER=y
-CONFIG_HAVE_GENERIC_DMA_COHERENT=y
-CONFIG_HAVE_GENERIC_HARDIRQS=y
-CONFIG_HAVE_HW_BREAKPOINT=y
-CONFIG_HAVE_IRQ_WORK=y
-CONFIG_HAVE_KERNEL_GZIP=y
-CONFIG_HAVE_KERNEL_LZMA=y
-CONFIG_HAVE_KERNEL_LZO=y
-CONFIG_HAVE_KPROBES=y
-CONFIG_HAVE_KRETPROBES=y
-CONFIG_HAVE_MACH_CLKDEV=y
-CONFIG_HAVE_MEMBLOCK=y
-CONFIG_HAVE_OPROFILE=y
-CONFIG_HAVE_PATA_PLATFORM=y
-CONFIG_HAVE_PERF_EVENTS=y
-CONFIG_HAVE_PROC_CPU=y
-CONFIG_HAVE_REGS_AND_STACK_ACCESS_API=y
-CONFIG_HID=y
-CONFIG_HID_A4TECH=y
-CONFIG_HID_APPLE=y
-CONFIG_HID_BELKIN=y
-CONFIG_HID_CHERRY=y
-CONFIG_HID_CHICONY=y
-CONFIG_HID_CYPRESS=y
-CONFIG_HID_DRAGONRISE=y
-CONFIG_HID_EZKEY=y
-CONFIG_HID_GREENASIA=y
-CONFIG_HID_GYRATION=y
-CONFIG_HID_KENSINGTON=y
-CONFIG_HID_KYE=y
-CONFIG_HID_LOGITECH=y
-CONFIG_HID_MICROSOFT=y
-CONFIG_HID_MONTEREY=y
-CONFIG_HID_NTRIG=y
-CONFIG_HID_PANTHERLORD=y
-CONFIG_HID_PETALYNX=y
-CONFIG_HID_SAMSUNG=y
-CONFIG_HID_SMARTJOYPLUS=y
-CONFIG_HID_SONY=y
-CONFIG_HID_SUNPLUS=y
-CONFIG_HID_SUPPORT=y
-CONFIG_HID_THRUSTMASTER=y
-CONFIG_HID_TOPSEED=y
-CONFIG_HID_TWINHAN=y
-CONFIG_HID_ZEROPLUS=y
-CONFIG_HIGHMEM=y
-CONFIG_HIGH_RES_TIMERS=y
-CONFIG_HOTPLUG=y
-CONFIG_HOTPLUG_CPU=y
-CONFIG_HWMON=m
-CONFIG_HW_CONSOLE=y
-CONFIG_HW_PERF_EVENTS=y
-CONFIG_HW_RANDOM=m
-CONFIG_HZ=100
-CONFIG_I2C=y
-CONFIG_I2C_ALGOBIT=y
-CONFIG_I2C_BOARDINFO=y
-CONFIG_I2C_CHARDEV=y
-CONFIG_I2C_COMPAT=y
-CONFIG_I2C_HELPER_AUTO=y
-CONFIG_I2C_VERSATILE=y
-CONFIG_ICST=y
-CONFIG_IKCONFIG=y
-CONFIG_IKCONFIG_PROC=y
-CONFIG_INET=y
-CONFIG_INET6_XFRM_MODE_BEET=y
-CONFIG_INET6_XFRM_MODE_TRANSPORT=y
-CONFIG_INET6_XFRM_MODE_TUNNEL=y
-CONFIG_INET_DIAG=y
-CONFIG_INET_TCP_DIAG=y
-CONFIG_INET_TUNNEL=y
-CONFIG_INET_XFRM_MODE_BEET=y
-CONFIG_INET_XFRM_MODE_TRANSPORT=y
-CONFIG_INET_XFRM_MODE_TUNNEL=y
-CONFIG_INITRAMFS_SOURCE=""
-CONFIG_INIT_ENV_ARG_LIMIT=32
-CONFIG_INOTIFY_USER=y
-CONFIG_INPUT=y
-CONFIG_INPUT_EVDEV=y
-CONFIG_INPUT_JOYDEV=y
-CONFIG_INPUT_KEYBOARD=y
-CONFIG_INPUT_MISC=y
-CONFIG_INPUT_MOUSE=y
-CONFIG_INPUT_MOUSEDEV=m
-CONFIG_INPUT_MOUSEDEV_PSAUX=y
-CONFIG_INPUT_MOUSEDEV_SCREEN_X=1024
-CONFIG_INPUT_MOUSEDEV_SCREEN_Y=768
-CONFIG_INPUT_TOUCHSCREEN=y
-CONFIG_INPUT_TWL4030_PWRBUTTON=y
-CONFIG_INPUT_UINPUT=y
-CONFIG_IOMMU_SUPPORT=y
-CONFIG_IOSCHED_CFQ=y
-CONFIG_IOSCHED_DEADLINE=y
-CONFIG_IOSCHED_NOOP=y
-CONFIG_IPV6=y
-CONFIG_IPV6_NDISC_NODETYPE=y
-CONFIG_IPV6_SIT=y
-CONFIG_IP_MULTICAST=y
-CONFIG_IP_NF_ARPTABLES=m
-CONFIG_IP_NF_IPTABLES=m
-CONFIG_IP_NF_QUEUE=m
-CONFIG_IP_PNP=y
-CONFIG_IP_PNP_BOOTP=y
-CONFIG_IP_PNP_DHCP=y
-CONFIG_IP_PNP_RARP=y
-CONFIG_IRQ_DOMAIN=y
-CONFIG_IRQ_WORK=y
-CONFIG_ISO9660_FS=m
-CONFIG_JBD=y
-CONFIG_JBD2=y
-CONFIG_JFFS2_CMODE_PRIORITY=y
-CONFIG_JFFS2_COMPRESSION_OPTIONS=y
-CONFIG_JFFS2_FS=y
-CONFIG_JFFS2_FS_DEBUG=0
-CONFIG_JFFS2_FS_POSIX_ACL=y
-CONFIG_JFFS2_FS_SECURITY=y
-CONFIG_JFFS2_FS_WRITEBUFFER=y
-CONFIG_JFFS2_FS_XATTR=y
-CONFIG_JFFS2_LZO=y
-CONFIG_JFFS2_RTIME=y
-CONFIG_JFFS2_RUBIN=y
-CONFIG_JFFS2_SUMMARY=y
-CONFIG_JFFS2_ZLIB=y
-CONFIG_JOLIET=y
-CONFIG_KALLSYMS=y
-CONFIG_KALLSYMS_ALL=y
-CONFIG_KERNEL_GZIP=y
-CONFIG_KEXEC=y
-CONFIG_KEYBOARD_ATKBD=y
-CONFIG_KEYBOARD_TWL4030=y
-CONFIG_KEYS=y
-CONFIG_KPROBES=y
-CONFIG_KPROBES_SANITY_TEST=y
-CONFIG_KPROBE_EVENT=y
-CONFIG_KRETPROBES=y
-CONFIG_KS8851=y
-CONFIG_KS8851_MLL=y
-CONFIG_KTIME_SCALAR=y
-CONFIG_LBDAF=y
-CONFIG_LEDS_CLASS=y
-CONFIG_LEDS_TRIGGERS=y
-CONFIG_LEDS_TRIGGER_BACKLIGHT=m
-CONFIG_LEDS_TRIGGER_DEFAULT_ON=m
-CONFIG_LEDS_TRIGGER_HEARTBEAT=y
-CONFIG_LEDS_TRIGGER_TIMER=m
-CONFIG_LIB80211=m
-CONFIG_LIBCRC32C=y
-CONFIG_LIBERTAS=m
-CONFIG_LIBERTAS_SDIO=m
-CONFIG_LIBERTAS_SPI=m
-CONFIG_LIBERTAS_THINFIRM=m
-CONFIG_LIBERTAS_THINFIRM_USB=m
-CONFIG_LIBERTAS_USB=m
-CONFIG_LOCAL_TIMERS=y
-CONFIG_LOCKD=y
-CONFIG_LOCKDEP=y
-CONFIG_LOCKDEP_SUPPORT=y
-CONFIG_LOCKD_V4=y
-CONFIG_LOGO=y
-CONFIG_LOGO_LINUX_CLUT224=y
-CONFIG_LOGO_LINUX_MONO=y
-CONFIG_LOGO_LINUX_VGA16=y
-CONFIG_LOG_BUF_SHIFT=17
-CONFIG_LSM_MMAP_MIN_ADDR=0
-CONFIG_LZO_COMPRESS=y
-CONFIG_LZO_DECOMPRESS=y
-CONFIG_MAC80211=m
-CONFIG_MAC80211_HAS_RC=y
-CONFIG_MAC80211_HWSIM=m
-CONFIG_MAC80211_LEDS=y
-CONFIG_MAC80211_RC_DEFAULT="minstrel_ht"
-CONFIG_MAC80211_RC_DEFAULT_MINSTREL=y
-CONFIG_MAC80211_RC_MINSTREL=y
-CONFIG_MAC80211_RC_MINSTREL_HT=y
-CONFIG_MAC80211_RC_PID=y
-CONFIG_MAGIC_SYSRQ=y
-CONFIG_MD=y
-CONFIG_MII=y
-CONFIG_MISC_FILESYSTEMS=y
-CONFIG_MMC=y
-CONFIG_MMC_ARMMMCI=y
-CONFIG_MMC_BLOCK=y
-CONFIG_MMC_BLOCK_BOUNCE=y
-CONFIG_MMC_BLOCK_MINORS=8
-CONFIG_MMU=y
-CONFIG_MODULES=y
-CONFIG_MODULE_FORCE_LOAD=y
-CONFIG_MODULE_FORCE_UNLOAD=y
-CONFIG_MODULE_SRCVERSION_ALL=y
-CONFIG_MODULE_UNLOAD=y
-CONFIG_MODVERSIONS=y
-CONFIG_MOUSE_PS2=m
-CONFIG_MOUSE_PS2_ALPS=y
-CONFIG_MOUSE_PS2_LOGIPS2PP=y
-CONFIG_MOUSE_PS2_SYNAPTICS=y
-CONFIG_MOUSE_PS2_TRACKPOINT=y
-CONFIG_MSDOS_FS=y
-CONFIG_MSDOS_PARTITION=y
-CONFIG_MTD=y
-CONFIG_MTD_BLKDEVS=y
-CONFIG_MTD_BLOCK=y
-CONFIG_MTD_CFI=y
-CONFIG_MTD_CFI_I1=y
-CONFIG_MTD_CFI_I2=y
-CONFIG_MTD_CFI_INTELEXT=y
-CONFIG_MTD_CFI_UTIL=y
-CONFIG_MTD_CHAR=y
-CONFIG_MTD_CMDLINE_PARTS=y
-CONFIG_MTD_GEN_PROBE=y
-CONFIG_MTD_MAP_BANK_WIDTH_1=y
-CONFIG_MTD_MAP_BANK_WIDTH_2=y
-CONFIG_MTD_MAP_BANK_WIDTH_4=y
-CONFIG_MTD_NAND=y
-CONFIG_MTD_NAND_ECC=y
-CONFIG_MTD_NAND_IDS=y
-CONFIG_MTD_OF_PARTS=y
-CONFIG_MTD_ONENAND=y
-CONFIG_MTD_ONENAND_VERIFY_WRITE=y
-CONFIG_MTD_OOPS=y
-CONFIG_MTD_UBI=y
-CONFIG_MTD_UBI_BEB_RESERVE=1
-CONFIG_MTD_UBI_WL_THRESHOLD=4096
-CONFIG_MWIFIEX=m
-CONFIG_MWIFIEX_SDIO=m
-CONFIG_NAMESPACES=y
-CONFIG_NEED_DMA_MAP_STATE=y
-CONFIG_NEON=y
-CONFIG_NET=y
-CONFIG_NETDEVICES=y
-CONFIG_NETFILTER=y
-CONFIG_NETFILTER_ADVANCED=y
-CONFIG_NETFILTER_NETLINK_LOG=m
-CONFIG_NETFILTER_NETLINK_QUEUE=m
-CONFIG_NETFILTER_XTABLES=m
-CONFIG_NETLABEL=y
-CONFIG_NETWORK_FILESYSTEMS=y
-CONFIG_NETWORK_SECMARK=y
-CONFIG_NET_KEY=y
-CONFIG_NET_KEY_MIGRATE=y
-CONFIG_NET_SCHED=y
-CONFIG_NEW_LEDS=y
-CONFIG_NFS_ACL_SUPPORT=y
-CONFIG_NFS_COMMON=y
-CONFIG_NFS_FS=y
-CONFIG_NFS_USE_KERNEL_DNS=y
-CONFIG_NFS_V3=y
-CONFIG_NFS_V3_ACL=y
-CONFIG_NFS_V4=y
-CONFIG_NF_CONNTRACK=m
-CONFIG_NF_DEFRAG_IPV4=m
-CONFIG_NLATTR=y
-CONFIG_NLS=y
-CONFIG_NLS_CODEPAGE_437=y
-CONFIG_NLS_DEFAULT="iso8859-1"
-CONFIG_NLS_ISO8859_1=y
-CONFIG_NOP_TRACER=y
-CONFIG_NO_HZ=y
-CONFIG_NR_CPUS=4
-CONFIG_OC_ETM=y
-CONFIG_OF=y
-CONFIG_OF_ADDRESS=y
-CONFIG_OF_DEVICE=y
-CONFIG_OF_EARLY_FLATTREE=y
-CONFIG_OF_FLATTREE=y
-CONFIG_OF_I2C=y
-CONFIG_OF_IRQ=y
-CONFIG_OF_MDIO=y
-CONFIG_OF_NET=y
-CONFIG_OF_SPI=y
-CONFIG_OPROFILE=y
-CONFIG_OUTER_CACHE=y
-CONFIG_OUTER_CACHE_SYNC=y
-CONFIG_P54_COMMON=m
-CONFIG_P54_LEDS=y
-CONFIG_P54_SPI=m
-CONFIG_P54_USB=m
-CONFIG_PACKET=y
-CONFIG_PAGEFLAGS_EXTENDED=y
-CONFIG_PAGE_OFFSET=0x80000000
-CONFIG_PARTITION_ADVANCED=y
-CONFIG_PERF_EVENTS=y
-CONFIG_PERF_USE_VMALLOC=y
-CONFIG_PHYLIB=y
-CONFIG_PLAT_VERSATILE=y
-CONFIG_PLAT_VERSATILE_CLCD=y
-CONFIG_PLAT_VERSATILE_SCHED_CLOCK=y
-CONFIG_PM=y
-CONFIG_PM_ADVANCED_DEBUG=y
-CONFIG_PM_CLK=y
-CONFIG_PM_DEBUG=y
-CONFIG_PM_RUNTIME=y
-CONFIG_PM_SLEEP=y
-CONFIG_PM_SLEEP_SMP=y
-CONFIG_POSIX_MQUEUE=y
-CONFIG_POSIX_MQUEUE_SYSCTL=y
-CONFIG_POWER_SUPPLY=y
-CONFIG_PREEMPT=y
-CONFIG_PREEMPT_COUNT=y
-CONFIG_PREEMPT_RCU=y
-CONFIG_PREVENT_FIRMWARE_BUILD=y
-CONFIG_PRINTK=y
-CONFIG_PRINTK_TIME=y
-CONFIG_PROC_EVENTS=y
-CONFIG_PROC_FS=y
-CONFIG_PROC_PAGE_MONITOR=y
-CONFIG_PROC_PID_CPUSET=y
-CONFIG_PROC_SYSCTL=y
-CONFIG_PROFILING=y
-CONFIG_PROVE_LOCKING=y
-CONFIG_RCU_CPU_STALL_TIMEOUT=60
-CONFIG_RCU_CPU_STALL_VERBOSE=y
-CONFIG_RCU_FANOUT=32
-CONFIG_RD_BZIP2=y
-CONFIG_RD_GZIP=y
-CONFIG_RD_LZMA=y
-CONFIG_RD_LZO=y
-CONFIG_RD_XZ=y
-CONFIG_REGMAP=y
-CONFIG_RELAY=y
-CONFIG_RFS_ACCEL=y
-CONFIG_RING_BUFFER=y
-CONFIG_RING_BUFFER_ALLOW_SWAP=y
-CONFIG_ROOT_NFS=y
-CONFIG_RPS=y
-CONFIG_RT2500USB=m
-CONFIG_RT2800USB=m
-CONFIG_RT2800USB_RT33XX=y
-CONFIG_RT2800USB_RT35XX=y
-CONFIG_RT2800USB_RT53XX=y
-CONFIG_RT2800USB_UNKNOWN=y
-CONFIG_RT2800_LIB=m
-CONFIG_RT2X00=m
-CONFIG_RT2X00_LIB=m
-CONFIG_RT2X00_LIB_CRYPTO=y
-CONFIG_RT2X00_LIB_FIRMWARE=y
-CONFIG_RT2X00_LIB_LEDS=y
-CONFIG_RT2X00_LIB_USB=m
-CONFIG_RT73USB=m
-CONFIG_RTC_CLASS=y
-CONFIG_RTC_DRV_PL031=y
-CONFIG_RTC_DRV_TWL4030=y
-CONFIG_RTC_HCTOSYS=y
-CONFIG_RTC_HCTOSYS_DEVICE="rtc0"
-CONFIG_RTC_INTF_DEV=y
-CONFIG_RTC_INTF_PROC=y
-CONFIG_RTC_INTF_SYSFS=y
-CONFIG_RTC_LIB=y
-CONFIG_RTL8187=m
-CONFIG_RTL8187_LEDS=y
-CONFIG_RTL8192CU=m
-CONFIG_RTL8192C_COMMON=m
-CONFIG_RTLWIFI=m
-CONFIG_RT_MUTEXES=y
-CONFIG_RWSEM_GENERIC_SPINLOCK=y
-CONFIG_SCHEDSTATS=y
-CONFIG_SCHED_DEBUG=y
-CONFIG_SCSI=y
-CONFIG_SCSI_DMA=y
-CONFIG_SCSI_LOWLEVEL=y
-CONFIG_SCSI_MOD=y
-CONFIG_SCSI_MULTI_LUN=y
-CONFIG_SCSI_PROC_FS=y
-CONFIG_SCSI_SCAN_ASYNC=y
-CONFIG_SCSI_WAIT_SCAN=m
-CONFIG_SDIO_UART=y
-CONFIG_SECCOMP=y
-CONFIG_SECURITY=y
-CONFIG_SECURITYFS=y
-CONFIG_SECURITY_APPARMOR=y
-CONFIG_SECURITY_APPARMOR_BOOTPARAM_VALUE=1
-CONFIG_SECURITY_NETWORK=y
-CONFIG_SECURITY_PATH=y
-CONFIG_SECURITY_SELINUX=y
-CONFIG_SECURITY_SELINUX_AVC_STATS=y
-CONFIG_SECURITY_SELINUX_CHECKREQPROT_VALUE=1
-CONFIG_SECURITY_SELINUX_DEVELOP=y
-CONFIG_SECURITY_SMACK=y
-CONFIG_SELECT_MEMORY_MODEL=y
-CONFIG_SERIAL_8250=y
-CONFIG_SERIAL_8250_CONSOLE=y
-CONFIG_SERIAL_8250_DETECT_IRQ=y
-CONFIG_SERIAL_8250_EXTENDED=y
-CONFIG_SERIAL_8250_MANY_PORTS=y
-CONFIG_SERIAL_8250_NR_UARTS=32
-CONFIG_SERIAL_8250_RSA=y
-CONFIG_SERIAL_8250_RUNTIME_UARTS=4
-CONFIG_SERIAL_8250_SHARE_IRQ=y
-CONFIG_SERIAL_AMBA_PL011=y
-CONFIG_SERIAL_AMBA_PL011_CONSOLE=y
-CONFIG_SERIAL_CORE=y
-CONFIG_SERIAL_CORE_CONSOLE=y
-CONFIG_SERIO=y
-CONFIG_SERIO_AMBAKMI=y
-CONFIG_SERIO_LIBPS2=y
-CONFIG_SERIO_SERPORT=y
-CONFIG_SHMEM=y
-CONFIG_SIGNALFD=y
-CONFIG_SLAB=y
-CONFIG_SLABINFO=y
-CONFIG_SMC91X=y
-CONFIG_SMP=y
-CONFIG_SMP_ON_UP=y
-CONFIG_SMSC911X=y
-CONFIG_SMSC_PHY=y
-CONFIG_SND=y
-CONFIG_SND_AC97_CODEC=y
-CONFIG_SND_ARM=y
-CONFIG_SND_ARMAACI=y
-CONFIG_SND_DEBUG=y
-CONFIG_SND_DRIVERS=y
-CONFIG_SND_HWDEP=m
-CONFIG_SND_JACK=y
-CONFIG_SND_MIXER_OSS=m
-CONFIG_SND_OSSEMUL=y
-CONFIG_SND_PCM=y
-CONFIG_SND_PCM_OSS=m
-CONFIG_SND_PCM_OSS_PLUGINS=y
-CONFIG_SND_RAWMIDI=m
-CONFIG_SND_SOC=m
-CONFIG_SND_SOC_I2C_AND_SPI=m
-CONFIG_SND_SPI=y
-CONFIG_SND_SUPPORT_OLD_API=y
-CONFIG_SND_TIMER=y
-CONFIG_SND_USB=y
-CONFIG_SND_USB_AUDIO=m
-CONFIG_SND_VERBOSE_PRINTK=y
-CONFIG_SND_VERBOSE_PROCFS=y
-CONFIG_SND_VMASTER=y
-CONFIG_SOUND=y
-CONFIG_SOUND_OSS_CORE=y
-CONFIG_SOUND_OSS_CORE_PRECLAIM=y
-CONFIG_SPI=y
-CONFIG_SPI_BITBANG=m
-CONFIG_SPI_MASTER=y
-CONFIG_SPI_PL022=y
-CONFIG_SPLIT_PTLOCK_CPUS=999999
-CONFIG_SSB=m
-CONFIG_SSB_BLOCKIO=y
-CONFIG_SSB_POSSIBLE=y
-CONFIG_SSB_SDIOHOST_POSSIBLE=y
-CONFIG_STACKTRACE=y
-CONFIG_STACKTRACE_SUPPORT=y
-CONFIG_STANDALONE=y
-CONFIG_STOP_MACHINE=y
-CONFIG_STRICT_DEVMEM=y
-CONFIG_SUNRPC=y
-CONFIG_SUNRPC_GSS=y
-CONFIG_SUSPEND=y
-CONFIG_SUSPEND_FREEZER=y
-CONFIG_SWAP=y
-CONFIG_SWP_EMULATE=y
-CONFIG_SYN_COOKIES=y
-CONFIG_SYSCTL=y
-CONFIG_SYSCTL_SYSCALL=y
-CONFIG_SYSFS=y
-CONFIG_SYSVIPC=y
-CONFIG_SYSVIPC_SYSCTL=y
-CONFIG_SYS_SUPPORTS_APM_EMULATION=y
-CONFIG_TCP_CONG_CUBIC=y
-CONFIG_TICK_ONESHOT=y
-CONFIG_TIMERFD=y
-CONFIG_TIMER_STATS=y
-CONFIG_TMPFS=y
-CONFIG_TMPFS_POSIX_ACL=y
-CONFIG_TMPFS_XATTR=y
-CONFIG_TOUCHSCREEN_ADS7846=m
-CONFIG_TRACEPOINTS=y
-CONFIG_TRACE_IRQFLAGS=y
-CONFIG_TRACE_IRQFLAGS_SUPPORT=y
-CONFIG_TRACING=y
-CONFIG_TRACING_SUPPORT=y
-CONFIG_TREE_PREEMPT_RCU=y
-CONFIG_TUN=y
-CONFIG_TWL4030_CORE=y
-CONFIG_TWL4030_POWER=y
-CONFIG_TWL4030_WATCHDOG=y
-CONFIG_TWL6030_USB=y
-CONFIG_UBIFS_FS=y
-CONFIG_UBIFS_FS_LZO=y
-CONFIG_UBIFS_FS_ZLIB=y
-CONFIG_UEVENT_HELPER_PATH="/sbin/hotplug"
-CONFIG_UID16=y
-CONFIG_UNIX=y
-CONFIG_UNIX98_PTYS=y
-CONFIG_USB=y
-CONFIG_USB_ALI_M5632=y
-CONFIG_USB_AN2720=y
-CONFIG_USB_ANNOUNCE_NEW_DEVICES=y
-CONFIG_USB_ARCH_HAS_HCD=y
-CONFIG_USB_ARMLINUX=y
-CONFIG_USB_BELKIN=y
-CONFIG_USB_DEBUG=y
-CONFIG_USB_DEVICE_CLASS=y
-CONFIG_USB_EPSON2888=y
-CONFIG_USB_FUSB300=y
-CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_DEBUG=y
-CONFIG_USB_GADGET_DEBUG_FILES=y
-CONFIG_USB_GADGET_DEBUG_FS=y
-CONFIG_USB_GADGET_DUALSPEED=y
-CONFIG_USB_GADGET_VBUS_DRAW=2
-CONFIG_USB_HID=y
-CONFIG_USB_ISP1760_HCD=y
-CONFIG_USB_KC2190=y
-CONFIG_USB_LIBUSUAL=y
-CONFIG_USB_MASS_STORAGE=m
-CONFIG_USB_MON=y
-CONFIG_USB_NET_AX8817X=y
-CONFIG_USB_NET_CDCETHER=y
-CONFIG_USB_NET_CDC_NCM=y
-CONFIG_USB_NET_CDC_SUBSET=y
-CONFIG_USB_NET_NET1080=y
-CONFIG_USB_NET_RNDIS_HOST=m
-CONFIG_USB_NET_RNDIS_WLAN=m
-CONFIG_USB_NET_SMSC95XX=y
-CONFIG_USB_NET_ZAURUS=y
-CONFIG_USB_OTG=y
-CONFIG_USB_OTG_UTILS=y
-CONFIG_USB_STORAGE=y
-CONFIG_USB_SUPPORT=y
-CONFIG_USB_SUSPEND=y
-CONFIG_USB_TEST=y
-CONFIG_USB_USBNET=y
-CONFIG_USB_WDM=y
-CONFIG_USB_ZD1201=m
-CONFIG_USB_ZERO=m
-CONFIG_USE_GENERIC_SMP_HELPERS=y
-CONFIG_USE_OF=y
-CONFIG_VECTORS_BASE=0xffff0000
-CONFIG_VFAT_FS=y
-CONFIG_VFP=y
-CONFIG_VFPv3=y
-CONFIG_VIRT_TO_BUS=y
-CONFIG_VMSPLIT_2G=y
-CONFIG_VM_EVENT_COUNTERS=y
-CONFIG_VT=y
-CONFIG_VT_CONSOLE=y
-CONFIG_VT_HW_CONSOLE_BINDING=y
-CONFIG_WATCHDOG=y
-CONFIG_WEXT_CORE=y
-CONFIG_WEXT_PRIV=y
-CONFIG_WEXT_PROC=y
-CONFIG_WEXT_SPY=y
-CONFIG_WIRELESS=y
-CONFIG_WIRELESS_EXT=y
-CONFIG_WIRELESS_EXT_SYSFS=y
-CONFIG_WL1251=m
-CONFIG_WL1251_SDIO=m
-CONFIG_WL1251_SPI=m
-CONFIG_WL12XX=m
-CONFIG_WL12XX_MENU=m
-CONFIG_WL12XX_PLATFORM_DATA=y
-CONFIG_WL12XX_SDIO=m
-CONFIG_WL12XX_SPI=m
-CONFIG_WLAN=y
-CONFIG_XFRM=y
-CONFIG_XFRM_MIGRATE=y
-CONFIG_XFRM_USER=y
-CONFIG_XPS=y
-CONFIG_XZ_DEC=y
-CONFIG_XZ_DEC_ARM=y
-CONFIG_XZ_DEC_ARMTHUMB=y
-CONFIG_XZ_DEC_BCJ=y
-CONFIG_XZ_DEC_IA64=y
-CONFIG_XZ_DEC_POWERPC=y
-CONFIG_XZ_DEC_SPARC=y
-CONFIG_XZ_DEC_X86=y
-CONFIG_ZBOOT_ROM_BSS=0x0
-CONFIG_ZBOOT_ROM_TEXT=0x0
-CONFIG_ZD1211RW=m
-CONFIG_ZISOFS=y
-CONFIG_ZLIB_DEFLATE=y
-CONFIG_ZLIB_INFLATE=y
-CONFIG_ZONE_DMA_FLAG=0
-
-#additional configs requested by SysInfra EG
-CONFIG_MEDIA_SUPPORT=y
-CONFIG_MEDIA_CONTROLLER=y
-
-# config for adding support for AF_BUS sockets
-CONFIG_AF_BUS=y
-CONFIG_NETFILTER_DBUS=y
-
-CONFIG_REGULATOR=n
-
-# Activate ecryptfs
-CONFIG_EXPERIMENTAL=y
-CONFIG_KEYS=y
-CONFIG_CRYPTO=y
-CONFIG_ECRYPT_FS=y
diff --git a/recipes-kernel/linux/linux-yocto_3.8.bbappend b/recipes-kernel/linux/linux-yocto_3.8.bbappend
deleted file mode 100644
index c09d607..0000000
--- a/recipes-kernel/linux/linux-yocto_3.8.bbappend
+++ /dev/null
@@ -1,25 +0,0 @@
-PRINC := "${@int(PRINC) + 2}"
-
-# find defconfig path
-FILESEXTRAPATHS := "${THISDIR}/${PN}"
-
-# Kernel configs
-SRC_URI_append_beagleboard = " \
-	file://beagle_qemu.cfg \
-	"
-
-SRC_URI_append_vexpressa9 = " \
-	file://vexpress_a9.cfg  \
-	"
-
-SRC_URI_append_qemux86 = " \
-	file://qemux86.cfg  \
-	"
-
-SRC_URI_append_qemux86-64 = " \
-	file://qemux86_64.cfg  \
-	"
-
-KMACHINE_vexpressa9 = "beagleboard"
-SRCREV_machine_vexpressa9 ?= "${AUTOREV}"
-COMPATIBLE_MACHINE_vexpressa9 = "vexpressa9"
-- 
1.7.9.5


