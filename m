Return-Path: <Dmitry_Eremin@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D20A0E009F6; Fri, 24 Apr 2015 13:29:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [192.94.38.131 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4CA7FE0094C
	for <yocto@yoctoproject.org>; Fri, 24 Apr 2015 13:29:37 -0700 (PDT)
Received: from nat-ies.mentorg.com ([192.94.31.2]
	helo=SVR-IES-FEM-01.mgc.mentorg.com)
	by relay1.mentorg.com with esmtp 
	id 1YlkEC-0004Fb-W3 from Dmitry_Eremin@mentor.com 
	for yocto@yoctoproject.org; Fri, 24 Apr 2015 13:29:37 -0700
Received: from fangorn.rup.mentorg.com (137.202.0.76) by
	SVR-IES-FEM-01.mgc.mentorg.com (137.202.0.104) with Microsoft SMTP
	Server (TLS) id 14.3.224.2; Fri, 24 Apr 2015 21:29:35 +0100
From: Dmitry Eremin-Solenikov <dmitry_eremin@mentor.com>
To: <yocto@yoctoproject.org>
Date: Fri, 24 Apr 2015 23:29:29 +0300
Message-ID: <1429907371-14096-7-git-send-email-dmitry_eremin@mentor.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1429907371-14096-1-git-send-email-dmitry_eremin@mentor.com>
References: <1429907371-14096-1-git-send-email-dmitry_eremin@mentor.com>
MIME-Version: 1.0
Subject: [meta-cgl][PATCH 7/9] openais: make openais script use sh instead of bash
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
X-List-Received-Date: Fri, 24 Apr 2015 20:29:49 -0000
Content-Type: text/plain

There is no point in using bash for the openais script, if just sh is
enough. In addition this fixes the following QA warning:

openais-1.1.3: /etc/init.d/openais_openais contained in package openais requires /bin/bash, but no providers found in its RDEPENDS [file-rdeps]

Signed-off-by: Dmitry Eremin-Solenikov <dmitry_eremin@mentor.com>
---
 .../recipes-cgl/openais/files/openais-fix-bash.patch           | 10 ++++++++++
 meta-cgl-common/recipes-cgl/openais/openais_1.1.3.bb           |  1 +
 2 files changed, 11 insertions(+)
 create mode 100644 meta-cgl-common/recipes-cgl/openais/files/openais-fix-bash.patch

diff --git a/meta-cgl-common/recipes-cgl/openais/files/openais-fix-bash.patch b/meta-cgl-common/recipes-cgl/openais/files/openais-fix-bash.patch
new file mode 100644
index 0000000..ede77e8
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/openais/files/openais-fix-bash.patch
@@ -0,0 +1,10 @@
+Index: openais-1.1.3/init/generic.in
+===================================================================
+--- openais-1.1.3.orig/init/generic.in
++++ openais-1.1.3/init/generic.in
+@@ -1,4 +1,4 @@
+-#!/bin/bash
++#!/bin/sh
+ 
+ # Authors:
+ #  Andrew Beekhof <abeekhof@redhat.com>
diff --git a/meta-cgl-common/recipes-cgl/openais/openais_1.1.3.bb b/meta-cgl-common/recipes-cgl/openais/openais_1.1.3.bb
index 2a03b9a..f4563c9 100644
--- a/meta-cgl-common/recipes-cgl/openais/openais_1.1.3.bb
+++ b/meta-cgl-common/recipes-cgl/openais/openais_1.1.3.bb
@@ -9,6 +9,7 @@ SRC_URI = " \
 	ftp://ftp@tux.rainside.sk/gentoo/distfiles/openais-${PV}.tar.gz \
 	file://fix-lcrso-linkage.patch \
     file://build-cleanup-configure-ac.patch \
+    file://openais-fix-bash.patch \
 	"
 SRC_URI[md5sum] = "13d8d590f806fb396d750b086c6c0b78"
 SRC_URI[sha256sum] = "eeef58dd2df3eb16ba68b3fbdc6f0d4dfb537443f1c091ec6f0431594f2f00b6"
-- 
2.1.4


