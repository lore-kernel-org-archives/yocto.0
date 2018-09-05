Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2A67BE00AF4; Tue,  4 Sep 2018 17:18:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6D73E00A64
	for <yocto@yoctoproject.org>; Tue,  4 Sep 2018 17:18:40 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id w850IcE9026634
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 4 Sep 2018 17:18:38 -0700 (PDT)
Received: from localhost (128.224.162.137) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.408.0;
	Tue, 4 Sep 2018 17:18:37 -0700
From: Yi Zhao <yi.zhao@windriver.com>
To: <joe_macdonald@mentor.com>, <flihp@twobit.us>, <mark.hatle@windriver.com>, 
	<yocto@yoctoproject.org>
Date: Wed, 5 Sep 2018 08:18:13 +0800
Message-ID: <1536106707-30781-3-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1536106707-30781-1-git-send-email-yi.zhao@windriver.com>
References: <1536106707-30781-1-git-send-email-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.137]
Subject: [meta-selinux][PATCH 02/16] libsepol: uprev to 2.8 (20180524)
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
X-List-Received-Date: Wed, 05 Sep 2018 00:18:45 -0000
Content-Type: text/plain

Rebase patch:
0001-src-Makefile-fix-includedir-in-libsepol.pc.patch

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../0001-src-Makefile-fix-includedir-in-libsepol.pc.patch   | 13 +++++++------
 recipes-security/selinux/libsepol_2.7.bb                    |  9 ---------
 recipes-security/selinux/libsepol_2.8.bb                    |  9 +++++++++
 3 files changed, 16 insertions(+), 15 deletions(-)
 delete mode 100644 recipes-security/selinux/libsepol_2.7.bb
 create mode 100644 recipes-security/selinux/libsepol_2.8.bb

diff --git a/recipes-security/selinux/libsepol/0001-src-Makefile-fix-includedir-in-libsepol.pc.patch b/recipes-security/selinux/libsepol/0001-src-Makefile-fix-includedir-in-libsepol.pc.patch
index 8a6e047..987fdab 100644
--- a/recipes-security/selinux/libsepol/0001-src-Makefile-fix-includedir-in-libsepol.pc.patch
+++ b/recipes-security/selinux/libsepol/0001-src-Makefile-fix-includedir-in-libsepol.pc.patch
@@ -1,4 +1,4 @@
-From 05907644755048f9335e05dc540f810bb580477f Mon Sep 17 00:00:00 2001
+From 074dbf2f104d1a6ea1aa048600f44f9701c70a60 Mon Sep 17 00:00:00 2001
 From: Robert Yang <liezhi.yang@windriver.com>
 Date: Thu, 18 Feb 2016 02:04:59 +0000
 Subject: [PATCH] src/Makefile: fix includedir in libsepol.pc
@@ -6,23 +6,24 @@ Subject: [PATCH] src/Makefile: fix includedir in libsepol.pc
 Upstream-Status: Pending
 
 Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
 ---
  src/Makefile | 2 +-
  1 file changed, 1 insertion(+), 1 deletion(-)
 
 diff --git a/src/Makefile b/src/Makefile
-index db6c2ba..c03ee92 100644
+index ccb7023..2bb6290 100644
 --- a/src/Makefile
 +++ b/src/Makefile
-@@ -43,7 +43,7 @@ $(LIBSO): $(LOBJS) $(LIBMAP)
+@@ -51,7 +51,7 @@ $(LIBSO): $(LOBJS) $(LIBMAP)
  	ln -sf $@ $(TARGET) 
  
  $(LIBPC): $(LIBPC).in ../VERSION
--	sed -e 's/@VERSION@/$(VERSION)/; s:@prefix@:$(PREFIX):; s:@libdir@:$(LIBBASE):; s:@includedir@:$(INCLUDEDIR):' < $< > $@
-+	sed -e 's/@VERSION@/$(VERSION)/; s:@prefix@:$(PREFIX):; s:@libdir@:$(LIBBASE):; s:@includedir@:${prefix}/include:' < $< > $@
+-	sed -e 's/@VERSION@/$(VERSION)/; s:@prefix@:$(PREFIX):; s:@libdir@:$(LIBDIR):; s:@includedir@:$(INCLUDEDIR):' < $< > $@
++	sed -e 's/@VERSION@/$(VERSION)/; s:@prefix@:$(PREFIX):; s:@libdir@:${libdir}:; s:@includedir@:${prefix}/include:' < $< > $@
  
  $(LIBMAP): $(LIBMAP).in
  ifneq ($(DISABLE_CIL),y)
 -- 
-2.5.0
+2.7.4
 
diff --git a/recipes-security/selinux/libsepol_2.7.bb b/recipes-security/selinux/libsepol_2.7.bb
deleted file mode 100644
index f38f7ba..0000000
--- a/recipes-security/selinux/libsepol_2.7.bb
+++ /dev/null
@@ -1,9 +0,0 @@
-include selinux_20170804.inc
-include ${BPN}.inc
-
-LIC_FILES_CHKSUM = "file://COPYING;md5=a6f89e2100d9b6cdffcea4f398e37343"
-
-SRC_URI[md5sum] = "9424b93fd6efd853b9360f29265c5aa3"
-SRC_URI[sha256sum] = "d69d3bd8ec901a3bd5adf2be2fb47fb1a685ed73066ab482e7e505371a48f9e7"
-
-SRC_URI += "file://0001-src-Makefile-fix-includedir-in-libsepol.pc.patch"
diff --git a/recipes-security/selinux/libsepol_2.8.bb b/recipes-security/selinux/libsepol_2.8.bb
new file mode 100644
index 0000000..d1f905b
--- /dev/null
+++ b/recipes-security/selinux/libsepol_2.8.bb
@@ -0,0 +1,9 @@
+include selinux_20180524.inc
+include ${BPN}.inc
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=a6f89e2100d9b6cdffcea4f398e37343"
+
+SRC_URI[md5sum] = "c19aa9dde1e78d1c2bd3109579e4d484"
+SRC_URI[sha256sum] = "3ad6916a8352bef0bad49acc8037a5f5b48c56f94e4cb4e1959ca475fa9d24d6"
+
+SRC_URI += "file://0001-src-Makefile-fix-includedir-in-libsepol.pc.patch"
-- 
2.7.4


