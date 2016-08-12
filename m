Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF280E0125B; Thu, 11 Aug 2016 18:06:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.65 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f65.google.com (mail-pa0-f65.google.com
	[209.85.220.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1FE73E0125C
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2016 18:06:35 -0700 (PDT)
Received: by mail-pa0-f65.google.com with SMTP id ez1so558616pab.3
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2016 18:06:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=f3044S6QuSK+c28n5n4V+EAa5EbKbOsjcDfWQeFwbaI=;
	b=VO+RoebUwYKgomcxAXeARTE5mFmkroZhCt1QUYeiXn8PiNKSHIyZG8Qbt/PjZQKC1p
	f7aS5r4SngVSzhMzWO//Q681+jaznDVas0BeVfgXd3bd7CVE7/OX5sNXG84QUZYYQyXX
	nLYvSzsoyplm7hUGKYDEVXGO/2E9omwVPIcfxIYSaEU7ozFDZ7OJiCCKLe3LlpxzuLwT
	z3P9ozPyghWeFdG6Mu8No4x95U+1IfiX+vhUJJpTxdyYZYp/OKxjYetpQEcEkCDZMUjO
	zP6we2Ws3skMGByRLrEF2q44d4JhF+qegauEIC4Utq3gzWiVRiCFD/BeKtUbyZy0bhPs
	Oghg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=f3044S6QuSK+c28n5n4V+EAa5EbKbOsjcDfWQeFwbaI=;
	b=Rm90YjHzqU+rPG5ytCBAaZ1nXL6PaOvuLKL2bCg6dJ7kOzHns50gz6WP905IsB2MAZ
	TWN8rnKI9vtD9n0tc+Qd5YkstHP7Eqo+TLZd5dTbApJdfCdv4pQnVZ69lpskYaz1oZ16
	H6IeQXHTPKdYc7FHXHP+eeDQUxEUi+zaDg8CZsfZ1+UPIwKByuVF1yqzCyhFz8jn2dkn
	q6O1bjfr1lUbDHbEPTsLVXMZw3Ym6wZCXYzV/Q07IOnhwcJg1nKHfiue8dj+RSIdjrAe
	qUvaTPk7iccTp1QlTlZXDOvdsBMON3KQbBfZveZ/KmWzIut0lI1GZaeIRKmLnWsn4Yzm
	R+/Q==
X-Gm-Message-State: AEkooutQaV2sSNtHFrHQTziDV1fK1+0xbzfdIP6k4oLTxnqp/S1R2LbkVwS+efeuzYi56A==
X-Received: by 10.66.159.195 with SMTP id xe3mr22651366pab.159.1470963994539; 
	Thu, 11 Aug 2016 18:06:34 -0700 (PDT)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192])
	by smtp.gmail.com with ESMTPSA id a5sm7955260pfc.89.2016.08.11.18.06.33
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 11 Aug 2016 18:06:34 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 11 Aug 2016 18:06:04 -0700
Message-Id: <20160812010608.31182-19-raj.khem@gmail.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <20160812010608.31182-1-raj.khem@gmail.com>
References: <20160812010608.31182-1-raj.khem@gmail.com>
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH 19/23] linux-raspberrypi_3.18: Remove
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
X-List-Received-Date: Fri, 12 Aug 2016 01:06:41 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 .../0001-dts-add-overlay-for-pitft22.patch         | 110 ---------------------
 recipes-kernel/linux/linux-raspberrypi_3.18.bb     |  14 ---
 2 files changed, 124 deletions(-)
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
index 1110b71..0000000
--- a/recipes-kernel/linux/linux-raspberrypi_3.18.bb
+++ /dev/null
@@ -1,14 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
-
-LINUX_VERSION ?= "3.18.16"
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
2.9.2


