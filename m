Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D19BFE005A3
	for <yocto@yoctoproject.org>; Thu, 22 Dec 2011 01:21:20 -0800 (PST)
Received: from frontend1.mail.m-online.net (unknown [192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 214B11C004E3
	for <yocto@yoctoproject.org>; Thu, 22 Dec 2011 10:21:18 +0100 (CET)
X-Auth-Info: u2kW0Tp29qDzGN23j6Fe0MGFfuFujK1un6OjkjcRdfQ=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA id 8D7F01C00310
	for <yocto@yoctoproject.org>; Thu, 22 Dec 2011 10:21:18 +0100 (CET)
Received: from gemini.denx.de (unknown [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id 68BFA1A28E7
	for <yocto@yoctoproject.org>; Thu, 22 Dec 2011 10:21:18 +0100 (CET)
Received: by gemini.denx.de (Postfix, from userid 500)
	id 4B69311CDEB1; Thu, 22 Dec 2011 10:21:18 +0100 (CET)
From: Wolfgang Denk <wd@denx.de>
To: yocto@yoctoproject.org
Date: Thu, 22 Dec 2011 10:21:09 +0100
Message-Id: <1324545669-5023-1-git-send-email-wd@denx.de>
X-Mailer: git-send-email 1.7.7.4
Subject: [PATCH] clutter-1.6: make build for armv4t
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 22 Dec 2011 09:21:21 -0000

GCC will define __ARM_ARCH_4T__ when building with "-march=armv4t" so
we can check this to turn off the use of 'clz' instructions, which
otherwise would cause compile errors like "selected processor does
not support ARM mode `clz r3,r0'".

Signed-off-by: Wolfgang Denk <wd@denx.de>
---
 .../recipes-graphics/clutter/clutter-1.6_1.6.14.bb |    6 ++++--
 .../clutter/clutter/fix_build_for_armv4t.patch     |   11 +++++++++++
 2 files changed, 15 insertions(+), 2 deletions(-)
 create mode 100644 meta/recipes-graphics/clutter/clutter/fix_build_for_armv4t.patch

diff --git a/meta/recipes-graphics/clutter/clutter-1.6_1.6.14.bb b/meta/recipes-graphics/clutter/clutter-1.6_1.6.14.bb
index 555133f..0aacf0f 100644
--- a/meta/recipes-graphics/clutter/clutter-1.6_1.6.14.bb
+++ b/meta/recipes-graphics/clutter/clutter-1.6_1.6.14.bb
@@ -1,6 +1,6 @@
 require recipes-graphics/clutter/clutter.inc
 
-PR = "r2"
+PR = "r3"
 
 # Internal json-glib was removed in Clutter 1.5.2
 STDDEPENDS += "json-glib"
@@ -10,7 +10,9 @@ FILES_${PN}-examples = "${bindir}/test-* ${pkgdatadir}/redhand.png"
 
 SRC_URI = "http://source.clutter-project.org/sources/clutter/1.6/clutter-${PV}.tar.bz2 \
            file://enable_tests-1.4.patch \
-           file://update_gettext_macro_version.patch"
+           file://update_gettext_macro_version.patch \
+	   file://fix_build_for_armv4t.patch \
+	   "
 
 LIC_FILES_CHKSUM = "file://COPYING;md5=7fbc338309ac38fefcd64b04bb903e34"
 S = "${WORKDIR}/clutter-${PV}"
diff --git a/meta/recipes-graphics/clutter/clutter/fix_build_for_armv4t.patch b/meta/recipes-graphics/clutter/clutter/fix_build_for_armv4t.patch
new file mode 100644
index 0000000..28cbfa2
--- /dev/null
+++ b/meta/recipes-graphics/clutter/clutter/fix_build_for_armv4t.patch
@@ -0,0 +1,11 @@
+--- clutter-1.6.14/clutter/cogl/cogl/cogl-fixed.c.ORIG	2011-03-22 15:46:17.000000000 +0100
++++ clutter-1.6.14/clutter/cogl/cogl/cogl-fixed.c	2011-12-22 09:26:10.650427310 +0100
+@@ -626,7 +626,7 @@
+ 	/*
+ 	 * Find the highest bit set
+ 	 */
+-#if __arm__
++#if __arm__ && !defined(__ARM_ARCH_4T__)
+ 	/* This actually requires at least arm v5, but gcc does not seem
+ 	 * to set the architecture defines correctly, and it is I think
+ 	 * very unlikely that anyone will want to use clutter on anything
-- 
1.7.6.4


