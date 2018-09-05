Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 79FFAE00B77; Tue,  4 Sep 2018 17:18:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC9D0E00A73
	for <yocto@yoctoproject.org>; Tue,  4 Sep 2018 17:18:42 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w850Ifr2017431
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 4 Sep 2018 17:18:41 -0700 (PDT)
Received: from localhost (128.224.162.137) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.408.0;
	Tue, 4 Sep 2018 17:18:40 -0700
From: Yi Zhao <yi.zhao@windriver.com>
To: <joe_macdonald@mentor.com>, <flihp@twobit.us>, <mark.hatle@windriver.com>, 
	<yocto@yoctoproject.org>
Date: Wed, 5 Sep 2018 08:18:14 +0800
Message-ID: <1536106707-30781-4-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1536106707-30781-1-git-send-email-yi.zhao@windriver.com>
References: <1536106707-30781-1-git-send-email-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.137]
Subject: [meta-selinux][PATCH 03/16] libselinux: uprev to 2.8 (20180524)
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
 recipes-security/selinux/libselinux.inc              |  2 +-
 ...rc-Makefile-fix-includedir-in-libselinux.pc.patch | 20 +++++++++++---------
 .../selinux/{libselinux_2.7.bb => libselinux_2.8.bb} |  6 +++---
 3 files changed, 15 insertions(+), 13 deletions(-)
 rename recipes-security/selinux/{libselinux_2.7.bb => libselinux_2.8.bb} (72%)

diff --git a/recipes-security/selinux/libselinux.inc b/recipes-security/selinux/libselinux.inc
index 51d0875..17c29f9 100644
--- a/recipes-security/selinux/libselinux.inc
+++ b/recipes-security/selinux/libselinux.inc
@@ -33,7 +33,7 @@ do_compile_append() {
 
 do_install_append() {
     oe_runmake install-pywrap swigify \
-            PYSITEDIR=${D}${libdir}/python${PYTHON_BASEVERSION}/site-packages
+            PYTHONLIBDIR=${D}${libdir}/python${PYTHON_BASEVERSION}/site-packages
     rm -rf ${D}${base_sbindir}
 }
 
diff --git a/recipes-security/selinux/libselinux/0001-src-Makefile-fix-includedir-in-libselinux.pc.patch b/recipes-security/selinux/libselinux/0001-src-Makefile-fix-includedir-in-libselinux.pc.patch
index 725141f..46cfaaf 100644
--- a/recipes-security/selinux/libselinux/0001-src-Makefile-fix-includedir-in-libselinux.pc.patch
+++ b/recipes-security/selinux/libselinux/0001-src-Makefile-fix-includedir-in-libselinux.pc.patch
@@ -1,4 +1,4 @@
-From 3f633e310851cb029cb4f38d9e11a3aaef8d1099 Mon Sep 17 00:00:00 2001
+From 37f3299e8f5c468fe692f36356c2c35f968b6aee Mon Sep 17 00:00:00 2001
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
-index a89c0f7..f304032 100644
+index 977b5c8..92a4289 100644
 --- a/src/Makefile
 +++ b/src/Makefile
-@@ -148,7 +148,7 @@ $(LIBSO): $(LOBJS)
- 	ln -sf $@ $(TARGET)
+@@ -156,6 +156,7 @@ $(LIBSO): $(LOBJS)
  
  $(LIBPC): $(LIBPC).in ../VERSION
--	sed -e 's/@VERSION@/$(VERSION)/; s:@prefix@:$(PREFIX):; s:@libdir@:$(LIBBASE):; s:@includedir@:$(INCLUDEDIR):' < $< > $@
-+	sed -e 's/@VERSION@/$(VERSION)/; s:@prefix@:$(PREFIX):; s:@libdir@:$(LIBBASE):; s:@includedir@:${prefix}/include:' < $< > $@
+ 	sed -e 's/@VERSION@/$(VERSION)/; s:@prefix@:$(PREFIX):; s:@libdir@:$(LIBDIR):; s:@includedir@:$(INCLUDEDIR):; s:@PCRE_MODULE@:$(PCRE_MODULE):' < $< > $@
++	sed -e 's/@VERSION@/$(VERSION)/; s:@prefix@:$(PREFIX):; s:@libdir@:${libdir}:; s:@includedir@:${prefix}/include:; s:@PCRE_MODULE@:$(PCRE_MODULE):' < $< > $@
  
  selinuxswig_python_exception.i: ../include/selinux/selinux.h
  	bash -e exception.sh > $@ || (rm -f $@ ; false)
+-- 
+2.7.4
+
diff --git a/recipes-security/selinux/libselinux_2.7.bb b/recipes-security/selinux/libselinux_2.8.bb
similarity index 72%
rename from recipes-security/selinux/libselinux_2.7.bb
rename to recipes-security/selinux/libselinux_2.8.bb
index e0d01fc..5de4607 100644
--- a/recipes-security/selinux/libselinux_2.7.bb
+++ b/recipes-security/selinux/libselinux_2.8.bb
@@ -1,10 +1,10 @@
-include selinux_20170804.inc
+include selinux_20180524.inc
 include ${BPN}.inc
 
 LIC_FILES_CHKSUM = "file://LICENSE;md5=84b4d2c6ef954a2d4081e775a270d0d0"
 
-SRC_URI[md5sum] = "1d48ee4e9fadd76794d70c806b69ba7d"
-SRC_URI[sha256sum] = "d0fec0769b3ad60aa7baf9b9a4b7a056827769dc2dadda0dc0eb59b3d1c18c57"
+SRC_URI[md5sum] = "56057e60192b21122c1aede8ff723ca2"
+SRC_URI[sha256sum] = "31db96ec7643ce10912b3c3f98506a08a9116dcfe151855fd349c3fda96187e1"
 
 SRC_URI += "\
         file://libselinux-drop-Wno-unused-but-set-variable.patch \
-- 
2.7.4


