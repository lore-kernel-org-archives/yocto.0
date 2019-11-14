Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 27BCFE00E5C; Wed, 13 Nov 2019 17:50:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D9F2E00E3C
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2019 17:49:27 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id xAE1nPWB014436
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 13 Nov 2019 17:49:25 -0800 (PST)
Received: from localhost (128.224.158.241) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0;
	Wed, 13 Nov 2019 17:49:24 -0800
From: Yi Zhao <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>, <joe@deserted.net>, <Joe_MacDonald@mentor.com>
Date: Thu, 14 Nov 2019 09:48:48 +0800
Message-ID: <20191114014901.22862-7-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191114014901.22862-1-yi.zhao@windriver.com>
References: <20191114014901.22862-1-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.158.241]
Subject: [meta-selinux][PATCH 06/19] libsemanage: uprev to 2.9 (20190315)
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
X-List-Received-Date: Thu, 14 Nov 2019 01:50:05 -0000
Content-Type: text/plain

* Switch to python3

* Drop patches:
  libsemanage-fix-path-nologin.patch
  0001-src-Makefile-fix-includedir-in-libselinux.pc.patch

* Rebase patches

* Update policy version to 31

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/libsemanage.inc      | 26 ++++++-------
 ...file-fix-includedir-in-libselinux.pc.patch | 28 -------------
 ...anage-Fix-execve-segfaults-on-Ubuntu.patch | 12 ++++--
 ...anage-allow-to-disable-audit-support.patch | 26 +++++++------
 ...anage-define-FD_CLOEXEC-as-necessary.patch | 16 ++++----
 ...-disable-expand-check-on-policy-load.patch |  6 ++-
 ...age-drop-Wno-unused-but-set-variable.patch | 12 +++---
 .../libsemanage-fix-path-nologin.patch        | 39 -------------------
 recipes-security/selinux/libsemanage_2.8.bb   | 18 ---------
 recipes-security/selinux/libsemanage_2.9.bb   | 15 +++++++
 10 files changed, 70 insertions(+), 128 deletions(-)
 delete mode 100644 recipes-security/selinux/libsemanage/0001-src-Makefile-fix-includedir-in-libselinux.pc.patch
 delete mode 100644 recipes-security/selinux/libsemanage/libsemanage-fix-path-nologin.patch
 delete mode 100644 recipes-security/selinux/libsemanage_2.8.bb
 create mode 100644 recipes-security/selinux/libsemanage_2.9.bb

diff --git a/recipes-security/selinux/libsemanage.inc b/recipes-security/selinux/libsemanage.inc
index be0a5f1..9dc1095 100644
--- a/recipes-security/selinux/libsemanage.inc
+++ b/recipes-security/selinux/libsemanage.inc
@@ -6,41 +6,39 @@ on binary policies such as customizing policy boolean settings."
 SECTION = "base"
 LICENSE = "LGPLv2.1+"
 
-inherit lib_package python-dir
+inherit lib_package python3-dir
 
-DEPENDS += "libsepol libselinux bzip2 python bison-native flex-native swig-native"
-DEPENDS_append_class-target += "audit"
+DEPENDS += "libsepol libselinux bzip2 python3 bison-native flex-native swig-native"
+DEPENDS_append_class-target = " audit"
 
 PACKAGES =+ "${PN}-python"
 
 # For /usr/libexec/selinux/semanage_migrate_store
-RDEPENDS_${PN}-python += "python"
+RDEPENDS_${PN}-python += "python3-core"
 
 FILES_${PN}-python = "${libdir}/python${PYTHON_BASEVERSION}/site-packages/* \
                       ${libexecdir}/selinux/semanage_migrate_store"
 FILES_${PN}-dbg += "${libdir}/python${PYTHON_BASEVERSION}/site-packages/.debug/*"
 
+FILES_${PN} += "${libexecdir}"
+
 EXTRA_OEMAKE_class-native += "DISABLE_AUDIT=y"
 
 do_compile_append() {
     oe_runmake pywrap \
-            INCLUDEDIR='${STAGING_INCDIR}' \
-            LIBDIR='${STAGING_LIBDIR}' \
-            PYLIBVER='python${PYTHON_BASEVERSION}' \
-            PYINC='-I${STAGING_INCDIR}/$(PYLIBVER)' \
-            PYLIB='-L${STAGING_LIBDIR}/$(PYLIBVER) -l$(PYLIBVER)' \
-            PYTHONLIBDIR='${PYLIB}'
+            PYLIBVER='python${PYTHON_BASEVERSION}${PYTHON_ABI}' \
+            PYINC='-I${STAGING_INCDIR}/${PYLIBVER}' \
+            PYLIBS='-L${STAGING_LIBDIR}/${PYLIBVER} -l${PYLIBVER}'
 }
 
 do_install_append() {
     oe_runmake install-pywrap swigify \
             PYCEXT='.so' \
-            PYTHONLIBDIR='${D}${libdir}/python${PYTHON_BASEVERSION}/site-packages' \
-            PYLIBVER='python${PYTHON_BASEVERSION}' \
-            PYLIBDIR='${D}/${libdir}/$(PYLIBVER)'
+            PYLIBVER='python${PYTHON_BASEVERSION}${PYTHON_ABI}' \
+            PYTHONLIBDIR='${D}${libdir}/python${PYTHON_BASEVERSION}/site-packages'
 
     # Update "policy-version" for semanage.conf
-    sed -i 's/^#\s*\(policy-version\s*=\).*$/\1 30/' \
+    sed -i 's/^#\s*\(policy-version\s*=\).*$/\1 31/' \
 	${D}/etc/selinux/semanage.conf
 }
 
diff --git a/recipes-security/selinux/libsemanage/0001-src-Makefile-fix-includedir-in-libselinux.pc.patch b/recipes-security/selinux/libsemanage/0001-src-Makefile-fix-includedir-in-libselinux.pc.patch
deleted file mode 100644
index 73613d3..0000000
--- a/recipes-security/selinux/libsemanage/0001-src-Makefile-fix-includedir-in-libselinux.pc.patch
+++ /dev/null
@@ -1,28 +0,0 @@
-From e773c0952b06370d81e9b113f9b0b3388e323e52 Mon Sep 17 00:00:00 2001
-From: Robert Yang <liezhi.yang@windriver.com>
-Date: Thu, 18 Feb 2016 02:39:16 +0000
-Subject: [PATCH] src/Makefile: fix includedir in libselinux.pc
-
-Upstream-Status: Pending
-
-Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- src/Makefile | 1 +
- 1 file changed, 1 insertion(+)
-
-diff --git a/src/Makefile b/src/Makefile
-index dea751e..4af4568 100644
---- a/src/Makefile
-+++ b/src/Makefile
-@@ -93,6 +93,7 @@ $(LIBSO): $(LOBJS)
- 
- $(LIBPC): $(LIBPC).in ../VERSION
- 	sed -e 's/@VERSION@/$(VERSION)/; s:@prefix@:$(PREFIX):; s:@libdir@:$(LIBDIR):; s:@includedir@:$(INCLUDEDIR):' < $< > $@
-+	sed -e 's/@VERSION@/$(VERSION)/; s:@prefix@:$(PREFIX):; s:@libdir@:${libdir}:; s:@includedir@:${prefix}/include:' < $< > $@
- 
- semanageswig_python_exception.i: ../include/semanage/semanage.h
- 	bash -e exception.sh > $@ || (rm -f $@ ; false)
--- 
-2.7.4
-
diff --git a/recipes-security/selinux/libsemanage/libsemanage-Fix-execve-segfaults-on-Ubuntu.patch b/recipes-security/selinux/libsemanage/libsemanage-Fix-execve-segfaults-on-Ubuntu.patch
index e3c2f82..0b1f3d8 100644
--- a/recipes-security/selinux/libsemanage/libsemanage-Fix-execve-segfaults-on-Ubuntu.patch
+++ b/recipes-security/selinux/libsemanage/libsemanage-Fix-execve-segfaults-on-Ubuntu.patch
@@ -1,4 +1,4 @@
-From c87bef28e768e2f6bc8612a768ebf9099d156576 Mon Sep 17 00:00:00 2001
+From 01a37b94a1f5605a395e8b45ee9ec653ce716c06 Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Mon, 26 Mar 2012 15:15:16 +0800
 Subject: [PATCH] libsemanage: Fix execve segfaults on Ubuntu.
@@ -9,15 +9,18 @@ Such as "make load" while building refpolicy.
 
 http://oss.tresys.com/pipermail/refpolicy/2011-December/004859.html
 
+Upstream-Status: Pending
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
 ---
  src/semanage_store.c | 2 +-
  1 file changed, 1 insertion(+), 1 deletion(-)
 
 diff --git a/src/semanage_store.c b/src/semanage_store.c
-index 6158d08..1923f0f 100644
+index 58dded6..1a94545 100644
 --- a/src/semanage_store.c
 +++ b/src/semanage_store.c
-@@ -1405,7 +1405,7 @@ static int semanage_exec_prog(semanage_handle_t * sh,
+@@ -1441,7 +1441,7 @@ static int semanage_exec_prog(semanage_handle_t * sh,
  	if (forkval == 0) {
  		/* child process.  file descriptors will be closed
  		 * because they were set as close-on-exec. */
@@ -26,3 +29,6 @@ index 6158d08..1923f0f 100644
  		_exit(EXIT_FAILURE);	/* if execve() failed */
  	}
  
+-- 
+2.7.4
+
diff --git a/recipes-security/selinux/libsemanage/libsemanage-allow-to-disable-audit-support.patch b/recipes-security/selinux/libsemanage/libsemanage-allow-to-disable-audit-support.patch
index 205bc97..6ea9c29 100644
--- a/recipes-security/selinux/libsemanage/libsemanage-allow-to-disable-audit-support.patch
+++ b/recipes-security/selinux/libsemanage/libsemanage-allow-to-disable-audit-support.patch
@@ -1,4 +1,4 @@
-From 8981b979e36afe2d8384b63c3f48fa8854d1983a Mon Sep 17 00:00:00 2001
+From 50f8f9f090425d23ecab2bedc949bc65bc4d58dc Mon Sep 17 00:00:00 2001
 From: Wenzong Fan <wenzong.fan@windriver.com>
 Date: Mon, 20 Jan 2014 03:53:48 -0500
 Subject: [PATCH] libsemanage: allow to disable audit support
@@ -6,7 +6,6 @@ Subject: [PATCH] libsemanage: allow to disable audit support
 Upstream-Status: Pending
 
 Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
-
 ---
  src/Makefile        | 10 +++++++++-
  src/seusers_local.c | 13 +++++++++++++
@@ -14,10 +13,10 @@ Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
  3 files changed, 31 insertions(+), 2 deletions(-)
 
 diff --git a/src/Makefile b/src/Makefile
-index d457208..e8831ab 100644
+index 8240c3a..1485d23 100644
 --- a/src/Makefile
 +++ b/src/Makefile
-@@ -29,6 +29,14 @@ ifeq ($(DEBUG),1)
+@@ -26,6 +26,14 @@ ifeq ($(DEBUG),1)
  	export LDFLAGS = -g
  endif
  
@@ -32,7 +31,7 @@ index d457208..e8831ab 100644
  LEX = flex
  LFLAGS = -s
  YACC = bison
-@@ -91,7 +99,7 @@ $(LIBA): $(OBJS)
+@@ -88,7 +96,7 @@ $(LIBA): $(OBJS)
  	$(RANLIB) $@
  
  $(LIBSO): $(LOBJS)
@@ -42,7 +41,7 @@ index d457208..e8831ab 100644
  
  $(LIBPC): $(LIBPC).in ../VERSION
 diff --git a/src/seusers_local.c b/src/seusers_local.c
-index 42c3a8b..9ee31e2 100644
+index a79e2d3..ce76dee 100644
 --- a/src/seusers_local.c
 +++ b/src/seusers_local.c
 @@ -8,7 +8,11 @@ typedef struct semanage_seuser record_t;
@@ -57,7 +56,7 @@ index 42c3a8b..9ee31e2 100644
  #include <errno.h>
  #include "user_internal.h"
  #include "seuser_internal.h"
-@@ -51,6 +55,7 @@ static char *semanage_user_roles(semanage_handle_t * handle, const char *sename)
+@@ -55,6 +59,7 @@ static char *semanage_user_roles(semanage_handle_t * handle, const char *sename)
  	return roles;
  }
  
@@ -65,7 +64,7 @@ index 42c3a8b..9ee31e2 100644
  static int semanage_seuser_audit(semanage_handle_t * handle,
  			  const semanage_seuser_t * seuser,
  			  const semanage_seuser_t * previous,
-@@ -114,6 +119,7 @@ err:
+@@ -119,6 +124,7 @@ err:
  	free(proles);
  	return rc;
  }
@@ -73,7 +72,7 @@ index 42c3a8b..9ee31e2 100644
  
  int semanage_seuser_modify_local(semanage_handle_t * handle,
  				 const semanage_seuser_key_t * key,
-@@ -158,8 +164,11 @@ int semanage_seuser_modify_local(semanage_handle_t * handle,
+@@ -163,8 +169,11 @@ int semanage_seuser_modify_local(semanage_handle_t * handle,
  	(void) semanage_seuser_query(handle, key, &previous);
  	handle->msg_callback = callback;
  	rc = dbase_modify(handle, dconfig, key, new);
@@ -85,7 +84,7 @@ index 42c3a8b..9ee31e2 100644
  err:
  	if (previous)
  		semanage_seuser_free(previous);
-@@ -175,8 +184,12 @@ int semanage_seuser_del_local(semanage_handle_t * handle,
+@@ -180,8 +189,12 @@ int semanage_seuser_del_local(semanage_handle_t * handle,
  	dbase_config_t *dconfig = semanage_seuser_dbase_local(handle);
  	rc = dbase_del(handle, dconfig, key);
  	semanage_seuser_query(handle, key, &seuser);
@@ -99,10 +98,10 @@ index 42c3a8b..9ee31e2 100644
  		semanage_seuser_free(seuser);
  	return rc;
 diff --git a/tests/Makefile b/tests/Makefile
-index 2ef8d30..50d582a 100644
+index 324766a..5732ec7 100644
 --- a/tests/Makefile
 +++ b/tests/Makefile
-@@ -6,10 +6,18 @@ SOURCES = $(sort $(wildcard *.c))
+@@ -3,10 +3,18 @@ SOURCES = $(sort $(wildcard *.c))
  
  ###########################################################################
  
@@ -122,3 +121,6 @@ index 2ef8d30..50d582a 100644
  
  OBJECTS = $(SOURCES:.c=.o) 
  
+-- 
+2.7.4
+
diff --git a/recipes-security/selinux/libsemanage/libsemanage-define-FD_CLOEXEC-as-necessary.patch b/recipes-security/selinux/libsemanage/libsemanage-define-FD_CLOEXEC-as-necessary.patch
index 8b15a80..0c77c7a 100644
--- a/recipes-security/selinux/libsemanage/libsemanage-define-FD_CLOEXEC-as-necessary.patch
+++ b/recipes-security/selinux/libsemanage/libsemanage-define-FD_CLOEXEC-as-necessary.patch
@@ -1,4 +1,4 @@
-From 0e97e4d19627f78bf04445cd51902ccf4f7cf239 Mon Sep 17 00:00:00 2001
+From 81f2e8b62ad2298a197c4b16e7182a133c1e116f Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe.macdonald@windriver.com>
 Date: Tue, 15 Oct 2013 10:17:38 -0400
 Subject: [PATCH] libsemanage: define FD_CLOEXEC as necessary
@@ -10,15 +10,14 @@ asm-generic/fcntl.h on more modern platforms.
 Uptream-Status: Inappropriate
 
 Signed-off-by: Joe MacDonald <joe.macdonald@windriver.com>
-
 ---
- libsemanage/src/semanage_store.c | 5 +++++
+ src/semanage_store.c | 5 +++++
  1 file changed, 5 insertions(+)
 
-diff --git a/libsemanage/src/semanage_store.c b/libsemanage/src/semanage_store.c
-index 1923f0f..f7a8760 100644
---- a/libsemanage/src/semanage_store.c
-+++ b/libsemanage/src/semanage_store.c
+diff --git a/src/semanage_store.c b/src/semanage_store.c
+index 1a94545..b586a8f 100644
+--- a/src/semanage_store.c
++++ b/src/semanage_store.c
 @@ -66,6 +66,11 @@ typedef struct dbase_policydb dbase_t;
  
  #define TRUE 1
@@ -31,3 +30,6 @@ index 1923f0f..f7a8760 100644
  enum semanage_file_defs {
  	SEMANAGE_ROOT,
  	SEMANAGE_TRANS_LOCK,
+-- 
+2.7.4
+
diff --git a/recipes-security/selinux/libsemanage/libsemanage-disable-expand-check-on-policy-load.patch b/recipes-security/selinux/libsemanage/libsemanage-disable-expand-check-on-policy-load.patch
index ea7ba20..d1e5720 100644
--- a/recipes-security/selinux/libsemanage/libsemanage-disable-expand-check-on-policy-load.patch
+++ b/recipes-security/selinux/libsemanage/libsemanage-disable-expand-check-on-policy-load.patch
@@ -1,4 +1,4 @@
-From 4376342a5382df384cb387e2a63eaf0bddb51d26 Mon Sep 17 00:00:00 2001
+From 35196d58cd37fec89fcf95e3d43b41de7008f0be Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe@deserted.net>
 Date: Wed, 7 May 2014 11:36:27 -0400
 Subject: [PATCH] libsemanage: disable expand-check on policy load
@@ -12,7 +12,6 @@ Upstream-Status: Denied [upstream developers want to preserve the default
                  checking: http://marc.info/?l=selinux&m=121794804217721&w=2]
 
 Signed-off-by: Joe MacDonald <joe@deserted.net>
-
 ---
  src/semanage.conf | 4 ++++
  1 file changed, 4 insertions(+)
@@ -29,3 +28,6 @@ index dc8d46b..254f156 100644
 +# Don't check the entire policy hierarchy when inserting / expanding a policy
 +# module.  This results in a significant speed-up in policy loading.
 +expand-check=0
+-- 
+2.7.4
+
diff --git a/recipes-security/selinux/libsemanage/libsemanage-drop-Wno-unused-but-set-variable.patch b/recipes-security/selinux/libsemanage/libsemanage-drop-Wno-unused-but-set-variable.patch
index cf88150..de71e27 100644
--- a/recipes-security/selinux/libsemanage/libsemanage-drop-Wno-unused-but-set-variable.patch
+++ b/recipes-security/selinux/libsemanage/libsemanage-drop-Wno-unused-but-set-variable.patch
@@ -1,21 +1,20 @@
-From 3f65789f172003c499f24f00d73a42867fccd277 Mon Sep 17 00:00:00 2001
+From 90a2459d1683e53f4a896b977e6b396db562c903 Mon Sep 17 00:00:00 2001
 From: Randy MacLeod <Randy.MacLeod@windriver.com>
 Date: Tue, 30 Apr 2013 23:15:57 -0400
 Subject: [PATCH] libselinux: drop flag: -Wno-unused-but-set-variable
 
-Upstream status: inappropriate (older compilers only).
+Upstream-Status: Inappropriate (older compilers only).
 
 Signed-off-by: Randy MacLeod <Randy.MacLeod@windriver.com>
-
 ---
  src/Makefile | 2 +-
  1 file changed, 1 insertion(+), 1 deletion(-)
 
 diff --git a/src/Makefile b/src/Makefile
-index fdb178f..d457208 100644
+index e029f09..8240c3a 100644
 --- a/src/Makefile
 +++ b/src/Makefile
-@@ -58,7 +58,7 @@ OBJS= $(patsubst %.c,%.o,$(SRCS)) conf-scan.o conf-parse.o
+@@ -55,7 +55,7 @@ OBJS= $(patsubst %.c,%.o,$(SRCS)) conf-scan.o conf-parse.o
  LOBJS= $(patsubst %.c,%.lo,$(SRCS)) conf-scan.lo conf-parse.lo
  CFLAGS ?= -Werror -Wall -W -Wundef -Wshadow -Wmissing-noreturn -Wmissing-format-attribute
  
@@ -24,3 +23,6 @@ index fdb178f..d457208 100644
  		-Wno-unused-parameter
  
  override CFLAGS += -I../include -D_GNU_SOURCE
+-- 
+2.7.4
+
diff --git a/recipes-security/selinux/libsemanage/libsemanage-fix-path-nologin.patch b/recipes-security/selinux/libsemanage/libsemanage-fix-path-nologin.patch
deleted file mode 100644
index 43c5382..0000000
--- a/recipes-security/selinux/libsemanage/libsemanage-fix-path-nologin.patch
+++ /dev/null
@@ -1,39 +0,0 @@
-From 1f8164e044f2f727b08c28a69bea19cbf49b071b Mon Sep 17 00:00:00 2001
-From: Xin Ouyang <Xin.Ouyang@windriver.com>
-Date: Fri, 8 Feb 2013 15:16:07 +0800
-Subject: [PATCH] libsemange: fix incorrect path for nologin
-
-shadow package of oe-core and Debian has installed nologin into
-/usr/sbin, so fix this path.
-
-Upstream-Status: Inappropriate [configuration]
-
-Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
-Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
-
----
- src/genhomedircon.c | 4 ++--
- 1 file changed, 2 insertions(+), 2 deletions(-)
-
-diff --git a/src/genhomedircon.c b/src/genhomedircon.c
-index b9a74b7..d574ee2 100644
---- a/src/genhomedircon.c
-+++ b/src/genhomedircon.c
-@@ -60,7 +60,7 @@
- 
- /* other paths */
- #define PATH_SHELLS_FILE "/etc/shells"
--#define PATH_NOLOGIN_SHELL "/sbin/nologin"
-+#define PATH_NOLOGIN_SHELL "/usr/sbin/nologin"
- 
- /* comments written to context file */
- #define COMMENT_FILE_CONTEXT_HEADER "#\n#\n# " \
-@@ -395,7 +395,7 @@ static semanage_list_t *get_home_dirs(genhomedircon_settings_t * s)
- 
- 			/* NOTE: old genhomedircon printed a warning on match */
- 			if (hand.matched) {
--				WARN(s->h_semanage, "%s homedir %s or its parent directory conflicts with a file context already specified in the policy.  This usually indicates an incorrectly defined system account.  If it is a system account please make sure its uid is less than %u or greater than %u or its login shell is /sbin/nologin.", pwbuf->pw_name, pwbuf->pw_dir, minuid, maxuid);
-+				WARN(s->h_semanage, "%s homedir %s or its parent directory conflicts with a file context already specified in the policy.  This usually indicates an incorrectly defined system account.  If it is a system account please make sure its uid is less than %u or greater than %u or its login shell is /usr/sbin/nologin.", pwbuf->pw_name, pwbuf->pw_dir, minuid, maxuid);
- 			} else {
- 				if (semanage_list_push(&homedir_list, path))
- 					goto fail;
diff --git a/recipes-security/selinux/libsemanage_2.8.bb b/recipes-security/selinux/libsemanage_2.8.bb
deleted file mode 100644
index 38942e3..0000000
--- a/recipes-security/selinux/libsemanage_2.8.bb
+++ /dev/null
@@ -1,18 +0,0 @@
-include selinux_20180524.inc
-include ${BPN}.inc
-
-LIC_FILES_CHKSUM = "file://COPYING;md5=a6f89e2100d9b6cdffcea4f398e37343"
-
-SRC_URI[md5sum] = "62ed7bb2ede677a735f2750751677a4f"
-SRC_URI[sha256sum] = "1c0de8d2c51e5460926c21e371105c84a39087dfd8f8e9f0cc1d017e4cbea8e2"
-
-SRC_URI += "\
-	file://libsemanage-Fix-execve-segfaults-on-Ubuntu.patch \
-	file://libsemanage-fix-path-nologin.patch \
-	file://libsemanage-drop-Wno-unused-but-set-variable.patch \
-	file://libsemanage-define-FD_CLOEXEC-as-necessary.patch;striplevel=2 \
-	file://libsemanage-allow-to-disable-audit-support.patch \
-	file://libsemanage-disable-expand-check-on-policy-load.patch \
-	file://0001-src-Makefile-fix-includedir-in-libselinux.pc.patch \
-	"
-FILES_${PN} += "/usr/libexec"
diff --git a/recipes-security/selinux/libsemanage_2.9.bb b/recipes-security/selinux/libsemanage_2.9.bb
new file mode 100644
index 0000000..83320a1
--- /dev/null
+++ b/recipes-security/selinux/libsemanage_2.9.bb
@@ -0,0 +1,15 @@
+require selinux_20190315.inc
+require ${BPN}.inc
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=a6f89e2100d9b6cdffcea4f398e37343"
+
+SRC_URI[md5sum] = "25f086ff66175a0ca0e7b34dbe8586b7"
+SRC_URI[sha256sum] = "2576349d344492e73b468059767268dec1dabd8c35f3c7222c3ec2448737bc1c"
+
+SRC_URI += "\
+	file://libsemanage-Fix-execve-segfaults-on-Ubuntu.patch \
+	file://libsemanage-drop-Wno-unused-but-set-variable.patch \
+	file://libsemanage-define-FD_CLOEXEC-as-necessary.patch \
+	file://libsemanage-allow-to-disable-audit-support.patch \
+	file://libsemanage-disable-expand-check-on-policy-load.patch \
+	"
-- 
2.17.1


