Return-Path: <B19537@freescale.com>
Received: from tx2outboundpool.messaging.microsoft.com
	(tx2ehsobe001.messaging.microsoft.com [65.55.88.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C508E01482
	for <yocto@yoctoproject.org>; Tue, 11 Sep 2012 23:49:58 -0700 (PDT)
Received: from mail227-tx2-R.bigfish.com (10.9.14.243) by
	TX2EHSOBE009.bigfish.com (10.9.40.29) with Microsoft SMTP Server id
	14.1.225.23; Wed, 12 Sep 2012 06:49:57 +0000
Received: from mail227-tx2 (localhost [127.0.0.1])	by
	mail227-tx2-R.bigfish.com (Postfix) with ESMTP id 6A21EAC016B	for
	<yocto@yoctoproject.org>; Wed, 12 Sep 2012 06:49:57 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: 0
X-BigFish: VS0(zzzz1202h1d1ah1d2ahzz8275bhz2dh2a8h668h839hd24he5bhf0ah107ah1288h12a5h12bdh1155h)
Received: from mail227-tx2 (localhost.localdomain [127.0.0.1]) by mail227-tx2
	(MessageSwitch) id 1347432595978753_15444;
	Wed, 12 Sep 2012 06:49:55 +0000 (UTC)
Received: from TX2EHSMHS014.bigfish.com (unknown [10.9.14.237])	by
	mail227-tx2.bigfish.com (Postfix) with ESMTP id EC3D9320042	for
	<yocto@yoctoproject.org>; Wed, 12 Sep 2012 06:49:55 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by TX2EHSMHS014.bigfish.com
	(10.9.99.114) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Wed, 12 Sep 2012 06:49:55 +0000
Received: from tx30smr01.am.freescale.net (10.81.153.31) by
	039-SN1MMR1-005.039d.mgd.msft.net (10.84.1.17) with Microsoft SMTP
	Server (TLS) id 14.2.309.3; Wed, 12 Sep 2012 01:49:54 -0500
Received: from bjsimics-desktop.ap.freescale.net
	(bjsimics-desktop-010192208197.ap.freescale.net [10.192.208.197])	by
	tx30smr01.am.freescale.net (8.14.3/8.14.0) with ESMTP id q8C6nUQR025013;
	Tue, 11 Sep 2012 23:49:50 -0700
From: <b19537@freescale.com>
To: <yocto@yoctoproject.org>
Date: Wed, 12 Sep 2012 15:06:23 +0800
Message-ID: <1347433590-8481-9-git-send-email-b19537@freescale.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1347433590-8481-1-git-send-email-b19537@freescale.com>
References: <1347433590-8481-1-git-send-email-b19537@freescale.com>
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: Matthew McClintock <msm@freescale.com>
Subject: [meta-fsl-ppc 09/16] rcw_git.bb: update to 1.2.1 release version
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
X-List-Received-Date: Wed, 12 Sep 2012 06:49:58 -0000
Content-Type: text/plain

From: Matthew McClintock <msm@freescale.com>

Signed-off-by: Matthew McClintock <msm@freescale.com>
---
 recipes-tools/rcw/rcw_git.bb |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-tools/rcw/rcw_git.bb b/recipes-tools/rcw/rcw_git.bb
index 4487f9e..0aaf794 100644
--- a/recipes-tools/rcw/rcw_git.bb
+++ b/recipes-tools/rcw/rcw_git.bb
@@ -1,7 +1,7 @@
 DESCRIPTION = "Reset Control Words (RCW)"
 SECTION = "rcw"
 LICENSE = "BSD"
-PR = "r4"
+PR = "r5"
 
 LIC_FILES_CHKSUM = " \
 	file://p2041rdb/LICENSE;md5=96dd72f26e9bb861de5c76c60e35e1bc \
@@ -16,7 +16,7 @@ PACKAGE_ARCH = "${MACHINE_ARCH}"
 
 inherit deploy
 
-SRCREV = "394db85c496f6e41dd7e29e54dab3db2b380b187"
+SRCREV = "v1.2.1"
 SRC_URI = "git://git.freescale.com/ppc/sdk/rcw.git"
 
 S = "${WORKDIR}/git"
-- 
1.7.9.5



