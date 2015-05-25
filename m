Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7B6AAE00A00; Mon, 25 May 2015 07:59:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.74.38.224 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bin-vsp-out-05.atm.binero.net (vsp-authed01.binero.net
	[195.74.38.224])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4BB34E009E1
	for <yocto@yoctoproject.org>; Mon, 25 May 2015 07:59:31 -0700 (PDT)
X-Halon-ID: a43a09c1-02ee-11e5-b72b-005056916f53
Authorized-sender: petter@technux.se
Received: from elxbvzzwp1-cy.localdomain (unknown [95.197.1.175])
	by bin-vsp-out-05.atm.binero.net (Halon Mail Gateway) with ESMTPSA
	for <yocto@yoctoproject.org>; Mon, 25 May 2015 16:59:28 +0200 (CEST)
From: =?UTF-8?q?Petter=20Mab=C3=A4cker?= <petter@technux.se>
To: yocto@yoctoproject.org
Date: Mon, 25 May 2015 16:59:21 +0200
Message-Id: <2375dc76d5f00173760ff56cb37a4ab80fffdc5d.1432564621.git.petter@technux.se>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1432564621.git.petter@technux.se>
References: <cover.1432564621.git.petter@technux.se>
In-Reply-To: <cover.1432564621.git.petter@technux.se>
References: <cover.1432564621.git.petter@technux.se>
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCHv2 1/2] devicetree: auto-disable dts for old kernels
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
X-List-Received-Date: Mon, 25 May 2015 14:59:36 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

After '6392a63 rpi-base.inc: Use KERNEL_DEVICETREE by default' was
introduced, kernel versions < 3.18 might not be buildable. Since full
device tree support was introduced in 3.18 this change ensures that all
kernel < 3.18 will automatically disable device tree.

Signed-off-by: Petter Mabäcker <petter@technux.se>
---
 classes/linux-raspberrypi-base.bbclass     | 39 ++++++++++++++++++++++++++++++
 classes/sdcard_image-rpi.bbclass           | 15 +++++++-----
 recipes-kernel/linux/linux-raspberrypi.inc |  4 ++-
 3 files changed, 51 insertions(+), 7 deletions(-)
 create mode 100644 classes/linux-raspberrypi-base.bbclass

diff --git a/classes/linux-raspberrypi-base.bbclass b/classes/linux-raspberrypi-base.bbclass
new file mode 100644
index 0000000..40beef1
--- /dev/null
+++ b/classes/linux-raspberrypi-base.bbclass
@@ -0,0 +1,39 @@
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
+
+
+def split_overlays(d, out):
+    dts = get_dts(d, None)
+    if out:
+        overlays = oe.utils.str_filter_out('\S+\-overlay\.dtb$', dts, d)
+    else:
+        overlays = oe.utils.str_filter('\S+\-overlay\.dtb$', dts, d)
+
+    return overlays
diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bbclass
index 1ff664d..7592cc1 100644
--- a/classes/sdcard_image-rpi.bbclass
+++ b/classes/sdcard_image-rpi.bbclass
@@ -1,4 +1,5 @@
 inherit image_types
+inherit linux-raspberrypi-base
 
 #
 # Create an image that can by written onto a SD card using dd.
@@ -70,11 +71,6 @@ SDIMG = "${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.rpi-sdimg"
 # Additional files and/or directories to be copied into the vfat partition from the IMAGE_ROOTFS.
 FATPAYLOAD ?= ""
 
-# Device Tree Overlays are assumed to be suffixed by '-overlay.dtb' string and will be put in a dedicated folder
-DT_ALL = "${@d.getVar('KERNEL_DEVICETREE', True) or ''}"
-DT_OVERLAYS = "${@oe.utils.str_filter('\S+\-overlay\.dtb$', '${DT_ALL}', d)}"
-DT_ROOT = "${@oe.utils.str_filter_out('\S+\-overlay\.dtb$', '${DT_ALL}', d)}"
-
 IMAGEDATESTAMP = "${@time.strftime('%Y.%m.%d',time.gmtime())}"
 
 IMAGE_CMD_rpi-sdimg () {
@@ -90,6 +86,9 @@ IMAGE_CMD_rpi-sdimg () {
 
 	echo "Creating filesystem with Boot partition ${BOOT_SPACE_ALIGNED} KiB and RootFS ${ROOTFS_SIZE_ALIGNED} KiB"
 
+	# Check if we are building with device tree support
+	DTS="${@get_dts(d, None)}"
+
 	# Initialize sdcard image file
 	dd if=/dev/zero of=${SDIMG} bs=1024 count=0 seek=${SDIMG_SIZE}
 
@@ -112,7 +111,11 @@ IMAGE_CMD_rpi-sdimg () {
 		mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}${KERNEL_INITRAMFS}-${MACHINE}.bin ::uImage
 		;;
 	*)
-		if test -n "${KERNEL_DEVICETREE}"; then
+		if test -n "${DTS}"; then
+			# Device Tree Overlays are assumed to be suffixed by '-overlay.dtb' string and will be put in a dedicated folder
+			DT_OVERLAYS="${@split_overlays(d, 0)}"
+			DT_ROOT="${@split_overlays(d, 1)}"
+
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


