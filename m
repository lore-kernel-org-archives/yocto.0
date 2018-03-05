Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4B6F9E00E23; Sun,  4 Mar 2018 18:25:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7ED8FE00B1E
	for <yocto@yoctoproject.org>; Sun,  4 Mar 2018 18:25:06 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w252P51o022752
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <yocto@yoctoproject.org>; Sun, 4 Mar 2018 18:25:05 -0800
Received: from pek-hostel-deb01.wrs.com (128.224.153.151) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.361.1; Sun, 4 Mar 2018 18:24:28 -0800
From: <jackie.huang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Mon, 5 Mar 2018 10:22:07 +0800
Message-ID: <20180305022207.9762-1-jackie.huang@windriver.com>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
Subject: [meta-security][PATCH] xmlsec1: fix a typo in examples/verify3.c
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
X-List-Received-Date: Mon, 05 Mar 2018 02:25:07 -0000
Content-Type: text/plain

From: Jackie Huang <jackie.huang@windriver.com>

Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
---
 .../xmlsec1-fix-a-typo-in-examples-verify3.c.patch | 25 ++++++++++++++++++++++
 recipes-security/xmlsec1/xmlsec1_1.2.25.bb         |  1 +
 2 files changed, 26 insertions(+)
 create mode 100644 recipes-security/xmlsec1/xmlsec1/xmlsec1-fix-a-typo-in-examples-verify3.c.patch

diff --git a/recipes-security/xmlsec1/xmlsec1/xmlsec1-fix-a-typo-in-examples-verify3.c.patch b/recipes-security/xmlsec1/xmlsec1/xmlsec1-fix-a-typo-in-examples-verify3.c.patch
new file mode 100644
index 0000000..0fe3fd7
--- /dev/null
+++ b/recipes-security/xmlsec1/xmlsec1/xmlsec1-fix-a-typo-in-examples-verify3.c.patch
@@ -0,0 +1,25 @@
+From bf1c7b17cc80a2f4dfd43f112f944f68fa5fbcd6 Mon Sep 17 00:00:00 2001
+From: Jackie Huang <jackie.huang@windriver.com>
+Date: Fri, 2 Mar 2018 01:10:58 -0800
+Subject: [PATCH] xmlsec1: fix a typo in examples/verify3.c
+
+Upstream-Status: Submitted [https://github.com/lsh123/xmlsec/pull/153]
+
+Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
+---
+ examples/verify3.c | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/examples/verify3.c b/examples/verify3.c
+index 2d26ae7..68f52ab 100644
+--- a/examples/verify3.c
++++ b/examples/verify3.c
+@@ -1,4 +1,4 @@
+-4/** 
++/**
+  * XML Security Library example: Verifying a file signed with X509 certificate
+  *
+  * Verifies a file signed with X509 certificate. 
+-- 
+2.13.0
+
diff --git a/recipes-security/xmlsec1/xmlsec1_1.2.25.bb b/recipes-security/xmlsec1/xmlsec1_1.2.25.bb
index d351dd2..dbb6f7d 100644
--- a/recipes-security/xmlsec1/xmlsec1_1.2.25.bb
+++ b/recipes-security/xmlsec1/xmlsec1_1.2.25.bb
@@ -17,6 +17,7 @@ SRC_URI = "http://www.aleksey.com/xmlsec/download/${BP}.tar.gz \
     file://change-finding-path-of-nss.patch \
     file://makefile-ptest.patch \
     file://xmlsec1-examples-allow-build-in-separate-dir.patch \
+    file://xmlsec1-fix-a-typo-in-examples-verify3.c.patch \
     file://run-ptest \
     "
 
-- 
2.11.0


