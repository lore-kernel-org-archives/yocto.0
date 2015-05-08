Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 03292E009ED; Fri,  8 May 2015 14:49:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.74.38.225 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bin-vsp-out-04.atm.binero.net (vsp-unauthed01.binero.net
	[195.74.38.225])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49916E0098A
	for <yocto@yoctoproject.org>; Fri,  8 May 2015 14:49:14 -0700 (PDT)
X-Halon-ID: 10127303-f5cc-11e4-a7da-005056917c0c
Authorized-sender: petter@technux.se
Received: from elxbvzzwp1-cy.lan (unknown [81.229.90.163])
	by bin-vsp-out-04.atm.binero.net (Halon Mail Gateway) with ESMTPSA
	for <yocto@yoctoproject.org>; Fri,  8 May 2015 23:49:11 +0200 (CEST)
From: =?UTF-8?q?Petter=20Mab=C3=A4cker?= <petter@technux.se>
To: yocto@yoctoproject.org
Date: Fri,  8 May 2015 23:49:01 +0200
Message-Id: <b58053204ede81e2de839e62bc0317d2813d6ec1.1431121258.git.petter@technux.se>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1431121258.git.petter@technux.se>
References: <cover.1431121258.git.petter@technux.se>
In-Reply-To: <cover.1431121258.git.petter@technux.se>
References: <cover.1431121258.git.petter@technux.se>
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH 1/5] devicetree: auto-disable dts for old kernels
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
X-List-Received-Date: Fri, 08 May 2015 21:49:23 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

After '6392a63 rpi-base.inc: Use KERNEL_DEVICETREE by default' was
introduced, kernel versions < 3.18 might not be buildable. Since full
device tree support was introduced in 3.18 this change ensures that all
kernel < 3.18 will automatically disable device tree.

Signed-off-by: Petter Mabäcker <petter@technux.se>
---
 classes/linux-raspberrypi-base.bbclass     | 29 +++++++++++++++++++++++++++++
 classes/sdcard_image-rpi.bbclass           |  6 ++++--
 recipes-kernel/linux/linux-raspberrypi.inc |  4 +++-
 3 files changed, 36 insertions(+), 3 deletions(-)
 create mode 100644 classes/linux-raspberrypi-base.bbclass

diff --git a/classes/linux-raspberrypi-base.bbclass b/classes/linux-raspberrypi-base.bbclass
new file mode 100644
index 0000000..4bcadd0
--- /dev/null
+++ b/classes/linux-raspberrypi-base.bbclass
@@ -0,0 +1,29 @@
+inherit linux-kernel-base
+
+
+def get_dts(d, ver):
+    staging_dir = d.getVar("STAGING_KERNEL_BUILDDIR", True)
+    dts = d.getVar("KERNEL_DEVICETREE", True)
+
+    # d.getVar() might return 'None' as a normal string
+    # leading to 'is None' check isn't enough.
+    # TODO: Investigate if this is a bug in bitbake
+    if ver is None or ver == "None":
+        ''' if 'ver' isn't set try to grab the kernel version
+        from the kernel staging '''
+        ver = get_kernelversion_file(staging_dir)
+
+    if ver is not None:
+        min_ver = ver.split('.', 3)
+    else:
+        return dts
+
+    # Always turn off device tree support for kernel's < 3.18
+    try:
+        if int(min_ver[0]) <= 3:
+            if int(min_ver[1]) < 18:
+                dts = ""
+    except IndexError:
+        min_ver = None
+
+    return dts
diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bbclass
index 1ff664d..ca94566 100644
--- a/classes/sdcard_image-rpi.bbclass
+++ b/classes/sdcard_image-rpi.bbclass
@@ -1,4 +1,5 @@
 inherit image_types
+inherit linux-raspberrypi-base
 
 #
 # Create an image that can by written onto a SD card using dd.
@@ -88,7 +89,8 @@ IMAGE_CMD_rpi-sdimg () {
 	ROOTFS_SIZE_ALIGNED=$(expr ${ROOTFS_SIZE_ALIGNED} - ${ROOTFS_SIZE_ALIGNED} % ${IMAGE_ROOTFS_ALIGNMENT})
 	SDIMG_SIZE=$(expr ${IMAGE_ROOTFS_ALIGNMENT} + ${BOOT_SPACE_ALIGNED} + ${ROOTFS_SIZE_ALIGNED})
 
-	echo "Creating filesystem with Boot partition ${BOOT_SPACE_ALIGNED} KiB and RootFS ${ROOTFS_SIZE_ALIGNED} KiB"
+	# Check if we are building with device tree support
+	DTS="${@get_dts(d, None)}"
 
 	# Initialize sdcard image file
 	dd if=/dev/zero of=${SDIMG} bs=1024 count=0 seek=${SDIMG_SIZE}
@@ -112,7 +114,7 @@ IMAGE_CMD_rpi-sdimg () {
 		mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}${KERNEL_INITRAMFS}-${MACHINE}.bin ::uImage
 		;;
 	*)
-		if test -n "${KERNEL_DEVICETREE}"; then
+		if test -n "${DTS}"; then
 			# Copy board device trees to root folder
 			for DTB in ${DT_ROOT}; do
 				DTB_BASE_NAME=`basename ${DTB} .dtb`
diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
index 84d4f9e..7e36408 100644
--- a/recipes-kernel/linux/linux-raspberrypi.inc
+++ b/recipes-kernel/linux/linux-raspberrypi.inc
@@ -1,4 +1,5 @@
 require linux.inc
+inherit linux-raspberrypi-base
 
 DESCRIPTION = "Linux Kernel for Raspberry Pi"
 SECTION = "kernel"
@@ -26,7 +27,8 @@ UDEV_GE_141 ?= "1"
 # See http://www.yoctoproject.org/docs/current/bitbake-user-manual/bitbake-user-manual.html#anonymous-python-functions
 python __anonymous () {
     kerneltype = d.getVar('KERNEL_IMAGETYPE', True)
-    kerneldt = d.getVar('KERNEL_DEVICETREE', True)
+    kerneldt = get_dts(d, d.getVar('LINUX_VERSION', True))
+    d.setVar("KERNEL_DEVICETREE", kerneldt)
 
     # Add dependency to 'rpi-mkimage-native' package only if RPi bootloader is used with DT-enable kernel
     if kerneldt:
-- 
1.9.1


