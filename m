Return-Path: <ecordonnier@snap.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBD43C77B7D
	for <webhook@archiver.kernel.org>; Wed, 17 May 2023 06:12:57 +0000 (UTC)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
 by mx.groups.io with SMTP id smtpd.web11.43310.1684303970687183047
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 May 2023 23:12:51 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@snap.com header.s=google header.b=QYlXlX0e;
 spf=pass (domain: snapchat.com, ip: 209.85.128.49, mailfrom: ecordonnier@snapchat.com)
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-3f50020e0f8so50161015e9.0
        for <yocto@lists.yoctoproject.org>; Tue, 16 May 2023 23:12:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=snap.com; s=google; t=1684303969; x=1686895969;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=42Dx6Ntf/3oNz0AOgPzpUCYSUNqSNUWDzPre3HxAOeY=;
        b=QYlXlX0eV5Hr7wTK3s07SYE+xfbKOl0saCBPgpu1tjA3CCYzKRSxaZ3C2VjnKST7qB
         5HQKhc+0mWc++j4VYGyKKQmbBbGJq1XwFB7dv+SJ+Bi/h35yoEMdKzqP95Po5CMv0ATB
         VxH6vSkiAriO/GPsbQFht1mLMAeym0nv2KTvw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684303969; x=1686895969;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=42Dx6Ntf/3oNz0AOgPzpUCYSUNqSNUWDzPre3HxAOeY=;
        b=K8ldILZa4lsHHyilkPYfGCPCtnmmCqaQZ/7CztKlsl0E8OFf6Cdmy3hIbJkMDWJgRe
         gLnnmXqWI6UZMFqoOlRFF48iiAqW7U3JaEX7QhSo1dHeRIP1K1GO31rQe685uZCqQ7iA
         XHpnwG+V4uXE+89T++0eMj0WdufqHAapk2yRFdrpaWsmEjJx8f7qxkU+EuAwnM/h6tuG
         jqF0XK6PMHEnAAEBzIsBLV+6H8w+6MxYjM1mhDr5AK+wYY2iRUFHTzCzGJMOy9tqPx0m
         t05PvuPT/pUUc2XZRjELKo4oeSmSpYMbLVqIdvuUY6v89Kvqrn/KQJIicgfVNuKnyMFZ
         zRYQ==
X-Gm-Message-State: AC+VfDyOt0nwziUp5yyJ3/dI4NxkeutFCDdsPq7T5jqP/hqRTj+RTsMd
	kPPPvv4UuH5aMgiyLq0BED38AgGKyfE+93iBe9Q=
X-Google-Smtp-Source: ACHHUZ4s6UihuaeK1y2wuxgS6uvbGoEm5E1SPgvpRoI9z3WZZE8tpx7a9Rn4w1nhZ4FrwWLGwSd+Xg==
X-Received: by 2002:a1c:7c10:0:b0:3f4:2d85:bcda with SMTP id x16-20020a1c7c10000000b003f42d85bcdamr666094wmc.19.1684303968683;
        Tue, 16 May 2023 23:12:48 -0700 (PDT)
Received: from lj8k2dq3.sc-core.net ([85.237.126.22])
        by smtp.gmail.com with ESMTPSA id s20-20020a7bc394000000b003f50e29bce3sm974809wmj.48.2023.05.16.23.12.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 May 2023 23:12:48 -0700 (PDT)
From: ecordonnier@snap.com
To: yocto@lists.yoctoproject.org
Cc: Etienne Cordonnier <ecordonnier@snap.com>
Subject: [meta-darwin][PATCH 2/2] clean-up several patches
Date: Wed, 17 May 2023 08:10:28 +0200
Message-Id: <20230517061028.3380331-2-ecordonnier@snap.com>
X-Mailer: git-send-email 2.36.1.vfs.0.0
In-Reply-To: <20230517061028.3380331-1-ecordonnier@snap.com>
References: <20230517061028.3380331-1-ecordonnier@snap.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 May 2023 06:12:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60037

From: Etienne Cordonnier <ecordonnier@snap.com>

- add patch upstream status
- use git patch format

Signed-off-by: Etienne Cordonnier <ecordonnier@snap.com>
---
 ...atch => 0001-fix-wrong-libtool-path.patch} | 22 ++++++++--
 recipes-core/zlib/zlib_1.2.%.bbappend         |  2 +-
 ...1142-Do-not-use-nm-B-for-Darwin-s-nm.patch |  3 ++
 .../clang/0037-Fixes_for_Darwin_SDKs.patch    |  8 ++--
 ...clude-flexdevh-at-top-block-of-scanl.patch |  3 ++
 .../gcc/files/0099-nativesdk-gcc-darwin.patch |  1 +
 ...0-change-macosx-version-min-to-10.15.patch |  2 +
 ...patch => 0001-fix-compilation-error.patch} | 42 +++++++++++++------
 recipes-devtools/xar/xar_git.bb               |  2 +-
 9 files changed, 63 insertions(+), 22 deletions(-)
 rename recipes-core/zlib/files/{zlib-darwin.patch => 0001-fix-wrong-libtool-path.patch} (54%)
 rename recipes-devtools/xar/xar/{xar.patch => 0001-fix-compilation-error.patch} (85%)

diff --git a/recipes-core/zlib/files/zlib-darwin.patch b/recipes-core/zlib/files/0001-fix-wrong-libtool-path.patch
similarity index 54%
rename from recipes-core/zlib/files/zlib-darwin.patch
rename to recipes-core/zlib/files/0001-fix-wrong-libtool-path.patch
index cf61194..528b46b 100644
--- a/recipes-core/zlib/files/zlib-darwin.patch
+++ b/recipes-core/zlib/files/0001-fix-wrong-libtool-path.patch
@@ -1,6 +1,19 @@
---- zlib-1.2.11-orig/configure	2016-12-31 18:06:40.000000000 +0000
-+++ zlib-1.2.11/configure	2018-09-30 22:01:03.887112033 +0000
-@@ -240,13 +240,7 @@
+From 3b7dfa06c12eb605ae244bbdf37a5c502f63a035 Mon Sep 17 00:00:00 2001
+From: Dominik Schnitzer <dominik@snap.com> 
+Date: Fri, 12 May 2023 10:11:56 +0000
+Subject: [PATCH] fix wrong libtool path
+
+Upstream-Status: Inappropriate [OE specific]
+Signed-off-by: Dominik Schnitzer <dominik@snap.com>
+---
+ configure | 8 +-------
+ 1 file changed, 1 insertion(+), 7 deletions(-)
+
+diff --git a/configure b/configure
+index 69dfa3f..dcd0e75 100755
+--- a/configure
++++ b/configure
+@@ -240,13 +240,7 @@ if test "$gcc" -eq 1 && ($cc -c $test.c) >> configure.log 2>&1; then
               SHAREDLIB=libz$shared_ext
               SHAREDLIBV=libz.$VER$shared_ext
               SHAREDLIBM=libz.$VER1$shared_ext
@@ -15,3 +28,6 @@
    *)             LDSHARED=${LDSHARED-"$cc -shared"} ;;
    esac
  else
+-- 
+2.36.1.vfs.0.0
+
diff --git a/recipes-core/zlib/zlib_1.2.%.bbappend b/recipes-core/zlib/zlib_1.2.%.bbappend
index d662a29..69d1e8a 100644
--- a/recipes-core/zlib/zlib_1.2.%.bbappend
+++ b/recipes-core/zlib/zlib_1.2.%.bbappend
@@ -1,7 +1,7 @@
 FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
 
 SRC_URI += "\
-    file://zlib-darwin.patch \
+    file://0001-fix-wrong-libtool-path.patch \
 "
 do_configure:darwin19 () {
     uname=darwin ./configure --prefix=${prefix} --shared --libdir=${libdir}
diff --git a/recipes-devtools/binutils/binutils/0001-OS-1142-Do-not-use-nm-B-for-Darwin-s-nm.patch b/recipes-devtools/binutils/binutils/0001-OS-1142-Do-not-use-nm-B-for-Darwin-s-nm.patch
index 30364c6..eaf5ba1 100644
--- a/recipes-devtools/binutils/binutils/0001-OS-1142-Do-not-use-nm-B-for-Darwin-s-nm.patch
+++ b/recipes-devtools/binutils/binutils/0001-OS-1142-Do-not-use-nm-B-for-Darwin-s-nm.patch
@@ -12,6 +12,9 @@ becomes empty because "nm -B" fails.
 
 The emptyness of "global_symbol_pipe" causes some libtool link script to be executed with
 two pipes and to fail due to syntax error: "| |"
+
+Upstream-Status: Pending [would require proper fix instead of this workaround]
+Signed-off-by: Etienne Cordonnier <ecordonnier@snap.com>
 ---
  libbacktrace/configure | 2 +-
  libctf/configure       | 2 +-
diff --git a/recipes-devtools/clang/clang/0037-Fixes_for_Darwin_SDKs.patch b/recipes-devtools/clang/clang/0037-Fixes_for_Darwin_SDKs.patch
index 0a0a438..c44ec57 100644
--- a/recipes-devtools/clang/clang/0037-Fixes_for_Darwin_SDKs.patch
+++ b/recipes-devtools/clang/clang/0037-Fixes_for_Darwin_SDKs.patch
@@ -1,10 +1,10 @@
 From cb9b87097803b4444ec9aa52b5054ba88e4da01e Mon Sep 17 00:00:00 2001
-From: OpenEmbedded <oe.patch@oe>
+From: Dominik Schnitzer <dominik@snap.com>
 Date: Wed, 27 Apr 2022 11:22:17 +0000
-Subject: [PATCH] %% original patch: 0001-Fixes_for_Darwin_SDKs.patch
-
-From: OpenEmbedded <oe.patch@oe>
+Subject: [PATCH] Fixes for Darwin SDKs
 
+Upstream-Status: Inappropriate [OE specific]
+Signed-off-by: Dominik Schnitzer <dominik@snap.com>
 ---
  clang/lib/Driver/ToolChains/Darwin.cpp | 17 ++++++++++++-----
  llvm/cmake/modules/AddLLVM.cmake       |  1 -
diff --git a/recipes-devtools/flex/files/0001-scanner-include-flexdevh-at-top-block-of-scanl.patch b/recipes-devtools/flex/files/0001-scanner-include-flexdevh-at-top-block-of-scanl.patch
index 206adae..e86e771 100644
--- a/recipes-devtools/flex/files/0001-scanner-include-flexdevh-at-top-block-of-scanl.patch
+++ b/recipes-devtools/flex/files/0001-scanner-include-flexdevh-at-top-block-of-scanl.patch
@@ -20,6 +20,9 @@ code in scan.l (gcc warning: return makes pointer from integer without
 a cast [-Wint-conversion]).
 
 Fixes #247.
+
+Upstream-Status: Backport [https://github.com/westes/flex/commit/4b5111d9772b5c160340ca96f08d30d7f6db5cda]
+Signed-off-by: Dominik Schnitzer <dominik@snap.com>
 ---
  src/scan.l | 7 ++++++-
  1 file changed, 6 insertions(+), 1 deletion(-)
diff --git a/recipes-devtools/gcc/files/0099-nativesdk-gcc-darwin.patch b/recipes-devtools/gcc/files/0099-nativesdk-gcc-darwin.patch
index dc703e9..77419c0 100644
--- a/recipes-devtools/gcc/files/0099-nativesdk-gcc-darwin.patch
+++ b/recipes-devtools/gcc/files/0099-nativesdk-gcc-darwin.patch
@@ -4,6 +4,7 @@ Date: Wed, 3 Aug 2022 13:37:20 +0200
 Subject: [PATCH] rebase patch "0099-nativesdk-gcc-darwin.patch" from
  meta-darwin
 
+Upstream-Status: Inappropriate [OE specific]
 Signed-off-by: Etienne Cordonnier <ecordonnier@snap.com>
 ---
  gcc/config/darwin-c.c | 4 ++--
diff --git a/recipes-devtools/gcc/files/0100-change-macosx-version-min-to-10.15.patch b/recipes-devtools/gcc/files/0100-change-macosx-version-min-to-10.15.patch
index 28de689..2cbe9be 100644
--- a/recipes-devtools/gcc/files/0100-change-macosx-version-min-to-10.15.patch
+++ b/recipes-devtools/gcc/files/0100-change-macosx-version-min-to-10.15.patch
@@ -3,6 +3,8 @@ From: Etienne Cordonnier <ecordonnier@snap.com>
 Date: Thu, 11 Aug 2022 15:39:44 +0200
 Subject: [PATCH] change macosx-version-min to 10.15
 
+Upstream-Status: Inappropriate [OE specific]
+Signed-off-by: Etienne Cordonnier <ecordonnier@snap.com>
 ---
  libgcc/config/t-darwin | 8 ++++----
  1 file changed, 4 insertions(+), 4 deletions(-)
diff --git a/recipes-devtools/xar/xar/xar.patch b/recipes-devtools/xar/xar/0001-fix-compilation-error.patch
similarity index 85%
rename from recipes-devtools/xar/xar/xar.patch
rename to recipes-devtools/xar/xar/0001-fix-compilation-error.patch
index fd17e53..950c87f 100644
--- a/recipes-devtools/xar/xar/xar.patch
+++ b/recipes-devtools/xar/xar/0001-fix-compilation-error.patch
@@ -1,3 +1,29 @@
+From 17605e2eaa97227ddee3ceac48af560ac3b7a7ad Mon Sep 17 00:00:00 2001
+From: OpenEmbedded <oe.patch@oe>
+Date: Fri, 12 May 2023 13:05:08 +0000
+Subject: [PATCH] fix compilation error
+
+Upstream-Status: Inappropriate [OE specific]
+Signed-off-by: Dominik Schnitzer <dominik@snap.com>
+---
+ xar/Makefile.in  | 2 +-
+ xar/configure    | 6 +++---
+ xar/configure.ac | 6 +++---
+ 3 files changed, 7 insertions(+), 7 deletions(-)
+
+diff --git a/xar/Makefile.in b/xar/Makefile.in
+index a6d6814..63d9445 100644
+--- a/xar/Makefile.in
++++ b/xar/Makefile.in
+@@ -76,7 +76,7 @@ include $(dir_names:%=%/Makefile.inc)
+ #
+ ifeq (@enable_autogen@, 1)
+ @srcroot@configure : @srcroot@configure.ac
+-	cd ./@srcroot@ && $(AUTOCONF)
++	cd @srcroot@ && $(AUTOCONF)
+ 
+ @objroot@config.status : @srcroot@configure
+ 	./@objroot@config.status --recheck
 diff --git a/xar/configure b/xar/configure
 index cb44f98..97a9065 100755
 --- a/xar/configure
@@ -46,16 +72,6 @@ index d1e6362..a77fccc 100644
  else
    AC_MSG_RESULT([no])
    have_libxml2="0"
-diff --git a/xar/Makefile.in b/xar/Makefile.in
-index a6d6814..a6c37b8 100644
---- a/xar/Makefile.in
-+++ b/xar/Makefile.in
-@@ -76,7 +76,7 @@ include $(dir_names:%=%/Makefile.inc)
- #
- ifeq (@enable_autogen@, 1)
- @srcroot@configure : @srcroot@configure.ac
--	cd ./@srcroot@ && $(AUTOCONF)
-+	cd @srcroot@ && $(AUTOCONF)
- 
- @objroot@config.status : @srcroot@configure
- 	./@objroot@config.status --recheck
+-- 
+2.36.1.vfs.0.0
+
diff --git a/recipes-devtools/xar/xar_git.bb b/recipes-devtools/xar/xar_git.bb
index d8e7bdd..575ac36 100644
--- a/recipes-devtools/xar/xar_git.bb
+++ b/recipes-devtools/xar/xar_git.bb
@@ -6,7 +6,7 @@ SECTION = "devel"
 SRCREV = "2b9a4ab7003f1db8c54da4fea55fcbb424fdecb0"
 SRC_URI = " \
     git://github.com/tpoechtrager/xar.git;branch=master;protocol=https \
-    file://xar.patch \
+    file://0001-fix-compilation-error.patch \
 "
 
 inherit autotools pkgconfig
-- 
2.36.1.vfs.0.0


