Return-Path: <B40290@freescale.com>
Received: from va3outboundpool.messaging.microsoft.com
	(va3ehsobe002.messaging.microsoft.com [216.32.180.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F173E013D2
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2012 00:38:26 -0700 (PDT)
Received: from mail123-va3-R.bigfish.com (10.7.14.247) by
	VA3EHSOBE009.bigfish.com (10.7.40.29) with Microsoft SMTP Server id
	14.1.225.23; Tue, 30 Oct 2012 07:38:25 +0000
Received: from mail123-va3 (localhost [127.0.0.1])	by
	mail123-va3-R.bigfish.com (Postfix) with ESMTP id 5B71AC03B2	for
	<yocto@yoctoproject.org>; Tue, 30 Oct 2012 07:38:25 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -1
X-BigFish: VS-1(zz936eIzz1202h1d1ah1d2ahzz8275bhz2dh2a8h668h839hd24he5bhf0ah1288h12a5h12a9h12bdh12e5h137ah139eh13b6h1441h1504h1537h1155h)
Received: from mail123-va3 (localhost.localdomain [127.0.0.1]) by mail123-va3
	(MessageSwitch) id 1351582703751262_27948;
	Tue, 30 Oct 2012 07:38:23 +0000 (UTC)
Received: from VA3EHSMHS011.bigfish.com (unknown [10.7.14.240])	by
	mail123-va3.bigfish.com (Postfix) with ESMTP id B3D62440045	for
	<yocto@yoctoproject.org>; Tue, 30 Oct 2012 07:38:23 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by VA3EHSMHS011.bigfish.com
	(10.7.99.21) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Tue, 30 Oct 2012 07:38:23 +0000
Received: from tx30smr01.am.freescale.net (10.81.153.31) by
	039-SN1MMR1-005.039d.mgd.msft.net (10.84.1.17) with Microsoft SMTP
	Server (TLS) id 14.2.318.3; Tue, 30 Oct 2012 07:38:22 +0000
Received: from right.am.freescale.net (right.am.freescale.net [10.82.176.228])
	by tx30smr01.am.freescale.net (8.14.3/8.14.0) with ESMTP id
	q9U7cKKq017009; Tue, 30 Oct 2012 00:38:22 -0700
From: <b40290@freescale.com>
To: <yocto@yoctoproject.org>
Date: Tue, 30 Oct 2012 02:38:18 -0500
Message-ID: <1351582698-28887-1-git-send-email-b40290@freescale.com>
X-Mailer: git-send-email 1.7.9.7
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: Chunrong Guo <b40290@freescale.com>
Subject: [meta-fsl-ppc master] perf_3.4.bbappend: task oe_runmake: failed
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
X-List-Received-Date: Tue, 30 Oct 2012 07:38:26 -0000
Content-Type: text/plain

From: Chunrong Guo <b40290@freescale.com>

      fix perf ERROR: oe_runmake failed

Signed-off-by: Chunrong Guo <b40290@freescale.com>
---
 .../perf/files/define-attribute-const.patch        |   13 +++++++++++++
 recipes-append/perf/perf_3.4.bbappend              |    7 +++++++
 2 files changed, 20 insertions(+)
 create mode 100644 recipes-append/perf/files/define-attribute-const.patch
 create mode 100644 recipes-append/perf/perf_3.4.bbappend

diff --git a/recipes-append/perf/files/define-attribute-const.patch b/recipes-append/perf/files/define-attribute-const.patch
new file mode 100644
index 0000000..00c7575
--- /dev/null
+++ b/recipes-append/perf/files/define-attribute-const.patch
@@ -0,0 +1,13 @@
+--- linux/tools/perf/util/include/linux/compiler.h	2012-10-25 02:39:36.071441794 -0500
++++ git/tools/perf/util/include/linux/compiler.h	2012-10-28 21:53:49.351638193 -0500
+@@ -5,8 +5,9 @@
+ #define __always_inline	inline
+ #endif
+ #define __user
++#ifndef __attribute_const__
+ #define __attribute_const__
+-
++#endif 
+ #define __used		__attribute__((__unused__))
+ 
+ #endif
diff --git a/recipes-append/perf/perf_3.4.bbappend b/recipes-append/perf/perf_3.4.bbappend
new file mode 100644
index 0000000..a5ff52b
--- /dev/null
+++ b/recipes-append/perf/perf_3.4.bbappend
@@ -0,0 +1,7 @@
+FILESEXTRAPATHS_prepend_fsl := "${THISDIR}/files:"
+
+SRC_URI_append_fsl += "file://define-attribute-const.patch\
+                        "
+
+PR_fsl .= "+${DISTRO}"
+
-- 
1.7.9.7



