Return-Path: <paul@paulbarker.me.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3805AE00AA2; Sat, 18 Feb 2017 11:51:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [217.70.183.197 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net
	[217.70.183.197])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA89AE00A6B
	for <yocto@yoctoproject.org>; Sat, 18 Feb 2017 11:51:40 -0800 (PST)
Received: from mfilter19-d.gandi.net (mfilter19-d.gandi.net [217.70.178.147])
	by relay5-d.mail.gandi.net (Postfix) with ESMTP id 1378441C07F;
	Sat, 18 Feb 2017 20:51:40 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at mfilter19-d.gandi.net
Received: from relay5-d.mail.gandi.net ([IPv6:::ffff:217.70.183.197])
	by mfilter19-d.gandi.net (mfilter19-d.gandi.net [::ffff:10.0.15.180])
	(amavisd-new, port 10024)
	with ESMTP id EjTlUOqiBwvM; Sat, 18 Feb 2017 20:51:38 +0100 (CET)
X-Originating-IP: 86.24.150.36
Received: from host0.betafive.co.uk
	(cpc15-shep11-2-0-cust35.8-3.cable.virginm.net [86.24.150.36])
	(Authenticated sender: noreply@paulbarker.me.uk)
	by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id D130D41C088;
	Sat, 18 Feb 2017 20:51:37 +0100 (CET)
Received: by host0.betafive.co.uk (Postfix, from userid 2525)
	id 4B4AF4098AB5; Sat, 18 Feb 2017 19:51:07 +0000 (GMT)
From: paul@paulbarker.me.uk
To: yocto@yoctoproject.org
Date: Sat, 18 Feb 2017 19:51:01 +0000
Message-Id: <20170218195101.29116-4-paul@paulbarker.me.uk>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170218195101.29116-1-paul@paulbarker.me.uk>
References: <20170218195101.29116-1-paul@paulbarker.me.uk>
Subject: [meta-raspberrypi][PATCH RFC 3/3] linux-raspberrypi_dev: Disable version sanity check
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
X-List-Received-Date: Sat, 18 Feb 2017 19:51:51 -0000

From: Paul Barker <paul@paulbarker.me.uk>

After this change, LINUX_VERSION should not need to be changed every time
upstream bumps the kernel version.

Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
---
 recipes-kernel/linux/linux-raspberrypi_dev.bb | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi_dev.bb b/recipes-kernel/linux/linux-raspberrypi_dev.bb
index 88c164b..89ee908 100644
--- a/recipes-kernel/linux/linux-raspberrypi_dev.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_dev.bb
@@ -1,6 +1,6 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-4.9:"
 
-LINUX_VERSION ?= "4.10.0-rc8"
+LINUX_VERSION ?= "4.10"
 LINUX_RPI_DEV_BRANCH ?= "rpi-4.10.y"
 
 SRCREV = "${AUTOREV}"
@@ -13,3 +13,7 @@ require linux-raspberrypi.inc
 # set by default in rpi-4.8.y and later branches so we need to provide it
 # manually. This value unused if KERNEL_IMAGETYPE is not uImage.
 KERNEL_EXTRA_ARGS += "LOADADDR=0x00008000"
+
+# Disable version check so that we don't have to edit this recipe every time
+# upstream bumps the version
+KERNEL_VERSION_SANITY_SKIP = "1"
-- 
2.11.0


