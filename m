Return-Path: <Chong.Lu@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E051EE00975
	for <yocto@yoctoproject.org>; Mon, 10 Mar 2014 19:13:26 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s2B2DP1K029932
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 10 Mar 2014 19:13:26 -0700 (PDT)
Received: from pek-hostel-vm06.wrs.com (128.224.153.176) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.169.1; Mon, 10 Mar 2014 19:13:25 -0700
From: Chong Lu <Chong.Lu@windriver.com>
To: <yocto@yoctoproject.org>
Date: Tue, 11 Mar 2014 10:13:22 +0800
Message-ID: <6626e126921cee6e11b53d180f8ba3ceba8ef215.1394503849.git.Chong.Lu@windriver.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1394503849.git.Chong.Lu@windriver.com>
References: <cover.1394503849.git.Chong.Lu@windriver.com>
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 1/1] checkpolicy: Don't link against libfl
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
X-List-Received-Date: Tue, 11 Mar 2014 02:13:30 -0000
Content-Type: text/plain

In policy_scan.l file, we have already removed all references to yywrap by
adding "%option noyywrap" statements to each flex source file that doesn't
override yywrap. After this, we no longer need to link against libfl and so
no longer get errors about undefined references to yylex.

Signed-off-by: Chong Lu <Chong.Lu@windriver.com>
---
 recipes-security/selinux/checkpolicy.inc           |  2 +
 .../checkpolicy-Do-not-link-against-libfl.patch    | 44 ++++++++++++++++++++++
 2 files changed, 46 insertions(+)
 create mode 100644 recipes-security/selinux/checkpolicy/checkpolicy-Do-not-link-against-libfl.patch

diff --git a/recipes-security/selinux/checkpolicy.inc b/recipes-security/selinux/checkpolicy.inc
index 096f938..54edc11 100644
--- a/recipes-security/selinux/checkpolicy.inc
+++ b/recipes-security/selinux/checkpolicy.inc
@@ -13,6 +13,8 @@ LICENSE = "GPLv2+"
 
 DEPENDS += "libsepol libselinux bison-native flex-native"
 
+SRC_URI += "file://checkpolicy-Do-not-link-against-libfl.patch"
+
 EXTRA_OEMAKE += "PREFIX=${D}" 
 EXTRA_OEMAKE += "LEX='flex'"
 
diff --git a/recipes-security/selinux/checkpolicy/checkpolicy-Do-not-link-against-libfl.patch b/recipes-security/selinux/checkpolicy/checkpolicy-Do-not-link-against-libfl.patch
new file mode 100644
index 0000000..6fcf459
--- /dev/null
+++ b/recipes-security/selinux/checkpolicy/checkpolicy-Do-not-link-against-libfl.patch
@@ -0,0 +1,44 @@
+checkpolicy: Don't link against libfl
+
+In policy_scan.l file, we have already removed all references to yywrap by
+adding "%option noyywrap" statements to each flex source file that doesn't
+override yywrap. After this, we no longer need to link against libfl and so
+no longer get errors about undefined references to yylex.
+
+Upstream-status: Pending
+
+Signed-off-by: Chong Lu <Chong.Lu@windriver.com>
+---
+ Makefile      |    2 +-
+ test/Makefile |    2 +-
+ 2 files changed, 2 insertions(+), 2 deletions(-)
+
+diff --git a/Makefile b/Makefile
+index e5fae3d..14ac70e 100644
+--- a/Makefile
++++ b/Makefile
+@@ -19,7 +19,7 @@ CHECKOBJS = y.tab.o lex.yy.o queue.o module_compiler.o parse_util.o \
+ CHECKPOLOBJS = $(CHECKOBJS) checkpolicy.o
+ CHECKMODOBJS = $(CHECKOBJS) checkmodule.o
+ 
+-LDLIBS=$(LIBDIR)/libsepol.a -lfl
++LDLIBS=$(LIBDIR)/libsepol.a
+ 
+ GENERATED=lex.yy.c y.tab.c y.tab.h
+ 
+diff --git a/test/Makefile b/test/Makefile
+index 63b4d24..0f19a8a 100644
+--- a/test/Makefile
++++ b/test/Makefile
+@@ -9,7 +9,7 @@ INCLUDEDIR ?= $(PREFIX)/include
+ CFLAGS ?= -g -Wall -W -Werror -O2 -pipe
+ override CFLAGS += -I$(INCLUDEDIR)
+ 
+-LDLIBS=-lfl -lselinux $(LIBDIR)/libsepol.a -L$(LIBDIR)
++LDLIBS=-lselinux $(LIBDIR)/libsepol.a -L$(LIBDIR)
+ 
+ all: dispol dismod
+ 
+-- 
+1.7.9.5
+
-- 
1.8.1.2


