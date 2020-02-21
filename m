Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.3313.1582251543706175668
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Feb 2020 18:19:03 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: windriver.com, ip: 140.211.169.56, mailfrom: qi.chen@windriver.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8E359E016B7; Thu, 20 Feb 2020 18:19:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77374E016B9
	for <yocto@yoctoproject.org>; Thu, 20 Feb 2020 18:19:02 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id 01L2I7vK025222
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Thu, 20 Feb 2020 18:18:08 -0800 (PST)
Received: from pek-lpg-core3.wrs.com (128.224.153.232) by
 ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
 14.3.468.0; Thu, 20 Feb 2020 18:18:07 -0800
From: "Chen Qi" <Qi.Chen@windriver.com>
To: <yocto@yoctoproject.org>, <jiahongxujia@163.com>
Subject: [meta-tensorflow][PATCH 1/2] bazel-native: inherit pythonnative to fix do_compile error
Date: Fri, 21 Feb 2020 10:18:05 +0800
Message-ID: <20200221021806.33303-1-Qi.Chen@windriver.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain

The compilation process needs python (python2) to be there, so
fix it by making bazel-native inherit pythonnative.

Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
---
 recipes-devtools/bazel/bazel-native_0.21.0.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-devtools/bazel/bazel-native_0.21.0.bb b/recipes-devtools/bazel/bazel-native_0.21.0.bb
index 3395c2f..03c3e8d 100644
--- a/recipes-devtools/bazel/bazel-native_0.21.0.bb
+++ b/recipes-devtools/bazel/bazel-native_0.21.0.bb
@@ -9,7 +9,7 @@ SRC_URI = "https://github.com/bazelbuild/bazel/releases/download/${PV}/bazel-${P
            file://0001-HttpDownloader-save-download-tarball-to-distdir.patch \
 "
 
-inherit native
+inherit native pythonnative
 
 INHIBIT_SYSROOT_STRIP = "1"
 
-- 
2.17.1

