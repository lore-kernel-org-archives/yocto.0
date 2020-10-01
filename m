Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
 by mx.groups.io with SMTP id smtpd.web10.12613.1601558851087394285
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Oct 2020 06:27:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=l0UUDRjK;
 spf=pass (domain: gmail.com, ip: 209.85.210.45, mailfrom: jpewhacker@gmail.com)
Received: by mail-ot1-f45.google.com with SMTP id g96so5330047otb.12
        for <yocto@lists.yoctoproject.org>; Thu, 01 Oct 2020 06:27:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=nDOVMPiOuzKIW3Nq8gKchaicbF54l9LTlVEiRfAs0Qs=;
        b=l0UUDRjKC8fwug1XzZdQVHnAZAROs4xyC49BRgAeXsAZYFpZcmj9zHhBh3w4Rem7p4
         JKvdIbacLBu6Y5xDad1KyYa0TQGiCfSLYBd3a7bv5aHGrzMxtm1xcsftIxLk8+WBqPeq
         Wu4U3wldvQGCD+TgElo8nRaAwOiD4qxoyengAV6OYSFJkCqMvapVlx5gkD3s/2lDNJCN
         htkOwm+tamS2febPmM4KQAIw7wYTtnczcBb+EioPCwlQVDO4XiVFNz/8PnWNircCecar
         73Ne6UXLQaeGazmqLFm1zrfVBSZ+2e3FrDjskhiJT1NqPitYwNpSLu5ALggF8F5rbUzH
         GcDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=nDOVMPiOuzKIW3Nq8gKchaicbF54l9LTlVEiRfAs0Qs=;
        b=E7PyQFh8e3I6OiU1zKRfVr+hy22Tf1goEvgcCV6KXd6NAlaWbkMk8bMeDKzYsRX0I4
         uXEy0qByKJ8OfDBAB4qO326PyfrdKx6WgSjo6U4jUlMuVamlwu4fmJZHe1HHrXTS4/Kq
         nII3SO/2Y0XYsPMYt4HVd/xZRO9D2GpvORPhkjOXhBlVsujUbR4eLTaygGw79syS6s7J
         Acilxzm2R8d5uLSHGkILWnZUW/5FE2HHbeKzzwc9FBRkGHnGWsS0mX7V0rnEldI2WaVV
         v8Wy9Z5z0iQud2q/uDktg7jgpiJupI9aZ3SnwBO1HoDa9iH98BaW7BemjlbqmVOsb+tU
         xCyQ==
X-Gm-Message-State: AOAM531B6MvcV7oNmRRtcEbwKtK/6QnLd/vTDYL9SJ+5iYNbbNtC9VGA
	B74QJsaaa8n3GKCFWx2cXer5uaV9naY=
X-Google-Smtp-Source: ABdhPJyykzUypCwOPN1DMzwnNjVJMlsqazwyDi7gF+rVl4lbCmn39ZqZ8ZfGWv0fJ+kPsUELJgn6Og==
X-Received: by 2002:a9d:2c26:: with SMTP id f35mr5068433otb.0.1601558850113;
        Thu, 01 Oct 2020 06:27:30 -0700 (PDT)
Return-Path: <jpewhacker@gmail.com>
Received: from localhost.localdomain ([2605:a601:ac3d:c100:e3e8:d9:3a56:e27d])
        by smtp.gmail.com with ESMTPSA id l25sm1195085otb.4.2020.10.01.06.27.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2020 06:27:29 -0700 (PDT)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Peter Kjellerstedt <pkj@axis.com>,
	Khem Raj <raj.khem@gmail.com>,
	Joshua Watt <JPEWhacker@gmail.com>
Subject: [yocto][meta-gplv2][PATCH] gnupg: Build with "-fcommon"
Date: Thu,  1 Oct 2020 08:27:27 -0500
Message-Id: <20201001132727.36297-1-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The patch from f9761c0 ("gnupg: Make it build with GCC 10 (which uses
-fno-common by default)") doesn't work in all cases, such as when
building gnupg-native. Instead of trying to patch around it, re-enable
the -fcommon flag explicitly to keep the build the same as it was before
GCC 10 changed the default.

This reverts commit f9761c01495cd52ce88e33fbc8824f882cf80288.

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 ...th-GCC-10-which-uses-fno-common-by-d.patch | 93 -------------------
 recipes-support/gnupg/gnupg_1.4.7.bb          |  7 +-
 2 files changed, 5 insertions(+), 95 deletions(-)
 delete mode 100644 recipes-support/gnupg/gnupg-1.4.7/0001-Make-it-build-with-GCC-10-which-uses-fno-common-by-d.patch

diff --git a/recipes-support/gnupg/gnupg-1.4.7/0001-Make-it-build-with-GCC-10-which-uses-fno-common-by-d.patch b/recipes-support/gnupg/gnupg-1.4.7/0001-Make-it-build-with-GCC-10-which-uses-fno-common-by-d.patch
deleted file mode 100644
index 2f84155..0000000
--- a/recipes-support/gnupg/gnupg-1.4.7/0001-Make-it-build-with-GCC-10-which-uses-fno-common-by-d.patch
+++ /dev/null
@@ -1,93 +0,0 @@
-From 1d0141d77d4f81cfa3213370fb7eeddbf53fc085 Mon Sep 17 00:00:00 2001
-From: Peter Kjellerstedt <pkj@axis.com>
-Date: Tue, 1 Sep 2020 00:29:22 +0200
-Subject: [PATCH] Make it build with GCC 10 (which uses -fno-common by default)
-
-Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
----
- g10/options.h    | 3 +--
- include/cipher.h | 2 +-
- include/iobuf.h  | 2 +-
- include/memory.h | 2 +-
- include/mpi.h    | 2 +-
- tools/mpicalc.c  | 1 +
- 6 files changed, 6 insertions(+), 6 deletions(-)
-
-diff --git a/g10/options.h b/g10/options.h
-index c5f0f22..33ed333 100644
---- a/g10/options.h
-+++ b/g10/options.h
-@@ -28,8 +28,7 @@
- #include "packet.h"
- 
- #ifndef EXTERN_UNLESS_MAIN_MODULE
--/* Norcraft can't cope with common symbols */
--#if defined (__riscos__) && !defined (INCLUDED_BY_MAIN_MODULE)
-+#if !defined (INCLUDED_BY_MAIN_MODULE)
- #define EXTERN_UNLESS_MAIN_MODULE extern
- #else
- #define EXTERN_UNLESS_MAIN_MODULE 
-diff --git a/include/cipher.h b/include/cipher.h
-index 168ab41..794c12b 100644
---- a/include/cipher.h
-+++ b/include/cipher.h
-@@ -109,7 +109,7 @@ struct gcry_md_context {
- typedef struct gcry_md_context *MD_HANDLE;
- 
- #ifndef EXTERN_UNLESS_MAIN_MODULE
--#if defined (__riscos__) && !defined (INCLUDED_BY_MAIN_MODULE)
-+#if !defined (INCLUDED_BY_MAIN_MODULE)
- #define EXTERN_UNLESS_MAIN_MODULE extern
- #else
- #define EXTERN_UNLESS_MAIN_MODULE 
-diff --git a/include/iobuf.h b/include/iobuf.h
-index a1d58c9..25f682b 100644
---- a/include/iobuf.h
-+++ b/include/iobuf.h
-@@ -73,7 +73,7 @@ struct iobuf_struct {
- };
- 
- #ifndef EXTERN_UNLESS_MAIN_MODULE
--#if defined (__riscos__) && !defined (INCLUDED_BY_MAIN_MODULE)
-+#if !defined (INCLUDED_BY_MAIN_MODULE)
- #define EXTERN_UNLESS_MAIN_MODULE extern
- #else
- #define EXTERN_UNLESS_MAIN_MODULE 
-diff --git a/include/memory.h b/include/memory.h
-index 895d8a7..217d316 100644
---- a/include/memory.h
-+++ b/include/memory.h
-@@ -87,7 +87,7 @@ unsigned secmem_get_flags(void);
- #define DBG_MEMSTAT   memory_stat_debug_mode
- 
- #ifndef EXTERN_UNLESS_MAIN_MODULE
--#if defined (__riscos__) && !defined (INCLUDED_BY_MAIN_MODULE)
-+#if !defined (INCLUDED_BY_MAIN_MODULE)
- #define EXTERN_UNLESS_MAIN_MODULE extern
- #else
- #define EXTERN_UNLESS_MAIN_MODULE 
-diff --git a/include/mpi.h b/include/mpi.h
-index 81061d3..d529bda 100644
---- a/include/mpi.h
-+++ b/include/mpi.h
-@@ -38,7 +38,7 @@
- #include "memory.h"
- 
- #ifndef EXTERN_UNLESS_MAIN_MODULE
--#if defined (__riscos__) && !defined (INCLUDED_BY_MAIN_MODULE)
-+#if !defined (INCLUDED_BY_MAIN_MODULE)
- #define EXTERN_UNLESS_MAIN_MODULE extern
- #else
- #define EXTERN_UNLESS_MAIN_MODULE 
-diff --git a/tools/mpicalc.c b/tools/mpicalc.c
-index 1df27d9..647dfbd 100644
---- a/tools/mpicalc.c
-+++ b/tools/mpicalc.c
-@@ -30,6 +30,7 @@
- #include <stdlib.h>
- #include <ctype.h>
- 
-+#define INCLUDED_BY_MAIN_MODULE 1
- #include "util.h"
- #include "mpi.h"
- #include "i18n.h"
diff --git a/recipes-support/gnupg/gnupg_1.4.7.bb b/recipes-support/gnupg/gnupg_1.4.7.bb
index 6258809..f02aaba 100644
--- a/recipes-support/gnupg/gnupg_1.4.7.bb
+++ b/recipes-support/gnupg/gnupg_1.4.7.bb
@@ -20,8 +20,7 @@ SRC_URI = "${GNUPG_MIRROR}/gnupg/gnupg-${PV}.tar.bz2 \
            file://CVE-2013-4242.patch \
            file://fix-ustar-check-issue.patch \
            file://0001-Make-it-build-with-gettext-0.20.patch \
-           file://0001-Make-it-build-with-GCC-10-which-uses-fno-common-by-d.patch \
-           "
+          "
 
 SRC_URI[md5sum] = "b06a141cca5cd1a55bbdd25ab833303c"
 SRC_URI[sha256sum] = "69d18b7d193f62ca27ed4febcb4c9044aa0c95305d3258fe902e2fae5fc6468d"
@@ -89,6 +88,10 @@ EXTRA_OECONF = "--disable-ldap \
 BUILD_CFLAGS += "-fgnu89-inline"
 CFLAGS += "-fgnu89-inline"
 
+# Force -fcommon to avoid issues with GCC 10 (which defaults to -fno-common)
+BUILD_CFLAGS += "-fcommon"
+CFLAGS += "-fcommon"
+
 do_install () {
 	autotools_do_install
 	install -d ${D}${docdir}/${BPN}
-- 
2.28.0

