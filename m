Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D5EDDE00D53; Sun, 13 Mar 2016 22:35:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.179 listed in list.dnswl.org]
Received: from mail-pf0-f179.google.com (mail-pf0-f179.google.com
	[209.85.192.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7EA04E00D4A
	for <yocto@yoctoproject.org>; Sun, 13 Mar 2016 22:35:42 -0700 (PDT)
Received: by mail-pf0-f179.google.com with SMTP id n5so90266259pfn.2
	for <yocto@yoctoproject.org>; Sun, 13 Mar 2016 22:35:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=a1IsBpcIgUjkyT1DxfOHbukYQn6VYNrPiR3QZqFIBEo=;
	b=rMpLGElRXR6D3/g45sTOQtlHkQUVk1HV+Yq1cbF8EokG2BnB8iSQd14pT+n19iJEtl
	phm5ZSfS21A+qATAYQeFTtCu/+a0i0v1Gxl7krh9m049FMiHItvXYAu6XTzLPB0f6Ot9
	L6ZhE5lpg+IvhQCHwLscUWgcO7aVbaXMt/WJ10eflXke4cv23KO4pKMldHpJdQC8POuq
	YOjlWG5uQwQSNyuliLr2CKmU/l2PETT1eKwCQ8r6KMDiVMviI4KDC3MmxMK0ZQ/tzj/b
	/5gwE594vnO7XZcN8JuIyvCG68m8lkYXZOdrqOWXeOZu8aUWg0NFunwIczlimi5nwdXp
	AH8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=a1IsBpcIgUjkyT1DxfOHbukYQn6VYNrPiR3QZqFIBEo=;
	b=hfXBhR5Q90fTMIUTBjlpjVvnM5eMF5j/CPZbsPGL0dn2DqeCubJAY0E9uGacSnD0w9
	BqJ2jDtO81piGILKqM1Svflc8Zf0fDDC6ia5Dtm550iE+4vy/ZB/LLFBTqoqUoGGB49l
	VSPdNwUuxU5uACJHhjb+pZey35n1z5+x85xp+xsIRxls9D8nvP6hHipKvjDeFjgUdyin
	f/p6vS42NDegZTdu2dn3ECUN++XDOxBbx6cUmVmDSydtvIyIjRZaHA5FE3VFsI8kE5iG
	aYRkmAfA7CHSk5m26HUmY7KJb/6b8DN+Cnx/FSVG5HyGh+TsUODKmIeSnEjCMuePYDrr
	rskA==
X-Gm-Message-State: AD7BkJKETRtW1DwKVcQvGOT0VX1mGVx8mtu+EpgiYR4mARSHNFuttLYLsK+Dxu76GY0X+A==
X-Received: by 10.98.10.6 with SMTP id s6mr10838492pfi.139.1457933742434;
	Sun, 13 Mar 2016 22:35:42 -0700 (PDT)
Received: from haswell.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	y15sm28709806pfi.16.2016.03.13.22.35.40
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 13 Mar 2016 22:35:41 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 13 Mar 2016 22:34:01 -0700
Message-Id: <1457933641-23892-1-git-send-email-raj.khem@gmail.com>
X-Mailer: git-send-email 2.7.3
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH] linux-raspberrypi-4.4: Add the pitft22 overlay from adafruit
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
X-List-Received-Date: Mon, 14 Mar 2016 05:35:46 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 .../0001-dts-add-overlay-for-pitft22.patch         | 106 +++++++++++++++++++++
 recipes-kernel/linux/linux-raspberrypi_4.4.bb      |  10 +-
 2 files changed, 113 insertions(+), 3 deletions(-)
 create mode 100644 recipes-kernel/linux/linux-raspberrypi-4.4/0001-dts-add-overlay-for-pitft22.patch

diff --git a/recipes-kernel/linux/linux-raspberrypi-4.4/0001-dts-add-overlay-for-pitft22.patch b/recipes-kernel/linux/linux-raspberrypi-4.4/0001-dts-add-overlay-for-pitft22.patch
new file mode 100644
index 0000000..7cb076f
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi-4.4/0001-dts-add-overlay-for-pitft22.patch
@@ -0,0 +1,106 @@
+From a28bd410022b32a64e208f04b45add6326990332 Mon Sep 17 00:00:00 2001
+From: =?UTF-8?q?Petter=20Mab=C3=A4cker?= <petter@technux.se>
+Date: Fri, 8 Jan 2016 09:02:44 +0100
+Subject: [PATCH] dts: add overlay for pitft22
+MIME-Version: 1.0
+Content-Type: text/plain; charset=UTF-8
+Content-Transfer-Encoding: 8bit
+
+Upstream-Status: Pending
+
+Add the pitft22 overlay from adafruit Adafruit-Pi-Kernel-o-Matic repo:
+https://github.com/adafruit/Adafruit-Pi-Kernel-o-Matic
+
+Signed-off-by: Petter Mabäcker <petter@technux.se>
+---
+ arch/arm/boot/dts/overlays/Makefile            |  1 +
+ arch/arm/boot/dts/overlays/pitft22-overlay.dts | 69 ++++++++++++++++++++++++++
+ 2 files changed, 70 insertions(+)
+ create mode 100755 arch/arm/boot/dts/overlays/pitft22-overlay.dts
+
+Index: kernel-source/arch/arm/boot/dts/overlays/pitft22-overlay.dts
+===================================================================
+--- /dev/null
++++ kernel-source/arch/arm/boot/dts/overlays/pitft22-overlay.dts
+@@ -0,0 +1,69 @@
++/*
++ * Device Tree overlay for pitft by Adafruit
++ *
++ */
++
++/dts-v1/;
++/plugin/;
++
++/ {
++        compatible = "brcm,bcm2835", "brcm,bcm2708", "brcm,bcm2709";
++
++        fragment@0 {
++                target = <&spi0>;
++                __overlay__ {
++                        status = "okay";
++
++                        spidev@0{
++                                status = "disabled";
++                        };
++
++                        spidev@1{
++                                status = "disabled";
++                        };
++                };
++        };
++
++        fragment@1 {
++                target = <&gpio>;
++                __overlay__ {
++                        pitft_pins: pitft_pins {
++                                brcm,pins = <25>;
++                                brcm,function = <1>; /* out */
++                                brcm,pull = <0>; /* none */
++                        };
++                };
++        };
++
++        fragment@2 {
++                target = <&spi0>;
++                __overlay__ {
++                        /* needed to avoid dtc warning */
++                        #address-cells = <1>;
++                        #size-cells = <0>;
++
++                        pitft: pitft@0{
++                                compatible = "ilitek,ili9340";
++                                reg = <0>;
++                                pinctrl-names = "default";
++                                pinctrl-0 = <&pitft_pins>;
++
++                                spi-max-frequency = <32000000>;
++                                rotate = <90>;
++                                fps = <25>;
++                                bgr;
++                                buswidth = <8>;
++                                dc-gpios = <&gpio 25 0>;
++                                debug = <0>;
++                        };
++
++                };
++        };
++
++        __overrides__ {
++                speed =   <&pitft>,"spi-max-frequency:0";
++                rotate =  <&pitft>,"rotate:0";
++                fps =     <&pitft>,"fps:0";
++                debug =   <&pitft>,"debug:0";
++        };
++};
+Index: kernel-source/arch/arm/boot/dts/overlays/Makefile
+===================================================================
+--- kernel-source.orig/arch/arm/boot/dts/overlays/Makefile
++++ kernel-source/arch/arm/boot/dts/overlays/Makefile
+@@ -43,6 +43,7 @@ dtbo-$(RPI_DT_OVERLAYS) += pi3-disable-b
+ dtbo-$(RPI_DT_OVERLAYS) += pi3-miniuart-bt.dtbo
+ dtbo-$(RPI_DT_OVERLAYS) += piscreen.dtbo
+ dtbo-$(RPI_DT_OVERLAYS) += piscreen2r.dtbo
++dtbo-$(RPI_DT_OVERLAYS) += pitft22-overlay.dtbo
+ dtbo-$(RPI_DT_OVERLAYS) += pitft28-capacitive.dtbo
+ dtbo-$(RPI_DT_OVERLAYS) += pitft28-resistive.dtbo
+ dtbo-$(RPI_DT_OVERLAYS) += pps-gpio.dtbo
diff --git a/recipes-kernel/linux/linux-raspberrypi_4.4.bb b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
index f7c5bfb..027d964 100644
--- a/recipes-kernel/linux/linux-raspberrypi_4.4.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
@@ -1,6 +1,10 @@
-LINUX_VERSION ?= "4.4.3"
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
 
-SRCREV = "36babd89241c85258acebe06616f1f1a58356f8e"
-SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.4.y"
+LINUX_VERSION ?= "4.4.5"
+
+SRCREV = "a2c8f5b320a7ca852551bb58a816fcb2b462f9bc"
+SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.4.y \
+           file://0001-dts-add-overlay-for-pitft22.patch \
+"
 
 require linux-raspberrypi.inc
-- 
2.7.3


