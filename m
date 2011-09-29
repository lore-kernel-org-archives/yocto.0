Return-Path: <B29882@freescale.com>
Received: from TX2EHSOBE004.bigfish.com (tx2ehsobe002.messaging.microsoft.com
	[65.55.88.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 951A7E004CF
	for <yocto@yoctoproject.org>; Wed, 28 Sep 2011 22:52:38 -0700 (PDT)
Received: from mail2-tx2-R.bigfish.com (10.9.14.244) by
	TX2EHSOBE004.bigfish.com (10.9.40.24) with Microsoft SMTP Server id
	14.1.225.22; Thu, 29 Sep 2011 05:52:37 +0000
Received: from mail2-tx2 (localhost.localdomain [127.0.0.1])	by
	mail2-tx2-R.bigfish.com (Postfix) with ESMTP id 928A916301EA	for
	<yocto@yoctoproject.org>; Thu, 29 Sep 2011 05:52:37 +0000 (UTC)
X-SpamScore: 3
X-BigFish: VS3(zzzz1202h1082kzz8275bhz2dh2a8h668h839h)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null);
	IPVD:NLI; H:mail.freescale.net; RD:none; EFVD:NLI
Received: from mail2-tx2 (localhost.localdomain [127.0.0.1]) by mail2-tx2
	(MessageSwitch) id 1317275557442794_28769;
	Thu, 29 Sep 2011 05:52:37 +0000 (UTC)
Received: from TX2EHSMHS022.bigfish.com (unknown [10.9.14.246])	by
	mail2-tx2.bigfish.com (Postfix) with ESMTP id 5C56F43804F	for
	<yocto@yoctoproject.org>; Thu, 29 Sep 2011 05:52:37 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by TX2EHSMHS022.bigfish.com
	(10.9.99.122) with Microsoft SMTP Server (TLS) id 14.1.225.22;
	Thu, 29 Sep 2011 05:52:37 +0000
Received: from az33smr02.freescale.net (10.64.34.200) by
	039-SN1MMR1-002.039d.mgd.msft.net (10.84.1.15) with Microsoft SMTP
	Server id 14.1.323.7; Thu, 29 Sep 2011 00:52:36 -0500
Received: from right.am.freescale.net (right.am.freescale.net [10.82.193.13])
	by az33smr02.freescale.net (8.13.1/8.13.0) with ESMTP id
	p8T5qXmu014523	for
	<yocto@yoctoproject.org>; Thu, 29 Sep 2011 00:52:36 -0500 (CDT)
From: Matthew McClintock <msm@freescale.com>
To: <yocto@yoctoproject.org>
Date: Thu, 29 Sep 2011 00:52:32 -0500
Message-ID: <1317275552-19908-7-git-send-email-msm@freescale.com>
X-Mailer: git-send-email 1.7.6.1
In-Reply-To: <1317275552-19908-1-git-send-email-msm@freescale.com>
References: <1317275552-19908-1-git-send-email-msm@freescale.com>
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Subject: [PATCH 7/7] Add proper deps for nfs-utils, util-linux, and strace
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
X-List-Received-Date: Thu, 29 Sep 2011 05:52:39 -0000
Content-Type: text/plain

These packages need these deps for the RPM generation stage:

 error: Failed dependencies:
| 	/usr/bin/python is needed by nfs-utils-1.2.3-r2.ppce5500
| 	/usr/bin/perl is needed by util-linux-2.19.1-r4.ppce5500
| 	/usr/bin/perl is needed by strace-4.5.20-r2.ppce5500

Signed-off-by: Matthew McClintock <msm@freescale.com>
---
 .../nfs-utils/nfs-utils_1.2.3.bb                   |    2 +-
 meta/recipes-core/util-linux/util-linux.inc        |    2 +-
 meta/recipes-devtools/strace/strace_4.5.20.bb      |    2 ++
 3 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-connectivity/nfs-utils/nfs-utils_1.2.3.bb b/meta/recipes-connectivity/nfs-utils/nfs-utils_1.2.3.bb
index 08468fe..e8b0490 100644
--- a/meta/recipes-connectivity/nfs-utils/nfs-utils_1.2.3.bb
+++ b/meta/recipes-connectivity/nfs-utils/nfs-utils_1.2.3.bb
@@ -9,7 +9,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=0636e73ff0215e8d672dc4c32c317bb3"
 
 # util-linux for libblkid
 DEPENDS = "libcap libnfsidmap libevent util-linux tcp-wrappers"
-RDEPENDS_${PN} = "portmap"
+RDEPENDS_${PN} = "portmap python"
 RRECOMMENDS_${PN} = "kernel-module-nfsd"
 
 PR = "r2"
diff --git a/meta/recipes-core/util-linux/util-linux.inc b/meta/recipes-core/util-linux/util-linux.inc
index 1f242b7..afce673 100644
--- a/meta/recipes-core/util-linux/util-linux.inc
+++ b/meta/recipes-core/util-linux/util-linux.inc
@@ -55,7 +55,7 @@ FILES_util-linux-libuuid-dev = "${libdir}/libuuid.so ${libdir}/libuuid.a ${libdi
 FILES_util-linux-lscpu = "${bindir}/lscpu"
 
 RRECOMMENDS_${PN} = "util-linux-fdisk util-linux-cfdisk util-linux-sfdisk util-linux-mount util-linux-readprofile "
-RDEPENDS_${PN} = "util-linux-umount util-linux-swaponoff util-linux-losetup"
+RDEPENDS_${PN} = "util-linux-umount util-linux-swaponoff util-linux-losetup perl"
 
 RRECOMMENDS_${PN}_virtclass-native = ""
 RDEPENDS_${PN}_virtclass-native = ""
diff --git a/meta/recipes-devtools/strace/strace_4.5.20.bb b/meta/recipes-devtools/strace/strace_4.5.20.bb
index 391669f..b3d2aa5 100644
--- a/meta/recipes-devtools/strace/strace_4.5.20.bb
+++ b/meta/recipes-devtools/strace/strace_4.5.20.bb
@@ -5,6 +5,8 @@ LICENSE = "BSD"
 LIC_FILES_CHKSUM = "file://COPYRIGHT;md5=4535377ede62550fdeaf39f595fd550a"
 PR = "r2"
 
+RDEPENDS = "perl"
+
 SRC_URI = "${SOURCEFORGE_MIRROR}/strace/strace-${PV}.tar.bz2 \
            file://sigmask.patch \
           "
-- 
1.7.6.1



