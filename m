Return-Path: <B29882@freescale.com>
Received: from TX2EHSOBE010.bigfish.com (tx2ehsobe005.messaging.microsoft.com
	[65.55.88.15])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E3D5E004CF
	for <yocto@yoctoproject.org>; Wed, 28 Sep 2011 22:55:14 -0700 (PDT)
Received: from mail36-tx2-R.bigfish.com (10.9.14.246) by
	TX2EHSOBE010.bigfish.com (10.9.40.30) with Microsoft SMTP Server id
	14.1.225.22; Thu, 29 Sep 2011 05:55:14 +0000
Received: from mail36-tx2 (localhost.localdomain [127.0.0.1])	by
	mail36-tx2-R.bigfish.com (Postfix) with ESMTP id D0D887E9163	for
	<yocto@yoctoproject.org>; Thu, 29 Sep 2011 05:55:13 +0000 (UTC)
X-SpamScore: 3
X-BigFish: VS3(zzzz1202h1082kzz8275bh8275dhz2dh2a8h668h839h)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null);
	IPVD:NLI; H:mail.freescale.net; RD:none; EFVD:NLI
X-FB-SS: 0,
Received: from mail36-tx2 (localhost.localdomain [127.0.0.1]) by mail36-tx2
	(MessageSwitch) id 1317275644222907_21082;
	Thu, 29 Sep 2011 05:54:04 +0000 (UTC)
Received: from TX2EHSMHS014.bigfish.com (unknown [10.9.14.248])	by
	mail36-tx2.bigfish.com (Postfix) with ESMTP id 05A9615F80AC	for
	<yocto@yoctoproject.org>; Thu, 29 Sep 2011 05:52:37 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by TX2EHSMHS014.bigfish.com
	(10.9.99.114) with Microsoft SMTP Server (TLS) id 14.1.225.22;
	Thu, 29 Sep 2011 05:52:36 +0000
Received: from az33smr02.freescale.net (10.64.34.200) by
	039-SN1MMR1-001.039d.mgd.msft.net (10.84.1.13) with Microsoft SMTP
	Server id 14.1.323.7; Thu, 29 Sep 2011 00:52:36 -0500
Received: from right.am.freescale.net (right.am.freescale.net [10.82.193.13])
	by az33smr02.freescale.net (8.13.1/8.13.0) with ESMTP id
	p8T5qXmt014523	for
	<yocto@yoctoproject.org>; Thu, 29 Sep 2011 00:52:35 -0500 (CDT)
From: Matthew McClintock <msm@freescale.com>
To: <yocto@yoctoproject.org>
Date: Thu, 29 Sep 2011 00:52:31 -0500
Message-ID: <1317275552-19908-6-git-send-email-msm@freescale.com>
X-Mailer: git-send-email 1.7.6.1
In-Reply-To: <1317275552-19908-1-git-send-email-msm@freescale.com>
References: <1317275552-19908-1-git-send-email-msm@freescale.com>
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Subject: [PATCH 6/7] Fix sysprof for powerpc64
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
X-List-Received-Date: Thu, 29 Sep 2011 05:55:14 -0000
Content-Type: text/plain

sysprof will not build properly without this defined

Signed-off-by: Matthew McClintock <msm@freescale.com>
---
 meta/recipes-kernel/sysprof/sysprof_git.bb |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-kernel/sysprof/sysprof_git.bb b/meta/recipes-kernel/sysprof/sysprof_git.bb
index 1af5822..16a35b9 100644
--- a/meta/recipes-kernel/sysprof/sysprof_git.bb
+++ b/meta/recipes-kernel/sysprof/sysprof_git.bb
@@ -5,7 +5,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
 DEPENDS = "gtk+ libglade"
 
 SRCREV = "38a6af1f0a45e528fd2842983da71e0f23c70d6a"
-PR = r1
+PR = "r2"
 PV = "1.1.6+git${SRCPV}"
 
 SRC_URI = "git://git.gnome.org/sysprof;protocol=git \
@@ -16,6 +16,8 @@ SRC_URI_append_arm  = " file://rmb-arm.patch"
 SRC_URI_append_mips = " file://rmb-mips.patch"
 SRC_URI_append_powerpc = " file://ppc-macro-fix.patch"
 
+export CFLAGS_append_powerpc64 = " -D__ppc64__"
+
 SRC_URI[md5sum]    = "80902a7b3d6f7cb83eb6b47e87538747"
 SRC_URI[sha256sum] = "1c6403278fa4f3b37a1fb9f0784e496dce1703fe84ac03b2650bf469133a0cb3"
 
-- 
1.7.6.1



