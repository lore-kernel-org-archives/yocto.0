Return-Path: <pbarker@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0BED8E00AA7; Tue, 18 Apr 2017 13:59:27 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45CDCE00AC8
	for <yocto@yoctoproject.org>; Tue, 18 Apr 2017 13:59:23 -0700 (PDT)
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net
	[217.70.183.201])
	by slow1-d.mail.gandi.net (Postfix) with ESMTP id 7042047F0F1
	for <yocto@yoctoproject.org>; Tue, 18 Apr 2017 22:51:53 +0200 (CEST)
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net
	[217.70.183.197])
	by relay8-d.mail.gandi.net (Postfix) with ESMTPS id 9BCC14050B;
	Tue, 18 Apr 2017 22:51:52 +0200 (CEST)
Received: from mfilter22-d.gandi.net (mfilter22-d.gandi.net [217.70.178.150])
	by relay5-d.mail.gandi.net (Postfix) with ESMTP id 634F341C084;
	Tue, 18 Apr 2017 22:51:52 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at mfilter22-d.gandi.net
Received: from relay5-d.mail.gandi.net ([IPv6:::ffff:217.70.183.197])
	by mfilter22-d.gandi.net (mfilter22-d.gandi.net [::ffff:10.0.15.180])
	(amavisd-new, port 10024)
	with ESMTP id N8ZUJXZRn2od; Tue, 18 Apr 2017 22:51:50 +0200 (CEST)
X-Originating-IP: 82.34.23.153
Received: from host0.betafive.co.uk
	(cpc116908-shep14-2-0-cust920.8-3.cable.virginm.net [82.34.23.153])
	(Authenticated sender: noreply@paulbarker.me.uk)
	by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 5A8AD41C08D;
	Tue, 18 Apr 2017 22:51:50 +0200 (CEST)
Received: by host0.betafive.co.uk (Postfix, from userid 2525)
	id 7E7BE4041E08; Tue, 18 Apr 2017 21:51:19 +0100 (BST)
From: Paul Barker <pbarker@toganlabs.com>
To: yocto@yoctoproject.org
Date: Tue, 18 Apr 2017 21:51:01 +0100
Message-Id: <20170418205108.14629-2-pbarker@toganlabs.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170418205108.14629-1-pbarker@toganlabs.com>
References: <20170418205108.14629-1-pbarker@toganlabs.com>
Subject: [meta-raspberrypi][morty][PATCH 1/8] linux-raspberrypi_4.9: Bump to 4.9.21
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
X-List-Received-Date: Tue, 18 Apr 2017 20:59:27 -0000

From: Andrei Gherzan <andrei@gherzan.ro>

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-kernel/linux/linux-raspberrypi_4.9.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi_4.9.bb b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
index 3aba67b..c0e8b83 100644
--- a/recipes-kernel/linux/linux-raspberrypi_4.9.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
@@ -1,8 +1,8 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
 
-LINUX_VERSION ?= "4.9.13"
+LINUX_VERSION ?= "4.9.21"
 
-SRCREV = "28ea32b9afb5d813986c4ab940c26fe298d80ed2"
+SRCREV = "5e4ee836560d4c0371e109bf469e1ad808ae7a44"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.9.y \
 "
 require linux-raspberrypi.inc
-- 
2.11.0


