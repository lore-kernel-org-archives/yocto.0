Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 396B2E0087C; Wed, 28 Jan 2015 07:36:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CCA2E0087C
	for <yocto@yoctoproject.org>; Wed, 28 Jan 2015 07:36:25 -0800 (PST)
Received: from c-50-185-54-102.hsd1.ca.comcast.net ([50.185.54.102]
	helo=scrapper.twobit.us)
	by smtp.twobit.us with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1YGUdV-0006AH-IQ; Wed, 28 Jan 2015 15:34:34 +0000
From: Philip Tricca <flihp@twobit.us>
To: yocto@yoctoproject.org
Date: Wed, 28 Jan 2015 15:36:05 +0000
Message-Id: <1422459365-22900-5-git-send-email-flihp@twobit.us>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <1422459365-22900-1-git-send-email-flihp@twobit.us>
References: <1422459365-22900-1-git-send-email-flihp@twobit.us>
X-SA-Exim-Connect-IP: 50.185.54.102
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Subject: [meta-selinux][ 4/4] ustr: Fix use of bad variable in SRC_URI.
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
X-List-Received-Date: Wed, 28 Jan 2015 15:36:35 -0000

Signed-off-by: Philip Tricca <flihp@twobit.us>
---
 recipes-extended/ustr/ustr_1.0.4.bb |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-extended/ustr/ustr_1.0.4.bb b/recipes-extended/ustr/ustr_1.0.4.bb
index a0a1e41..cdb78ad 100644
--- a/recipes-extended/ustr/ustr_1.0.4.bb
+++ b/recipes-extended/ustr/ustr_1.0.4.bb
@@ -12,7 +12,7 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=c79c6e2ae13418d16d7dc82df960a1e7 \
 		    file://LICENSE_MIT;md5=c61e779b782608472bd87593c3c3916f"
 
 SRC_URI = "\
-    http://www.and.org/ustr/${BPV}/${BPN}-${PV}.tar.bz2 \
+    http://www.and.org/ustr/${PV}/${BPN}-${PV}.tar.bz2 \
     file://ustr-makefile-fix.patch;patch=1 \
     file://ustr-fix__va_copy-not-defined.patch;patch=2 \
     file://ustr-c99-inline.patch;patch=3"
-- 
1.7.10.4


