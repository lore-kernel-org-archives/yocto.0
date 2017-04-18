Return-Path: <pbarker@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10E33E00ACE; Tue, 18 Apr 2017 13:59:24 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8AF06E00A31
	for <yocto@yoctoproject.org>; Tue, 18 Apr 2017 13:59:21 -0700 (PDT)
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net
	[217.70.183.201])
	by slow1-d.mail.gandi.net (Postfix) with ESMTP id B555247F0DD
	for <yocto@yoctoproject.org>; Tue, 18 Apr 2017 22:51:24 +0200 (CEST)
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net
	[217.70.183.197])
	by relay8-d.mail.gandi.net (Postfix) with ESMTPS id DA70D406BF;
	Tue, 18 Apr 2017 22:51:22 +0200 (CEST)
Received: from mfilter11-d.gandi.net (mfilter11-d.gandi.net [217.70.178.131])
	by relay5-d.mail.gandi.net (Postfix) with ESMTP id B377341C086;
	Tue, 18 Apr 2017 22:51:22 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at mfilter11-d.gandi.net
Received: from relay5-d.mail.gandi.net ([IPv6:::ffff:217.70.183.197])
	by mfilter11-d.gandi.net (mfilter11-d.gandi.net [::ffff:10.0.15.180])
	(amavisd-new, port 10024)
	with ESMTP id I9I974SKVRy8; Tue, 18 Apr 2017 22:51:21 +0200 (CEST)
X-Originating-IP: 82.34.23.153
Received: from host0.betafive.co.uk
	(cpc116908-shep14-2-0-cust920.8-3.cable.virginm.net [82.34.23.153])
	(Authenticated sender: noreply@paulbarker.me.uk)
	by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 2AA6641C090;
	Tue, 18 Apr 2017 22:51:20 +0200 (CEST)
Received: by host0.betafive.co.uk (Postfix, from userid 2525)
	id 90B564045D7C; Tue, 18 Apr 2017 21:51:19 +0100 (BST)
From: Paul Barker <pbarker@toganlabs.com>
To: yocto@yoctoproject.org
Date: Tue, 18 Apr 2017 21:51:06 +0100
Message-Id: <20170418205108.14629-7-pbarker@toganlabs.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170418205108.14629-1-pbarker@toganlabs.com>
References: <20170418205108.14629-1-pbarker@toganlabs.com>
Subject: [meta-raspberrypi][morty][PATCH 6/8] raspberrypi3-64: Override rpi-default-versions.inc
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
X-List-Received-Date: Tue, 18 Apr 2017 20:59:24 -0000

Signed-off-by: Paul Barker <pbarker@toganlabs.com>
---
 conf/machine/raspberrypi3-64.conf | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/conf/machine/raspberrypi3-64.conf b/conf/machine/raspberrypi3-64.conf
index e7d9af2..7e99da1 100644
--- a/conf/machine/raspberrypi3-64.conf
+++ b/conf/machine/raspberrypi3-64.conf
@@ -6,6 +6,9 @@ MACHINEOVERRIDES = "raspberrypi3:raspberrypi:${MACHINE}"
 
 MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-bcm43430"
 
+# Set this early so it overrides rpi-default-versions.inc
+PREFERRED_VERSION_linux-raspberrypi ?= "4.9.%"
+
 require conf/machine/include/arm/arch-armv8.inc
 include conf/machine/include/rpi-base.inc
 
@@ -36,5 +39,3 @@ SERIAL_CONSOLE = "115200 ttyS0"
 VC4_CMA_SIZE ?= "cma-256"
 
 UBOOT_MACHINE = "rpi_3_config"
-
-PREFERRED_VERSION_linux-raspberrypi ?= "4.9.%"
-- 
2.11.0


