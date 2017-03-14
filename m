Return-Path: <pbarker@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CD55AE00939; Tue, 14 Mar 2017 03:57:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [217.70.178.86 listed in list.dnswl.org]
X-Greylist: delayed 1169 seconds by postgrey-1.32 at yocto-www;
	Tue, 14 Mar 2017 03:57:55 PDT
Received: from slow1-d.mail.gandi.net (slow1-d.mail.gandi.net [217.70.178.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C679E0050B
	for <yocto@yoctoproject.org>; Tue, 14 Mar 2017 03:57:55 -0700 (PDT)
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net
	[217.70.183.197])
	by slow1-d.mail.gandi.net (Postfix) with ESMTP id 169EB487145
	for <yocto@yoctoproject.org>; Tue, 14 Mar 2017 11:33:24 +0100 (CET)
Received: from mfilter33-d.gandi.net (mfilter33-d.gandi.net [217.70.178.164])
	by relay5-d.mail.gandi.net (Postfix) with ESMTP id 396FE41C391;
	Tue, 14 Mar 2017 11:33:23 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at mfilter33-d.gandi.net
Received: from relay5-d.mail.gandi.net ([IPv6:::ffff:217.70.183.197])
	by mfilter33-d.gandi.net (mfilter33-d.gandi.net [::ffff:10.0.15.180])
	(amavisd-new, port 10024)
	with ESMTP id 5czjGWZLPeGd; Tue, 14 Mar 2017 11:33:21 +0100 (CET)
X-Originating-IP: 82.34.23.153
Received: from host0.betafive.co.uk
	(cpc116908-shep14-2-0-cust920.8-3.cable.virginm.net [82.34.23.153])
	(Authenticated sender: noreply@paulbarker.me.uk)
	by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 6B78441C3C3;
	Tue, 14 Mar 2017 11:33:21 +0100 (CET)
Received: by host0.betafive.co.uk (Postfix, from userid 2525)
	id 450F3426461F; Tue, 14 Mar 2017 10:32:50 +0000 (GMT)
From: Paul Barker <pbarker@toganlabs.com>
To: yocto@yoctoproject.org
Date: Tue, 14 Mar 2017 10:32:37 +0000
Message-Id: <20170314103237.9533-4-pbarker@toganlabs.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170314103237.9533-1-pbarker@toganlabs.com>
References: <20170314103237.9533-1-pbarker@toganlabs.com>
Subject: [meta-raspberrypi][morty][PATCH 3/3] linux-raspberrypi_4.4: Update to 4.4.50
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
X-List-Received-Date: Tue, 14 Mar 2017 10:57:58 -0000

Signed-off-by: Paul Barker <pbarker@toganlabs.com>
---
 recipes-kernel/linux/linux-raspberrypi_4.4.bb | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi_4.4.bb b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
index b235772..b6be0ec 100644
--- a/recipes-kernel/linux/linux-raspberrypi_4.4.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
@@ -1,9 +1,10 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
 
-LINUX_VERSION ?= "4.4.48"
+LINUX_VERSION ?= "4.4.50"
 
-SRCREV = "7ddf96fbb7d637b79b449c7bd1c8d35f00571e4b"
+SRCREV = "04c8e47067d4873c584395e5cb260b4f170a99ea"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.4.y \
            file://0001-fix-dtbo-rules.patch \
 "
+
 require linux-raspberrypi.inc
-- 
2.11.0


