Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F72CE006D1; Thu, 19 Nov 2015 08:51:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C93BE0049B
	for <yocto@yoctoproject.org>; Thu, 19 Nov 2015 08:51:57 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 5CA51F811E5; Thu, 19 Nov 2015 09:51:57 -0700 (MST)
Received: from Zeus.chez-thomas.org (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id D61F3F8119A;
	Thu, 19 Nov 2015 09:51:56 -0700 (MST)
From: Gary Thomas <gary@mlbassoc.com>
To: yocto@yoctoproject.org
Date: Thu, 19 Nov 2015 09:52:10 -0700
Message-Id: <1447951930-18686-1-git-send-email-gary@mlbassoc.com>
X-Mailer: git-send-email 1.9.1
Cc: Gary Thomas <gary@mlbassoc.com>
Subject: [meta-raspberrypi][PATCH] rpi-config: SPI bus support
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
X-List-Received-Date: Thu, 19 Nov 2015 16:51:58 -0000

With the newer kernels that use device tree, the SPI bus is only
enabled by a device tree setting.  This is now supported by adding
  ENABLE_SPI_BUS = "1"
in local.conf

Signed-off-by: Gary Thomas <gary@mlbassoc.com>
---
 README                                  | 5 +++++
 recipes-bsp/bootfiles/rpi-config_git.bb | 6 ++++++
 2 files changed, 11 insertions(+)

diff --git a/README b/README
index e16dee9..bef13a3 100644
--- a/README
+++ b/README
@@ -189,6 +189,11 @@ kernels.
 NOTE: KERNEL_DEVICETREE is default enabled for kernel >= 3.18 and always disabled for
       older kernel versions.
 
+2.M. Optional - enable SPI bus
+==============================
+When using device tree kernels, set this variable to enable the SPI bus
+ENABLE_SPI_BUS = "1"
+
 3. Extra apps
 =============
 
diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb b/recipes-bsp/bootfiles/rpi-config_git.bb
index 45b9f1d..aa11b25 100644
--- a/recipes-bsp/bootfiles/rpi-config_git.bb
+++ b/recipes-bsp/bootfiles/rpi-config_git.bb
@@ -66,6 +66,12 @@ do_deploy() {
         echo "# Enable offline compositing" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
         echo "dispmanx_offline=1" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
     fi
+
+    # SPI bus support
+    if [ -n "${ENABLE_SPI_BUS}" ]; then
+        echo "# Enable SPI bus" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+        echo "dtparam=spi=on" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+    fi
 }
 
 addtask deploy before do_package after do_install
-- 
1.9.1


