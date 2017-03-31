Return-Path: <Rob.Woolley@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3839CE00A71; Fri, 31 Mar 2017 11:19:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A2C8E00A5C
	for <yocto@yoctoproject.org>; Fri, 31 Mar 2017 11:19:30 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v2VIJRqx006422
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 31 Mar 2017 11:19:27 -0700 (PDT)
Received: from ala-lpggp2.wrs.com (147.11.105.123) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Fri, 31 Mar 2017 11:19:26 -0700
From: Rob Woolley <rob.woolley@windriver.com>
To: <yocto@yoctoproject.org>, <andrei@gherzan.ro>
Date: Fri, 31 Mar 2017 11:19:26 -0700
Message-ID: <20170331181926.8976-1-rob.woolley@windriver.com>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH 1/1] pitft: Add support for pitft35r
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
X-List-Received-Date: Fri, 31 Mar 2017 18:19:31 -0000
Content-Type: text/plain

The support for the PiTFT 3.5 inch resistive touchscreen is optional.
It may be enabled by adding the following line in local.conf:

MACHINE_FEATURES += "pitft pitft35r"

Signed-off-by: Rob Woolley <rob.woolley@windriver.com>
---
 README                                  | 1 +
 conf/machine/include/rpi-base.inc       | 1 +
 conf/machine/raspberrypi3-64.conf       | 1 +
 recipes-bsp/bootfiles/rpi-config_git.bb | 6 ++++++
 4 files changed, 9 insertions(+)

diff --git a/README b/README
index 65a1e5f..a5c3d38 100644
--- a/README
+++ b/README
@@ -240,6 +240,7 @@ the modelname should be added as a MACHINE_FEATURES in local.conf like below:
 List of currently supported models:
     - pitft22
     - pitft28r
+    - pitft35r
 
 3.O. Enable UART
 ===============
diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
index 092cbeb..9bcb91d 100644
--- a/conf/machine/include/rpi-base.inc
+++ b/conf/machine/include/rpi-base.inc
@@ -31,6 +31,7 @@ KERNEL_DEVICETREE ?= " \
     overlays/lirc-rpi.dtbo \
     overlays/pitft22.dtbo \
     overlays/pitft28-resistive.dtbo \
+    overlays/pitft35-resistive.dtbo \
     overlays/pps-gpio.dtbo \
     overlays/rpi-ft5406.dtbo \
     overlays/w1-gpio.dtbo \
diff --git a/conf/machine/raspberrypi3-64.conf b/conf/machine/raspberrypi3-64.conf
index ca10ed9..0efe3ff 100644
--- a/conf/machine/raspberrypi3-64.conf
+++ b/conf/machine/raspberrypi3-64.conf
@@ -23,6 +23,7 @@ KERNEL_DEVICETREE = " \
     overlays/lirc-rpi.dtbo \
     overlays/pitft22.dtbo \
     overlays/pitft28-resistive.dtbo \
+    overlays/pitft35-resistive.dtbo \
     overlays/pps-gpio.dtbo \
     overlays/rpi-ft5406.dtbo \
     overlays/w1-gpio.dtbo \
diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb b/recipes-bsp/bootfiles/rpi-config_git.bb
index 20ec343..0fd9cea 100644
--- a/recipes-bsp/bootfiles/rpi-config_git.bb
+++ b/recipes-bsp/bootfiles/rpi-config_git.bb
@@ -18,6 +18,7 @@ PR = "r5"
 PITFT="${@bb.utils.contains("MACHINE_FEATURES", "pitft", "1", "0", d)}"
 PITFT22="${@bb.utils.contains("MACHINE_FEATURES", "pitft22", "1", "0", d)}"
 PITFT28r="${@bb.utils.contains("MACHINE_FEATURES", "pitft28r", "1", "0", d)}"
+PITFT35r="${@bb.utils.contains("MACHINE_FEATURES", "pitft35r", "1", "0", d)}"
 
 VC4GRAPHICS="${@bb.utils.contains("MACHINE_FEATURES", "vc4graphics", "1", "0", d)}"
 
@@ -99,6 +100,11 @@ do_deploy() {
         echo "dtoverlay=pitft28-resistive,rotate=90,speed=32000000,txbuflen=32768" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
     fi
 
+    if [ "${PITFT35r}" = "1" ]; then
+        echo "# Enable PITFT35r display" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+        echo "dtoverlay=pitft35-resistive,rotate=90,speed=42000000,fps=20" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+    fi
+
     # UART support
     if [ "${ENABLE_UART}" = "1" ]; then
         echo "# Enable UART" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
-- 
2.11.0


