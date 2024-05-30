Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB1FC25B74
	for <webhook@archiver.kernel.org>; Thu, 30 May 2024 05:11:23 +0000 (UTC)
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
 by mx.groups.io with SMTP id smtpd.web11.1011.1717045873687348861
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 May 2024 22:11:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=EsWNhKEs;
 spf=pass (domain: gmail.com, ip: 209.85.210.177, mailfrom: raj.khem@gmail.com)
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-70224f928edso512848b3a.0
        for <yocto@lists.yoctoproject.org>; Wed, 29 May 2024 22:11:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717045873; x=1717650673; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4d7fA08nZvOKkoPrloT+oHfGKAA8GOg7JWoXZLSkXrw=;
        b=EsWNhKEsrVly/cDYNZfFsYx5bnG7meK7gj9XSUQZhKpyJw0Cx3XW79pymH++0wF6Wf
         YcZWRhoE6iNhTbvDRb3xjQ1r4w1TT0yx87GtE8a0fJFNA8TB4639XbQI6JPYWTqHcuwO
         +t9GcAsBUrrZwGdUMEkE74AR6nPODvVR4UdMnh1YuiUnIxyX3gksNOMg1LZNp+/8w2n7
         YcimFCEoyi/qM9Lij6VZHlI1ekn4xLpER+p6/w51IUI7Ez9T886O5jSPZ1+r9YCUMcCo
         dTJ3XqjwUiTipL0Gfsw/49pK0DMxYBjUhjJ8WIMhU1rFPMOWVpS7C2/DuIIRGD8wrNeB
         Lonw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717045873; x=1717650673;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4d7fA08nZvOKkoPrloT+oHfGKAA8GOg7JWoXZLSkXrw=;
        b=rwBY0CcUA+lfztTXWKi5GSe9bZ/zk671SNDig2wmuOaMh0UO4eKU5GpXWY1cumLg6d
         N6Ksx5HckvSCXpGPAS3X99F+PB70eZwIXC3LWa3flaukhYSdCZ2p+kvrajiP9toRMClm
         OyegjOPD79jpA0K9Tj9VwYO0m5bYswxf6z49nxK38wbBi5X52ucZ/a0nd0bQ+fbpqIow
         5u6N7IonMg0bpFofStchMlu6Xb1JomQZm+FIftwiHB9SZjh0KDLPbSOUXAo5R/XFHy0o
         PUo2kIrGJJbGyzog5zWiV8ybCivXmRx5zEIdUsHU/459oyz003SQ4mHYA6UpVfyJR71s
         pkFA==
X-Gm-Message-State: AOJu0YwdgUmS4mdmpdDKqpS4cRsBNQpFebj/hjsUrUa8ZrUf13etn4Uj
	H+H6KTezfLHN/4QkioqrVLfG4zdCKGKjCxfSt4qG5tfN6P11hWz7+Y+EN7lMbU8=
X-Google-Smtp-Source: AGHT+IH3ovG6EQ7qKg+NKK1qgZgJ5TwPiy+c79WlkHiUsysqkc+fBoxyQF2UKAIGDUu0zE4qhw/Lpg==
X-Received: by 2002:a05:6a00:330e:b0:6f3:f05c:d2d7 with SMTP id d2e1a72fcca58-702310ea7cbmr1348874b3a.2.1717045872727;
        Wed, 29 May 2024 22:11:12 -0700 (PDT)
Received: from apollo.hsd1.ca.comcast.net ([2601:646:9d80:4380::3972])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-6f8fcbf5388sm8853029b3a.136.2024.05.29.22.11.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 May 2024 22:11:11 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com,
	Khem Raj <raj.khem@gmail.com>
Subject: [meta-mingw] [PATCH 4/4] diffutils: Fix build with GCC-14
Date: Wed, 29 May 2024 22:11:00 -0700
Message-ID: <20240530051104.2814410-5-raj.khem@gmail.com>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20240530051104.2814410-1-raj.khem@gmail.com>
References: <20240530051104.2814410-1-raj.khem@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 30 May 2024 05:11:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63237

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 ...01-sdiff-Match-execvp-argument-types.patch | 37 +++++++++++++++++++
 ...efine-stricoll-as-_stricoll-on-mingw.patch | 37 +++++++++++++++++++
 .../diffutils/diffutils_%.bbappend            |  5 ++-
 3 files changed, 78 insertions(+), 1 deletion(-)
 create mode 100644 recipes-extended/diffutils/diffutils/0001-sdiff-Match-execvp-argument-types.patch
 create mode 100644 recipes-extended/diffutils/diffutils/0002-Define-stricoll-as-_stricoll-on-mingw.patch

diff --git a/recipes-extended/diffutils/diffutils/0001-sdiff-Match-execvp-argument-types.patch b/recipes-extended/diffutils/diffutils/0001-sdiff-Match-execvp-argument-types.patch
new file mode 100644
index 0000000..2dff6db
--- /dev/null
+++ b/recipes-extended/diffutils/diffutils/0001-sdiff-Match-execvp-argument-types.patch
@@ -0,0 +1,37 @@
+From 197c0c72a6cb60a647db02c2874a8103be4557d6 Mon Sep 17 00:00:00 2001
+From: Khem Raj <raj.khem@gmail.com>
+Date: Wed, 29 May 2024 10:58:54 -0700
+Subject: [PATCH 1/2] sdiff: Match execvp argument types
+
+Fixes build with GCC-14
+
+../../diffutils-3.10/src/sdiff.c:579:28: error: passing argument 2 of '_execvp' from incompatible pointer type [-Wincompatible-pointer-types]
+  579 |       execvp (diffargv[0], (char **) diffargv);
+      |                            ^~~~~~~~~~~~~~~~~~
+      |                            |
+      |                            char **
+
+* src/sdiff.c (main): execpv expects const pointer.
+
+Upstream-Status: Submitted [https://lists.gnu.org/archive/html/bug-diffutils/2024-05/msg00003.html]
+Signed-off-by: Khem Raj <raj.khem@gmail.com>
+---
+ src/sdiff.c | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/src/sdiff.c b/src/sdiff.c
+index 0b638d4..a4642b1 100644
+--- a/src/sdiff.c
++++ b/src/sdiff.c
+@@ -576,7 +576,7 @@ main (int argc, char *argv[])
+       diffarg (argv[optind]);
+       diffarg (argv[optind + 1]);
+       diffarg (0);
+-      execvp (diffargv[0], (char **) diffargv);
++      execvp (diffargv[0], diffargv);
+       perror_fatal (diffargv[0]);
+     }
+   else
+-- 
+2.45.1
+
diff --git a/recipes-extended/diffutils/diffutils/0002-Define-stricoll-as-_stricoll-on-mingw.patch b/recipes-extended/diffutils/diffutils/0002-Define-stricoll-as-_stricoll-on-mingw.patch
new file mode 100644
index 0000000..23807c6
--- /dev/null
+++ b/recipes-extended/diffutils/diffutils/0002-Define-stricoll-as-_stricoll-on-mingw.patch
@@ -0,0 +1,37 @@
+From 9e1318440a5f7f4a00f077fc3cbd1edc07e0985d Mon Sep 17 00:00:00 2001
+From: Khem Raj <raj.khem@gmail.com>
+Date: Wed, 29 May 2024 21:20:12 -0700
+Subject: [PATCH 2/2] Define stricoll as _stricoll on mingw
+
+* src/system.h: Define stricoll as _stricoll on mingw.
+
+Upstream-Status: Submitted [https://lists.gnu.org/archive/html/bug-diffutils/2024-05/msg00004.html]
+Signed-off-by: Khem Raj <raj.khem@gmail.com>
+---
+ src/system.h | 10 ++++++++++
+ 1 file changed, 10 insertions(+)
+
+diff --git a/src/system.h b/src/system.h
+index b37893f..4c7a318 100644
+--- a/src/system.h
++++ b/src/system.h
+@@ -63,6 +63,16 @@
+ #include <inttypes.h>
+ 
+ #include <string.h>
++/* stricoll is not provided by any headers on windows/mingw
++   only _stricoll is provided, the function is however aliased
++   to provide stricoll in runtime libraries, the configure check
++   to detect stricoll defines the prototype in generated test
++   itself and thus test passes, however compiling fails with
++   GCC-14 which enables implicit-function-declaration as error  */ 
++#if defined _WIN32 && ! defined __CYGWIN__
++#define stricoll _stricoll
++#endif
++
+ #if ! HAVE_STRCASECOLL
+ # if HAVE_STRICOLL || defined stricoll
+ #  define strcasecoll(a, b) stricoll (a, b)
+-- 
+2.45.1
+
diff --git a/recipes-extended/diffutils/diffutils_%.bbappend b/recipes-extended/diffutils/diffutils_%.bbappend
index 8b54cb0..284f8cb 100644
--- a/recipes-extended/diffutils/diffutils_%.bbappend
+++ b/recipes-extended/diffutils/diffutils_%.bbappend
@@ -3,6 +3,10 @@ FILESEXTRAPATHS:prepend:mingw32 := "${THISDIR}/${BPN}:"
 # Add some definitions for POSIX signals..
 CFLAGS:append:mingw32 = " -DSIGALRM=14 -DSIGHUP=1 -DSIGQUIT=3 -DSIGPIPE=13 -DSIGTSTP=18 -DSIGSTOP=17 "
 
+SRC_URI:append:mingw32 = "\
+       file://0001-sdiff-Match-execvp-argument-types.patch \
+       file://0002-Define-stricoll-as-_stricoll-on-mingw.patch"
+
 do_configure:prepend:mingw32 () {
     # Remove building of "man" and "gnulib-tests". The tests don't
     # cross-compile for mingw, but we aren't using them anyway
@@ -11,4 +15,3 @@ do_configure:prepend:mingw32 () {
         -e 's:^SUBDIRS =\(.*\) gnulib-tests\>:SUBDIRS = \1 :g' \
         ${S}/Makefile.am
 }
-
-- 
2.45.1


