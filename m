Return-Path: <pbarker@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C53DAE00A4F; Tue, 14 Mar 2017 04:06:56 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDA72E00939
	for <yocto@yoctoproject.org>; Tue, 14 Mar 2017 04:06:54 -0700 (PDT)
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net
	[217.70.183.198])
	by slow1-d.mail.gandi.net (Postfix) with ESMTP id 9BAFB47E5EE
	for <yocto@yoctoproject.org>; Tue, 14 Mar 2017 11:32:55 +0100 (CET)
Received: from mfilter45-d.gandi.net (mfilter45-d.gandi.net [217.70.178.176])
	by relay6-d.mail.gandi.net (Postfix) with ESMTP id BC2DAFB8F8;
	Tue, 14 Mar 2017 11:32:52 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at mfilter45-d.gandi.net
Received: from relay6-d.mail.gandi.net ([IPv6:::ffff:217.70.183.198])
	by mfilter45-d.gandi.net (mfilter45-d.gandi.net [::ffff:10.0.15.180])
	(amavisd-new, port 10024)
	with ESMTP id 3LDWkDKQMe-8; Tue, 14 Mar 2017 11:32:51 +0100 (CET)
X-Originating-IP: 82.34.23.153
Received: from host0.betafive.co.uk
	(cpc116908-shep14-2-0-cust920.8-3.cable.virginm.net [82.34.23.153])
	(Authenticated sender: noreply@paulbarker.me.uk)
	by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id E0418FB8C9;
	Tue, 14 Mar 2017 11:32:50 +0100 (CET)
Received: by host0.betafive.co.uk (Postfix, from userid 2525)
	id 3BA4F4264616; Tue, 14 Mar 2017 10:32:50 +0000 (GMT)
From: Paul Barker <pbarker@toganlabs.com>
To: yocto@yoctoproject.org
Date: Tue, 14 Mar 2017 10:32:34 +0000
Message-Id: <20170314103237.9533-1-pbarker@toganlabs.com>
X-Mailer: git-send-email 2.11.0
Subject: [meta-raspberrypi][morty][PATCH 0/3] Stable branch kernel updates
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
X-List-Received-Date: Tue, 14 Mar 2017 11:06:56 -0000

This series contains backports of patches from Khem's latest combined pull
request. I've boot tested a raspberrypi3 (4.4.y and 4.9.y kernels) and a
raspberrypi (4.9.y kernel) using these patches and all looks good.

Khem Raj (1):
  linux-raspberrypi_4.9.bb: Update to 4.9.13

Paul Barker (2):
  linux-raspberrypi: Fix uImage build on 4.9.y and later
  linux-raspberrypi_4.4: Update to 4.4.50

 ...-Add-rules-for-.dtbo-files-for-dts-overla.patch | 29 ----------------------
 recipes-kernel/linux/linux-raspberrypi_4.4.bb      |  5 ++--
 recipes-kernel/linux/linux-raspberrypi_4.9.bb      | 10 +++++---
 3 files changed, 10 insertions(+), 34 deletions(-)
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi-4.9/0001-build-arm64-Add-rules-for-.dtbo-files-for-dts-overla.patch

-- 
2.11.0


