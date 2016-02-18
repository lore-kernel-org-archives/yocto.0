Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 06EF3E00BF4; Wed, 17 Feb 2016 18:47:55 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4DF3E00BEB
	for <yocto@yoctoproject.org>; Wed, 17 Feb 2016 18:47:52 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id u1I2lpf8011791
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 17 Feb 2016 18:47:51 -0800 (PST)
Received: from ala-blade47.wrs.com (147.11.105.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.248.2;
	Wed, 17 Feb 2016 18:47:50 -0800
From: Robert Yang <liezhi.yang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Wed, 17 Feb 2016 18:47:49 -0800
Message-ID: <1455763670-30916-1-git-send-email-liezhi.yang@windriver.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
Subject: [meta-selinux] [PATCH 1/2] libsepol: fix libsepol.pc failed sanity test
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
X-List-Received-Date: Thu, 18 Feb 2016 02:47:55 -0000
Content-Type: text/plain

ERROR: libsepol-2.4-r0 do_populate_sysroot: QA Issue: libsepol.pc failed sanity test (tmpdir) in path /path/to//sysroot-destdir//usr/lib/pkgconfig [pkgconfig]

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 ...rc-Makefile-fix-includedir-in-libsepol.pc.patch |   28 ++++++++++++++++++++
 recipes-security/selinux/libsepol_2.4.bb           |    2 ++
 recipes-security/selinux/libsepol_git.bb           |    2 ++
 3 files changed, 32 insertions(+)
 create mode 100644 recipes-security/selinux/libsepol/0001-src-Makefile-fix-includedir-in-libsepol.pc.patch

diff --git a/recipes-security/selinux/libsepol/0001-src-Makefile-fix-includedir-in-libsepol.pc.patch b/recipes-security/selinux/libsepol/0001-src-Makefile-fix-includedir-in-libsepol.pc.patch
new file mode 100644
index 0000000..8a6e047
--- /dev/null
+++ b/recipes-security/selinux/libsepol/0001-src-Makefile-fix-includedir-in-libsepol.pc.patch
@@ -0,0 +1,28 @@
+From 05907644755048f9335e05dc540f810bb580477f Mon Sep 17 00:00:00 2001
+From: Robert Yang <liezhi.yang@windriver.com>
+Date: Thu, 18 Feb 2016 02:04:59 +0000
+Subject: [PATCH] src/Makefile: fix includedir in libsepol.pc
+
+Upstream-Status: Pending
+
+Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
+---
+ src/Makefile | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/src/Makefile b/src/Makefile
+index db6c2ba..c03ee92 100644
+--- a/src/Makefile
++++ b/src/Makefile
+@@ -43,7 +43,7 @@ $(LIBSO): $(LOBJS) $(LIBMAP)
+ 	ln -sf $@ $(TARGET) 
+ 
+ $(LIBPC): $(LIBPC).in ../VERSION
+-	sed -e 's/@VERSION@/$(VERSION)/; s:@prefix@:$(PREFIX):; s:@libdir@:$(LIBBASE):; s:@includedir@:$(INCLUDEDIR):' < $< > $@
++	sed -e 's/@VERSION@/$(VERSION)/; s:@prefix@:$(PREFIX):; s:@libdir@:$(LIBBASE):; s:@includedir@:${prefix}/include:' < $< > $@
+ 
+ $(LIBMAP): $(LIBMAP).in
+ ifneq ($(DISABLE_CIL),y)
+-- 
+2.5.0
+
diff --git a/recipes-security/selinux/libsepol_2.4.bb b/recipes-security/selinux/libsepol_2.4.bb
index fa83e5f..ef835b3 100644
--- a/recipes-security/selinux/libsepol_2.4.bb
+++ b/recipes-security/selinux/libsepol_2.4.bb
@@ -5,3 +5,5 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=a6f89e2100d9b6cdffcea4f398e37343"
 
 SRC_URI[md5sum] = "8a75d27acf17af1911797e6b12986b50"
 SRC_URI[sha256sum] = "299015d59932404c6b69d365fdecffe5c0e2f9c44e08b47286a4bfc02ee49659"
+
+SRC_URI += "file://0001-src-Makefile-fix-includedir-in-libsepol.pc.patch"
diff --git a/recipes-security/selinux/libsepol_git.bb b/recipes-security/selinux/libsepol_git.bb
index 3f83c90..f36ac3b 100644
--- a/recipes-security/selinux/libsepol_git.bb
+++ b/recipes-security/selinux/libsepol_git.bb
@@ -5,3 +5,5 @@ include selinux_git.inc
 include ${BPN}.inc
 
 LIC_FILES_CHKSUM = "file://COPYING;md5=a6f89e2100d9b6cdffcea4f398e37343"
+
+SRC_URI += "file://0001-src-Makefile-fix-includedir-in-libsepol.pc.patch"
-- 
1.7.9.5


