Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B3865E00DBD; Wed, 20 Jul 2016 15:01:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1562E00DA7
	for <yocto@yoctoproject.org>; Wed, 20 Jul 2016 15:01:39 -0700 (PDT)
Received: from localhost.localdomain (unknown [8.36.234.10])
	by msfrf2633.sfr.fr (SMTP Server) with ESMTP id 1C3BD1C000C21;
	Thu, 21 Jul 2016 00:01:39 +0200 (CEST)
Received: from localhost.localdomain (unknown [8.36.234.10])	(using TLSv1.2
	with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2633.sfr.fr (SMTP Server) with ESMTPSA;
	Thu, 21 Jul 2016 00:01:38 +0200 (CEST)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: yocto@yoctoproject.org
Date: Thu, 21 Jul 2016 06:00:37 +0800
Message-Id: <1469052039-7746-3-git-send-email-herve.jourdain@neuf.fr>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1469052039-7746-1-git-send-email-herve.jourdain@neuf.fr>
References: <1469052039-7746-1-git-send-email-herve.jourdain@neuf.fr>
X-sfr-mailing: LEGIT
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH v6 2/4] rpi-base.inc: support for .dtbo files for dtb overlays
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
X-List-Received-Date: Wed, 20 Jul 2016 22:01:43 -0000

Kernel 4.4.6+ on RaspberryPi support .dtbo files for overlays, instead of .dtb.
Add support for .dtbo variant of overlays for the default KERNEL_DEVICETREE variable
(the list will be turned into "-overlay.dtb" by linux-raspberry-base.bbclass, if needed, depending on the kernel version)

Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
---
 conf/machine/include/rpi-base.inc | 30 +++++++++++++++---------------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
index 56ca83e..47eb23b 100644
--- a/conf/machine/include/rpi-base.inc
+++ b/conf/machine/include/rpi-base.inc
@@ -22,21 +22,21 @@ KERNEL_DEVICETREE ?= " \
     bcm2709-rpi-2-b.dtb \
     bcm2710-rpi-3-b.dtb \
     \
-    overlays/hifiberry-amp-overlay.dtb \
-    overlays/hifiberry-dac-overlay.dtb \
-    overlays/hifiberry-dacplus-overlay.dtb \
-    overlays/hifiberry-digi-overlay.dtb \
-    overlays/i2c-rtc-overlay.dtb \
-    overlays/iqaudio-dac-overlay.dtb \
-    overlays/iqaudio-dacplus-overlay.dtb \
-    overlays/lirc-rpi-overlay.dtb \
-    overlays/pitft22-overlay.dtb \
-    overlays/pitft28-resistive-overlay.dtb \
-    overlays/pps-gpio-overlay.dtb \
-    overlays/rpi-ft5406-overlay.dtb \
-    overlays/w1-gpio-overlay.dtb \
-    overlays/w1-gpio-pullup-overlay.dtb \
-    overlays/pi3-miniuart-bt-overlay.dtb \
+    overlays/hifiberry-amp.dtbo \
+    overlays/hifiberry-dac.dtbo \
+    overlays/hifiberry-dacplus.dtbo \
+    overlays/hifiberry-digi.dtbo \
+    overlays/i2c-rtc.dtbo \
+    overlays/iqaudio-dac.dtbo \
+    overlays/iqaudio-dacplus.dtbo \
+    overlays/lirc-rpi.dtbo \
+    overlays/pitft22.dtbo \
+    overlays/pitft28-resistive.dtbo \
+    overlays/pps-gpio.dtbo \
+    overlays/rpi-ft5406.dtbo \
+    overlays/w1-gpio.dtbo \
+    overlays/w1-gpio-pullup.dtbo \
+    overlays/pi3-miniuart-bt.dtbo \
     "
 KERNEL_IMAGETYPE ?= "Image"
 
-- 
2.7.4


