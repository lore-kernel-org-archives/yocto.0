Return-Path: <paul@paulbarker.me.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57E07E0093F; Mon,  2 Jan 2017 05:20:08 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6E57E00935
	for <yocto@yoctoproject.org>; Mon,  2 Jan 2017 05:20:05 -0800 (PST)
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net
	[217.70.183.197])
	by slow1-d.mail.gandi.net (Postfix) with ESMTP id 1E4CE4876AC
	for <yocto@yoctoproject.org>; Mon,  2 Jan 2017 14:20:04 +0100 (CET)
Received: from mfilter47-d.gandi.net (mfilter47-d.gandi.net [217.70.178.178])
	by relay5-d.mail.gandi.net (Postfix) with ESMTP id C290141C08D;
	Mon,  2 Jan 2017 14:20:01 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at mfilter47-d.gandi.net
Received: from relay5-d.mail.gandi.net ([IPv6:::ffff:217.70.183.197])
	by mfilter47-d.gandi.net (mfilter47-d.gandi.net [::ffff:10.0.15.180])
	(amavisd-new, port 10024)
	with ESMTP id 6KACelb4BdwM; Mon,  2 Jan 2017 14:20:00 +0100 (CET)
X-Originating-IP: 5.9.142.21
Received: from autobuilder.betafive.co.uk (srv1.betafive.co.uk [5.9.142.21])
	(Authenticated sender: noreply@paulbarker.me.uk)
	by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 20C0841C09D;
	Mon,  2 Jan 2017 14:19:59 +0100 (CET)
From: Paul Barker <paul@paulbarker.me.uk>
To: yocto@yoctoproject.org
Date: Mon,  2 Jan 2017 13:20:10 +0000
Message-Id: <1483363213-27822-1-git-send-email-paul@paulbarker.me.uk>
X-Mailer: git-send-email 2.1.4
Subject: [meta-raspberrypi][PATCH 0/3] Kernel update and getVar cleanup
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
X-List-Received-Date: Mon, 02 Jan 2017 13:20:08 -0000

These patches have been boot tested for both raspberrypi and raspberrypi3.

The first patch in the series probably breaks things for the morty branch. I'm
also proposing we drop support for linux-raspberrypi v4.1 as it's currently
broken on master. We should create a morty branch for meta-raspberrypi before
applying these patches.

Any objections to dropping linux-raspberrypi v4.1 or making a morty branch at
this point?

Paul Barker (3):
  Remove True option to getVar calls
  linux-raspberrypi: Drop v4.1
  linux-raspberrypi: Upgrade to v4.4.39

 classes/linux-raspberrypi-base.bbclass             |   4 +-
 .../0001-dts-add-overlay-for-pitft22.patch         | 110 ---------------------
 ...ove-unused-sm_cache_map_vector-definition.patch |  31 ------
 .../linux-raspberrypi-4.1/0003-fix-gcc6.patch      |  78 ---------------
 recipes-kernel/linux/linux-raspberrypi.inc         |   4 +-
 recipes-kernel/linux/linux-raspberrypi_4.1.bb      |  12 ---
 recipes-kernel/linux/linux-raspberrypi_4.4.bb      |   4 +-
 7 files changed, 6 insertions(+), 237 deletions(-)
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi-4.1/0001-dts-add-overlay-for-pitft22.patch
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi-4.1/0002-vmcs-Remove-unused-sm_cache_map_vector-definition.patch
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi-4.1/0003-fix-gcc6.patch
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi_4.1.bb

-- 
2.1.4


