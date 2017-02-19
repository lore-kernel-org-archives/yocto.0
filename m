Return-Path: <paul@paulbarker.me.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 627ADE00A21; Sun, 19 Feb 2017 03:18:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [217.70.183.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net
	[217.70.183.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2A2FE00A31
	for <yocto@yoctoproject.org>; Sun, 19 Feb 2017 03:18:43 -0800 (PST)
Received: from mfilter14-d.gandi.net (mfilter14-d.gandi.net [217.70.178.142])
	by relay4-d.mail.gandi.net (Postfix) with ESMTP id 4CC051720A5;
	Sun, 19 Feb 2017 12:18:42 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at mfilter14-d.gandi.net
Received: from relay4-d.mail.gandi.net ([IPv6:::ffff:217.70.183.196])
	by mfilter14-d.gandi.net (mfilter14-d.gandi.net [::ffff:10.0.15.180])
	(amavisd-new, port 10024)
	with ESMTP id hvuMStMwimMS; Sun, 19 Feb 2017 12:18:40 +0100 (CET)
X-Originating-IP: 86.24.150.36
Received: from host0.betafive.co.uk
	(cpc15-shep11-2-0-cust35.8-3.cable.virginm.net [86.24.150.36])
	(Authenticated sender: noreply@paulbarker.me.uk)
	by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 2EBFB17209D;
	Sun, 19 Feb 2017 12:18:40 +0100 (CET)
Received: by host0.betafive.co.uk (Postfix, from userid 2525)
	id 55FDE402C0CC; Sun, 19 Feb 2017 11:18:09 +0000 (GMT)
From: Paul Barker <paul@paulbarker.me.uk>
To: yocto@yoctoproject.org
Date: Sun, 19 Feb 2017 11:18:02 +0000
Message-Id: <20170219111804.20566-1-paul@paulbarker.me.uk>
X-Mailer: git-send-email 2.11.0
Subject: [meta-raspberrypi][morty][PATCH 0/2] Stable branch kernel upgrades
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
X-List-Received-Date: Sun, 19 Feb 2017 11:18:45 -0000

I'm not 100% sure what the current policy is for upgrading the kernel in
meta-raspberrypi on a stable branch. I think it's a good idea to pull in
upgrades from the stable kernel series when available though so that we can
incorporate any upstream bugfixes. I'm also only considering backporting
upgrades we've already made on master.

I've also picked up the upgrade to the 4.9 kernel recipe as the old git hash
no longer exists upstream.

I've built & boot tested both 4.4 and 4.9 kernels on a rpi3 using morty plus
these patches.

Let me know if this is wanted for stable branches or not. If it is wanted, I'll
try to do this once a month or so for morty (and pyro when it's released) until
the end of the 12-month support period for each release.

Khem Raj (1):
  linux-raspberrypi_4.9.bb: Upgrade to 4.9.10

Paul Barker (1):
  linux-raspberrypi_4.4: Update to 4.4.48

 ...-Add-rules-for-.dtbo-files-for-dts-overla.patch | 29 ++++++++++++++++++++++
 recipes-kernel/linux/linux-raspberrypi_4.4.bb      |  4 +--
 recipes-kernel/linux/linux-raspberrypi_4.9.bb      |  5 ++--
 3 files changed, 34 insertions(+), 4 deletions(-)
 create mode 100644 recipes-kernel/linux/linux-raspberrypi-4.9/0001-build-arm64-Add-rules-for-.dtbo-files-for-dts-overla.patch

-- 
2.11.0


