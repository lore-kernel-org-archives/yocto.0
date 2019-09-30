Return-Path: <leimaohui@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34693E00C81; Mon, 30 Sep 2019 00:55:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.3 required=5.0 tests=BAYES_00, DATE_IN_FUTURE_06_12,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [183.91.158.132 listed in list.dnswl.org]
	* 1.9 DATE_IN_FUTURE_06_12 Date: is 6 to 12 hours after Received: date
Received: from heian.cn.fujitsu.com (mail.cn.fujitsu.com [183.91.158.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7408E00B65
	for <yocto@yoctoproject.org>; Mon, 30 Sep 2019 00:55:18 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.64,565,1559491200"; d="scan'208";a="76253798"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 30 Sep 2019 15:55:15 +0800
Received: from G08CNEXCHPEKD01.g08.fujitsu.local (unknown [10.167.33.80])
	by cn.fujitsu.com (Postfix) with ESMTP id D8F154CE1506
	for <yocto@yoctoproject.org>; Mon, 30 Sep 2019 15:55:18 +0800 (CST)
Received: from localhost.localdomain (10.167.225.227) by
	G08CNEXCHPEKD01.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP
	Server (TLS) id 14.3.439.0; Mon, 30 Sep 2019 15:55:22 +0800
From: Lei Maohui <leimaohui@cn.fujitsu.com>
To: <yocto@yoctoproject.org>
Date: Mon, 30 Sep 2019 23:55:08 +0800
Message-ID: <20190930155508.46292-1-leimaohui@cn.fujitsu.com>
X-Mailer: git-send-email 2.17.2
MIME-Version: 1.0
X-Originating-IP: [10.167.225.227]
X-yoursite-MailScanner-ID: D8F154CE1506.AD48D
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: leimaohui@cn.fujitsu.com
Subject: [meta-cgl][PATCH] heartbeat:Update the patch for new version.
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
X-List-Received-Date: Mon, 30 Sep 2019 07:55:20 -0000
Content-Type: text/plain

To fix the patch error as follwing:

WARNING: heartbeat-3.0.6-r0 do_patch: QA Issue: Patch log indicates that
patches do not apply cleanly. [patch-fuzz

Signed-off-by: Lei Maohui <leimaohui@cn.fujitsu.com>
---
 ...mbership-ccm-Makefile.am-fix-warning.patch | 19 ++++++++++---------
 1 file changed, 10 insertions(+), 9 deletions(-)

diff --git a/meta-cgl-common/recipes-cgl/heartbeat/heartbeat/membership-ccm-Makefile.am-fix-warning.patch b/meta-cgl-common/recipes-cgl/heartbeat/heartbeat/membership-ccm-Makefile.am-fix-warning.patch
index 19691db..e27ed79 100644
--- a/meta-cgl-common/recipes-cgl/heartbeat/heartbeat/membership-ccm-Makefile.am-fix-warning.patch
+++ b/meta-cgl-common/recipes-cgl/heartbeat/heartbeat/membership-ccm-Makefile.am-fix-warning.patch
@@ -1,9 +1,10 @@
-From 30ee44e75da1bc86901b546ea14233d288ce2309 Mon Sep 17 00:00:00 2001
-From: Li xin <lixin.fnst@cn.fujitsu.com>
-Date: Tue, 9 Dec 2014 18:15:51 +0900
+From a5e1060c233513cdfc494be410032e6d4ed6f916 Mon Sep 17 00:00:00 2001
+From: Lei Maohui <leimaohui@cn.fujitsu.com>
+Date: Mon, 30 Sep 2019 12:42:41 +0900
 Subject: [PATCH] membership/ccm/Makefile.am: fix warning
 
-The compile log indicates that host include and/or library paths were used
+The compile log indicates that host include and/or library paths were
+used
 
 Upstream-Status: pending
 
@@ -13,18 +14,18 @@ Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
  1 file changed, 1 insertion(+), 1 deletion(-)
 
 diff --git a/membership/ccm/Makefile.am b/membership/ccm/Makefile.am
-index 105069a..2a89de1 100644
+index eeb8eee..47a6452 100644
 --- a/membership/ccm/Makefile.am
 +++ b/membership/ccm/Makefile.am
 @@ -22,7 +22,7 @@ MAINTAINERCLEANFILES    = Makefile.in
- INCLUDES                = -I$(top_builddir)/include -I$(top_srcdir)/include \
+ AM_CPPFLAGS		= -I$(top_builddir)/include -I$(top_srcdir)/include \
  			-I$(top_builddir)/linux-ha -I$(top_srcdir)/linux-ha \
  			-I$(top_builddir)/libltdl -I$(top_srcdir)/libltdl \
 -                        -I$(includedir)/clplumbing
 +                        -I$(lt_sysroot)$(includedir)/clplumbing
  
- hadir			= $(sysconfdir)/ha.d
- halibdir		= $(libdir)/@HB_PKG@
+ halibexecdir		= $(libexecdir)/@HB_PKG@
+ ccmlibdir		= $(halibexecdir)
 -- 
-1.8.4.2
+2.17.1
 
-- 
2.17.2




