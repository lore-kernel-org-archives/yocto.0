Return-Path: <B19537@freescale.com>
Received: from VA3EHSOBE003.bigfish.com (va3ehsobe003.messaging.microsoft.com
	[216.32.180.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6161DE013DE
	for <yocto@yoctoproject.org>; Fri, 16 Dec 2011 00:24:32 -0800 (PST)
Received: from mail93-va3-R.bigfish.com (10.7.14.246) by
	VA3EHSOBE003.bigfish.com (10.7.40.23) with Microsoft SMTP Server id
	14.1.225.23; Fri, 16 Dec 2011 08:24:30 +0000
Received: from mail93-va3 (localhost [127.0.0.1])	by mail93-va3-R.bigfish.com
	(Postfix) with ESMTP id 29B21200F1	for <yocto@yoctoproject.org>;
	Fri, 16 Dec 2011 08:24:38 +0000 (UTC)
X-SpamScore: 1
X-BigFish: VS1(zzzz1202hzz8275bh8275dhz2dh2a8h668h839hb79i62h)
X-Spam-TCS-SCL: 1:0
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-FB-SS: 0,
Received: from mail93-va3 (localhost.localdomain [127.0.0.1]) by mail93-va3
	(MessageSwitch) id 132402387825266_7847; Fri, 16 Dec 2011 08:24:38 +0000
	(UTC)
Received: from VA3EHSMHS025.bigfish.com (unknown [10.7.14.245])	by
	mail93-va3.bigfish.com (Postfix) with ESMTP id F387320004A	for
	<yocto@yoctoproject.org>; Fri, 16 Dec 2011 08:24:37 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by VA3EHSMHS025.bigfish.com
	(10.7.99.35) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Fri, 16 Dec 2011 08:24:29 +0000
Received: from az33smr01.freescale.net (10.64.34.199) by
	039-SN1MMR1-003.039d.mgd.msft.net (10.84.1.16) with Microsoft SMTP
	Server id 14.1.355.3; Fri, 16 Dec 2011 02:24:28 -0600
Received: from localhost.localdomain
	(bjsimics-desktop-010192208197.ap.freescale.net [10.192.208.197])	by
	az33smr01.freescale.net (8.13.1/8.13.0) with ESMTP id pBG8OQNe005295;
	Fri, 16 Dec 2011 02:24:27 -0600 (CST)
From: <b19537@freescale.com>
To: <yocto@yoctoproject.org>
Date: Fri, 16 Dec 2011 16:27:13 +0800
Message-ID: <1324024033-28083-1-git-send-email-b19537@freescale.com>
X-Mailer: git-send-email 1.7.0.4
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Subject: valgrind: add powerpc support
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
X-List-Received-Date: Fri, 16 Dec 2011 08:24:32 -0000
Content-Type: text/plain

From: Zhenhua Luo <b19537@freescale.com>

Signed-off-by: Zhenhua Luo <b19537@freescale.com>
---
 meta/recipes-devtools/valgrind/valgrind_3.6.1.bb |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-devtools/valgrind/valgrind_3.6.1.bb b/meta/recipes-devtools/valgrind/valgrind_3.6.1.bb
index 021caa8..c09fc41 100644
--- a/meta/recipes-devtools/valgrind/valgrind_3.6.1.bb
+++ b/meta/recipes-devtools/valgrind/valgrind_3.6.1.bb
@@ -7,7 +7,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=c46082167a314d785d012a244748d803 \
                     file://include/valgrind.h;beginline=1;endline=56;md5=13a71cedba99112334d8596162aec37e \
                     file://COPYING.DOCS;md5=8fdeb5abdb235a08e76835f8f3260215"
 DEPENDS = "virtual/libx11"
-PR = "r1"
+PR = "r2"
 
 SRC_URI = "http://www.valgrind.org/downloads/valgrind-${PV}.tar.bz2 \
 	   file://fix_issue_caused_by_ccache.patch \
@@ -17,7 +17,7 @@ SRC_URI = "http://www.valgrind.org/downloads/valgrind-${PV}.tar.bz2 \
 SRC_URI[md5sum] = "2c3aa122498baecc9d69194057ca88f5"
 SRC_URI[sha256sum] = "49bdcc4fbcf060049b5f0dcfd8a187a6e90e0b0e57309f633b64e44430726a0e"
 
-COMPATIBLE_HOST = '(i.86|x86_64).*-linux'
+COMPATIBLE_HOST = '(i.86|x86_64|powerpc|powerpc64|ppc|ppc64).*-linux'
 
 inherit autotools
 
-- 
1.7.0.4



