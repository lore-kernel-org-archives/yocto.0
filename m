Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.3955.1584582817975739984
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Mar 2020 18:53:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=movH9Tok;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jpuhlman@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D1DBBE01886; Wed, 18 Mar 2020 18:53:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.215.175 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F1FCE017FC
	for <yocto@yoctoproject.org>; Wed, 18 Mar 2020 18:53:36 -0700 (PDT)
Received: by mail-pg1-f175.google.com with SMTP id a32so311668pga.4
        for <yocto@yoctoproject.org>; Wed, 18 Mar 2020 18:53:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=a+QP7gbBEXH72uYsN+MiiOEsarAeo7Fy/yYv/Nm7LGE=;
        b=movH9TokFIg0tUuK139MuPlIA9gTxurNiwE9/FeReHVuZRcsgBjhnLKVWwxBUPMgEy
         2Xcd2rJQrNkXWPBpItFWDs0qRoT5RXWe2yGhkvGkmG+zeuvQnMAjLYfrI/tv8Rm/qKSb
         H9rMv45MwMAmi8VzNchKqd/V1y/baJuWMv7N11Fid5lAwy7lStuSHWCjbFS1l9tEvQXg
         1K6ji7sRnlTChUMQZ7EAGmmKKpi1NEePK46XGgcS63OwKTFiVhRpJUBNmor0HQvtJeD8
         6vHvn0nG7Bh58N1vlupBSBHljvfqgZsg9t4RO8AunAswnIBffA1F5zq0xTOvj/sPGmu/
         7TFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references;
        bh=a+QP7gbBEXH72uYsN+MiiOEsarAeo7Fy/yYv/Nm7LGE=;
        b=NWO8x5hKslsnABYXirYnDz36zja7jvzW0Nhf6KL5eipcAeuilxN+7YtVeuCTE8T5Kc
         2lsrCDSzEoH0R6LpbtEFaKf89JrnlslRPK0UO4haDHNrfztMq2av1fCEyXIHkH/R7VxE
         ip2NEQkp3VvVyq2vGohW7+fXDjtzCZnzqzRLTvCx/J0a+FKLVruD9u/gj3IKchvkMG6i
         83aRkD9NteH6oblwez/gHbNed9JITaNriHFu2yRD2CHyDIJeTgE+RrhbqMXhFE5Aiux3
         3CpsTxv5zAeLnTZuXTd8DaKsadsTQ0lM2rn5Fyr0UMddvELxMckMoQhBect42cPWwrf8
         ssKw==
X-Gm-Message-State: ANhLgQ3ZwZ0dsZGbBO/jac2rH5FFs3+WfNvngAccSznMNSyvmQDEMIB6
	vbsTL4bC7C79RTvOrNaANtCh+B3Dz5I=
X-Google-Smtp-Source: ADFU+vuvMSeleaP5onlxoQyxqxSvzEQMg26pGGydslLV4JycE5MXBaXcu1mSkIcAxNYrWVX1Fubv5Q==
X-Received: by 2002:a63:3753:: with SMTP id g19mr788332pgn.262.1584582815973;
        Wed, 18 Mar 2020 18:53:35 -0700 (PDT)
Received: from workhorse.localdomain ([2600:1700:4c90:60a0:56be:f7ff:fe12:d0bd])
        by smtp.gmail.com with ESMTPSA id b24sm218381pjz.3.2020.03.18.18.53.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2020 18:53:35 -0700 (PDT)
Sender: Jeremy Puhlman <jpuhlman@gmail.com>
Received: by workhorse.localdomain (Postfix, from userid 1000)
	id 39D8C2A09AF; Wed, 18 Mar 2020 18:53:34 -0700 (PDT)
From: "Jeremy Puhlman" <jpuhlman@mvista.com>
To: yocto@yoctoproject.org
Cc: "Jeremy A. Puhlman" <jpuhlman@mvista.com>
Subject: [meta-cgl][PATCH 16/20] ocfs2-tools: update to 1.8.6
Date: Wed, 18 Mar 2020 18:53:17 -0700
Message-Id: <20200319015321.15525-16-jpuhlman@mvista.com>
X-Mailer: git-send-email 2.13.3
In-Reply-To: <20200319015321.15525-1-jpuhlman@mvista.com>
References: <20200319015321.15525-1-jpuhlman@mvista.com>

* Drop patcehes moved upstream.
* Update license for address changes in document

Signed-off-by: Jeremy A. Puhlman <jpuhlman@mvista.com>
---
 ...s2-use-sys-sysmacros.h-include-for-makede.patch | 47 ------------
 ...cfs2-fix-compile-error-when-glibc-upgrade.patch | 88 ----------------------
 .../{ocfs2-tools_1.8.5.bb => ocfs2-tools_1.8.6.bb} |  8 +-
 3 files changed, 3 insertions(+), 140 deletions(-)
 delete mode 100644 meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0001-mounted.ocfs2-use-sys-sysmacros.h-include-for-makede.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/ocfs2-fix-compile-error-when-glibc-upgrade.patch
 rename meta-cgl-common/recipes-cgl/ocfs2-tools/{ocfs2-tools_1.8.5.bb => ocfs2-tools_1.8.6.bb} (93%)

diff --git a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0001-mounted.ocfs2-use-sys-sysmacros.h-include-for-makede.patch b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0001-mounted.ocfs2-use-sys-sysmacros.h-include-for-makede.patch
deleted file mode 100644
index ddc43aa..0000000
--- a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0001-mounted.ocfs2-use-sys-sysmacros.h-include-for-makede.patch
+++ /dev/null
@@ -1,47 +0,0 @@
-From 03be837c7d0b9be393ffb555879c49e6212fbd0f Mon Sep 17 00:00:00 2001
-From: Valentin Vidic <Valentin.Vidic@CARNet.hr>
-Date: Thu, 25 Jan 2018 13:05:27 +0100
-Subject: [PATCH] mounted.ocfs2: use <sys/sysmacros.h> include for makedev
-MIME-Version: 1.0
-Content-Type: text/plain; charset=UTF-8
-Content-Transfer-Encoding: 8bit
-
- mounted.c: In function "build_partition_list":
- mounted.c:354:13: warning: In the GNU C Library, "makedev" is defined
-  by <sys/sysmacros.h>. For historical compatibility, it is
-  currently defined by <sys/types.h> as well, but we plan to
-  remove this soon. To use "makedev", include <sys/sysmacros.h>
-  directly. If you did not intend to use a system-defined macro
-  "makedev", you should undefine it after including <sys/types.h>.
-        makedev(major, minor), &devname);
-              ^~~~~~~~~~~~~~~~~~~~~~~~~~~
-
-Fix the below error:
-/usr/src/debug/ocfs2-tools/1.8.5-r0/git/mounted.ocfs2/mounted.c:354: undefined reference to `makedev'
-collect2: error: ld returned 1 exit status
-Makefile:36: recipe for target 'mounted.ocfs2' failed
-make[1]: *** [mounted.ocfs2] Error 1
-
-Upstream-Status: Backport[https://github.com/markfasheh/ocfs2-tools/commit/03be837c7d0b9be393ffb555879c49e6212fbd0f]
-
-Signed-off-by: Mingli Yu <Mingli.Yu@windriver.com>
----
- mounted.ocfs2/mounted.c | 2 +-
- 1 file changed, 1 insertion(+), 1 deletion(-)
-
-diff --git a/mounted.ocfs2/mounted.c b/mounted.ocfs2/mounted.c
-index 1576f902..090ab4ed 100644
---- a/mounted.ocfs2/mounted.c
-+++ b/mounted.ocfs2/mounted.c
-@@ -25,7 +25,7 @@
- #define _LARGEFILE64_SOURCE
- #define _GNU_SOURCE /* Because libc really doesn't want us using O_DIRECT? */
- 
--#include <sys/types.h>
-+#include <sys/sysmacros.h>
- #include <stdio.h>
- #include <unistd.h>
- #include <errno.h>
--- 
-2.17.1
-
diff --git a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/ocfs2-fix-compile-error-when-glibc-upgrade.patch b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/ocfs2-fix-compile-error-when-glibc-upgrade.patch
deleted file mode 100644
index 5eb2a61..0000000
--- a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/ocfs2-fix-compile-error-when-glibc-upgrade.patch
+++ /dev/null
@@ -1,88 +0,0 @@
-From 0ffd58b223e24779420130522ea8ee359505f493 Mon Sep 17 00:00:00 2001
-From: Gang He <ghe@suse.com>
-Date: Mon, 4 Sep 2017 14:08:59 +0800
-Subject: [PATCH] fsck.ocfs2: fix compile error when glibc upgrade
-
-When glibc upgrade to glibc-2.26.90-14, there was a compile error in fsck.ocfs2,
-the compile error messages like,
-
-In file included from /usr/include/string.h:431:0,
-                 from ../include/ocfs2/ocfs2.h:41,
-                 from pass4.c:32:
-include/strings.h:37:1: error: unknown type name 'errcode_t'; did you mean 'mode_t'?
- errcode_t o2fsck_strings_insert(o2fsck_strings *strings, char *string,
- ^~~~~~~~~
- mode_t
-
-
-Upstream-Status: Backport [https://github.com/markfasheh/ocfs2-tools/commit/0ffd58b223e24779420130522ea8ee359505f493]
-
-Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
----
- fsck.ocfs2/Makefile                                | 2 +-
- fsck.ocfs2/include/{strings.h => o2fsck_strings.h} | 0
- fsck.ocfs2/pass2.c                                 | 2 +-
- fsck.ocfs2/pass5.c                                 | 2 +-
- fsck.ocfs2/strings.c                               | 2 +-
- 5 files changed, 4 insertions(+), 4 deletions(-)
- rename fsck.ocfs2/include/{strings.h => o2fsck_strings.h} (100%)
-
-diff --git a/fsck.ocfs2/Makefile b/fsck.ocfs2/Makefile
-index 051ed74..baf1994 100644
---- a/fsck.ocfs2/Makefile
-+++ b/fsck.ocfs2/Makefile
-@@ -64,7 +64,7 @@ HFILES = 	include/fsck.h		\
- 		include/problem.h	\
- 		include/refcount.h	\
- 		include/slot_recovery.h	\
--		include/strings.h	\
-+		include/o2fsck_strings.h	\
- 		include/util.h
- 
- 
-diff --git a/fsck.ocfs2/include/strings.h b/fsck.ocfs2/include/o2fsck_strings.h
-similarity index 100%
-rename from fsck.ocfs2/include/strings.h
-rename to fsck.ocfs2/include/o2fsck_strings.h
-diff --git a/fsck.ocfs2/pass2.c b/fsck.ocfs2/pass2.c
-index 181febb..a48a50b 100644
---- a/fsck.ocfs2/pass2.c
-+++ b/fsck.ocfs2/pass2.c
-@@ -43,7 +43,7 @@
- #include "fsck.h"
- #include "pass2.h"
- #include "problem.h"
--#include "strings.h"
-+#include "o2fsck_strings.h"
- #include "util.h"
- 
- static const char *whoami = "pass2";
-diff --git a/fsck.ocfs2/pass5.c b/fsck.ocfs2/pass5.c
-index 5c2d899..bfad1b7 100644
---- a/fsck.ocfs2/pass5.c
-+++ b/fsck.ocfs2/pass5.c
-@@ -40,7 +40,7 @@
- #include "fsck.h"
- #include "pass5.h"
- #include "problem.h"
--#include "strings.h"
-+#include "o2fsck_strings.h"
- #include "util.h"
- 
- static const char *whoami = "pass5";
-diff --git a/fsck.ocfs2/strings.c b/fsck.ocfs2/strings.c
-index 4ad3782..8a7a8d9 100644
---- a/fsck.ocfs2/strings.c
-+++ b/fsck.ocfs2/strings.c
-@@ -31,7 +31,7 @@
- #include "ocfs2/ocfs2.h"
- 
- #include "fsck.h"
--#include "strings.h"
-+#include "o2fsck_strings.h"
- #include "util.h"
- 
- struct string_entry {
--- 
-2.7.4
-
diff --git a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.5.bb b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.6.bb
similarity index 93%
rename from meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.5.bb
rename to meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.6.bb
index a0376ec..bc0551b 100644
--- a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.5.bb
+++ b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.6.bb
@@ -10,19 +10,17 @@ ext3."
 HOMEPAGE = "http://oss.oracle.com/projects/ocfs2-tools/"
 SECTION = "System Environment/Base"
 LICENSE = "GPLv2"
-LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
+LIC_FILES_CHKSUM = "file://COPYING;md5=8ef380476f642c20ebf40fecb0add2ec"
 
 SRC_URI = "git://github.com/markfasheh/ocfs2-tools \
     file://0003-vendor-common-o2cb.ocf-add-new-conf-file.patch \
-    file://ocfs2-fix-compile-error-when-glibc-upgrade.patch \
     file://ocfs2-tools-1.8.5-format-fortify.patch \
     file://no-redhat.patch \
     file://o2cb.service \
     file://ocfs2.service \
     file://0001-Fix-build-with-glibc-2.28.patch \
-    file://0001-mounted.ocfs2-use-sys-sysmacros.h-include-for-makede.patch \
 "
-SRCREV = "f1b4d073f08679f97b64b3eb88e586032f92a701"
+SRCREV = "4d76ceb4aa7aaa1fd595368089e99575d708f719"
 S = "${WORKDIR}/git"
 
 inherit autotools-brokensep pkgconfig systemd
@@ -35,7 +33,7 @@ DEPENDS = "corosync pacemaker \
 # lsbinitscripts are needed to replace /etc/init.d/functions supplied by initscripts (systemv)
 # They are not the same code!
 #
-RDEPENDS_${PN} = "bash coreutils net-tools module-init-tools e2fsprogs chkconfig glib-2.0 \
+RDEPENDS_${PN} = "bash coreutils net-tools module-init-tools e2fsprogs glib-2.0 \
                   ${@bb.utils.contains('DISTRO_FEATURES','systemd','lsbinitscripts','',d)}"
 
 ASNEEDED_pn-${PN} = ""
-- 
2.13.3

