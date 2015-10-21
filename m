Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 56447E00708; Wed, 21 Oct 2015 14:12:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.170 listed in list.dnswl.org]
Received: from mail-wi0-f170.google.com (mail-wi0-f170.google.com
	[209.85.212.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF655E006D5
	for <yocto@yoctoproject.org>; Wed, 21 Oct 2015 14:12:35 -0700 (PDT)
Received: by wicfv8 with SMTP id fv8so93496119wic.0
	for <yocto@yoctoproject.org>; Wed, 21 Oct 2015 14:12:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=+0PzORv/0mRR8evC7d9jd+mbgNeR1g6OXwplRlZ1h88=;
	b=Ki65W4HnzDf0BCR0t203em4uTAfW16nyO38C/kwVq30rrJLqVsuOB1Gzr62UqTpRfp
	40EhIiCZgPLnsdLNhcu2swdHz+pMjbkim4FSrZEAKb1KCPN6oxCn/WDn3oLxhak6fskI
	ITUeCf0YuDo0aIf4/C9o6AcHPAtRrLTCSyLYgtrDc1XRlVnIKpL6iPaC3kOyTv1PxD/z
	+o3KSYokL7bNcp3pYLup5qIu2Su+3r/r5A/RIAzEQAlNSLdXY6/1/RQnwW67vzVuyavd
	069JuVfh8ALPyii0mLQGlfQpWLt/SU0FCTcCja2oiWPcrl6KfqGbEA/ZMCoomrY15BDG
	Eu5g==
X-Gm-Message-State: ALoCoQk26lLTGU+0pasMj8PVYs1S+iHLmotm1hOGHpt/l2WhMDZiRxUEwdUX2mzO1KY80NjklIIj
X-Received: by 10.180.37.76 with SMTP id w12mr13975734wij.0.1445461954243;
	Wed, 21 Oct 2015 14:12:34 -0700 (PDT)
Received: from resin.localdomain
	(dslb-088-067-185-162.088.067.pools.vodafone-ip.de. [88.67.185.162])
	by smtp.gmail.com with ESMTPSA id
	x7sm25248958wia.10.2015.10.21.14.12.32
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 21 Oct 2015 14:12:33 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Wed, 21 Oct 2015 23:12:01 +0200
Message-Id: <1445461931-18349-1-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.6.0
Subject: [meta-raspberrypi][PATCH 01/11] linux-raspberrypi: Update kernel to 3.18.16
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
X-List-Received-Date: Wed, 21 Oct 2015 21:12:38 -0000

From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>

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
index 6d8b155..a1fe6b4 100644
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
+do_compile_prepend() {
+  mkdir -p ${B}/arch/arm/boot/dts/overlays
+}
-- 
2.6.0


