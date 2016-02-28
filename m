Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7523E00CBD; Sun, 28 Feb 2016 05:46:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.74.38.228 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bin-vsp-out-04.atm.binero.net (bin-mail-out-05.binero.net
	[195.74.38.228])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41E8BE00CD0
	for <yocto@yoctoproject.org>; Sun, 28 Feb 2016 05:46:22 -0800 (PST)
X-Halon-ID: a4f0b038-de21-11e5-8752-005056917c0c
Authorized-sender: petter@technux.se
Received: from localhost.localdomain (unknown [85.195.55.167])
	by bin-vsp-out-04.atm.binero.net (Halon Mail Gateway) with ESMTPSA;
	Sun, 28 Feb 2016 14:46:18 +0100 (CET)
From: =?UTF-8?q?Petter=20Mab=C3=A4cker?= <petter@technux.se>
To: yocto@yoctoproject.org
Date: Sun, 28 Feb 2016 14:46:08 +0100
Message-Id: <1456667173-28743-2-git-send-email-petter@technux.se>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1456667173-28743-1-git-send-email-petter@technux.se>
References: <1456667173-28743-1-git-send-email-petter@technux.se>
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH v3 1/6] README: Add SPI bus chapter to content
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
X-List-Received-Date: Sun, 28 Feb 2016 13:46:29 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The optional SPI bus chapter was missing in the content list.

While at it also place it together with the other "optional" chapters,
instead of in the end.

Signed-off-by: Petter Mabäcker <petter@technux.se>
---
 README | 28 +++++++++++++++-------------
 1 file changed, 15 insertions(+), 13 deletions(-)

diff --git a/README b/README
index 16ac1cb..a168692 100644
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
+    2.I. Optional - Enable SPI bus
+    2.J. Images
+    2.K. Boot to U-Boot
+    2.L. Image with Initramfs
+    2.M. Device tree support
 3. Extra apps
     3.A. omxplayer
 4. Source code and mirrors
@@ -145,7 +146,13 @@ To add the kdbg over console (kgdboc) parameter to the kernel command line,
 set this variable in local.conf:
 ENABLE_KGDB = "1"
 
-2.I. Images
+2.I. Optional - Enable SPI bus
+==============================
+When using device tree kernels, set this variable to enable the SPI bus
+ENABLE_SPI_BUS = "1"
+
+
+2.J. Images
 ===========
 * rpi-hwup-image
     Hardware up image
@@ -155,7 +162,7 @@ ENABLE_KGDB = "1"
     Image based on rpi-basic-image which includes most of the packages in this
     layer and some media samples.
 
-2.J. Boot to U-Boot
+2.K. Boot to U-Boot
 ===================
 To have u-boot load kernel image, set in your local.conf
 KERNEL_IMAGETYPE = "uImage"
@@ -163,7 +170,7 @@ KERNEL_IMAGETYPE = "uImage"
 This will make kernel.img be u-boot image which will load uImage.
 By default, kernel.img is the actual kernel image (ex. Image).
 
-2.K. Image with Initramfs
+2.L. Image with Initramfs
 =========================
 To build an initramfs image :
     * Set this 3 kernel variables (in linux-raspberrypi.inc for example)
@@ -176,7 +183,7 @@ To build an initramfs image :
     * Set the meta-rasberrypi variable (in raspberrypi.conf for example)
         - KERNEL_INITRAMFS = "-initramfs"
 
-2.L. Device tree support
+2.M. Device tree support
 =========================
 Device tree for RPi is only supported when using linux-raspberrypi 3.18+
 kernels.
@@ -189,11 +196,6 @@ kernels.
 NOTE: KERNEL_DEVICETREE is default enabled for kernel >= 3.18 and always disabled for
       older kernel versions.
 
-2.M. Optional - enable SPI bus
-==============================
-When using device tree kernels, set this variable to enable the SPI bus
-ENABLE_SPI_BUS = "1"
-
 3. Extra apps
 =============
 
-- 
1.9.1


