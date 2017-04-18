Return-Path: <pbarker@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85E0FE00A81; Tue, 18 Apr 2017 13:59:26 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D55EE00A9B
	for <yocto@yoctoproject.org>; Tue, 18 Apr 2017 13:59:23 -0700 (PDT)
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net
	[217.70.183.200])
	by slow1-d.mail.gandi.net (Postfix) with ESMTP id CD9D647F068
	for <yocto@yoctoproject.org>; Tue, 18 Apr 2017 22:51:52 +0200 (CEST)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net
	[217.70.183.195])
	by relay7-d.mail.gandi.net (Postfix) with ESMTPS id 10E6D3812;
	Tue, 18 Apr 2017 22:51:52 +0200 (CEST)
Received: from mfilter21-d.gandi.net (mfilter21-d.gandi.net [217.70.178.149])
	by relay3-d.mail.gandi.net (Postfix) with ESMTP id 00470A80C2;
	Tue, 18 Apr 2017 22:51:51 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at mfilter21-d.gandi.net
Received: from relay3-d.mail.gandi.net ([IPv6:::ffff:217.70.183.195])
	by mfilter21-d.gandi.net (mfilter21-d.gandi.net [::ffff:10.0.15.180])
	(amavisd-new, port 10024)
	with ESMTP id IRUx2pjkVA3r; Tue, 18 Apr 2017 22:51:50 +0200 (CEST)
X-Originating-IP: 82.34.23.153
Received: from host0.betafive.co.uk
	(cpc116908-shep14-2-0-cust920.8-3.cable.virginm.net [82.34.23.153])
	(Authenticated sender: noreply@paulbarker.me.uk)
	by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 295F6A80CF;
	Tue, 18 Apr 2017 22:51:50 +0200 (CEST)
Received: by host0.betafive.co.uk (Postfix, from userid 2525)
	id 863774045D6A; Tue, 18 Apr 2017 21:51:19 +0100 (BST)
From: Paul Barker <pbarker@toganlabs.com>
To: yocto@yoctoproject.org
Date: Tue, 18 Apr 2017 21:51:03 +0100
Message-Id: <20170418205108.14629-4-pbarker@toganlabs.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170418205108.14629-1-pbarker@toganlabs.com>
References: <20170418205108.14629-1-pbarker@toganlabs.com>
Subject: [meta-raspberrypi][morty][PATCH 3/8] Add raspberrypi3-64.conf
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

From: Herve Jourdain <herve.jourdain@neuf.fr>

Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 conf/machine/raspberrypi3-64.conf | 15 +++++++++++++++
 1 file changed, 15 insertions(+)
 create mode 100644 conf/machine/raspberrypi3-64.conf

diff --git a/conf/machine/raspberrypi3-64.conf b/conf/machine/raspberrypi3-64.conf
new file mode 100644
index 0000000..5598e50
--- /dev/null
+++ b/conf/machine/raspberrypi3-64.conf
@@ -0,0 +1,15 @@
+#@TYPE: Machine
+#@NAME: RaspberryPi 3 Development Board
+#@DESCRIPTION: Machine configuration for the RaspberryPi 3 in 64 bits mode
+
+MACHINEOVERRIDES = "raspberrypi3:raspberrypi:${MACHINE}"
+
+MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-bcm43430"
+
+require conf/machine/include/arm/arch-armv8.inc
+include conf/machine/include/rpi-base.inc
+
+SERIAL_CONSOLE = "115200 ttyS0"
+VC4_CMA_SIZE ?= "cma-256"
+
+UBOOT_MACHINE = "rpi_3_config"
-- 
2.11.0


