Return-Path: <paul@paulbarker.me.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F361EE0086E; Mon, 13 Feb 2017 15:32:53 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3E2BE00754
	for <yocto@yoctoproject.org>; Mon, 13 Feb 2017 15:32:48 -0800 (PST)
Received: from mfilter15-d.gandi.net (mfilter15-d.gandi.net [217.70.178.143])
	by relay2-d.mail.gandi.net (Postfix) with ESMTP id C06E8C5A55;
	Tue, 14 Feb 2017 00:32:47 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at mfilter15-d.gandi.net
Received: from relay2-d.mail.gandi.net ([IPv6:::ffff:217.70.183.194])
	by mfilter15-d.gandi.net (mfilter15-d.gandi.net [::ffff:10.0.15.180])
	(amavisd-new, port 10024)
	with ESMTP id kVIIIIDP-Uof; Tue, 14 Feb 2017 00:32:46 +0100 (CET)
X-Originating-IP: 86.24.150.36
Received: from host0.betafive.co.uk
	(cpc15-shep11-2-0-cust35.8-3.cable.virginm.net [86.24.150.36])
	(Authenticated sender: noreply@paulbarker.me.uk)
	by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 2A2A4C5A49;
	Tue, 14 Feb 2017 00:32:46 +0100 (CET)
Received: by host0.betafive.co.uk (Postfix, from userid 2525)
	id C191A40252D1; Mon, 13 Feb 2017 23:32:44 +0000 (GMT)
From: paul@paulbarker.me.uk
To: yocto@yoctoproject.org
Date: Mon, 13 Feb 2017 23:32:42 +0000
Message-Id: <20170213233243.16688-1-paul@paulbarker.me.uk>
X-Mailer: git-send-email 2.11.0
Subject: [meta-raspberrypi][PATCH 1/2] linux-raspberrypi_4.4: Update to 4.4.48
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
X-List-Received-Date: Mon, 13 Feb 2017 23:32:54 -0000

From: Paul Barker <paul@paulbarker.me.uk>

Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
---
 recipes-kernel/linux/linux-raspberrypi_4.4.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi_4.4.bb b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
index 0f78225..b235772 100644
--- a/recipes-kernel/linux/linux-raspberrypi_4.4.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
@@ -1,8 +1,8 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
 
-LINUX_VERSION ?= "4.4.43"
+LINUX_VERSION ?= "4.4.48"
 
-SRCREV = "17ca1c930978a9ea6ddfec61fd0e2043e8ab3b17"
+SRCREV = "7ddf96fbb7d637b79b449c7bd1c8d35f00571e4b"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.4.y \
            file://0001-fix-dtbo-rules.patch \
 "
-- 
2.11.0


