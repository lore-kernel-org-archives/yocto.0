Return-Path: <javier@osg.samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2084AE00AC8; Thu, 30 Jul 2015 01:41:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [54.187.51.154 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 313 seconds by postgrey-1.32 at yocto-www;
	Thu, 30 Jul 2015 01:41:21 PDT
Received: from lists.s-osg.org (lists.s-osg.org [54.187.51.154])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68A05E00A7E
	for <yocto@yoctoproject.org>; Thu, 30 Jul 2015 01:41:21 -0700 (PDT)
Received: from localhost.localdomain (119.3.11.37.dynamic.jazztel.es
	[37.11.3.119])
	by lists.s-osg.org (Postfix) with ESMTPSA id 3981546329;
	Thu, 30 Jul 2015 01:36:10 -0700 (PDT)
From: Javier Martinez Canillas <javier@osg.samsung.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Date: Thu, 30 Jul 2015 10:34:08 +0200
Message-Id: <1438245251-20437-3-git-send-email-javier@osg.samsung.com>
X-Mailer: git-send-email 2.4.3
In-Reply-To: <1438245251-20437-1-git-send-email-javier@osg.samsung.com>
References: <1438245251-20437-1-git-send-email-javier@osg.samsung.com>
X-Mailman-Approved-At: Sun, 02 Aug 2015 23:22:39 -0700
Cc: yocto@yoctoproject.org, Derek Foreman <derekf@osg.samsung.com>,
	Javier Martinez Canillas <javier@osg.samsung.com>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>
Subject: [meta-raspberrypi][PATCH 2/5] rpi-config: Allow to mask GPU irqs
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
X-List-Received-Date: Thu, 30 Jul 2015 08:41:26 -0000

From: Derek Foreman <derekf@osg.samsung.com>

The rpi config.txt file has a mask_gpu_interrupt option which needs to
be set when using the new VC4 DRM/KMS driver. Since this option exists
in the config file and needed by some kernels, add a option to set it.

Signed-off-by: Derek Foreman <derekf@osg.samsung.com>
[javier: Made it a config option]
Signed-off-by: Javier Martinez Canillas <javier@osg.samsung.com>

---

 README                                  | 22 ++++++++++++++--------
 recipes-bsp/bootfiles/rpi-config_git.bb |  6 ++++++
 2 files changed, 20 insertions(+), 8 deletions(-)

diff --git a/README b/README
index d70f21fe06ed..678c0eb4a4e3 100644
--- a/README
+++ b/README
@@ -20,10 +20,11 @@ Contents:
     2.F. Optional - Video camera support with V4L2 drivers
     2.G. Optional - Enable offline compositing support
     2.H. Optional - Enable kgdb over console support
-    2.I. Images
-    2.J. Boot to U-Boot
-    2.K. Image with Initramfs
-    2.L. Device tree support
+    2.I. Optional - Mask GPU interrupts
+    2.J. Images
+    2.K. Boot to U-Boot
+    2.L. Image with Initramfs
+    2.M. Device tree support
 3. Extra apps
     3.A. omxplayer
 4. Source code and mirrors
@@ -145,7 +146,12 @@ To add the kdbg over console (kgdboc) parameter to the kernel command line,
 set this variable in local.conf:
 ENABLE_KGDB = "1"
 
-2.I. Images
+2.I. Optional - Mask GPU interrupts
+===================================
+To mask the GPU interrupts, set in your local.conf
+MASK_GPU_INTERRUPT = "0x400"
+
+2.J. Images
 ===========
 * rpi-hwup-image
     Hardware up image
@@ -155,7 +161,7 @@ ENABLE_KGDB = "1"
     Image based on rpi-basic-image which includes most of the packages in this
     layer and some media samples.
 
-2.J. Boot to U-Boot
+2.K. Boot to U-Boot
 ===================
 To have u-boot load kernel image, set in your local.conf
 KERNEL_IMAGETYPE = "uImage"
@@ -163,7 +169,7 @@ KERNEL_IMAGETYPE = "uImage"
 This will make kernel.img be u-boot image which will load uImage.
 By default, kernel.img is the actual kernel image (ex. Image).
 
-2.K. Image with Initramfs
+2.L. Image with Initramfs
 =========================
 To build an initramfs image :
     * Set this 3 kernel variables (in linux-raspberrypi.inc for example)
@@ -176,7 +182,7 @@ To build an initramfs image :
     * Set the meta-rasberrypi variable (in raspberrypi.conf for example)
         - KERNEL_INITRAMFS = "-initramfs"
 
-2.L. Device tree support
+2.M. Device tree support
 =========================
 Device tree for RPi is only supported when using linux-raspberrypi 3.18+
 kernels.
diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb b/recipes-bsp/bootfiles/rpi-config_git.bb
index 29ced342426c..56477a8821bb 100644
--- a/recipes-bsp/bootfiles/rpi-config_git.bb
+++ b/recipes-bsp/bootfiles/rpi-config_git.bb
@@ -66,6 +66,12 @@ do_deploy() {
         echo "# Enable offline compositing" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
         echo "dispmanx_offline=1" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
     fi
+
+    # Mask GPU interrupts
+    if [ -n "${MASK_GPU_INTERRUPT}" ]; then
+        echo "# Mask GPU interrupts" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+        echo "mask_gpu_interrupt0=${MASK_GPU_INTERRUPT}" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+    fi
 }
 
 addtask deploy before do_package after do_install
-- 
2.4.3


