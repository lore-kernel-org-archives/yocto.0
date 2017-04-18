Return-Path: <pbarker@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D42CEE00A9A; Tue, 18 Apr 2017 13:59:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [217.70.178.86 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from slow1-d.mail.gandi.net (slow1-d.mail.gandi.net [217.70.178.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4067AE00AB6
	for <yocto@yoctoproject.org>; Tue, 18 Apr 2017 13:59:23 -0700 (PDT)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net
	[217.70.183.196])
	by slow1-d.mail.gandi.net (Postfix) with ESMTP id 6EE3147F0EF
	for <yocto@yoctoproject.org>; Tue, 18 Apr 2017 22:51:53 +0200 (CEST)
Received: from mfilter15-d.gandi.net (mfilter15-d.gandi.net [217.70.178.143])
	by relay4-d.mail.gandi.net (Postfix) with ESMTP id 9EA4617209C;
	Tue, 18 Apr 2017 22:51:52 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at mfilter15-d.gandi.net
Received: from relay4-d.mail.gandi.net ([IPv6:::ffff:217.70.183.196])
	by mfilter15-d.gandi.net (mfilter15-d.gandi.net [::ffff:10.0.15.180])
	(amavisd-new, port 10024)
	with ESMTP id WNq3jsLcKi6F; Tue, 18 Apr 2017 22:51:51 +0200 (CEST)
X-Originating-IP: 82.34.23.153
Received: from host0.betafive.co.uk
	(cpc116908-shep14-2-0-cust920.8-3.cable.virginm.net [82.34.23.153])
	(Authenticated sender: noreply@paulbarker.me.uk)
	by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 187E71720AF;
	Tue, 18 Apr 2017 22:51:50 +0200 (CEST)
Received: by host0.betafive.co.uk (Postfix, from userid 2525)
	id 8D7AD4045D7B; Tue, 18 Apr 2017 21:51:19 +0100 (BST)
From: Paul Barker <pbarker@toganlabs.com>
To: yocto@yoctoproject.org
Date: Tue, 18 Apr 2017 21:51:05 +0100
Message-Id: <20170418205108.14629-6-pbarker@toganlabs.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170418205108.14629-1-pbarker@toganlabs.com>
References: <20170418205108.14629-1-pbarker@toganlabs.com>
Subject: [meta-raspberrypi][morty][PATCH 5/8] raspberrypi3-64.conf: Specifiy rpi3-64bit dtbs
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
X-List-Received-Date: Tue, 18 Apr 2017 20:59:26 -0000

From: Khem Raj <raj.khem@gmail.com>

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 conf/machine/raspberrypi3-64.conf | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/conf/machine/raspberrypi3-64.conf b/conf/machine/raspberrypi3-64.conf
index cdcd726..e7d9af2 100644
--- a/conf/machine/raspberrypi3-64.conf
+++ b/conf/machine/raspberrypi3-64.conf
@@ -9,6 +9,29 @@ MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-bcm43430"
 require conf/machine/include/arm/arch-armv8.inc
 include conf/machine/include/rpi-base.inc
 
+KERNEL_DEVICETREE = " \
+    broadcom/bcm2710-rpi-3-b.dtb \
+    broadcom/bcm2837-rpi-3-b.dtb \
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
+    overlays/pi3-disable-bt.dtbo \
+    overlays/pi3-miniuart-bt.dtbo \
+    overlays/vc4-kms-v3d.dtbo \
+    "
+
 SERIAL_CONSOLE = "115200 ttyS0"
 VC4_CMA_SIZE ?= "cma-256"
 
-- 
2.11.0


