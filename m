Return-Path: <leimaohui@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BFA60E00E01; Thu, 26 May 2016 22:56:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: **
X-Spam-Status: No, score=2.3 required=5.0 tests=BAYES_00,DATE_IN_PAST_96_XX,
	RDNS_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 3.4 DATE_IN_PAST_96_XX Date: is 96 hours or more before
	Received: date
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Thu, 26 May 2016 22:56:16 PDT
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55932E00D49
	for <yocto@yoctoproject.org>; Thu, 26 May 2016 22:56:16 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.22,518,1449504000"; 
   d="scan'208";a="6963659"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 27 May 2016 13:55:10 +0800
Received: from G08CNEXCHPEKD01.g08.fujitsu.local (unknown [10.167.33.80])
	by cn.fujitsu.com (Postfix) with ESMTP id 6B7B7489F98A
	for <yocto@yoctoproject.org>; Fri, 27 May 2016 13:55:05 +0800 (CST)
Received: from localhost.localdomain (10.167.226.93) by
	G08CNEXCHPEKD01.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP
	Server (TLS) id 14.3.279.2; Fri, 27 May 2016 13:55:05 +0800
From: Lei Maohui <leimaohui@cn.fujitsu.com>
To: <yocto@yoctoproject.org>
Date: Tue, 17 May 2016 13:30:39 -0700
Message-ID: <1463517039-25658-1-git-send-email-leimaohui@cn.fujitsu.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-Originating-IP: [10.167.226.93]
X-yoursite-MailScanner-ID: 6B7B7489F98A.AE4DE
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: leimaohui@cn.fujitsu.com
Subject: [meta-security][PATCH] samhain: Avoid empty source archiver
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
X-List-Received-Date: Fri, 27 May 2016 05:56:20 -0000
Content-Type: text/plain

It is better to put necessary work into do_patch task than add a new task.
Otherwise,you can not get correct source code in some functions(such as archiver.bbclass).

Signed-off-by: Lei Maohui <leimaohui@cn.fujitsu.com>
---
 recipes-security/samhain/samhain.inc | 17 +++++++----------
 1 file changed, 7 insertions(+), 10 deletions(-)

diff --git a/recipes-security/samhain/samhain.inc b/recipes-security/samhain/samhain.inc
index 23bc8f5..5c0142b 100644
--- a/recipes-security/samhain/samhain.inc
+++ b/recipes-security/samhain/samhain.inc
@@ -25,17 +25,14 @@ INITSCRIPT_PARAMS ?= "defaults"
 
 PACKAGECONFIG ??= ""
 
-# We have to unpack the tar ball twice to get to the source.
-# Also as soon as OE gets the tar ball it unpacks and
-# proceeds to apply the patches. But what you still have after
-# the first unpack is another tar ball. So we do a do_unpack_extra()
-# and tell OE to do the second unpack before do_patch(), otherwise
-# do_patch() will fail when trying to apply the patches.
-do_unpack_extra () {
-	cd ${WORKDIR}
-	tar -xzvf samhain-${PV}.tar.gz
+do_unpack_samhain() {
+    cd ${WORKDIR}
+    tar -xzvf samhain-${PV}.tar.gz
+}
+
+python do_unpack_append() {
+    bb.build.exec_func('do_unpack_samhain', d)
 }
-addtask unpack_extra after do_unpack before do_patch
 
 do_configure_prepend_arm() {
     export sh_cv___va_copy=yes
-- 
1.8.4.2




