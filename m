Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 415D4E00C39; Sat, 26 Mar 2016 09:59:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f48.google.com (mail-qg0-f48.google.com
	[209.85.192.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE19DE007EF
	for <yocto@yoctoproject.org>; Sat, 26 Mar 2016 09:59:47 -0700 (PDT)
Received: by mail-qg0-f48.google.com with SMTP id u110so80427343qge.3
	for <yocto@yoctoproject.org>; Sat, 26 Mar 2016 09:59:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=dRkkqz9IPAO0Csui3H0R6e5+nrx9OqUEoYbzM/xP4n8=;
	b=ge8Za4+gLpPrNpcr1FQRf0Ul+3mcTEcfVWGj7dqLuEo1nWIGD1gpGzf7oU1YzAN37k
	Fcx89GxSyNQo0cZnPiAG/YM9GA6YZFEulNXORkime0wf/CuM53WBYVRvKCwmmIGpWZDl
	jljZlFOZR9L1tLXxHxHh/2c8SVbHWyGwHsOINqwXm0k0/08j2tp6Db0L8b1oCyJBosNL
	wbudhvNJfoSJ3CS3d6zNmu5OP9Ft/ce/zhQW3XDV4orcw9HCN7+cB+xQYQOS+6ac8n91
	q0AkQGkDjAqni4NC+Oal4u2m50IoDFrOLGwtJx3Z91XVcA4MSFJdyMuWn3d6vLDJj7fH
	G+uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=dRkkqz9IPAO0Csui3H0R6e5+nrx9OqUEoYbzM/xP4n8=;
	b=ilvTXvukp27KlnZf3nTmRPpWQ+PZq+VfJDzzOWnaRPL1wCcnyDhyYm25o7Ol6n+IFN
	QhDqlZY5D8hwGRLcwQjU6+XSLuqQQGu1jJ/ZtHn/I6vbPjPYuoUfwIjrxm8JZ+pELVh0
	4b1A3CLJPeiVCLRhjW2/5PQDAQFAjQ4/sqFoqQ0OTjyjD+EUTR/2aodh3xA8JfMBo4jU
	khG4YjaA40SBKpCUiQUDQtvkH0zVutL5alvAt3PchGhqFMEeFyC2S0L5i9Y7FBBUsu/+
	mOBnfNtZRufTWOw+2/NXU2K3PU6TTM23OpeOV36JLe6yd8Z1R7qlfQYLiq2P5kI0AEwj
	CfXQ==
X-Gm-Message-State: AD7BkJLkSXz01KAHc2+lbeBRAEIYOUXDaJ0Z01/s/IVtbPTD/Toqgbd1g/sXbbbH0MvXwg==
X-Received: by 10.140.226.71 with SMTP id w68mr26738331qhb.4.1459011585875;
	Sat, 26 Mar 2016 09:59:45 -0700 (PDT)
Received: from eos.sys.comcast.net (a-96-118-179-133.sys.comcast.net.
	[96.118.179.133]) by smtp.gmail.com with ESMTPSA id
	o128sm7955368qhb.34.2016.03.26.09.59.44
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 26 Mar 2016 09:59:44 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 26 Mar 2016 16:59:33 +0000
Message-Id: <1459011577-14870-1-git-send-email-raj.khem@gmail.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH 1/5] linux-raspberrypi-4.4: Add the pitft22 overlay from adafruit
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
X-List-Received-Date: Sat, 26 Mar 2016 16:59:51 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Upgrade to 4.4.6

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
index f7c5bfb..8e4530f 100644
--- a/recipes-kernel/linux/linux-raspberrypi_4.4.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
@@ -1,6 +1,10 @@
-LINUX_VERSION ?= "4.4.3"
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
 
-SRCREV = "36babd89241c85258acebe06616f1f1a58356f8e"
-SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.4.y"
+LINUX_VERSION ?= "4.4.6"
+
+SRCREV = "2faaa2ccef9e4c595bd26f14285c225ceea6097e"
+SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.4.y \
+           file://0001-dts-add-overlay-for-pitft22.patch \
+"
 
 require linux-raspberrypi.inc
-- 
1.9.1


