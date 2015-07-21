Return-Path: <Alexandru.Vaduva@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 77A9DE009C5; Tue, 21 Jul 2015 04:21:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [192.36.1.252 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 6CD6CE00973
	for <yocto@yoctoproject.org>; Tue, 21 Jul 2015 04:21:37 -0700 (PDT)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.209) with Microsoft SMTP Server id 14.3.224.2;
	Tue, 21 Jul 2015 13:21:35 +0200
Received: by sestofb10.enea.se (Postfix, from userid 4470)	id 7FCB028E77D;
	Tue, 21 Jul 2015 13:21:35 +0200 (CEST)
From: Alexandru.Vaduva <Alexandru.Vaduva@enea.com>
To: <yocto@yoctoproject.org>
Date: Tue, 21 Jul 2015 13:21:17 +0200
Message-ID: <1437477677-48800-1-git-send-email-Alexandru.Vaduva@enea.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Received-SPF: None (SESTOEX03.enea.se: Alexandru.Vaduva@enea.com does not
	designate permitted sender hosts)
Subject: [meta-cgl][PATCH] Images cleanup
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
X-List-Received-Date: Tue, 21 Jul 2015 11:21:45 -0000
Content-Type: text/plain

Signed-off-by: Alexandru.Vaduva <Alexandru.Vaduva@enea.com>
---
 meta-cgl-common/images/core-image-cgl-qt3.bb | 27 ---------------------------
 meta-cgl-common/images/core-image-cgl-sdk.bb |  4 ----
 2 files changed, 31 deletions(-)
 delete mode 100644 meta-cgl-common/images/core-image-cgl-qt3.bb
 delete mode 100644 meta-cgl-common/images/core-image-cgl-sdk.bb

diff --git a/meta-cgl-common/images/core-image-cgl-qt3.bb b/meta-cgl-common/images/core-image-cgl-qt3.bb
deleted file mode 100644
index a330c7a..0000000
--- a/meta-cgl-common/images/core-image-cgl-qt3.bb
+++ /dev/null
@@ -1,27 +0,0 @@
-require recipes-qt3/images/core-image-lsb-qt3.bb
-
-
-VALGRIND ?= ""
-VALGRIND_powerpc ?= "valgrind"
-VALGRIND_e500v2 ?= ""
-VALGRIND_x86 ?= "valgrind"
-VALGRIND_x86_64 ?= "valgrind"
-VALGRIND_armv7a ?= "valgrind"
-
-# Include modules in rootfs
-IMAGE_INSTALL += "\
-    ${ROOTFS_PKGMANAGE_BOOTSTRAP} \
-    packagegroup-core-buildessential \
-    packagegroup-core-selinux \
-    packagegroup-cgl \
-    kexec-tools \
-    lttng-tools \
-    lttng-modules \
-    ${VALGRIND} \
-    "
-
-# kexec-tools doesn't work on Mips
-KEXECTOOLS_mips ?= ""
-KEXECTOOLS_mipsel ?= ""
-
-IMAGE_FEATURES += "eclipse-debug tools-debug tools-profile dbg-pkgs"
diff --git a/meta-cgl-common/images/core-image-cgl-sdk.bb b/meta-cgl-common/images/core-image-cgl-sdk.bb
deleted file mode 100644
index 090846e..0000000
--- a/meta-cgl-common/images/core-image-cgl-sdk.bb
+++ /dev/null
@@ -1,4 +0,0 @@
-require recipes-extended/images/core-image-lsb-sdk.bb
-
-
-IMAGE_FEATURES += "dbg-pkgs"
-- 
1.9.1


