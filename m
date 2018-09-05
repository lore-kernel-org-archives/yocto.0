Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BEC0CE00AB3; Tue,  4 Sep 2018 17:18:47 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 027F1E00AB3
	for <yocto@yoctoproject.org>; Tue,  4 Sep 2018 17:18:45 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w850Iini016494
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 4 Sep 2018 17:18:44 -0700
Received: from localhost (128.224.162.137) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.408.0;
	Tue, 4 Sep 2018 17:18:43 -0700
From: Yi Zhao <yi.zhao@windriver.com>
To: <joe_macdonald@mentor.com>, <flihp@twobit.us>, <mark.hatle@windriver.com>, 
	<yocto@yoctoproject.org>
Date: Wed, 5 Sep 2018 08:18:15 +0800
Message-ID: <1536106707-30781-5-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1536106707-30781-1-git-send-email-yi.zhao@windriver.com>
References: <1536106707-30781-1-git-send-email-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.137]
Subject: [meta-selinux][PATCH 04/16] libsemanage: uprev to 2.8 (20180524)
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
X-List-Received-Date: Wed, 05 Sep 2018 00:18:47 -0000
Content-Type: text/plain

Rebase patch:
0001-src-Makefile-fix-includedir-in-libselinux.pc.patch

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/libsemanage.inc             | 12 ++----------
 ...rc-Makefile-fix-includedir-in-libselinux.pc.patch | 20 +++++++++++---------
 .../{libsemanage_2.7.bb => libsemanage_2.8.bb}       |  6 +++---
 3 files changed, 16 insertions(+), 22 deletions(-)
 rename recipes-security/selinux/{libsemanage_2.7.bb => libsemanage_2.8.bb} (76%)

diff --git a/recipes-security/selinux/libsemanage.inc b/recipes-security/selinux/libsemanage.inc
index d957d89..be0a5f1 100644
--- a/recipes-security/selinux/libsemanage.inc
+++ b/recipes-security/selinux/libsemanage.inc
@@ -32,18 +32,10 @@ do_compile_append() {
             PYTHONLIBDIR='${PYLIB}'
 }
 
-do_install() {
-    oe_runmake install \
-            DESTDIR="${D}" \
-            PREFIX="${D}/${prefix}" \
-            INCLUDEDIR="${D}/${includedir}" \
-            LIBDIR="${D}/${libdir}" \
-            SHLIBDIR="${D}/${libdir}"
-
+do_install_append() {
     oe_runmake install-pywrap swigify \
-            DESTDIR=${D} \
             PYCEXT='.so' \
-            PYSITEDIR='${D}${libdir}/python${PYTHON_BASEVERSION}/site-packages' \
+            PYTHONLIBDIR='${D}${libdir}/python${PYTHON_BASEVERSION}/site-packages' \
             PYLIBVER='python${PYTHON_BASEVERSION}' \
             PYLIBDIR='${D}/${libdir}/$(PYLIBVER)'
 
diff --git a/recipes-security/selinux/libsemanage/0001-src-Makefile-fix-includedir-in-libselinux.pc.patch b/recipes-security/selinux/libsemanage/0001-src-Makefile-fix-includedir-in-libselinux.pc.patch
index 3d1e110..73613d3 100644
--- a/recipes-security/selinux/libsemanage/0001-src-Makefile-fix-includedir-in-libselinux.pc.patch
+++ b/recipes-security/selinux/libsemanage/0001-src-Makefile-fix-includedir-in-libselinux.pc.patch
@@ -1,4 +1,4 @@
-From 992d02fe0d08361529a5d158119c02521786798f Mon Sep 17 00:00:00 2001
+From e773c0952b06370d81e9b113f9b0b3388e323e52 Mon Sep 17 00:00:00 2001
 From: Robert Yang <liezhi.yang@windriver.com>
 Date: Thu, 18 Feb 2016 02:39:16 +0000
 Subject: [PATCH] src/Makefile: fix includedir in libselinux.pc
@@ -6,21 +6,23 @@ Subject: [PATCH] src/Makefile: fix includedir in libselinux.pc
 Upstream-Status: Pending
 
 Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
-
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
 ---
- src/Makefile | 2 +-
- 1 file changed, 1 insertion(+), 1 deletion(-)
+ src/Makefile | 1 +
+ 1 file changed, 1 insertion(+)
 
 diff --git a/src/Makefile b/src/Makefile
-index e8831ab..d3d4644 100644
+index dea751e..4af4568 100644
 --- a/src/Makefile
 +++ b/src/Makefile
-@@ -103,7 +103,7 @@ $(LIBSO): $(LOBJS)
- 	ln -sf $@ $(TARGET)
+@@ -93,6 +93,7 @@ $(LIBSO): $(LOBJS)
  
  $(LIBPC): $(LIBPC).in ../VERSION
--	sed -e 's/@VERSION@/$(VERSION)/; s:@prefix@:$(PREFIX):; s:@libdir@:$(LIBBASE):; s:@includedir@:$(INCLUDEDIR):' < $< > $@
-+	sed -e 's/@VERSION@/$(VERSION)/; s:@prefix@:$(PREFIX):; s:@libdir@:$(LIBBASE):; s:@includedir@:${prefix}/include:' < $< > $@
+ 	sed -e 's/@VERSION@/$(VERSION)/; s:@prefix@:$(PREFIX):; s:@libdir@:$(LIBDIR):; s:@includedir@:$(INCLUDEDIR):' < $< > $@
++	sed -e 's/@VERSION@/$(VERSION)/; s:@prefix@:$(PREFIX):; s:@libdir@:${libdir}:; s:@includedir@:${prefix}/include:' < $< > $@
  
  semanageswig_python_exception.i: ../include/semanage/semanage.h
  	bash -e exception.sh > $@ || (rm -f $@ ; false)
+-- 
+2.7.4
+
diff --git a/recipes-security/selinux/libsemanage_2.7.bb b/recipes-security/selinux/libsemanage_2.8.bb
similarity index 76%
rename from recipes-security/selinux/libsemanage_2.7.bb
rename to recipes-security/selinux/libsemanage_2.8.bb
index d7b5312..38942e3 100644
--- a/recipes-security/selinux/libsemanage_2.7.bb
+++ b/recipes-security/selinux/libsemanage_2.8.bb
@@ -1,10 +1,10 @@
-include selinux_20170804.inc
+include selinux_20180524.inc
 include ${BPN}.inc
 
 LIC_FILES_CHKSUM = "file://COPYING;md5=a6f89e2100d9b6cdffcea4f398e37343"
 
-SRC_URI[md5sum] = "a6b5c451fbe45ff9e3e0e65f2db0ae1d"
-SRC_URI[sha256sum] = "07e9477714ce6a4557a1fe924ea4cb06501b62d0fa0e3c0dc32a2cf47cb8d476"
+SRC_URI[md5sum] = "62ed7bb2ede677a735f2750751677a4f"
+SRC_URI[sha256sum] = "1c0de8d2c51e5460926c21e371105c84a39087dfd8f8e9f0cc1d017e4cbea8e2"
 
 SRC_URI += "\
 	file://libsemanage-Fix-execve-segfaults-on-Ubuntu.patch \
-- 
2.7.4


