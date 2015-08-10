Return-Path: <ajlennon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF826E006EE; Mon, 10 Aug 2015 04:08:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f181.google.com (mail-wi0-f181.google.com
	[209.85.212.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 790DEE00306
	for <yocto@yoctoproject.org>; Mon, 10 Aug 2015 04:08:47 -0700 (PDT)
Received: by wicne3 with SMTP id ne3so17593679wic.0
	for <yocto@yoctoproject.org>; Mon, 10 Aug 2015 04:08:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id;
	bh=sbgXqY29eYQfcQyBfGDp/qs8//Rlj4I5ijUL5Sk9Zf8=;
	b=R3UsmZDbLXEv363GuLHxw+WMuOcpyeSpx448pqK0fgWK8gt1Ai3hCBC+2v2gu+FF/C
	EKdwZIW+Fz7+On4vr6rKniqs3DtexDDhIb9tPz4ePxlwLY6R4YK9E6+6mudQs+pBoRuR
	k59EmR8G6fFMowE/9GrU4L5Ze8nhdd0otikECCmkFpc52YaOMmCdxsyRrOZrcdEeVhSe
	gluDHi2HlYAl86ROmCK0smNHqqzkT3dVEhOLl0Q9lUTzBCTL+YS9RgyCN/w2eGz4J/UP
	2j5gy10SXueoF3VgW0fPqMx5SWxUQXeeMomMbLHPz7SrC3h5+6MaiL36Nbt33m/U8WBn
	B79A==
X-Received: by 10.180.99.39 with SMTP id en7mr22275006wib.49.1439204926729;
	Mon, 10 Aug 2015 04:08:46 -0700 (PDT)
Received: from localhost.localdomain
	(cpc47-live22-2-0-cust92.17-2.cable.virginm.net. [86.17.157.93])
	by smtp.gmail.com with ESMTPSA id
	c7sm28911115wjb.19.2015.08.10.04.08.44
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 10 Aug 2015 04:08:45 -0700 (PDT)
Sender: Alex Lennon <ajlennon@gmail.com>
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
To: yocto@yoctoproject.org
Date: Mon, 10 Aug 2015 12:08:23 +0100
Message-Id: <1439204904-8305-1-git-send-email-ajlennon@dynamicdevices.co.uk>
X-Mailer: git-send-email 1.9.1
Subject: [meta-raspberrypi][PATCH 1/2] linux-raspberrypi: Update kernel to 3.18.16
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
X-List-Received-Date: Mon, 10 Aug 2015 11:08:49 -0000

This requires some changes to KERNEL_DEVICETREE as the dtb
layout has changed to support overlays. This change also
makes us ready to support kernel 4.x series

Signed-off-by: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
---
 conf/machine/include/rpi-base.inc              | 22 ++++++++++------------
 recipes-kernel/linux/linux-raspberrypi_3.18.bb |  9 +++++++--
 2 files changed, 17 insertions(+), 14 deletions(-)

diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
index 1dda207..8caa5ba 100644
--- a/conf/machine/include/rpi-base.inc
+++ b/conf/machine/include/rpi-base.inc
@@ -23,18 +23,16 @@ KERNEL_DEVICETREE ?= " \
     bcm2708-rpi-b-plus.dtb \
     bcm2709-rpi-2-b.dtb \
     \
-    ds1307-rtc-overlay.dtb \
-    hifiberry-amp-overlay.dtb \
-    hifiberry-dac-overlay.dtb \
-    hifiberry-dacplus-overlay.dtb \
-    hifiberry-digi-overlay.dtb \
-    iqaudio-dac-overlay.dtb \
-    iqaudio-dacplus-overlay.dtb \
-    lirc-rpi-overlay.dtb \
-    pcf8523-rtc-overlay.dtb \
-    pps-gpio-overlay.dtb \
-    w1-gpio-overlay.dtb \
-    w1-gpio-pullup-overlay.dtb \
+    overlays/hifiberry-amp-overlay.dtb \
+    overlays/hifiberry-dac-overlay.dtb \
+    overlays/hifiberry-dacplus-overlay.dtb \
+    overlays/hifiberry-digi-overlay.dtb \
+    overlays/iqaudio-dac-overlay.dtb \
+    overlays/iqaudio-dacplus-overlay.dtb \
+    overlays/lirc-rpi-overlay.dtb \
+    overlays/pps-gpio-overlay.dtb \
+    overlays/w1-gpio-overlay.dtb \
+    overlays/w1-gpio-pullup-overlay.dtb \
     "
 KERNEL_IMAGETYPE ?= "Image"
 
diff --git a/recipes-kernel/linux/linux-raspberrypi_3.18.bb b/recipes-kernel/linux/linux-raspberrypi_3.18.bb
index 6d8b155..18c2020 100644
--- a/recipes-kernel/linux/linux-raspberrypi_3.18.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_3.18.bb
@@ -1,6 +1,11 @@
-LINUX_VERSION ?= "3.18.11"
+LINUX_VERSION ?= "3.18.16"
 
-SRCREV = "d64fa8121fca9883d6fb14ca06d2abf66496195e"
+SRCREV = "1bb18c8f721ef674a447f3622273f2e2de7a205c"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.18.y"
 
 require linux-raspberrypi.inc
+
+# Create missing out of tree 'overlays' directory prior to install step
+do_compile_append() {
+  mkdir -p ${B}/arch/arm/boot/dts/overlays
+}
-- 
1.9.1


