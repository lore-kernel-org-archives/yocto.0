Return-Path: <B19537@freescale.com>
Received: from tx2outboundpool.messaging.microsoft.com
	(tx2ehsobe002.messaging.microsoft.com [65.55.88.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19BD6E01488
	for <yocto@yoctoproject.org>; Tue, 11 Sep 2012 23:50:00 -0700 (PDT)
Received: from mail235-tx2-R.bigfish.com (10.9.14.253) by
	TX2EHSOBE006.bigfish.com (10.9.40.26) with Microsoft SMTP Server id
	14.1.225.23; Wed, 12 Sep 2012 06:49:59 +0000
Received: from mail235-tx2 (localhost [127.0.0.1])	by
	mail235-tx2-R.bigfish.com (Postfix) with ESMTP id 6BEF3600251	for
	<yocto@yoctoproject.org>; Wed, 12 Sep 2012 06:49:59 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: 0
X-BigFish: VS0(zzzz1202h1d1ah1d2ahzz8275bhz2dh2a8h668h839hd24he5bhf0ah107ah1288h12a5h12bdh1155h)
Received: from mail235-tx2 (localhost.localdomain [127.0.0.1]) by mail235-tx2
	(MessageSwitch) id 1347432597141485_21285;
	Wed, 12 Sep 2012 06:49:57 +0000 (UTC)
Received: from TX2EHSMHS037.bigfish.com (unknown [10.9.14.239])	by
	mail235-tx2.bigfish.com (Postfix) with ESMTP id 1F3014E0062	for
	<yocto@yoctoproject.org>; Wed, 12 Sep 2012 06:49:57 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by TX2EHSMHS037.bigfish.com
	(10.9.99.137) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Wed, 12 Sep 2012 06:49:56 +0000
Received: from tx30smr01.am.freescale.net (10.81.153.31) by
	039-SN1MMR1-005.039d.mgd.msft.net (10.84.1.17) with Microsoft SMTP
	Server (TLS) id 14.2.309.3; Wed, 12 Sep 2012 01:49:56 -0500
Received: from bjsimics-desktop.ap.freescale.net
	(bjsimics-desktop-010192208197.ap.freescale.net [10.192.208.197])	by
	tx30smr01.am.freescale.net (8.14.3/8.14.0) with ESMTP id q8C6nUQS025013;
	Tue, 11 Sep 2012 23:49:53 -0700
From: <b19537@freescale.com>
To: <yocto@yoctoproject.org>
Date: Wed, 12 Sep 2012 15:06:24 +0800
Message-ID: <1347433590-8481-10-git-send-email-b19537@freescale.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1347433590-8481-1-git-send-email-b19537@freescale.com>
References: <1347433590-8481-1-git-send-email-b19537@freescale.com>
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Subject: [meta-fsl-ppc 10/16] rcw: update LIC_FILES_CHKSUM file
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
X-List-Received-Date: Wed, 12 Sep 2012 06:50:00 -0000
Content-Type: text/plain

From: Ting Liu <b28495@freescale.com>

Signed-off-by: Ting Liu <b28495@freescale.com>
---
 recipes-tools/rcw/rcw_git.bb |    7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/recipes-tools/rcw/rcw_git.bb b/recipes-tools/rcw/rcw_git.bb
index 0aaf794..dd1e4fe 100644
--- a/recipes-tools/rcw/rcw_git.bb
+++ b/recipes-tools/rcw/rcw_git.bb
@@ -1,13 +1,10 @@
 DESCRIPTION = "Reset Control Words (RCW)"
 SECTION = "rcw"
 LICENSE = "BSD"
-PR = "r5"
+PR = "r6"
 
 LIC_FILES_CHKSUM = " \
-	file://p2041rdb/LICENSE;md5=96dd72f26e9bb861de5c76c60e35e1bc \
-	file://p3041ds/LICENSE;md5=96dd72f26e9bb861de5c76c60e35e1bc \
-	file://p4080ds/LICENSE;md5=96dd72f26e9bb861de5c76c60e35e1bc \
-	file://p5020ds/LICENSE;md5=96dd72f26e9bb861de5c76c60e35e1bc \
+	file://rcw.py;beginline=8;endline=28;md5=9ba0b28922dd187b06b6c8ebcfdd208e \
 "
 
 # this package is specific to the machine itself
-- 
1.7.9.5



