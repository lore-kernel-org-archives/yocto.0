Return-Path: <paul@paulbarker.me.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0249E009F8; Sat, 18 Feb 2017 11:39:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [217.70.183.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net
	[217.70.183.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E5FCE009F5
	for <yocto@yoctoproject.org>; Sat, 18 Feb 2017 11:39:18 -0800 (PST)
Received: from mfilter10-d.gandi.net (mfilter10-d.gandi.net [217.70.178.139])
	by relay2-d.mail.gandi.net (Postfix) with ESMTP id 2B7CAC5A43;
	Sat, 18 Feb 2017 20:39:17 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at mfilter10-d.gandi.net
Received: from relay2-d.mail.gandi.net ([IPv6:::ffff:217.70.183.194])
	by mfilter10-d.gandi.net (mfilter10-d.gandi.net [::ffff:10.0.15.180])
	(amavisd-new, port 10024)
	with ESMTP id y09I1ndd7lMk; Sat, 18 Feb 2017 20:39:15 +0100 (CET)
X-Originating-IP: 86.24.150.36
Received: from host0.betafive.co.uk
	(cpc15-shep11-2-0-cust35.8-3.cable.virginm.net [86.24.150.36])
	(Authenticated sender: noreply@paulbarker.me.uk)
	by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 9938DC5A53;
	Sat, 18 Feb 2017 20:39:15 +0100 (CET)
Received: by host0.betafive.co.uk (Postfix, from userid 2525)
	id EEE5A402C0B9; Sat, 18 Feb 2017 19:39:14 +0000 (GMT)
From: paul@paulbarker.me.uk
To: yocto@yoctoproject.org
Date: Sat, 18 Feb 2017 19:39:13 +0000
Message-Id: <20170218193913.28490-1-paul@paulbarker.me.uk>
X-Mailer: git-send-email 2.11.0
Subject: [meta-raspberrypi][PATCH] linux-raspberrypi: Fix uImage build on 4.9.y and later
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
X-List-Received-Date: Sat, 18 Feb 2017 19:39:22 -0000

From: Paul Barker <paul@paulbarker.me.uk>

Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
---
 recipes-kernel/linux/linux-raspberrypi_4.9.bb | 5 +++++
 recipes-kernel/linux/linux-raspberrypi_dev.bb | 5 +++++
 2 files changed, 10 insertions(+)

diff --git a/recipes-kernel/linux/linux-raspberrypi_4.9.bb b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
index dcca369..b113674 100644
--- a/recipes-kernel/linux/linux-raspberrypi_4.9.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
@@ -7,3 +7,8 @@ SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.9.y
            file://0001-build-arm64-Add-rules-for-.dtbo-files-for-dts-overla.patch \
 "
 require linux-raspberrypi.inc
+
+# A LOADADDR is needed when building a uImage format kernel. This value is not
+# set by default in rpi-4.8.y and later branches so we need to provide it
+# manually. This value unused if KERNEL_IMAGETYPE is not uImage.
+KERNEL_EXTRA_ARGS += "LOADADDR=0x00008000"
diff --git a/recipes-kernel/linux/linux-raspberrypi_dev.bb b/recipes-kernel/linux/linux-raspberrypi_dev.bb
index bec0d23..e45903b 100644
--- a/recipes-kernel/linux/linux-raspberrypi_dev.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_dev.bb
@@ -7,3 +7,8 @@ SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.10.y
            file://0001-build-arm64-Add-rules-for-.dtbo-files-for-dts-overla.patch \
 "
 require linux-raspberrypi.inc
+
+# A LOADADDR is needed when building a uImage format kernel. This value is not
+# set by default in rpi-4.8.y and later branches so we need to provide it
+# manually. This value unused if KERNEL_IMAGETYPE is not uImage.
+KERNEL_EXTRA_ARGS += "LOADADDR=0x00008000"
-- 
2.11.0


