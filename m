Return-Path: <paul@paulbarker.me.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BE4B8E009F8; Sat, 18 Feb 2017 11:51:14 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7FF9BE009F5
	for <yocto@yoctoproject.org>; Sat, 18 Feb 2017 11:51:10 -0800 (PST)
Received: from mfilter11-d.gandi.net (mfilter11-d.gandi.net [217.70.178.131])
	by relay6-d.mail.gandi.net (Postfix) with ESMTP id 09FFCFB877;
	Sat, 18 Feb 2017 20:51:10 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at mfilter11-d.gandi.net
Received: from relay6-d.mail.gandi.net ([IPv6:::ffff:217.70.183.198])
	by mfilter11-d.gandi.net (mfilter11-d.gandi.net [::ffff:10.0.15.180])
	(amavisd-new, port 10024)
	with ESMTP id YmSUseNLvlae; Sat, 18 Feb 2017 20:51:08 +0100 (CET)
X-Originating-IP: 86.24.150.36
Received: from host0.betafive.co.uk
	(cpc15-shep11-2-0-cust35.8-3.cable.virginm.net [86.24.150.36])
	(Authenticated sender: noreply@paulbarker.me.uk)
	by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id E79A9FB886;
	Sat, 18 Feb 2017 20:51:07 +0100 (CET)
Received: by host0.betafive.co.uk (Postfix, from userid 2525)
	id 3F243402C0B9; Sat, 18 Feb 2017 19:51:07 +0000 (GMT)
From: paul@paulbarker.me.uk
To: yocto@yoctoproject.org
Date: Sat, 18 Feb 2017 19:50:58 +0000
Message-Id: <20170218195101.29116-1-paul@paulbarker.me.uk>
X-Mailer: git-send-email 2.11.0
Subject: [meta-raspberrypi][PATCH RFC 0/3] Use AUTOREV in linux-raspberrypi_dev
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
X-List-Received-Date: Sat, 18 Feb 2017 19:51:14 -0000

From: Paul Barker <paul@paulbarker.me.uk>

This is currently an RFC as I'd like some input from Khem and anyone else
interested in this before these patches get merged.

The hope is that by using AUTOREV we won't have to update the _dev recipe so
frequently in the future.

The third patch depends on a change not yet committed to oe-core. Please apply
the following patch if you'd like to test this:
    http://lists.openembedded.org/pipermail/openembedded-core/2017-February/132499.html

Paul Barker (3):
  linux-raspberrypi_dev: Use AUTOREV
  linux-raspberrypi_dev: Allow branch override
  linux-raspberrypi_dev: Disable version sanity check

 recipes-kernel/linux/linux-raspberrypi_dev.bb | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

-- 
2.11.0


