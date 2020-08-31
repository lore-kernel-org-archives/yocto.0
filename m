Received: from smtp2.axis.com (smtp2.axis.com [195.60.68.18])
 by mx.groups.io with SMTP id smtpd.web11.462.1598913891968269107
 for <yocto@lists.yoctoproject.org>;
 Mon, 31 Aug 2020 15:44:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@axis.com header.s=axis-central1 header.b=lmf7/cuB;
 spf=pass (domain: axis.com, ip: 195.60.68.18, mailfrom: peter.kjellerstedt@axis.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=axis.com; l=4414; q=dns/txt; s=axis-central1;
  t=1598913892; x=1630449892;
  h=from:to:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=ckdqRfjq94B2xw0tyGbKM7CSUB8gs/JHJVxWoi7Hjjo=;
  b=lmf7/cuBn73mr8Xli1NIWWSkKbY/8BAbLAHMXNbWmdTcUyWIyJwsziSv
   PXhmjMa2I0vN2ed6dhlwEuLeGpRoc7eZ4Yk8V9UDuicZmCYhhx6pqTbWA
   VHSjhUdUK0rXFYGXov3CiMYNAm74lfaHR7AJcdpTQziSa4lFqdU2KpOLU
   uJXMmAkxMu+e0KzZiYA83EiE6F1BWnz8/g1hH4Oid0oZCeBfPv1yTdvnG
   HMhLDr8ipfeVzJo9Gyfnx2HUecNTkH4JCqCnhFctzSNh9bxR52VrzCXfn
   802awBMpiRNDZaKGO9/KyMu/lyMIpKU/ZCDHDC9YxPM4EUus/3n4gcVmg
   g==;
IronPort-SDR: cwOIDbq3Xg3ZhRYb8/Bh/mxvMHc4/4BryU3YdMe0+JbUZ/VJevazfKgFhOb6Y/YHah5dxVCWrs
 e68I1vok3iS8yiJnNMn/KYoIk+nOQC01EB63DYBd6C61WyI4QSKTQ32b8ofRqkUw7FselZLx6Z
 TEcl/0K0X/aJFmvoI/OgS4rvKmBwj571j++qFGSdPIWcZpqPoHjABA4HLao2Jg9rp87afSHay9
 Y2YCU1erPl55wNc7LrJ5th6BqH6Vm7+ApFodvWQky/ASFAfqwuaKmsqOyTOufWJ/UJ9SGYQFpE
 kOw=
X-IronPort-AV: E=Sophos;i="5.76,376,1592863200"; 
   d="scan'208";a="12061759"
From: "Peter Kjellerstedt" <peter.kjellerstedt@axis.com>
To: <yocto@lists.yoctoproject.org>
Subject: [meta-gplv2] [PATCH] gnupg: Make it build with GCC 10 (which uses -fno-common by default)
Date: Tue, 1 Sep 2020 00:44:44 +0200
Message-ID: <20200831224444.16097-1-pkj@axis.com>
X-Mailer: git-send-email 2.21.3
MIME-Version: 1.0
Return-Path: pkj@axis.com
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
---
 ...th-GCC-10-which-uses-fno-common-by-d.patch | 93 +++++++++++++++++++
 recipes-support/gnupg/gnupg_1.4.7.bb          |  3 +-
 2 files changed, 95 insertions(+), 1 deletion(-)
 create mode 100644 recipes-support/gnupg/gnupg-1.4.7/0001-Make-it-build-with-GCC-10-which-uses-fno-common-by-d.patch

diff --git a/recipes-support/gnupg/gnupg-1.4.7/0001-Make-it-build-with-GCC-10-which-uses-fno-common-by-d.patch b/recipes-support/gnupg/gnupg-1.4.7/0001-Make-it-build-with-GCC-10-which-uses-fno-common-by-d.patch
new file mode 100644
index 0000000..2f84155
--- /dev/null
+++ b/recipes-support/gnupg/gnupg-1.4.7/0001-Make-it-build-with-GCC-10-which-uses-fno-common-by-d.patch
@@ -0,0 +1,93 @@
+From 1d0141d77d4f81cfa3213370fb7eeddbf53fc085 Mon Sep 17 00:00:00 2001
+From: Peter Kjellerstedt <pkj@axis.com>
+Date: Tue, 1 Sep 2020 00:29:22 +0200
+Subject: [PATCH] Make it build with GCC 10 (which uses -fno-common by default)
+
+Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
+---
+ g10/options.h    | 3 +--
+ include/cipher.h | 2 +-
+ include/iobuf.h  | 2 +-
+ include/memory.h | 2 +-
+ include/mpi.h    | 2 +-
+ tools/mpicalc.c  | 1 +
+ 6 files changed, 6 insertions(+), 6 deletions(-)
+
+diff --git a/g10/options.h b/g10/options.h
+index c5f0f22..33ed333 100644
+--- a/g10/options.h
++++ b/g10/options.h
+@@ -28,8 +28,7 @@
+ #include "packet.h"
+ 
+ #ifndef EXTERN_UNLESS_MAIN_MODULE
+-/* Norcraft can't cope with common symbols */
+-#if defined (__riscos__) && !defined (INCLUDED_BY_MAIN_MODULE)
++#if !defined (INCLUDED_BY_MAIN_MODULE)
+ #define EXTERN_UNLESS_MAIN_MODULE extern
+ #else
+ #define EXTERN_UNLESS_MAIN_MODULE 
+diff --git a/include/cipher.h b/include/cipher.h
+index 168ab41..794c12b 100644
+--- a/include/cipher.h
++++ b/include/cipher.h
+@@ -109,7 +109,7 @@ struct gcry_md_context {
+ typedef struct gcry_md_context *MD_HANDLE;
+ 
+ #ifndef EXTERN_UNLESS_MAIN_MODULE
+-#if defined (__riscos__) && !defined (INCLUDED_BY_MAIN_MODULE)
++#if !defined (INCLUDED_BY_MAIN_MODULE)
+ #define EXTERN_UNLESS_MAIN_MODULE extern
+ #else
+ #define EXTERN_UNLESS_MAIN_MODULE 
+diff --git a/include/iobuf.h b/include/iobuf.h
+index a1d58c9..25f682b 100644
+--- a/include/iobuf.h
++++ b/include/iobuf.h
+@@ -73,7 +73,7 @@ struct iobuf_struct {
+ };
+ 
+ #ifndef EXTERN_UNLESS_MAIN_MODULE
+-#if defined (__riscos__) && !defined (INCLUDED_BY_MAIN_MODULE)
++#if !defined (INCLUDED_BY_MAIN_MODULE)
+ #define EXTERN_UNLESS_MAIN_MODULE extern
+ #else
+ #define EXTERN_UNLESS_MAIN_MODULE 
+diff --git a/include/memory.h b/include/memory.h
+index 895d8a7..217d316 100644
+--- a/include/memory.h
++++ b/include/memory.h
+@@ -87,7 +87,7 @@ unsigned secmem_get_flags(void);
+ #define DBG_MEMSTAT   memory_stat_debug_mode
+ 
+ #ifndef EXTERN_UNLESS_MAIN_MODULE
+-#if defined (__riscos__) && !defined (INCLUDED_BY_MAIN_MODULE)
++#if !defined (INCLUDED_BY_MAIN_MODULE)
+ #define EXTERN_UNLESS_MAIN_MODULE extern
+ #else
+ #define EXTERN_UNLESS_MAIN_MODULE 
+diff --git a/include/mpi.h b/include/mpi.h
+index 81061d3..d529bda 100644
+--- a/include/mpi.h
++++ b/include/mpi.h
+@@ -38,7 +38,7 @@
+ #include "memory.h"
+ 
+ #ifndef EXTERN_UNLESS_MAIN_MODULE
+-#if defined (__riscos__) && !defined (INCLUDED_BY_MAIN_MODULE)
++#if !defined (INCLUDED_BY_MAIN_MODULE)
+ #define EXTERN_UNLESS_MAIN_MODULE extern
+ #else
+ #define EXTERN_UNLESS_MAIN_MODULE 
+diff --git a/tools/mpicalc.c b/tools/mpicalc.c
+index 1df27d9..647dfbd 100644
+--- a/tools/mpicalc.c
++++ b/tools/mpicalc.c
+@@ -30,6 +30,7 @@
+ #include <stdlib.h>
+ #include <ctype.h>
+ 
++#define INCLUDED_BY_MAIN_MODULE 1
+ #include "util.h"
+ #include "mpi.h"
+ #include "i18n.h"
diff --git a/recipes-support/gnupg/gnupg_1.4.7.bb b/recipes-support/gnupg/gnupg_1.4.7.bb
index 6a950fd..6258809 100644
--- a/recipes-support/gnupg/gnupg_1.4.7.bb
+++ b/recipes-support/gnupg/gnupg_1.4.7.bb
@@ -20,7 +20,8 @@ SRC_URI = "${GNUPG_MIRROR}/gnupg/gnupg-${PV}.tar.bz2 \
            file://CVE-2013-4242.patch \
            file://fix-ustar-check-issue.patch \
            file://0001-Make-it-build-with-gettext-0.20.patch \
-          "
+           file://0001-Make-it-build-with-GCC-10-which-uses-fno-common-by-d.patch \
+           "
 
 SRC_URI[md5sum] = "b06a141cca5cd1a55bbdd25ab833303c"
 SRC_URI[sha256sum] = "69d18b7d193f62ca27ed4febcb4c9044aa0c95305d3258fe902e2fae5fc6468d"
