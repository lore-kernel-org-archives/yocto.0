Return-Path: <paul@paulbarker.me.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02E25E0092C; Sun, 15 Jan 2017 23:26:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [217.70.183.198 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net
	[217.70.183.198])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 318E6E00828
	for <yocto@yoctoproject.org>; Sun, 15 Jan 2017 23:26:41 -0800 (PST)
Received: from mfilter38-d.gandi.net (mfilter38-d.gandi.net [217.70.178.169])
	by relay6-d.mail.gandi.net (Postfix) with ESMTP id 106E3FB8BF;
	Mon, 16 Jan 2017 08:26:40 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at mfilter38-d.gandi.net
Received: from relay6-d.mail.gandi.net ([IPv6:::ffff:217.70.183.198])
	by mfilter38-d.gandi.net (mfilter38-d.gandi.net [::ffff:10.0.15.180])
	(amavisd-new, port 10024)
	with ESMTP id 8rlFiGn6DvcA; Mon, 16 Jan 2017 08:26:38 +0100 (CET)
X-Originating-IP: 5.9.142.21
Received: from autobuilder.betafive.co.uk (srv1.betafive.co.uk [5.9.142.21])
	(Authenticated sender: noreply@paulbarker.me.uk)
	by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 646BBFB881;
	Mon, 16 Jan 2017 08:26:38 +0100 (CET)
From: Paul Barker <paul@paulbarker.me.uk>
To: yocto@yoctoproject.org
Date: Mon, 16 Jan 2017 07:26:55 +0000
Message-Id: <1484551617-11222-1-git-send-email-paul@paulbarker.me.uk>
X-Mailer: git-send-email 2.1.4
Subject: [meta-raspberrypi][PATCH 0/2] Drop kernel versions 4.7 and 4.8
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
X-List-Received-Date: Mon, 16 Jan 2017 07:26:46 -0000

As discussed recently on the list, we can just keep LTS versions now
that v4.9 is available.

I'm sending these so anyone who still needs v4.7 or v4.8 can shout
'stop!' before we remove them.

Paul Barker (2):
  linux-raspberrypi: Drop v4.7
  linux-raspberrypi: Drop v4.8

 .../0001-fix-dtbo-rules.patch                      | 44 ----------------------
 recipes-kernel/linux/linux-raspberrypi_4.7.bb      |  9 -----
 recipes-kernel/linux/linux-raspberrypi_4.8.bb      |  8 ----
 3 files changed, 61 deletions(-)
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi-4.7/0001-fix-dtbo-rules.patch
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi_4.7.bb
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi_4.8.bb

-- 
2.1.4


