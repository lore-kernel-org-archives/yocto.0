Return-Path: <B19537@freescale.com>
Received: from tx2outboundpool.messaging.microsoft.com
	(tx2ehsobe001.messaging.microsoft.com [65.55.88.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7EDCDE01482
	for <yocto@yoctoproject.org>; Tue, 11 Sep 2012 23:49:57 -0700 (PDT)
Received: from mail66-tx2-R.bigfish.com (10.9.14.242) by
	TX2EHSOBE006.bigfish.com (10.9.40.26) with Microsoft SMTP Server id
	14.1.225.23; Wed, 12 Sep 2012 06:49:56 +0000
Received: from mail66-tx2 (localhost [127.0.0.1])	by mail66-tx2-R.bigfish.com
	(Postfix) with ESMTP id A573C340079	for <yocto@yoctoproject.org>;
	Wed, 12 Sep 2012 06:49:56 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: 0
X-BigFish: VS0(zzzz1202h1d1ah1d2ahzz8275bhz2dh2a8h668h839hd24he5bhf0ah107ah1288h12a5h12bdh1155h)
Received: from mail66-tx2 (localhost.localdomain [127.0.0.1]) by mail66-tx2
	(MessageSwitch) id 1347432594216654_28224;
	Wed, 12 Sep 2012 06:49:54 +0000 (UTC)
Received: from TX2EHSMHS022.bigfish.com (unknown [10.9.14.247])	by
	mail66-tx2.bigfish.com (Postfix) with ESMTP id 270C14A0045	for
	<yocto@yoctoproject.org>; Wed, 12 Sep 2012 06:49:54 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by TX2EHSMHS022.bigfish.com
	(10.9.99.122) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Wed, 12 Sep 2012 06:49:52 +0000
Received: from tx30smr01.am.freescale.net (10.81.153.31) by
	039-SN1MMR1-002.039d.mgd.msft.net (10.84.1.15) with Microsoft SMTP
	Server (TLS) id 14.2.309.3; Wed, 12 Sep 2012 01:49:51 -0500
Received: from bjsimics-desktop.ap.freescale.net
	(bjsimics-desktop-010192208197.ap.freescale.net [10.192.208.197])	by
	tx30smr01.am.freescale.net (8.14.3/8.14.0) with ESMTP id q8C6nUQQ025013;
	Tue, 11 Sep 2012 23:49:48 -0700
From: <b19537@freescale.com>
To: <yocto@yoctoproject.org>
Date: Wed, 12 Sep 2012 15:06:22 +0800
Message-ID: <1347433590-8481-8-git-send-email-b19537@freescale.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1347433590-8481-1-git-send-email-b19537@freescale.com>
References: <1347433590-8481-1-git-send-email-b19537@freescale.com>
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Subject: [meta-fsl-ppc 08/16] fsl.conf: disable auto dhcp for eth0
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
X-List-Received-Date: Wed, 12 Sep 2012 06:49:57 -0000
Content-Type: text/plain

From: Ting Liu <b28495@freescale.com>

Signed-off-by: Ting Liu <b28495@freescale.com>
---
 conf/distro/fsl.conf |    4 ++++
 1 file changed, 4 insertions(+)

diff --git a/conf/distro/fsl.conf b/conf/distro/fsl.conf
index b35f5e2..b6c8fb4 100644
--- a/conf/distro/fsl.conf
+++ b/conf/distro/fsl.conf
@@ -91,3 +91,7 @@ PREFERRED_VERSION_samba = "3.4.0"
 PREFERRED_PROVIDER_virtual/libx11 = "libx11"
 
 CCACHE = ""
+
+# disable auto dhcp for eth0
+ETH0_AUTO_DHCP = "0" 
+
-- 
1.7.9.5



