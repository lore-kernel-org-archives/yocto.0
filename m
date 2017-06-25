Return-Path: <drew.moseley@mender.io>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4B619E00B65; Sun, 25 Jun 2017 12:58:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,LOTS_OF_MONEY,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [107.14.166.228 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 LOTS_OF_MONEY Huge... sums of money
Received: from cdptpa-oedge-vip.email.rr.com
	(cdptpa-outbound-snat.email.rr.com [107.14.166.228])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66C08E00B65
	for <yocto@yoctoproject.org>; Sun, 25 Jun 2017 12:58:35 -0700 (PDT)
Received: from [65.32.40.152] ([65.32.40.152:46011]
	helo=tobago.home.moseleynet.net)
	by cdptpa-omsmta01 (envelope-from <drew.moseley@mender.io>)
	(ecelerity 3.6.9.48312 r(Core:3.6.9.0)) with ESMTP
	id 67/86-10880-9E510595; Sun, 25 Jun 2017 19:58:33 +0000
From: drew.moseley@mender.io
To: yocto@yoctoproject.org
Date: Sun, 25 Jun 2017 15:55:46 -0400
Message-Id: <ddbfd00d73ea022aaa02005393a326d8802dd64a.1498420110.git.drew.moseley@mender.io>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1498420110.git.drew.moseley@mender.io>
References: <cover.1498420110.git.drew.moseley@mender.io>
X-RR-Connecting-IP: 107.14.168.6:25
Subject: [meta-chip][PATCH V2 3/3] chip: Add chip-u-boot-scr recipe and flash script
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
X-List-Received-Date: Sun, 25 Jun 2017 19:58:39 -0000

From: Drew Moseley <drew.moseley@mender.io>

Add a U-Boot script to handle flashing the SPL, U-Boot
and UBI root filesystem images into the onboard flash.
Also generate a script showing how to execute the flash
steps.

Signed-off-by: Drew Moseley <drew.moseley@mender.io>
---
 README                                          | 91 ++++++++++++++++++++++++-
 recipes-bsp/chip-u-boot-scr/chip-u-boot-scr.bb  | 89 ++++++++++++++++++++++++
 recipes-bsp/chip-u-boot-scr/files/boot.cmd.full | 32 +++++++++
 recipes-bsp/chip-u-boot-scr/files/boot.cmd.in   | 43 ++++++++++++
 recipes-bsp/u-boot/u-boot-chip_git.bb           |  1 +
 5 files changed, 255 insertions(+), 1 deletion(-)
 create mode 100644 recipes-bsp/chip-u-boot-scr/chip-u-boot-scr.bb
 create mode 100644 recipes-bsp/chip-u-boot-scr/files/boot.cmd.full
 create mode 100644 recipes-bsp/chip-u-boot-scr/files/boot.cmd.in

diff --git a/README b/README
index 32f70b2..d3ab815 100644
--- a/README
+++ b/README
@@ -62,4 +62,93 @@ To build a machine supported by this BSP layer follow the next steps:
 II. Flashing a C.H.I.P. board
 ========================================
 
-<TODO>
+As part of the build including this BSP layer, a U-Boot script and a
+shell script are created to assist in flashing your images to the CHIP
+board.  Note that this script assumes a maximum size for your UBI
+image of 167772160 (0x0A000000) bytes.  If your UBI image exceeds
+that, then you will need to adapt this to your environment.
+
+To successfully run this script you will first need to set your board
+into FEL mode. Insert a wire into the U14 header between pin 7 (FEL)
+and GND.  Then connect the board with a USB cable to your build
+system. More details here:
+    https://docs.getchip.com/chip.html#flash-chip-with-an-os
+
+You need to specify the base filename of your UBI image using the
+UBI_IMAGE shell variable before invoking the generated script as
+follows:
+
+# UBI_IMAGE=chip-hwup-image-chip.ubi \
+        ./tmp/deploy/images/chip/flash_CHIP_board.sh
+
+This script will take some time to execute.  The output of this script
+as run on your host machine should look similar to the following:
+
+    # UBI_IMAGE=chip-hwup-image-chip.ubi ./build/chip/tmp/deploy/images/chip/flash_CHIP_board.sh
+    100% [================================================]  3537 kB,  513.9 kB/s
+    100% [================================================]   619 kB,  551.1 kB/s
+    100% [================================================]     2 kB,  476.0 kB/s
+    100% [================================================] 71303 kB,  531.1 kB/s
+
+If you have a serial console connected to your board, you will see
+progress and a message on the console indicating when flashing is
+complete:
+
+    U-Boot 2016.01 (Jun 20 2017 - 02:54:42 -0400) Allwinner Technology
+    
+    CPU:   Allwinner A13 (SUN5I)
+    I2C:   ready
+    DRAM:  512 MiB
+    NAND:  8192 MiB
+    video-mode 720x480-24@60 not available, falling back to 1024x768-24@60
+    Setting up a 720x480i composite-ntsc console (overscan 40x20)
+    In:    serial
+    Out:   serial
+    Err:   serial
+    Net:   usb_ether
+    starting USB...
+    No controllers found
+    Hit any key to stop autoboot:  0
+    (FEL boot)
+    ## Executing script at 43100000
+    Erasing NAND
+    
+    NAND erase.chip: device 0 whole chip
+    Skipping bad block at  0xeb000000
+    Skipping bad block at  0x1b1000000
+    Erasing at 0x1ffc00000 -- 100% complete.
+    OK
+    Writing SPL (with ECC) to NAND address 0x00000000
+    
+    NAND write:  3537408 bytes written: OK
+    Writing SPL (with ECC) to NAND address 0x400000
+    
+    NAND write:  3537408 bytes written: OK
+    Writing UBoot image to address 0x800000
+    
+    NAND write: device 0 offset 0x800000, size 0x97236
+     619062 bytes written: OK
+    Enabling Splash
+    Setting Video Mode
+    Saving default environment
+    Saving Environment to NAND...
+    Erasing NAND...
+    Erasing at 0xc00000 -- 100% complete.
+    Writing to NAND... OK
+    Writing UBI rootfs to NAND address 0x1000000
+    
+    NAND write: device 0 offset 0x1000000, size 0xa000000
+     167772160 bytes written: OK
+    ===========================================================
+    Flashing Complete. Please power down and disable FEL mode.
+    ===========================================================
+
+Additionally, once the image is properly flashed, the status LED on
+the CHIP board will flash on and off every 2 seconds. This indicates
+that it is safe to power down your board and disable FEL mode.
+
+WARNING: This will erase the entire contents of your CHIP board.
+
+NOTE: This setup is still compatible with the CHIP flashing utility
+available at http://flash.getchip.com if you choose to reinstall the
+stock images.
diff --git a/recipes-bsp/chip-u-boot-scr/chip-u-boot-scr.bb b/recipes-bsp/chip-u-boot-scr/chip-u-boot-scr.bb
new file mode 100644
index 0000000..7f01ebd
--- /dev/null
+++ b/recipes-bsp/chip-u-boot-scr/chip-u-boot-scr.bb
@@ -0,0 +1,89 @@
+SUMMARY = "U-boot boot scripts for CHIP boards"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
+COMPATIBLE_MACHINE = "chip"
+
+inherit deploy
+
+DEPENDS = "u-boot-mkimage-native"
+
+SRC_URI = "file://boot.cmd.in"
+
+NAND_FLASH_START_ADDR = "0x00000000"
+SPL_MEMIMG_ADDR = "0x44000000"
+UBOOT_MEMIMG_ADDR = "0x4a000000"
+SPL_FLASH_UPPER_ADDR = "0x400000"
+LED_I2C_CHIP = "0x34"
+LED_I2C_ADDR = "0x93"
+UBOOT_FLASH_ADDR = "0x800000"
+UBI_MEMIMG_ADDR = "0x4b000000"
+UBI_FLASH_ADDR = "0x1000000"
+PAGE_SIZE = "16384"
+OOB_SIZE = "1664"
+SCRIPTADDR = "0x43100000"
+UBI_SIZE="0x0A000000"
+
+do_compile[depends] += "u-boot-chip:do_deploy"
+do_compile() {
+    PADDED_SPL_SIZE_BLOCKS=$(stat --dereference --printf="%s" "${DEPLOY_DIR_IMAGE}/${SPL_ECC_BINARY}")
+    PADDED_SPL_SIZE_BLOCKS=$(expr $PADDED_SPL_SIZE_BLOCKS / \( ${PAGE_SIZE} + ${OOB_SIZE} \))
+    PADDED_SPL_SIZE_BLOCKS=$(echo $PADDED_SPL_SIZE_BLOCKS | xargs printf "0x%08x")
+    PADDED_UBOOT_SIZE=$(stat --dereference  --printf="%s" "${DEPLOY_DIR_IMAGE}/${UBOOT_BINARY}" | xargs printf "0x%08x")
+
+    sed -e "s,@NAND_FLASH_START_ADDR@,${NAND_FLASH_START_ADDR},g" \
+        -e "s,@SPL_MEMIMG_ADDR@,${SPL_MEMIMG_ADDR},g" \
+        -e "s,@UBOOT_MEMIMG_ADDR@,${UBOOT_MEMIMG_ADDR},g" \
+        -e "s,@SPL_FLASH_UPPER_ADDR@,${SPL_FLASH_UPPER_ADDR},g" \
+        -e "s,@LED_I2C_CHIP@,${LED_I2C_CHIP},g" \
+        -e "s,@LED_I2C_ADDR@,${LED_I2C_ADDR},g" \
+        -e "s,@PADDED_SPL_SIZE_BLOCKS@,${PADDED_SPL_SIZE_BLOCKS},g" \
+        -e "s,@PADDED_UBOOT_SIZE@,${PADDED_UBOOT_SIZE},g" \
+        -e "s,@UBOOT_FLASH_ADDR@,${UBOOT_FLASH_ADDR},g" \
+        -e "s,@UBI_FLASH_ADDR@,${UBI_FLASH_ADDR},g" \
+        -e "s,@UBI_MEMIMG_ADDR@,${UBI_MEMIMG_ADDR},g" \
+        -e "s,@UBI_SIZE@,${UBI_SIZE},g" \
+        < "${WORKDIR}/boot.cmd.in" > "${WORKDIR}/boot.cmd"
+    mkimage -A arm -T script -C none -n "Boot script" -d "${WORKDIR}/boot.cmd" "${WORKDIR}/boot.scr"
+}
+
+do_deploy() {
+    install -d ${DEPLOYDIR}
+    install -m 0644 ${WORKDIR}/boot.scr ${DEPLOYDIR}/boot.scr-${PV}-${PR}
+    ln -sf boot.scr-${PV}-${PR} ${DEPLOYDIR}/boot.scr
+
+    cat > ${DEPLOYDIR}/flash_CHIP_board.sh-${PV}-${PR} <<-EOF
+	#!/bin/sh
+	#
+	
+	if [ ! -n "\${UBI_IMAGE}" ]; then
+	    echo "Error: UBI_IMAGE environment variable unset."
+	    echo "Please set UBI_IMAGE to the basename of the root filesystem image to deploy"
+	    exit -1
+	elif [ ! -e "${DEPLOY_DIR_IMAGE}/\${UBI_IMAGE}" ]; then
+	    echo "Error: UBI_IMAGE file \"${DEPLOY_DIR_IMAGE}/\${UBI_IMAGE}\" does not exist."
+	    exit -1
+	else
+	    CURRENT_UBI_SIZE=\$(stat --dereference --printf="%s" ${DEPLOY_DIR_IMAGE}/\${UBI_IMAGE})
+	    MAX_UBI_SIZE=\$(printf %d ${UBI_SIZE})
+	    if [ \${CURRENT_UBI_SIZE} -gt \${MAX_UBI_SIZE} ]; then
+	        echo "Error: UBI_IMAGE file \"${DEPLOY_DIR_IMAGE}/\${UBI_IMAGE}\" is too large."
+	        echo "Current file size is \${CURRENT_UBI_SIZE}"
+	        echo "Max file size is \${MAX_UBI_SIZE}"
+	        exit -1
+	    fi
+	fi
+	
+	PADDED_SPL_SIZE_BLOCKS=$(stat --dereference --printf="%s" "${DEPLOY_DIR_IMAGE}/${SPL_ECC_BINARY}")
+	${COMPONENTS_DIR}/x86_64/sunxi-tools-native/usr/bin/sunxi-fel spl ${DEPLOY_DIR_IMAGE}/${SPL_BINARY}
+	${COMPONENTS_DIR}/x86_64/sunxi-tools-native/usr/bin/sunxi-fel --progress write ${SPL_MEMIMG_ADDR} ${DEPLOY_DIR_IMAGE}/${SPL_ECC_BINARY}
+	${COMPONENTS_DIR}/x86_64/sunxi-tools-native/usr/bin/sunxi-fel --progress write ${UBOOT_MEMIMG_ADDR} ${DEPLOY_DIR_IMAGE}/${UBOOT_BINARY}
+	${COMPONENTS_DIR}/x86_64/sunxi-tools-native/usr/bin/sunxi-fel --progress write ${SCRIPTADDR} ${DEPLOY_DIR_IMAGE}/boot.scr
+	${COMPONENTS_DIR}/x86_64/sunxi-tools-native/usr/bin/sunxi-fel --progress write ${UBI_MEMIMG_ADDR} ${DEPLOY_DIR_IMAGE}/\${UBI_IMAGE}
+	${COMPONENTS_DIR}/x86_64/sunxi-tools-native/usr/bin/sunxi-fel exe ${UBOOT_MEMIMG_ADDR}
+	EOF
+    chmod +x ${DEPLOYDIR}/flash_CHIP_board.sh-${PV}-${PR}
+
+    ln -sf flash_CHIP_board.sh-${PV}-${PR} ${DEPLOYDIR}/flash_CHIP_board.sh
+}
+
+addtask do_deploy after do_compile before do_build
diff --git a/recipes-bsp/chip-u-boot-scr/files/boot.cmd.full b/recipes-bsp/chip-u-boot-scr/files/boot.cmd.full
new file mode 100644
index 0000000..9589c87
--- /dev/null
+++ b/recipes-bsp/chip-u-boot-scr/files/boot.cmd.full
@@ -0,0 +1,32 @@
+echo Scrubbing NAND
+nand scrub -y 0x0 0x200000000
+echo Writing SPL (with ECC) to NAND address 0x0
+nand write.raw.noverify $SPL_MEM_ADDR 0x0 $PADDED_SPL_SIZE
+echo Writing SPL (with ECC) to NAND address 0x400000
+nand write.raw.noverify $SPL_MEM_ADDR 0x400000 $PADDED_SPL_SIZE
+echo Writing UBoot image to address 0x800000
+nand write $UBOOT_MEM_ADDR 0x800000 $PADDED_UBOOT_SIZE
+
+# Setup the default environment
+setenv bootargs root=ubi0:rootfs rootfstype=ubifs rw earlyprintk ubi.mtd=4
+setenv bootcmd 'mtdparts; ubi part UBI; ubifsmount ubi0:rootfs; ubifsload \$fdt_addr_r /boot/sun5i-r8-chip.dtb; ubifsload \$kernel_addr_r /boot/zImage; bootz \$kernel_addr_r - \$fdt_addr_r'
+setenv fel_booted 0
+
+echo Enabling Splash
+setenv stdout serial
+setenv stderr serial
+setenv splashpos m,m
+
+echo Setting Video Mode
+setenv video-mode sunxi:640x480-24@60,monitor=composite-ntsc,overscan_x=40,overscan_y=20
+
+echo Saving default environment
+saveenv
+
+echo Writing UBI rootfs to NAND address 0x1000000
+nand write.slc-mode.trimffs $UBI_MEM_ADDR 0x1000000 $UBI_SIZE
+
+echo ===========================================================
+echo Flashing Complete.  Please power down and disable FEL mode.
+echo ===========================================================
+
diff --git a/recipes-bsp/chip-u-boot-scr/files/boot.cmd.in b/recipes-bsp/chip-u-boot-scr/files/boot.cmd.in
new file mode 100644
index 0000000..dc060be
--- /dev/null
+++ b/recipes-bsp/chip-u-boot-scr/files/boot.cmd.in
@@ -0,0 +1,43 @@
+echo Erasing NAND
+nand erase.chip
+echo Writing SPL (with ECC) to NAND address @NAND_FLASH_START_ADDR@
+nand write.raw.noverify @SPL_MEMIMG_ADDR@ @NAND_FLASH_START_ADDR@ @PADDED_SPL_SIZE_BLOCKS@
+echo Writing SPL (with ECC) to NAND address @SPL_FLASH_UPPER_ADDR@
+nand write.raw.noverify @SPL_MEMIMG_ADDR@ @SPL_FLASH_UPPER_ADDR@ @PADDED_SPL_SIZE_BLOCKS@
+echo Writing UBoot image to address 0x800000
+nand write @UBOOT_MEMIMG_ADDR@ @UBOOT_FLASH_ADDR@ @PADDED_UBOOT_SIZE@
+
+# Setup the default environment
+setenv bootargs root=ubi0:rootfs rootfstype=ubifs rw earlyprintk ubi.mtd=4
+setenv bootcmd_ubi 'mtdparts; ubi part UBI; ubifsmount ubi0:rootfs; ubifsload \$fdt_addr_r /boot/sun5i-r8-chip.dtb; ubifsload \$kernel_addr_r /boot/zImage; bootz \$kernel_addr_r - \$fdt_addr_r'
+setenv boot_targets fel ubi usb0 pxe dhcp 
+setenv fel_booted 0
+
+echo Enabling Splash
+setenv stdout serial
+setenv stderr serial
+setenv splashpos m,m
+
+echo Setting Video Mode
+setenv video-mode sunxi:640x480-24@60,monitor=composite-ntsc,overscan_x=40,overscan_y=20
+
+echo Saving default environment
+saveenv
+
+echo Writing UBI rootfs to NAND address 0x1000000
+nand write.slc-mode.trimffs @UBI_MEMIMG_ADDR@ @UBI_FLASH_ADDR@ @UBI_SIZE@
+
+
+echo ===========================================================
+echo Flashing Complete.  Please power down and disable FEL mode.
+echo ===========================================================
+
+# Loop continually flashing the status LED
+while true ; do
+    mw.l @SPL_MEMIMG_ADDR@ 0x00000000 1
+    i2c write @SPL_MEMIMG_ADDR@ @LED_I2C_CHIP@ @LED_I2C_ADDR@ 4
+    sleep 1
+    mw.l @SPL_MEMIMG_ADDR@ 0xffffffff 1
+    i2c write @SPL_MEMIMG_ADDR@ @LED_I2C_CHIP@ @LED_I2C_ADDR@ 4
+    sleep 1
+done
diff --git a/recipes-bsp/u-boot/u-boot-chip_git.bb b/recipes-bsp/u-boot/u-boot-chip_git.bb
index f12fae6..008f346 100644
--- a/recipes-bsp/u-boot/u-boot-chip_git.bb
+++ b/recipes-bsp/u-boot/u-boot-chip_git.bb
@@ -6,6 +6,7 @@ LIC_FILES_CHKSUM = "file://Licenses/README;md5=0507cd7da8e7ad6d6701926ec9b84c95"
 
 DEPENDS += "dtc-native"
 PROVIDES += "u-boot"
+RDEPENDS_${PN}_append_chip = " chip-u-boot-scr"
 
 UBOOT_VERSION ?= "2016.01"
 PV = "${UBOOT_VERSION}+git${SRCPV}"
-- 
2.7.4


