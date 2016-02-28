Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE1C3E00CBF; Sun, 28 Feb 2016 05:46:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.74.38.227 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bin-vsp-out-04.atm.binero.net (vsp-unauthed02.binero.net
	[195.74.38.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 890DFE00DDE
	for <yocto@yoctoproject.org>; Sun, 28 Feb 2016 05:46:22 -0800 (PST)
X-Halon-ID: a560250e-de21-11e5-8752-005056917c0c
Authorized-sender: petter@technux.se
Received: from localhost.localdomain (unknown [85.195.55.167])
	by bin-vsp-out-04.atm.binero.net (Halon Mail Gateway) with ESMTPSA;
	Sun, 28 Feb 2016 14:46:19 +0100 (CET)
From: =?UTF-8?q?Petter=20Mab=C3=A4cker?= <petter@technux.se>
To: yocto@yoctoproject.org
Date: Sun, 28 Feb 2016 14:46:10 +0100
Message-Id: <1456667173-28743-4-git-send-email-petter@technux.se>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1456667173-28743-1-git-send-email-petter@technux.se>
References: <1456667173-28743-1-git-send-email-petter@technux.se>
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH v3 3/6] rpi-config: I2C support
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

With newer kernels (>=3.18) that supports device-trees I2C
should be enabled with device-trees.

This is now support by adding:
ENABLE_I2C = "1"
in local.conf

This will enable the dtparams:
i2c1
i2c_arm

Signed-off-by: Petter Mabäcker <petter@technux.se>
---
 README                                  | 21 +++++++++++++--------
 recipes-bsp/bootfiles/rpi-config_git.bb |  6 ++++++
 2 files changed, 19 insertions(+), 8 deletions(-)

diff --git a/README b/README
index a168692..8ef4e7a 100644
--- a/README
+++ b/README
@@ -21,10 +21,11 @@ Contents:
     2.G. Optional - Enable offline compositing support
     2.H. Optional - Enable kgdb over console support
     2.I. Optional - Enable SPI bus
-    2.J. Images
-    2.K. Boot to U-Boot
-    2.L. Image with Initramfs
-    2.M. Device tree support
+    2.J. Optional - Enable I2C
+    2.K. Images
+    2.L. Boot to U-Boot
+    2.M. Image with Initramfs
+    2.N. Device tree support
 3. Extra apps
     3.A. omxplayer
 4. Source code and mirrors
@@ -151,8 +152,12 @@ ENABLE_KGDB = "1"
 When using device tree kernels, set this variable to enable the SPI bus
 ENABLE_SPI_BUS = "1"
 
+2.J. Optional - Enable I2C
+==========================
+When using device tree kernels, set this variable to enable I2C
+ENABLE_I2C = "1"
 
-2.J. Images
+2.K. Images
 ===========
 * rpi-hwup-image
     Hardware up image
@@ -162,7 +167,7 @@ ENABLE_SPI_BUS = "1"
     Image based on rpi-basic-image which includes most of the packages in this
     layer and some media samples.
 
-2.K. Boot to U-Boot
+2.L. Boot to U-Boot
 ===================
 To have u-boot load kernel image, set in your local.conf
 KERNEL_IMAGETYPE = "uImage"
@@ -170,7 +175,7 @@ KERNEL_IMAGETYPE = "uImage"
 This will make kernel.img be u-boot image which will load uImage.
 By default, kernel.img is the actual kernel image (ex. Image).
 
-2.L. Image with Initramfs
+2.M. Image with Initramfs
 =========================
 To build an initramfs image :
     * Set this 3 kernel variables (in linux-raspberrypi.inc for example)
@@ -183,7 +188,7 @@ To build an initramfs image :
     * Set the meta-rasberrypi variable (in raspberrypi.conf for example)
         - KERNEL_INITRAMFS = "-initramfs"
 
-2.M. Device tree support
+2.N. Device tree support
 =========================
 Device tree for RPi is only supported when using linux-raspberrypi 3.18+
 kernels.
diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb b/recipes-bsp/bootfiles/rpi-config_git.bb
index aa11b25..ccb9b7f 100644
--- a/recipes-bsp/bootfiles/rpi-config_git.bb
+++ b/recipes-bsp/bootfiles/rpi-config_git.bb
@@ -72,6 +72,12 @@ do_deploy() {
         echo "# Enable SPI bus" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
         echo "dtparam=spi=on" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
     fi
+
+    if [ -n "${ENABLE_I2C}" ]; then
+        echo "# Enable I2C" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+        echo "dtparam=i2c1=on" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+        echo "dtparam=i2c_arm=on" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+    fi
 }
 
 addtask deploy before do_package after do_install
-- 
1.9.1


