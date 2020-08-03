Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.5570.1596435683725171768
 for <yocto@lists.yoctoproject.org>;
 Sun, 02 Aug 2020 23:21:24 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: windriver.com, ip: 140.211.169.56, mailfrom: kai.kang@windriver.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40807E01F72; Sun,  2 Aug 2020 23:21:23 -0700 (PDT)
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
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 112CCE01F70
	for <yocto@yoctoproject.org>; Sun,  2 Aug 2020 23:21:19 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com [147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id 0736LIPH014608
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Sun, 2 Aug 2020 23:21:18 -0700 (PDT)
Received: from pek-lpg-core3.wrs.com (128.224.153.232) by
 ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
 14.3.487.0; Sun, 2 Aug 2020 23:21:05 -0700
From: "kai" <kai.kang@windriver.com>
To: <yocto@yoctoproject.org>
Subject: [meta-security][PATCH] libseccomp: fix cross compile error for mips
Date: Mon, 3 Aug 2020 14:21:02 +0800
Message-ID: <20200803062102.6034-1-kai.kang@windriver.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain

From: Kai Kang <kai.kang@windriver.com>

Backport patch to fix cross compile error for mips:

| syscalls.h:44:6: error: expected identifier or '(' before numeric constant
|    44 |  int mips;
|       |      ^~~~

Signed-off-by: Kai Kang <kai.kang@windriver.com>
---
 .../files/fix-mips-build-failure.patch        | 49 +++++++++++++++++++
 .../libseccomp/libseccomp_2.5.0.bb            |  1 +
 2 files changed, 50 insertions(+)
 create mode 100644 recipes-security/libseccomp/files/fix-mips-build-failure.patch

diff --git a/recipes-security/libseccomp/files/fix-mips-build-failure.patch b/recipes-security/libseccomp/files/fix-mips-build-failure.patch
new file mode 100644
index 0000000..7d17a03
--- /dev/null
+++ b/recipes-security/libseccomp/files/fix-mips-build-failure.patch
@@ -0,0 +1,49 @@
+Backport patch to fix cross compile error for mips:
+
+| syscalls.h:44:6: error: expected identifier or '(' before numeric constant
+|    44 |  int mips;
+|       |      ^~~~
+
+Upstream-Status: Submitted [https://github.com/seccomp/libseccomp/pull/279/commits/04c519e5]
+
+Signed-off-by: Kai Kang <kai.kang@windriver.com>
+
+From 04c519e5b1de53592e98307813e5c6db7418f91b Mon Sep 17 00:00:00 2001
+From: Paul Moore <paul@paul-moore.com>
+Date: Sun, 2 Aug 2020 09:57:39 -0400
+Subject: [PATCH] build: undefine "mips" to prevent build problems for MIPS
+ targets
+
+It turns out that the MIPS GCC compiler defines a "mips" cpp macro
+which was resulting in build failures on MIPS so we need to
+undefine the "mips" macro during build.  As this should be safe
+to do in all architectures, just add it to the compiler flags by
+default.
+
+This was reported in the following GH issue:
+* https://github.com/seccomp/libseccomp/issues/274
+
+Reported-by: Rongwei Zhang <pudh4418@gmail.com>
+Suggested-by: Rongwei Zhang <pudh4418@gmail.com>
+Signed-off-by: Paul Moore <paul@paul-moore.com>
+---
+ configure.ac | 4 +++-
+ 1 file changed, 3 insertions(+), 1 deletion(-)
+
+diff --git a/configure.ac b/configure.ac
+index 40d9dcbb..3e877348 100644
+--- a/configure.ac
++++ b/configure.ac
+@@ -65,9 +65,11 @@ m4_ifdef([AM_SILENT_RULES], [AM_SILENT_RULES([yes])])
+ 
+ dnl ####
+ dnl build flags
++dnl NOTE: the '-Umips' is here because MIPS GCC compilers "helpfully" define it
++dnl       for us which wreaks havoc on the build
+ dnl ####
+ AM_CPPFLAGS="-I\${top_srcdir}/include -I\${top_builddir}/include"
+-AM_CFLAGS="-Wall"
++AM_CFLAGS="-Wall -Umips"
+ AM_LDFLAGS="-Wl,-z -Wl,relro"
+ AC_SUBST([AM_CPPFLAGS])
+ AC_SUBST([AM_CFLAGS])
diff --git a/recipes-security/libseccomp/libseccomp_2.5.0.bb b/recipes-security/libseccomp/libseccomp_2.5.0.bb
index 7a6b483..35365d5 100644
--- a/recipes-security/libseccomp/libseccomp_2.5.0.bb
+++ b/recipes-security/libseccomp/libseccomp_2.5.0.bb
@@ -10,6 +10,7 @@ SRCREV = "f13f58efc690493fe7aa69f54cb52a118f3769c1"
 
 SRC_URI = "git://github.com/seccomp/libseccomp.git;branch=release-2.5 \
            file://run-ptest \
+           file://fix-mips-build-failure.patch \
 "
 
 COMPATIBLE_HOST_riscv32 = "null"
-- 
2.17.1

