Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.27386.1577414681936279240
 for <yocto@lists.yoctoproject.org>;
 Thu, 26 Dec 2019 18:44:42 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: windriver.com, ip: 140.211.169.56, mailfrom: yi.zhao@windriver.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72183E012F6; Thu, 26 Dec 2019 18:44:41 -0800 (PST)
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
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01787E01157
	for <yocto@yoctoproject.org>; Thu, 26 Dec 2019 18:44:39 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id xBR2hf6p014380
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Thu, 26 Dec 2019 18:43:51 -0800
Received: from localhost (128.224.162.174) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0; Thu, 26 Dec
 2019 18:43:30 -0800
From: "Yi Zhao" <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>, <joe@deserted.net>, <Joe_MacDonald@mentor.com>
Subject: [meta-selinux][PATCH] audit: fix host contamination for swig
Date: Fri, 27 Dec 2019 10:43:27 +0800
Message-ID: <20191227024327.19833-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [128.224.162.174]
Content-Type: text/plain

The audit build uses swig to generate a python wrapper. But there is a
hardcoded include directory in auditswig.i, which causes header files on
the host to be used when building. This will cause build error on some
old systems. e.g. on CentOS7 with buildtools:
  audit_wrap.c: In function '_wrap_audit_rule_flags_set':
  audit_wrap.c:5018:19: error: dereferencing pointer to incomplete type 'struct audit_rule'
  5018  if (arg1) (arg1)->flags = arg2;
        ^~

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../Fixed-swig-host-contamination-issue.patch | 57 +++++++++++++++++++
 recipes-security/audit/audit_2.8.5.bb         |  1 +
 2 files changed, 58 insertions(+)
 create mode 100644 recipes-security/audit/audit/Fixed-swig-host-contamination-issue.patch

diff --git a/recipes-security/audit/audit/Fixed-swig-host-contamination-issue.patch b/recipes-security/audit/audit/Fixed-swig-host-contamination-issue.patch
new file mode 100644
index 0000000..7c26995
--- /dev/null
+++ b/recipes-security/audit/audit/Fixed-swig-host-contamination-issue.patch
@@ -0,0 +1,57 @@
+From a07271f1cce82122610b622bcea4a8a37528f321 Mon Sep 17 00:00:00 2001
+From: Li xin <lixin.fnst@cn.fujitsu.com>
+Date: Sun, 19 Jul 2015 02:42:58 +0900
+Subject: [PATCH] audit: Fixed swig host contamination issue
+
+The audit build uses swig to generate a python wrapper.
+Unfortunately, the swig info file references host include
+directories.  Some of these were previously noticed and
+eliminated, but the one fixed here was not.
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Anders Hedlund <anders.hedlund@windriver.com>
+Signed-off-by: Joe Slater <jslater@windriver.com>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ bindings/swig/python3/Makefile.am | 3 ++-
+ bindings/swig/src/auditswig.i     | 2 +-
+ 2 files changed, 3 insertions(+), 2 deletions(-)
+
+diff --git a/bindings/swig/python3/Makefile.am b/bindings/swig/python3/Makefile.am
+index 9938418..fa46aac 100644
+--- a/bindings/swig/python3/Makefile.am
++++ b/bindings/swig/python3/Makefile.am
+@@ -22,6 +22,7 @@
+ CONFIG_CLEAN_FILES = *.loT *.rej *.orig
+ AM_CFLAGS = -fPIC -DPIC -fno-strict-aliasing $(PYTHON3_CFLAGS)
+ AM_CPPFLAGS = -I. -I$(top_builddir) -I${top_srcdir}/lib $(PYTHON3_INCLUDES)
++STDINC ?= /usr/include
+ LIBS = $(top_builddir)/lib/libaudit.la
+ SWIG_FLAGS = -python -py3 -modern
+ SWIG_INCLUDES = -I. -I$(top_builddir) -I${top_srcdir}/lib $(PYTHON3_INCLUDES)
+@@ -37,7 +38,7 @@ _audit_la_DEPENDENCIES =${top_srcdir}/lib/libaudit.h ${top_builddir}/lib/libaudi
+ _audit_la_LIBADD = ${top_builddir}/lib/libaudit.la
+ nodist__audit_la_SOURCES  = audit_wrap.c
+ audit.py audit_wrap.c: ${srcdir}/../src/auditswig.i 
+-	swig -o audit_wrap.c ${SWIG_FLAGS} ${SWIG_INCLUDES} ${srcdir}/../src/auditswig.i 
++	swig -o audit_wrap.c ${SWIG_FLAGS} ${SWIG_INCLUDES} -I$(STDINC) ${srcdir}/../src/auditswig.i
+ 
+ CLEANFILES = audit.py* audit_wrap.c *~
+ 
+diff --git a/bindings/swig/src/auditswig.i b/bindings/swig/src/auditswig.i
+index 7ebb373..424fb68 100644
+--- a/bindings/swig/src/auditswig.i
++++ b/bindings/swig/src/auditswig.i
+@@ -39,7 +39,7 @@ signed
+ #define __attribute(X) /*nothing*/
+ typedef unsigned __u32;
+ typedef unsigned uid_t;
+-%include "/usr/include/linux/audit.h"
++%include "linux/audit.h"
+ #define __extension__ /*nothing*/
+ #include <stdint.h>
+ %include "../lib/libaudit.h"
+-- 
+2.7.4
+
diff --git a/recipes-security/audit/audit_2.8.5.bb b/recipes-security/audit/audit_2.8.5.bb
index 1e76d5f..ee3b3b5 100644
--- a/recipes-security/audit/audit_2.8.5.bb
+++ b/recipes-security/audit/audit_2.8.5.bb
@@ -9,6 +9,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
 
 SRC_URI = "git://github.com/linux-audit/${BPN}-userspace.git;branch=2.8_maintenance \
            file://Add-substitue-functions-for-strndupa-rawmemchr.patch \
+           file://Fixed-swig-host-contamination-issue.patch \
            file://auditd \
            file://auditd.service \
            file://audit-volatile.conf \
-- 
2.17.1

