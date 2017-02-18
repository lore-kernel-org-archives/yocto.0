Return-Path: <paul@paulbarker.me.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 253ADE00A81; Sat, 18 Feb 2017 11:51:51 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C99C4E00AC0
	for <yocto@yoctoproject.org>; Sat, 18 Feb 2017 11:51:40 -0800 (PST)
Received: from mfilter11-d.gandi.net (mfilter11-d.gandi.net [217.70.178.131])
	by relay5-d.mail.gandi.net (Postfix) with ESMTP id 9636741C08A;
	Sat, 18 Feb 2017 20:51:39 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at mfilter11-d.gandi.net
Received: from relay5-d.mail.gandi.net ([IPv6:::ffff:217.70.183.197])
	by mfilter11-d.gandi.net (mfilter11-d.gandi.net [::ffff:10.0.15.180])
	(amavisd-new, port 10024)
	with ESMTP id ug-7ElcWr9zV; Sat, 18 Feb 2017 20:51:38 +0100 (CET)
X-Originating-IP: 86.24.150.36
Received: from host0.betafive.co.uk
	(cpc15-shep11-2-0-cust35.8-3.cable.virginm.net [86.24.150.36])
	(Authenticated sender: noreply@paulbarker.me.uk)
	by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id D12D441C07F;
	Sat, 18 Feb 2017 20:51:37 +0100 (CET)
Received: by host0.betafive.co.uk (Postfix, from userid 2525)
	id 43AE3402C5AD; Sat, 18 Feb 2017 19:51:07 +0000 (GMT)
From: paul@paulbarker.me.uk
To: yocto@yoctoproject.org
Date: Sat, 18 Feb 2017 19:50:59 +0000
Message-Id: <20170218195101.29116-2-paul@paulbarker.me.uk>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170218195101.29116-1-paul@paulbarker.me.uk>
References: <20170218195101.29116-1-paul@paulbarker.me.uk>
Subject: [meta-raspberrypi][PATCH RFC 1/3] linux-raspberrypi_dev: Use AUTOREV
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

The development branches of linux-raspberrypi are rebased frequently. To
avoid fetch failures caused by out-of-date git hashes we need to use
AUTOREV.

LINUX_VERSION may need to be overridden in local.conf to match the
upstream version.

Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
---
 recipes-kernel/linux/linux-raspberrypi_dev.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi_dev.bb b/recipes-kernel/linux/linux-raspberrypi_dev.bb
index e45903b..8079e24 100644
--- a/recipes-kernel/linux/linux-raspberrypi_dev.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_dev.bb
@@ -2,7 +2,7 @@ FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-4.9:"
 
 LINUX_VERSION ?= "4.10.0-rc8"
 
-SRCREV = "9aa91f43583fdb07306f962e6ee6797fba1cc62d"
+SRCREV = "${AUTOREV}"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.10.y \
            file://0001-build-arm64-Add-rules-for-.dtbo-files-for-dts-overla.patch \
 "
-- 
2.11.0


