Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
 by mx.groups.io with SMTP id smtpd.web09.4980.1614552971177392378
 for <yocto@lists.yoctoproject.org>;
 Sun, 28 Feb 2021 14:56:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=KlHV5HRh;
 spf=pass (domain: gmail.com, ip: 209.85.210.178, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f178.google.com with SMTP id o188so3576102pfg.2
        for <yocto@lists.yoctoproject.org>; Sun, 28 Feb 2021 14:56:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=iFRtGp8/UzZ70B2rWae7sKccuyJ8EJQMRtaEqsrogIY=;
        b=KlHV5HRhSb/ZHIOcR5cqDSCwCv5h1gPTyZIr6jF6wvyJAaiSOQQVVSmZ8yo5yXKUzC
         Xl8oKpP1rbecZTJVQKnIL4OW1epemq+um92Ltp7ADdWfeUKt9x/NezbQMNcPNMl2kXg8
         T7O+Oy53GL6HAv+A3dqv24rA8X6fr7TuOB+MD3+C1iWm8StBpdhQwkAaE5CNBjdsT+yL
         zTUq3vnM+beICNsGGCuu/iJlULyAAx2hGl7OFH4xPfxBwY+a/YnTp8GCqTOjo+vI2O9d
         OcZOiM41tzdAjb0x6WMpHcHCB01oyMwPjhBpAYPKFJW877EP22Ckb9FO6tyvIjygaFsN
         G5NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=iFRtGp8/UzZ70B2rWae7sKccuyJ8EJQMRtaEqsrogIY=;
        b=oJwlIW+lX7n6U6LlarpDhtiL1OD5n/HEJKSjyKMitGwrHH7OOD7IuGPW95uUg0aq4u
         U1VAIA62rTVlY6B2tzxpNL27voBod7rhdHG6jgiK5L2IQjR4hBRRU56f6s5Rv1VmDTR/
         PuXng5pX+tTzZd50SsisaQsVVtCz7VSByK2YlxHMTncpEhT4JcnWQ7Ga8CJMApsEYls1
         tsSjhfKoO2kbl/wVNAshIh6um8IX+Nr3QhCjV7CegV+kPjkokaesdBNQYKZxoSABToYj
         FiG+cOa1I6MWXvMMRfaDu1qaxvzR5rzltvVIGI0ApXgbHL91A3aAtK1REkeyzZG0sgcr
         7NTQ==
X-Gm-Message-State: AOAM530DXMg6MKuPPTpF66tL4lyM71OV0sKk9dzdNeGVvKyma3XBkxFy
	SHFJ/4uDB+NSfKn1Ek3qI0znB++SceI=
X-Google-Smtp-Source: ABdhPJxJAo52u0HhHAhUgHmtenuk3S2pQX28Mo+TKA0KRTCXdqWwCII4yWdqGEhCDjHq1fNM8gHTSQ==
X-Received: by 2002:a63:eb42:: with SMTP id b2mr11320300pgk.284.1614552970282;
        Sun, 28 Feb 2021 14:56:10 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id w25sm15409431pfn.106.2021.02.28.14.56.09
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Feb 2021 14:56:10 -0800 (PST)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 05/12] libseccomp: upgrade 2.5.0 -> 2.5.1
Date: Sun, 28 Feb 2021 22:55:58 +0000
Message-Id: <20210228225605.3442507-5-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210228225605.3442507-1-akuster808@gmail.com>
References: <20210228225605.3442507-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

drop patch merged  in update
---
 .../files/fix-mips-build-failure.patch        | 49 -------------------
 ...ibseccomp_2.5.0.bb => libseccomp_2.5.1.bb} |  5 +-
 2 files changed, 2 insertions(+), 52 deletions(-)
 delete mode 100644 recipes-security/libseccomp/files/fix-mips-build-failure.patch
 rename recipes-security/libseccomp/{libseccomp_2.5.0.bb => libseccomp_2.5.1.bb} (93%)

diff --git a/recipes-security/libseccomp/files/fix-mips-build-failure.patch b/recipes-security/libseccomp/files/fix-mips-build-failure.patch
deleted file mode 100644
index 7d17a03..0000000
--- a/recipes-security/libseccomp/files/fix-mips-build-failure.patch
+++ /dev/null
@@ -1,49 +0,0 @@
-Backport patch to fix cross compile error for mips:
-
-| syscalls.h:44:6: error: expected identifier or '(' before numeric constant
-|    44 |  int mips;
-|       |      ^~~~
-
-Upstream-Status: Submitted [https://github.com/seccomp/libseccomp/pull/279/commits/04c519e5]
-
-Signed-off-by: Kai Kang <kai.kang@windriver.com>
-
-From 04c519e5b1de53592e98307813e5c6db7418f91b Mon Sep 17 00:00:00 2001
-From: Paul Moore <paul@paul-moore.com>
-Date: Sun, 2 Aug 2020 09:57:39 -0400
-Subject: [PATCH] build: undefine "mips" to prevent build problems for MIPS
- targets
-
-It turns out that the MIPS GCC compiler defines a "mips" cpp macro
-which was resulting in build failures on MIPS so we need to
-undefine the "mips" macro during build.  As this should be safe
-to do in all architectures, just add it to the compiler flags by
-default.
-
-This was reported in the following GH issue:
-* https://github.com/seccomp/libseccomp/issues/274
-
-Reported-by: Rongwei Zhang <pudh4418@gmail.com>
-Suggested-by: Rongwei Zhang <pudh4418@gmail.com>
-Signed-off-by: Paul Moore <paul@paul-moore.com>
----
- configure.ac | 4 +++-
- 1 file changed, 3 insertions(+), 1 deletion(-)
-
-diff --git a/configure.ac b/configure.ac
-index 40d9dcbb..3e877348 100644
---- a/configure.ac
-+++ b/configure.ac
-@@ -65,9 +65,11 @@ m4_ifdef([AM_SILENT_RULES], [AM_SILENT_RULES([yes])])
- 
- dnl ####
- dnl build flags
-+dnl NOTE: the '-Umips' is here because MIPS GCC compilers "helpfully" define it
-+dnl       for us which wreaks havoc on the build
- dnl ####
- AM_CPPFLAGS="-I\${top_srcdir}/include -I\${top_builddir}/include"
--AM_CFLAGS="-Wall"
-+AM_CFLAGS="-Wall -Umips"
- AM_LDFLAGS="-Wl,-z -Wl,relro"
- AC_SUBST([AM_CPPFLAGS])
- AC_SUBST([AM_CFLAGS])
diff --git a/recipes-security/libseccomp/libseccomp_2.5.0.bb b/recipes-security/libseccomp/libseccomp_2.5.1.bb
similarity index 93%
rename from recipes-security/libseccomp/libseccomp_2.5.0.bb
rename to recipes-security/libseccomp/libseccomp_2.5.1.bb
index 0cf2d70..40ac1a8 100644
--- a/recipes-security/libseccomp/libseccomp_2.5.0.bb
+++ b/recipes-security/libseccomp/libseccomp_2.5.1.bb
@@ -6,12 +6,11 @@ LIC_FILES_CHKSUM = "file://LICENSE;beginline=0;endline=1;md5=8eac08d22113880357c
 
 DEPENDS += "gperf-native"
 
-SRCREV = "f13f58efc690493fe7aa69f54cb52a118f3769c1"
+SRCREV = "4bf70431a339a2886ab8c82e9a45378f30c6e6c7"
 
 SRC_URI = "git://github.com/seccomp/libseccomp.git;branch=release-2.5 \
            file://run-ptest \
-           file://fix-mips-build-failure.patch \
-"
+           "
 
 COMPATIBLE_HOST_riscv32 = "null"
 
-- 
2.25.1

