Return-Path: <paul@paulbarker.me.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B6F6DE00874; Mon, 13 Feb 2017 15:33:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [217.70.183.195 listed in list.dnswl.org]
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net
	[217.70.183.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ECD7CE009C9
	for <yocto@yoctoproject.org>; Mon, 13 Feb 2017 15:33:18 -0800 (PST)
Received: from mfilter10-d.gandi.net (mfilter10-d.gandi.net [217.70.178.139])
	by relay3-d.mail.gandi.net (Postfix) with ESMTP id B4D2EA80C6;
	Tue, 14 Feb 2017 00:33:17 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at mfilter10-d.gandi.net
Received: from relay3-d.mail.gandi.net ([IPv6:::ffff:217.70.183.195])
	by mfilter10-d.gandi.net (mfilter10-d.gandi.net [::ffff:10.0.15.180])
	(amavisd-new, port 10024)
	with ESMTP id I6sEKEyUJIPS; Tue, 14 Feb 2017 00:33:16 +0100 (CET)
X-Originating-IP: 86.24.150.36
Received: from host0.betafive.co.uk
	(cpc15-shep11-2-0-cust35.8-3.cable.virginm.net [86.24.150.36])
	(Authenticated sender: noreply@paulbarker.me.uk)
	by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 2F6E4A80C1;
	Tue, 14 Feb 2017 00:33:16 +0100 (CET)
Received: by host0.betafive.co.uk (Postfix, from userid 2525)
	id C3C73403BFA9; Mon, 13 Feb 2017 23:32:44 +0000 (GMT)
From: paul@paulbarker.me.uk
To: yocto@yoctoproject.org
Date: Mon, 13 Feb 2017 23:32:43 +0000
Message-Id: <20170213233243.16688-2-paul@paulbarker.me.uk>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170213233243.16688-1-paul@paulbarker.me.uk>
References: <20170213233243.16688-1-paul@paulbarker.me.uk>
Subject: [meta-raspberrypi][PATCH 2/2] u-boot: Fix boot on rpi3
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
X-List-Received-Date: Mon, 13 Feb 2017 23:33:20 -0000

From: Paul Barker <paul@paulbarker.me.uk>

U-boot configured with 'rpi_2_config' does not boot on a RaspberryPi 3.
Instead we need to configure with 'rpi_3_32b_config'.

Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
---
 conf/machine/raspberrypi3.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/conf/machine/raspberrypi3.conf b/conf/machine/raspberrypi3.conf
index 1ac5928..f9e0ff5 100644
--- a/conf/machine/raspberrypi3.conf
+++ b/conf/machine/raspberrypi3.conf
@@ -7,5 +7,6 @@ include conf/machine/raspberrypi2.conf
 
 MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-bcm43430"
 
+UBOOT_MACHINE = "rpi_3_32b_config"
 SERIAL_CONSOLE = "115200 ttyS0"
 VC4_CMA_SIZE ?= "cma-256"
-- 
2.11.0


