Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC379E00CD0; Mon,  4 Sep 2017 23:00:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F278E00CB3
	for <yocto@yoctoproject.org>; Mon,  4 Sep 2017 23:00:03 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v85602Yo009998
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Mon, 4 Sep 2017 23:00:02 -0700
Received: from ala-lpggp5.wrs.com (147.11.105.121) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.361.1;
	Mon, 4 Sep 2017 23:00:02 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>
Date: Mon, 4 Sep 2017 22:59:42 -0700
Message-ID: <20170905055958.54697-5-wenzong.fan@windriver.com>
X-Mailer: git-send-email 2.13.0
In-Reply-To: <20170905055958.54697-1-wenzong.fan@windriver.com>
References: <20170905055958.54697-1-wenzong.fan@windriver.com>
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 05/21] checkpolicy: uprev to 2.7 (20170804)
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 05 Sep 2017 06:00:09 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

From: Wenzong Fan <wenzong.fan@windriver.com>

Remove patch that included by new version:
  - checkpolicy-Do-not-link-against-libfl.patch

Specify LIBSEPOLA to fix build error:
  make[1]: *** No rule to make target `/usr/lib/libsepol.a'

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 recipes-security/selinux/checkpolicy.inc           |  3 +-
 .../checkpolicy-Do-not-link-against-libfl.patch    | 46 ----------------------
 .../{checkpolicy_2.6.bb => checkpolicy_2.7.bb}     |  6 +--
 3 files changed, 4 insertions(+), 51 deletions(-)
 delete mode 100644 recipes-security/selinux/checkpolicy/checkpolicy-Do-not-link-against-libfl.patch
 rename recipes-security/selinux/{checkpolicy_2.6.bb => checkpolicy_2.7.bb} (35%)

diff --git a/recipes-security/selinux/checkpolicy.inc b/recipes-security/selinux/checkpolicy.inc
index efcd821..878c656 100644
--- a/recipes-security/selinux/checkpolicy.inc
+++ b/recipes-security/selinux/checkpolicy.inc
@@ -11,10 +11,9 @@ LICENSE = "GPLv2+"
 
 DEPENDS += "libsepol bison-native flex-native"
 
-SRC_URI += "file://checkpolicy-Do-not-link-against-libfl.patch"
-
 EXTRA_OEMAKE += "PREFIX=${D}" 
 EXTRA_OEMAKE += "LEX='flex'"
+EXTRA_OEMAKE += "LIBSEPOLA=${STAGING_LIBDIR}/libsepol.a"
 
 do_install_append() {
 	install test/dismod ${D}/${bindir}/sedismod
diff --git a/recipes-security/selinux/checkpolicy/checkpolicy-Do-not-link-against-libfl.patch b/recipes-security/selinux/checkpolicy/checkpolicy-Do-not-link-against-libfl.patch
deleted file mode 100644
index e19209e..0000000
--- a/recipes-security/selinux/checkpolicy/checkpolicy-Do-not-link-against-libfl.patch
+++ /dev/null
@@ -1,46 +0,0 @@
-checkpolicy: Don't link against libfl
-
-In policy_scan.l file, we have already removed all references to yywrap by
-adding "%option noyywrap" statements to each flex source file that doesn't
-override yywrap. After this, we no longer need to link against libfl and so
-no longer get errors about undefined references to yylex.
-
-Upstream-status: Pending
-
-Signed-off-by: Chong Lu <Chong.Lu@windriver.com>
-Signed-off-by: Shrikant Bobade <Shrikant_Bobade@mentor.com>¶
-
----
- Makefile      |    2 +-
- test/Makefile |    2 +-
- 2 files changed, 2 insertions(+), 2 deletions(-)
-
-diff --git a/Makefile b/Makefile
-index e5fae3d..14ac70e 100644
---- a/Makefile
-+++ b/Makefile
-@@ -19,7 +19,7 @@ CHECKOBJS = y.tab.o lex.yy.o queue.o module_compiler.o parse_util.o \
- CHECKPOLOBJS = $(CHECKOBJS) checkpolicy.o
- CHECKMODOBJS = $(CHECKOBJS) checkmodule.o
- 
--LDLIBS=$(LIBDIR)/libsepol.a -lfl
-+LDLIBS=$(LIBDIR)/libsepol.a
- 
- GENERATED=lex.yy.c y.tab.c y.tab.h
- 
-diff --git a/test/Makefile b/test/Makefile
-index 63b4d24..0f19a8a 100644
---- a/test/Makefile
-+++ b/test/Makefile
-@@ -9,7 +9,7 @@ INCLUDEDIR ?= $(PREFIX)/include
- CFLAGS ?= -g -Wall -W -Werror -O2 -pipe
- override CFLAGS += -I$(INCLUDEDIR)
- 
--LDLIBS=-lfl $(LIBDIR)/libsepol.a -L$(LIBDIR)
-+LDLIBS=$(LIBDIR)/libsepol.a -L$(LIBDIR)
- 
- all: dispol dismod
- 
--- 
-1.7.9.5
-
diff --git a/recipes-security/selinux/checkpolicy_2.6.bb b/recipes-security/selinux/checkpolicy_2.7.bb
similarity index 35%
rename from recipes-security/selinux/checkpolicy_2.6.bb
rename to recipes-security/selinux/checkpolicy_2.7.bb
index f67c150..90b8109 100644
--- a/recipes-security/selinux/checkpolicy_2.6.bb
+++ b/recipes-security/selinux/checkpolicy_2.7.bb
@@ -1,7 +1,7 @@
-include selinux_20161014.inc
+include selinux_20170804.inc
 include ${BPN}.inc
 
 LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
 
-SRC_URI[md5sum] = "2b581f8fe8eb8f55f111088e15d76c3a"
-SRC_URI[sha256sum] = "0bebd18688ca8027b1b3b4ff1532c0626f1fe49883ae6cb74d9d385940e74157"
+SRC_URI[md5sum] = "5c718eaad4d3015bd5665ffde77b50fd"
+SRC_URI[sha256sum] = "5413479f1dcde866c19896b4dbfec315d822aa431606e1d03c944408984c3201"
-- 
2.13.0


