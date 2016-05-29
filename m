Return-Path: <paul.betafive@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E3F9FE00EB3; Sun, 29 May 2016 08:59:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48571E00B9F
	for <yocto@yoctoproject.org>; Sun, 29 May 2016 08:59:11 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id e3so15152385wme.2
	for <yocto@yoctoproject.org>; Sun, 29 May 2016 08:59:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=4qptp8wrHsLoneMP2nps+aplWOEPS/XLhEl+FUYFXLI=;
	b=KiSBBILVHvb4QbVXBCZYu4QnbRgE7lTQGXlHYfMxxZ60pm/36A1gz47b/ewtD0Xnvq
	N+Ng/2/SOtL4L1zO8y3YnCa2IDehwtMOfsIr/vc9xXgzAOOyPk3MKwWZ3IITjmuq7chs
	fWgfz6MqSVPRCfvt+QQzVtaXjfgP8qAqdwf1AVVlL00IUHJXulI0Ak2dLmjAqWPCAYeC
	+wA3XWLRqmBIXsqv7PewYZI01/gYpcsZxBvOGCi4E9g7NofQbJKthPLzVLiSEHTnB9gs
	gaD/8JHfuubYIBueztr4TEdd/Efz/OT4fK5HM4Of74r6mFt+wVRitoJHwbFAmcCTkM74
	wsHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	bh=4qptp8wrHsLoneMP2nps+aplWOEPS/XLhEl+FUYFXLI=;
	b=U+id8LldIZq4JsPaIinox+POpoZ5ZgqbdgpkUYi/fP5opyieGVY8E7cSGDXSmL7wx6
	tSYkDGB1x87PmTmjQZjREJ3iI5aEEQ33r4XXtO5p6oesnilpgfGQJ9JaySQFr1nga1xy
	VLxwNpBIELTC5dl77S2U8a9SHmnBDd3pPK9itghiJIqL69/LIdr/3kOsD1kLr/FJ/ggn
	LYsdYnKOm5nHK1+Yt9kMjTE7PY0yhozood7kqirxCLfI1Xb1DMh4zyblOvDTCoHibBbZ
	ocMmdqR0BkTshXXCGi4aL8erzz3Zd2StZrI/f2DxtvaWwG6EDC3WEjNhPkHx4Hz8cElK
	gmnQ==
X-Gm-Message-State: ALyK8tKOjkL95TyDkz28dLXUqIM/ykBKZmdSgx4xbv/kM9ylHRHPhqYaBwje3+eMrjvKeQ==
X-Received: by 10.28.140.140 with SMTP id o134mr6715711wmd.27.1464537550932;
	Sun, 29 May 2016 08:59:10 -0700 (PDT)
Received: from dev-jessie.betafive.co.uk
	(cpc11-shep11-2-0-cust130.8-3.cable.virginm.net. [86.27.96.131])
	by smtp.gmail.com with ESMTPSA id
	kq9sm29834872wjc.26.2016.05.29.08.59.10
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 29 May 2016 08:59:10 -0700 (PDT)
Sender: Paul Barker <paul.betafive@gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
To: yocto@yoctoproject.org
Date: Sun, 29 May 2016 16:59:12 +0100
Message-Id: <1464537553-24915-6-git-send-email-paul@paulbarker.me.uk>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1464537553-24915-1-git-send-email-paul@paulbarker.me.uk>
References: <1464537553-24915-1-git-send-email-paul@paulbarker.me.uk>
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH 5/6] linux-raspberrypi: Drop version 3.18
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
X-List-Received-Date: Sun, 29 May 2016 15:59:13 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The linux-raspberrypi v3.18 recipe does not build after commit
519c387e3b97ecc21ac1d7b4fc9197298f289a71 as it lacks the necessary dtb files.

Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
---
 .../0001-dts-add-overlay-for-pitft22.patch         | 110 ---------------------
 recipes-kernel/linux/linux-raspberrypi_3.18.bb     |  15 ---
 2 files changed, 125 deletions(-)
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi-3.18/0001-dts-add-overlay-for-pitft22.patch
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi_3.18.bb

diff --git a/recipes-kernel/linux/linux-raspberrypi-3.18/0001-dts-add-overlay-for-pitft22.patch b/recipes-kernel/linux/linux-raspberrypi-3.18/0001-dts-add-overlay-for-pitft22.patch
deleted file mode 100644
index fa73599..0000000
--- a/recipes-kernel/linux/linux-raspberrypi-3.18/0001-dts-add-overlay-for-pitft22.patch
+++ /dev/null
@@ -1,110 +0,0 @@
-From 2f44861e2a2d651a9aa62a75343a032fee33e93b Mon Sep 17 00:00:00 2001
-From: =?UTF-8?q?Petter=20Mab=C3=A4cker?= <petter@technux.se>
-Date: Fri, 8 Jan 2016 09:02:44 +0100
-Subject: [PATCH] dts: add overlay for pitft22 in linux 3.18
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
-diff --git a/arch/arm/boot/dts/overlays/Makefile b/arch/arm/boot/dts/overlays/Makefile
-index c766616..1eaaf81 100644
---- a/arch/arm/boot/dts/overlays/Makefile
-+++ b/arch/arm/boot/dts/overlays/Makefile
-@@ -27,6 +27,7 @@ dtb-$(RPI_DT_OVERLAYS) += mcp2515-can0-overlay.dtb
- dtb-$(RPI_DT_OVERLAYS) += mmc-overlay.dtb
- dtb-$(RPI_DT_OVERLAYS) += mz61581-overlay.dtb
- dtb-$(RPI_DT_OVERLAYS) += piscreen-overlay.dtb
-+dtb-$(RPI_DT_OVERLAYS) += pitft22-overlay.dtb
- dtb-$(RPI_DT_OVERLAYS) += pitft28-resistive-overlay.dtb
- dtb-$(RPI_DT_OVERLAYS) += pps-gpio-overlay.dtb
- dtb-$(RPI_DT_OVERLAYS) += rpi-dac-overlay.dtb
-diff --git a/arch/arm/boot/dts/overlays/pitft22-overlay.dts b/arch/arm/boot/dts/overlays/pitft22-overlay.dts
-new file mode 100755
-index 0000000..894ba22
---- /dev/null
-+++ b/arch/arm/boot/dts/overlays/pitft22-overlay.dts
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
--- 
-1.9.1
-
diff --git a/recipes-kernel/linux/linux-raspberrypi_3.18.bb b/recipes-kernel/linux/linux-raspberrypi_3.18.bb
deleted file mode 100644
index b16a1d7..0000000
--- a/recipes-kernel/linux/linux-raspberrypi_3.18.bb
+++ /dev/null
@@ -1,15 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
-
-LINUX_VERSION ?= "3.18.16"
-PV = "${LINUX_VERSION}+git${SRCPV}"
-
-SRCREV = "1bb18c8f721ef674a447f3622273f2e2de7a205c"
-SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.18.y \
-           file://0001-dts-add-overlay-for-pitft22.patch \
-          "
-require linux-raspberrypi.inc
-
-# Create missing out of tree 'overlays' directory prior to install step
-do_compile_prepend() {
-  mkdir -p ${B}/arch/arm/boot/dts/overlays
-}
-- 
2.1.4


