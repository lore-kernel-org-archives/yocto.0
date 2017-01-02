Return-Path: <paul@paulbarker.me.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B74E5E0093F; Mon,  2 Jan 2017 05:20:09 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8211E00938
	for <yocto@yoctoproject.org>; Mon,  2 Jan 2017 05:20:05 -0800 (PST)
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net
	[217.70.183.197])
	by slow1-d.mail.gandi.net (Postfix) with ESMTP id 1E21D4876AA
	for <yocto@yoctoproject.org>; Mon,  2 Jan 2017 14:20:04 +0100 (CET)
Received: from mfilter17-d.gandi.net (mfilter17-d.gandi.net [217.70.178.145])
	by relay5-d.mail.gandi.net (Postfix) with ESMTP id 152F841C099;
	Mon,  2 Jan 2017 14:20:03 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at mfilter17-d.gandi.net
Received: from relay5-d.mail.gandi.net ([IPv6:::ffff:217.70.183.197])
	by mfilter17-d.gandi.net (mfilter17-d.gandi.net [::ffff:10.0.15.180])
	(amavisd-new, port 10024)
	with ESMTP id m28xwK-Rip0Z; Mon,  2 Jan 2017 14:20:01 +0100 (CET)
X-Originating-IP: 5.9.142.21
Received: from autobuilder.betafive.co.uk (srv1.betafive.co.uk [5.9.142.21])
	(Authenticated sender: noreply@paulbarker.me.uk)
	by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 4A6FF41C0B4;
	Mon,  2 Jan 2017 14:20:01 +0100 (CET)
From: Paul Barker <paul@paulbarker.me.uk>
To: yocto@yoctoproject.org
Date: Mon,  2 Jan 2017 13:20:13 +0000
Message-Id: <1483363213-27822-4-git-send-email-paul@paulbarker.me.uk>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1483363213-27822-1-git-send-email-paul@paulbarker.me.uk>
References: <1483363213-27822-1-git-send-email-paul@paulbarker.me.uk>
Subject: [meta-raspberrypi][PATCH 3/3] linux-raspberrypi: Upgrade to v4.4.39
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
X-List-Received-Date: Mon, 02 Jan 2017 13:20:09 -0000

Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
---
 recipes-kernel/linux/linux-raspberrypi_4.4.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi_4.4.bb b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
index 35a72d7..3317c02 100644
--- a/recipes-kernel/linux/linux-raspberrypi_4.4.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
@@ -1,8 +1,8 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
 
-LINUX_VERSION ?= "4.4.35"
+LINUX_VERSION ?= "4.4.39"
 
-SRCREV = "5d765c8b5782de7ed49f623c107f1b395429b560"
+SRCREV = "5e46914b3417fe9ff42546dcacd0f41f9a0fb172"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.4.y \
            file://0001-fix-dtbo-rules.patch \
 "
-- 
2.1.4


