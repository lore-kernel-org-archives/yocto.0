Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.4932.1596071913002695448
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 Jul 2020 18:18:33 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=SPF record not found (domain: cn.fujitsu.com, ip: 140.211.169.56, mailfrom: zhengrq.fnst@cn.fujitsu.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8B109E01F45; Wed, 29 Jul 2020 18:18:32 -0700 (PDT)
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
	*      [183.91.158.132 listed in list.dnswl.org]
Received: from heian.cn.fujitsu.com (mail.cn.fujitsu.com [183.91.158.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8C0AE01EFD
	for <yocto@yoctoproject.org>; Wed, 29 Jul 2020 18:18:28 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.75,412,1589212800"; 
   d="scan'208";a="97084257"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
  by heian.cn.fujitsu.com with ESMTP; 30 Jul 2020 09:18:27 +0800
Received: from G08CNEXMBPEKD06.g08.fujitsu.local (unknown [10.167.33.206])
	by cn.fujitsu.com (Postfix) with ESMTP id DAF4B4CE4B09;
	Thu, 30 Jul 2020 09:18:22 +0800 (CST)
Received: from localhost.localdomain (10.167.225.35) by
 G08CNEXMBPEKD06.g08.fujitsu.local (10.167.33.206) with Microsoft SMTP Server
 (TLS) id 15.0.1497.2; Thu, 30 Jul 2020 09:18:24 +0800
From: "zhengruoqin" <zhengrq.fnst@cn.fujitsu.com>
To: <swupdate@googlegroups.com>
CC: <yocto@yoctoproject.org>
Subject: [meta-swupdate][PATCH] mtd-utils: Remove patchs
Date: Thu, 30 Jul 2020 09:18:09 +0800
Message-ID: <1596071889-91188-1-git-send-email-zhengrq.fnst@cn.fujitsu.com>
X-Mailer: git-send-email 1.8.3.1
MIME-Version: 1.0
X-Originating-IP: [10.167.225.35]
X-ClientProxiedBy: G08CNEXCHPEKD04.g08.fujitsu.local (10.167.33.200) To
 G08CNEXMBPEKD06.g08.fujitsu.local (10.167.33.206)
X-yoursite-MailScanner-ID: DAF4B4CE4B09.AA6EE
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: zhengrq.fnst@cn.fujitsu.com
Content-Type: text/plain

files/0001-libubigen-remove-unnecessary-include.patch
files/0002-libubi-remove-private-kernel-header-from-includes.patch
Removed since these are included in 2.1.2.

Signed-off-by: Zheng Ruoqin <zhengrq.fnst@cn.fujitsu.com>/
---
 ...libubigen-remove-unnecessary-include.patch | 29 ----------
 ...-private-kernel-header-from-includes.patch | 58 -------------------
 recipes-devtools/mtd/mtd-utils_%.bbappend     |  5 --
 3 files changed, 92 deletions(-)
 delete mode 100644 recipes-devtools/mtd/files/0001-libubigen-remove-unnecessary-include.patch
 delete mode 100644 recipes-devtools/mtd/files/0002-libubi-remove-private-kernel-header-from-includes.patch

diff --git a/recipes-devtools/mtd/files/0001-libubigen-remove-unnecessary-include.patch b/recipes-devtools/mtd/files/0001-libubigen-remove-unnecessary-include.patch
deleted file mode 100644
index 61e1380..0000000
--- a/recipes-devtools/mtd/files/0001-libubigen-remove-unnecessary-include.patch
+++ /dev/null
@@ -1,29 +0,0 @@
-From 87809c4804d3355ecd2fd0bd3362526fa27bf953 Mon Sep 17 00:00:00 2001
-From: Bastian Germann <bastiangermann@fishpost.de>
-Date: Wed, 29 Jan 2020 19:50:12 +0100
-Subject: [PATCH 1/2] libubigen: remove unnecessary include
-
-libubigen.h does not use any symbol from mtd/ubi-media.h,
-so remove it from includes.
-
-Signed-off-by: Bastian Germann <bastiangermann@fishpost.de>
-Signed-off-by: David Oberhollenzer <david.oberhollenzer@sigma-star.at>
----
- include/libubigen.h | 1 -
- 1 file changed, 1 deletion(-)
-
-diff --git a/include/libubigen.h b/include/libubigen.h
-index c25ac20..48d2fad 100644
---- a/include/libubigen.h
-+++ b/include/libubigen.h
-@@ -26,7 +26,6 @@
- #define __LIBUBIGEN_H__
- 
- #include <stdint.h>
--#include <mtd/ubi-media.h>
- 
- #ifdef __cplusplus
- extern "C" {
--- 
-2.25.1
-
diff --git a/recipes-devtools/mtd/files/0002-libubi-remove-private-kernel-header-from-includes.patch b/recipes-devtools/mtd/files/0002-libubi-remove-private-kernel-header-from-includes.patch
deleted file mode 100644
index 7ca79b2..0000000
--- a/recipes-devtools/mtd/files/0002-libubi-remove-private-kernel-header-from-includes.patch
+++ /dev/null
@@ -1,58 +0,0 @@
-From 42e051acd32c28c2f93c946d0c4bf6f9eada2aa4 Mon Sep 17 00:00:00 2001
-From: Bastian Germann <bastiangermann@fishpost.de>
-Date: Wed, 29 Jan 2020 19:50:13 +0100
-Subject: [PATCH 2/2] libubi: remove private kernel header from includes
-
-libubi.h includes ubi-media.h which was made private in the kernel a
-long time ago. There are users of libubi.h, e.g. swupdate, which have to
-have ubi-media.h available at build time with this inclusion.
-
-However, libubi.h uses only one symbol from ubi-media.h. Define that symbol
-in the header to enable using libubi.h without installing ubi-media.h.
-
-Make up for the transitive symbol use in ubiformat.c by including ubi-media.h.
-
-Signed-off-by: Bastian Germann <bastiangermann@fishpost.de>
-Signed-off-by: David Oberhollenzer <david.oberhollenzer@sigma-star.at>
----
- include/libubi.h      | 4 +++-
- ubi-utils/ubiformat.c | 1 +
- 2 files changed, 4 insertions(+), 1 deletion(-)
-
-diff --git a/include/libubi.h b/include/libubi.h
-index 46596a3..46c732a 100644
---- a/include/libubi.h
-+++ b/include/libubi.h
-@@ -26,7 +26,6 @@
- #include <ctype.h>
- #include <stdint.h>
- #include <mtd/ubi-user.h>
--#include <mtd/ubi-media.h>
- 
- #ifdef __cplusplus
- extern "C" {
-@@ -38,6 +37,9 @@ extern "C" {
- /* Maximum physical eraseblock size in bytes */
- #define UBI_MAX_PEB_SZ (2*1024*1024)
- 
-+/* The maximum volume name length (from Linux's ubi-media.h) */
-+#define UBI_VOL_NAME_MAX 127
-+
- /* UBI library descriptor */
- typedef void * libubi_t;
- 
-diff --git a/ubi-utils/ubiformat.c b/ubi-utils/ubiformat.c
-index be40e52..d1b12e4 100644
---- a/ubi-utils/ubiformat.c
-+++ b/ubi-utils/ubiformat.c
-@@ -38,6 +38,7 @@
- #include <getopt.h>
- #include <fcntl.h>
- 
-+#include <mtd/ubi-media.h>
- #include <libubi.h>
- #include <libmtd.h>
- #include <libscan.h>
--- 
-2.25.1
-
diff --git a/recipes-devtools/mtd/mtd-utils_%.bbappend b/recipes-devtools/mtd/mtd-utils_%.bbappend
index 72cc858..471c8ad 100644
--- a/recipes-devtools/mtd/mtd-utils_%.bbappend
+++ b/recipes-devtools/mtd/mtd-utils_%.bbappend
@@ -2,11 +2,6 @@ FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 FILES_${PN}-staticdev += "ubi-utils/libubi.a ${libdir}/*.a"
 
-SRC_URI += " \
-	file://0001-libubigen-remove-unnecessary-include.patch \
-	file://0002-libubi-remove-private-kernel-header-from-includes.patch \
-"
-
 do_install_append () {
 	install -d ${D}${includedir}/mtd/
 	install -d ${D}${libdir}/
-- 
2.25.1



