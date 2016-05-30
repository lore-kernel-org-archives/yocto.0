Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78C33E00CE5; Mon, 30 May 2016 13:47:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.1 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.1])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6C74E00CC9
	for <yocto@yoctoproject.org>; Mon, 30 May 2016 13:47:13 -0700 (PDT)
Received: from localhost.localdomain (LFbn-1-3582-159.w90-127.abo.wanadoo.fr
	[90.127.97.159])
	by msfrf2612.sfr.fr (SMTP Server) with ESMTP id 2ACE81C000438;
	Mon, 30 May 2016 22:47:13 +0200 (CEST)
Received: from localhost.localdomain (LFbn-1-3582-159.w90-127.abo.wanadoo.fr
	[90.127.97.159])	(using TLSv1.2
	with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2612.sfr.fr (SMTP Server) with ESMTPSA;
	Mon, 30 May 2016 22:47:13 +0200 (CEST)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: yocto@yoctoproject.org
Date: Tue, 31 May 2016 04:46:33 +0800
Message-Id: <1464641195-88380-4-git-send-email-herve.jourdain@neuf.fr>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1464641195-88380-1-git-send-email-herve.jourdain@neuf.fr>
References: <1464641195-88380-1-git-send-email-herve.jourdain@neuf.fr>
X-sfr-mailing: LEGIT
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH v4 3/5] rpi-base.inc: support for .dtbo files for dtb overlays
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
X-List-Received-Date: Mon, 30 May 2016 20:47:14 -0000

Kernel 4.4.6+ on RaspberryPi support .dtbo files for overlays, instead of .dtb.
Add support for both variants of overlays ("-overlay.dtb" and ".dtbo") for the default KERNEL_DEVICETREE variable

Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
---
 conf/machine/include/rpi-base.inc | 36 +++++++++++++++++++++++++++++++++++-
 1 file changed, 35 insertions(+), 1 deletion(-)

diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
index 56ca83e..2c9d8e0 100644
--- a/conf/machine/include/rpi-base.inc
+++ b/conf/machine/include/rpi-base.inc
@@ -16,7 +16,7 @@ XSERVER = " \
     "
 
 # Really supported starting from linux-raspberrypi 3.18.y only
-KERNEL_DEVICETREE ?= " \
+KERNEL_DEVICETREE_OVERLAYS_DTB = " \
     bcm2708-rpi-b.dtb \
     bcm2708-rpi-b-plus.dtb \
     bcm2709-rpi-2-b.dtb \
@@ -38,6 +38,40 @@ KERNEL_DEVICETREE ?= " \
     overlays/w1-gpio-pullup-overlay.dtb \
     overlays/pi3-miniuart-bt-overlay.dtb \
     "
+KERNEL_DEVICETREE_OVERLAYS_DTBO = " \
+    bcm2708-rpi-b.dtb \
+    bcm2708-rpi-b-plus.dtb \
+    bcm2709-rpi-2-b.dtb \
+    bcm2710-rpi-3-b.dtb \
+    \
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
+    "
+
+def cmpver_strings(ver1, ver2, truevalue, falsevalue):
+    from distutils.version import LooseVersion
+    ver1 = ''.join(ch for ch in ver1 if ch in '0123456789.')
+    ver2 = ''.join(ch for ch in ver2 if ch in '0123456789.')
+    if LooseVersion(ver1) >= LooseVersion(ver2):
+        return truevalue
+    else:
+        return falsevalue
+
+KERNEL_DEVICETREE ?= "${@cmpver_strings("${PREFERRED_VERSION_linux-raspberrypi}", "4.4", "${KERNEL_DEVICETREE_OVERLAYS_DTBO}", "${KERNEL_DEVICETREE_OVERLAYS_DTB}")}"
+
 KERNEL_IMAGETYPE ?= "Image"
 
 MACHINE_FEATURES += "apm usbhost keyboard vfat ext2 screen touchscreen alsa bluetooth wifi sdio"
-- 
2.7.4


