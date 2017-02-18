Return-Path: <paul@paulbarker.me.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 688A3E00A76; Sat, 18 Feb 2017 11:51:50 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BAA8FE00AA2
	for <yocto@yoctoproject.org>; Sat, 18 Feb 2017 11:51:40 -0800 (PST)
Received: from mfilter20-d.gandi.net (mfilter20-d.gandi.net [217.70.178.148])
	by relay2-d.mail.gandi.net (Postfix) with ESMTP id B88CFC5A44;
	Sat, 18 Feb 2017 20:51:39 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at mfilter20-d.gandi.net
Received: from relay2-d.mail.gandi.net ([IPv6:::ffff:217.70.183.194])
	by mfilter20-d.gandi.net (mfilter20-d.gandi.net [::ffff:10.0.15.180])
	(amavisd-new, port 10024)
	with ESMTP id V5Z1i7dAG54c; Sat, 18 Feb 2017 20:51:38 +0100 (CET)
X-Originating-IP: 86.24.150.36
Received: from host0.betafive.co.uk
	(cpc15-shep11-2-0-cust35.8-3.cable.virginm.net [86.24.150.36])
	(Authenticated sender: noreply@paulbarker.me.uk)
	by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id D323CC5A46;
	Sat, 18 Feb 2017 20:51:37 +0100 (CET)
Received: by host0.betafive.co.uk (Postfix, from userid 2525)
	id 47668402C5AE; Sat, 18 Feb 2017 19:51:07 +0000 (GMT)
From: paul@paulbarker.me.uk
To: yocto@yoctoproject.org
Date: Sat, 18 Feb 2017 19:51:00 +0000
Message-Id: <20170218195101.29116-3-paul@paulbarker.me.uk>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170218195101.29116-1-paul@paulbarker.me.uk>
References: <20170218195101.29116-1-paul@paulbarker.me.uk>
Subject: [meta-raspberrypi][PATCH RFC 2/3] linux-raspberrypi_dev: Allow branch override
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
X-List-Received-Date: Sat, 18 Feb 2017 19:51:50 -0000

From: Paul Barker <paul@paulbarker.me.uk>

This makes the linux-raspberrypi_dev recipe more flexible by allowing
the kernel branch to be overridden in local.conf.

Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
---
 recipes-kernel/linux/linux-raspberrypi_dev.bb | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi_dev.bb b/recipes-kernel/linux/linux-raspberrypi_dev.bb
index 8079e24..88c164b 100644
--- a/recipes-kernel/linux/linux-raspberrypi_dev.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_dev.bb
@@ -1,9 +1,10 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-4.9:"
 
 LINUX_VERSION ?= "4.10.0-rc8"
+LINUX_RPI_DEV_BRANCH ?= "rpi-4.10.y"
 
 SRCREV = "${AUTOREV}"
-SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.10.y \
+SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=${LINUX_RPI_DEV_BRANCH} \
            file://0001-build-arm64-Add-rules-for-.dtbo-files-for-dts-overla.patch \
 "
 require linux-raspberrypi.inc
-- 
2.11.0


