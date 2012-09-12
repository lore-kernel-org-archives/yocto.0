Return-Path: <B19537@freescale.com>
Received: from va3outboundpool.messaging.microsoft.com
	(va3ehsobe002.messaging.microsoft.com [216.32.180.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83580E01464
	for <yocto@yoctoproject.org>; Tue, 11 Sep 2012 23:49:40 -0700 (PDT)
Received: from mail111-va3-R.bigfish.com (10.7.14.237) by
	VA3EHSOBE002.bigfish.com (10.7.40.22) with Microsoft SMTP Server id
	14.1.225.23; Wed, 12 Sep 2012 06:49:39 +0000
Received: from mail111-va3 (localhost [127.0.0.1])	by
	mail111-va3-R.bigfish.com (Postfix) with ESMTP id 531972600B1	for
	<yocto@yoctoproject.org>; Wed, 12 Sep 2012 06:49:39 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -10
X-BigFish: VS-10(zb00Rzzz1202h1d1ah1d2ahzz8275bhz2dh2a8h668h839hd24he5bhf0ah107ah1288h12a5h12bdh1155h)
Received: from mail111-va3 (localhost.localdomain [127.0.0.1]) by mail111-va3
	(MessageSwitch) id 1347432578100322_21332;
	Wed, 12 Sep 2012 06:49:38 +0000 (UTC)
Received: from VA3EHSMHS011.bigfish.com (unknown [10.7.14.243])	by
	mail111-va3.bigfish.com (Postfix) with ESMTP id 0C03D4E0046	for
	<yocto@yoctoproject.org>; Wed, 12 Sep 2012 06:49:38 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by VA3EHSMHS011.bigfish.com
	(10.7.99.21) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Wed, 12 Sep 2012 06:49:36 +0000
Received: from tx30smr01.am.freescale.net (10.81.153.31) by
	039-SN1MMR1-002.039d.mgd.msft.net (10.84.1.15) with Microsoft SMTP
	Server (TLS) id 14.2.309.3; Wed, 12 Sep 2012 01:49:35 -0500
Received: from bjsimics-desktop.ap.freescale.net
	(bjsimics-desktop-010192208197.ap.freescale.net [10.192.208.197])	by
	tx30smr01.am.freescale.net (8.14.3/8.14.0) with ESMTP id q8C6nUQJ025013;
	Tue, 11 Sep 2012 23:49:31 -0700
From: <b19537@freescale.com>
To: <yocto@yoctoproject.org>
Date: Wed, 12 Sep 2012 15:06:15 +0800
Message-ID: <1347433590-8481-1-git-send-email-b19537@freescale.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Subject: [meta-fsl-ppc 01/16] add "CentOS release 5.5 (Final)" into SANITY_TESTED_DISTROS
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 12 Sep 2012 06:49:40 -0000
Content-Type: text/plain

From: Zhenhua Luo <b19537@freescale.com>

Signed-off-by: Zhenhua Luo <b19537@freescale.com>
---
 conf/distro/fsl.conf |    1 +
 1 file changed, 1 insertion(+)

diff --git a/conf/distro/fsl.conf b/conf/distro/fsl.conf
index 0169c6c..b35f5e2 100644
--- a/conf/distro/fsl.conf
+++ b/conf/distro/fsl.conf
@@ -60,6 +60,7 @@ SANITY_TESTED_DISTROS ?= " \
             Fedora release 15 (Lovelock) \n \
             Fedora release 16 (Verne) \n \
             Fedora release 17 (Beefy Miracle) \n \
+            CentOS release 5.5 (Final) \n \
             CentOS release 5.6 (Final) \n \
             CentOS release 5.7 (Final) \n \
             CentOS release 5.8 (Final) \n \
-- 
1.7.9.5



