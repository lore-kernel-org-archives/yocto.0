Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02EB9E00B70; Mon, 25 Apr 2016 14:29:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.54 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f54.google.com (mail-pa0-f54.google.com
	[209.85.220.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97911E00AF2
	for <yocto@yoctoproject.org>; Mon, 25 Apr 2016 14:29:20 -0700 (PDT)
Received: by mail-pa0-f54.google.com with SMTP id r5so63284453pag.1
	for <yocto@yoctoproject.org>; Mon, 25 Apr 2016 14:29:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=QEDWO4GHEDPwZFNTiJKS190r84LlSp1rIMHXGt8kN0k=;
	b=vr1C8kf7WIaKa0ktVnjrjYqgVcLPbcDJDZmTQE36cHfs2jC1FTpy/LJ6NYA591H5Su
	PbdCZ/uu6HfZRUjGS1K5vc9THisriBAIMv+B9hHQA6bqKUWLByEWYYLBJ/bMjbunsLtK
	5GX79GdOS/flU6GWhsBdVRaOMFOnsWz+5iELsmThrCKzFF0YIGzhyZkrJLOy/H71GWB+
	1J3FOmvVuuISj712AOueEH+0vYRDZuQGcDiC2fYcfgfttoVze7JU1rgg1XBzK8Z3nKfF
	l9xZlchGkbU+I+GKiMVpIct/yKZSsmpNQDOxEafAdr0G+0DjiOnen9v/MUiME52dY9z/
	e7sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=QEDWO4GHEDPwZFNTiJKS190r84LlSp1rIMHXGt8kN0k=;
	b=YPp8Uto6HvLXRB5Iq2WQA0uGSqpKR0VNJw/hrM5LzUTtGfSKT6QGN3Ne5x7+SggUsx
	ipDdhPeAHCkWzF2O1hEvRj3HZ4Vomc6UnKNdipE+QNnrs1cNHDhupVZ1/JMR73nS8kI4
	hNa1Yvy0CozlA2wmgSIh1Dbwb1V8lo7g9670YA670eSXHnq5UShQJONebH/zDVNEJ21p
	nLnBxrWSZtXuxrYv+DcS8uxQqhUabAkH7H4pR73xPfhpfipDF30zceMT0+mqw0R/V6tJ
	oBD4DpA8JApNkRbQwSAWsJaokyTN46BG8xFVrd0nCAlNMVftxWd/lzymezeDcmLZS8vo
	cFkw==
X-Gm-Message-State: AOPr4FWYoA+7qhWOR9mXUaWuS0CPvMCn6fcmGlYkIvMssN4xW7x2cLvGc5HzwdvXQkkmiA==
X-Received: by 10.67.2.41 with SMTP id bl9mr30678pad.39.1461619760385;
	Mon, 25 Apr 2016 14:29:20 -0700 (PDT)
Received: from haswell.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	w125sm31188239pfb.16.2016.04.25.14.29.19
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 25 Apr 2016 14:29:19 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 25 Apr 2016 14:29:14 -0700
Message-Id: <1461619754-3074-1-git-send-email-raj.khem@gmail.com>
X-Mailer: git-send-email 2.8.0
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH] linux-raspberrypi_4.4.bb: Upgrade to 4.4.8
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
X-List-Received-Date: Mon, 25 Apr 2016 21:29:24 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Fixes for gcc6
Drop upstreamed patch

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 .../0001-dts-add-overlay-for-pitft22.patch         | 106 ---------------------
 recipes-kernel/linux/linux-raspberrypi_4.4.bb      |   6 +-
 2 files changed, 2 insertions(+), 110 deletions(-)
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi-4.4/0001-dts-add-overlay-for-pitft22.patch

diff --git a/recipes-kernel/linux/linux-raspberrypi-4.4/0001-dts-add-overlay-for-pitft22.patch b/recipes-kernel/linux/linux-raspberrypi-4.4/0001-dts-add-overlay-for-pitft22.patch
deleted file mode 100644
index 7cb076f..0000000
--- a/recipes-kernel/linux/linux-raspberrypi-4.4/0001-dts-add-overlay-for-pitft22.patch
+++ /dev/null
@@ -1,106 +0,0 @@
-From a28bd410022b32a64e208f04b45add6326990332 Mon Sep 17 00:00:00 2001
-From: =?UTF-8?q?Petter=20Mab=C3=A4cker?= <petter@technux.se>
-Date: Fri, 8 Jan 2016 09:02:44 +0100
-Subject: [PATCH] dts: add overlay for pitft22
-MIME-Version: 1.0
-Content-Type: text/plain; charset=UTF-8
-Content-Transfer-Encoding: 8bit
-
-Upstream-Status: Pending
-
-Add the pitft22 overlay from adafruit Adafruit-Pi-Kernel-o-Matic repo:
-https://github.com/adafruit/Adafruit-Pi-Kernel-o-Matic
-
-Signed-off-by: Petter Mabäcker <petter@technux.se>
----
- arch/arm/boot/dts/overlays/Makefile            |  1 +
- arch/arm/boot/dts/overlays/pitft22-overlay.dts | 69 ++++++++++++++++++++++++++
- 2 files changed, 70 insertions(+)
- create mode 100755 arch/arm/boot/dts/overlays/pitft22-overlay.dts
-
-Index: kernel-source/arch/arm/boot/dts/overlays/pitft22-overlay.dts
-===================================================================
---- /dev/null
-+++ kernel-source/arch/arm/boot/dts/overlays/pitft22-overlay.dts
-@@ -0,0 +1,69 @@
-+/*
-+ * Device Tree overlay for pitft by Adafruit
-+ *
-+ */
-+
-+/dts-v1/;
-+/plugin/;
-+
-+/ {
-+        compatible = "brcm,bcm2835", "brcm,bcm2708", "brcm,bcm2709";
-+
-+        fragment@0 {
-+                target = <&spi0>;
-+                __overlay__ {
-+                        status = "okay";
-+
-+                        spidev@0{
-+                                status = "disabled";
-+                        };
-+
-+                        spidev@1{
-+                                status = "disabled";
-+                        };
-+                };
-+        };
-+
-+        fragment@1 {
-+                target = <&gpio>;
-+                __overlay__ {
-+                        pitft_pins: pitft_pins {
-+                                brcm,pins = <25>;
-+                                brcm,function = <1>; /* out */
-+                                brcm,pull = <0>; /* none */
-+                        };
-+                };
-+        };
-+
-+        fragment@2 {
-+                target = <&spi0>;
-+                __overlay__ {
-+                        /* needed to avoid dtc warning */
-+                        #address-cells = <1>;
-+                        #size-cells = <0>;
-+
-+                        pitft: pitft@0{
-+                                compatible = "ilitek,ili9340";
-+                                reg = <0>;
-+                                pinctrl-names = "default";
-+                                pinctrl-0 = <&pitft_pins>;
-+
-+                                spi-max-frequency = <32000000>;
-+                                rotate = <90>;
-+                                fps = <25>;
-+                                bgr;
-+                                buswidth = <8>;
-+                                dc-gpios = <&gpio 25 0>;
-+                                debug = <0>;
-+                        };
-+
-+                };
-+        };
-+
-+        __overrides__ {
-+                speed =   <&pitft>,"spi-max-frequency:0";
-+                rotate =  <&pitft>,"rotate:0";
-+                fps =     <&pitft>,"fps:0";
-+                debug =   <&pitft>,"debug:0";
-+        };
-+};
-Index: kernel-source/arch/arm/boot/dts/overlays/Makefile
-===================================================================
---- kernel-source.orig/arch/arm/boot/dts/overlays/Makefile
-+++ kernel-source/arch/arm/boot/dts/overlays/Makefile
-@@ -43,6 +43,7 @@ dtbo-$(RPI_DT_OVERLAYS) += pi3-disable-b
- dtbo-$(RPI_DT_OVERLAYS) += pi3-miniuart-bt.dtbo
- dtbo-$(RPI_DT_OVERLAYS) += piscreen.dtbo
- dtbo-$(RPI_DT_OVERLAYS) += piscreen2r.dtbo
-+dtbo-$(RPI_DT_OVERLAYS) += pitft22-overlay.dtbo
- dtbo-$(RPI_DT_OVERLAYS) += pitft28-capacitive.dtbo
- dtbo-$(RPI_DT_OVERLAYS) += pitft28-resistive.dtbo
- dtbo-$(RPI_DT_OVERLAYS) += pps-gpio.dtbo
diff --git a/recipes-kernel/linux/linux-raspberrypi_4.4.bb b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
index 9cb8aae..f6e1005 100644
--- a/recipes-kernel/linux/linux-raspberrypi_4.4.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
@@ -1,10 +1,8 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
 
-LINUX_VERSION ?= "4.4.7"
+LINUX_VERSION ?= "4.4.8"
 
-SRCREV = "3de232825c9ba5989522b8691eb6ac5df6619458"
+SRCREV = "fe7ad6aa5c6940817fe971d80a7b2a1d6052190a"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.4.y \
-           file://0001-dts-add-overlay-for-pitft22.patch \
 "
-
 require linux-raspberrypi.inc
-- 
2.8.0


