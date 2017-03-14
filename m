Return-Path: <pbarker@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 442B0E00939; Tue, 14 Mar 2017 04:06:53 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4E68E0050B
	for <yocto@yoctoproject.org>; Tue, 14 Mar 2017 04:06:50 -0700 (PDT)
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net
	[217.70.183.198])
	by slow1-d.mail.gandi.net (Postfix) with ESMTP id 9D78A47EF32
	for <yocto@yoctoproject.org>; Tue, 14 Mar 2017 11:32:55 +0100 (CET)
Received: from mfilter31-d.gandi.net (mfilter31-d.gandi.net [217.70.178.162])
	by relay6-d.mail.gandi.net (Postfix) with ESMTP id BA604FB8C8;
	Tue, 14 Mar 2017 11:32:52 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at mfilter31-d.gandi.net
Received: from relay6-d.mail.gandi.net ([IPv6:::ffff:217.70.183.198])
	by mfilter31-d.gandi.net (mfilter31-d.gandi.net [::ffff:10.0.15.180])
	(amavisd-new, port 10024)
	with ESMTP id uGMkpOP9xOzK; Tue, 14 Mar 2017 11:32:51 +0100 (CET)
X-Originating-IP: 82.34.23.153
Received: from host0.betafive.co.uk
	(cpc116908-shep14-2-0-cust920.8-3.cable.virginm.net [82.34.23.153])
	(Authenticated sender: noreply@paulbarker.me.uk)
	by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id E0405FB887;
	Tue, 14 Mar 2017 11:32:50 +0100 (CET)
Received: by host0.betafive.co.uk (Postfix, from userid 2525)
	id 4171A426461D; Tue, 14 Mar 2017 10:32:50 +0000 (GMT)
From: Paul Barker <pbarker@toganlabs.com>
To: yocto@yoctoproject.org
Date: Tue, 14 Mar 2017 10:32:36 +0000
Message-Id: <20170314103237.9533-3-pbarker@toganlabs.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170314103237.9533-1-pbarker@toganlabs.com>
References: <20170314103237.9533-1-pbarker@toganlabs.com>
Subject: [meta-raspberrypi][morty][PATCH 2/3] linux-raspberrypi: Fix uImage build on 4.9.y and later
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
X-List-Received-Date: Tue, 14 Mar 2017 11:06:53 -0000

Signed-off-by: Paul Barker <pbarker@toganlabs.com>
---
 recipes-kernel/linux/linux-raspberrypi_4.9.bb | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/recipes-kernel/linux/linux-raspberrypi_4.9.bb b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
index 7733bf1..3aba67b 100644
--- a/recipes-kernel/linux/linux-raspberrypi_4.9.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
@@ -6,3 +6,8 @@ SRCREV = "28ea32b9afb5d813986c4ab940c26fe298d80ed2"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.9.y \
 "
 require linux-raspberrypi.inc
+
+# A LOADADDR is needed when building a uImage format kernel. This value is not
+# set by default in rpi-4.8.y and later branches so we need to provide it
+# manually. This value unused if KERNEL_IMAGETYPE is not uImage.
+KERNEL_EXTRA_ARGS += "LOADADDR=0x00008000"
-- 
2.11.0


