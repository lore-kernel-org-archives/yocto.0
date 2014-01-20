Return-Path: <Wenzong.Fan@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BBF4BE0087A
	for <yocto@yoctoproject.org>; Mon, 20 Jan 2014 02:15:50 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s0KAFnKR026897
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 20 Jan 2014 02:15:49 -0800 (PST)
Received: from pek-hostel-vm12.wrs.com (128.224.153.182) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.347.0; Mon, 20 Jan 2014 02:15:49 -0800
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>, <xin.ouyang@windriver.com>,
	<mark.hatle@windriver.com>
Date: Mon, 20 Jan 2014 05:15:43 -0500
Message-ID: <fd1e349ed4beecf8e38d1ce70c931f956bc8effe.1390212504.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1390212504.git.wenzong.fan@windriver.com>
References: <cover.1390212504.git.wenzong.fan@windriver.com>
MIME-Version: 1.0
Cc: wenzong.fan@windriver.com
Subject: [meta-selinux][PATCH 2/2] libsemanage-native: remove audit-native dependency
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
X-List-Received-Date: Mon, 20 Jan 2014 10:15:50 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

* native tools don't need audit support;
* audit 2.3.2 or laters require kernel headers >= 2.6.30, this causes
  audit-native can't be built on some older distributions.

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 recipes-security/selinux/libsemanage.inc           |    3 +
 ...ibsemanage-allow-to-disable-audit-support.patch |  126 ++++++++++++++++++++
 recipes-security/selinux/libsemanage_2.2.bb        |    1 +
 recipes-security/selinux/libsemanage_git.bb        |    1 +
 4 files changed, 131 insertions(+)
 create mode 100644 recipes-security/selinux/libsemanage/libsemanage-allow-to-disable-audit-support.patch

diff --git a/recipes-security/selinux/libsemanage.inc b/recipes-security/selinux/libsemanage.inc
index dfc3006..9424358 100644
--- a/recipes-security/selinux/libsemanage.inc
+++ b/recipes-security/selinux/libsemanage.inc
@@ -11,11 +11,14 @@ LICENSE = "LGPLv2.1+"
 inherit lib_package
 
 DEPENDS += "libsepol libselinux ustr bzip2 python bison-native flex-native"
+DEPENDS_class-target += "audit"
 
 PACKAGES += "${PN}-python"
 FILES_${PN}-python = "${libdir}/python${PYTHON_BASEVERSION}/site-packages/*"
 FILES_${PN}-dbg += "${libdir}/python${PYTHON_BASEVERSION}/site-packages/.debug/*"
 
+EXTRA_OEMAKE_class-native += "DISABLE_AUDIT=y"
+
 do_compile_append() {
     oe_runmake pywrap \
             INCLUDEDIR='${STAGING_INCDIR}' \
diff --git a/recipes-security/selinux/libsemanage/libsemanage-allow-to-disable-audit-support.patch b/recipes-security/selinux/libsemanage/libsemanage-allow-to-disable-audit-support.patch
new file mode 100644
index 0000000..d843d2b
--- /dev/null
+++ b/recipes-security/selinux/libsemanage/libsemanage-allow-to-disable-audit-support.patch
@@ -0,0 +1,126 @@
+From 7d23189c4541124469aad24fe1719f2a24b4ca48 Mon Sep 17 00:00:00 2001
+From: Wenzong Fan <wenzong.fan@windriver.com>
+Date: Mon, 20 Jan 2014 03:53:48 -0500
+Subject: [PATCH] libsemanage: allow to disable audit support
+
+* native tools don't need audit support;
+* audit 2.3.2 or laters require kernel headers >= 2.6.30
+
+Upstream-Status: Pending
+
+Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
+---
+ src/Makefile        |   10 +++++++++-
+ src/seusers_local.c |   13 +++++++++++++
+ tests/Makefile      |   10 +++++++++-
+ 3 files changed, 31 insertions(+), 2 deletions(-)
+
+diff --git a/src/Makefile b/src/Makefile
+index 359d738..24dbf29 100644
+--- a/src/Makefile
++++ b/src/Makefile
+@@ -28,6 +28,14 @@ ifeq ($(DEBUG),1)
+ 	export LDFLAGS = -g
+ endif
+ 
++DISABLE_AUDIT ?= n
++ifeq ($(DISABLE_AUDIT),y)
++	LIBAUDIT =
++	CFLAGS += -DDISABLE_AUDIT
++else
++	LIBAUDIT = -laudit
++endif
++
+ LEX = flex
+ LFLAGS = -s
+ YACC = bison
+@@ -92,7 +100,7 @@ $(LIBA): $(OBJS)
+ 	$(RANLIB) $@
+ 
+ $(LIBSO): $(LOBJS)
+-	$(CC) $(CFLAGS) $(LDFLAGS) -shared -o $@ $^ -lsepol -laudit -lselinux -lbz2 -lustr -L$(LIBDIR) -Wl,-soname,$(LIBSO),--version-script=libsemanage.map,-z,defs
++	$(CC) $(CFLAGS) $(LDFLAGS) -shared -o $@ $^ -lsepol $(LIBAUDIT) -lselinux -lbz2 -lustr -L$(LIBDIR) -Wl,-soname,$(LIBSO),--version-script=libsemanage.map,-z,defs
+ 	ln -sf $@ $(TARGET)
+ 
+ $(LIBPC): $(LIBPC).in ../VERSION
+diff --git a/src/seusers_local.c b/src/seusers_local.c
+index 63ab40c..8bdc7da 100644
+--- a/src/seusers_local.c
++++ b/src/seusers_local.c
+@@ -8,7 +8,11 @@ typedef struct semanage_seuser record_t;
+ 
+ #include <sepol/policydb.h>
+ #include <sepol/context.h>
++
++#ifndef DISABLE_AUDIT
+ #include <libaudit.h>
++#endif
++
+ #include <errno.h>
+ #include "user_internal.h"
+ #include "seuser_internal.h"
+@@ -51,6 +55,7 @@ static char *semanage_user_roles(semanage_handle_t * handle, const char *sename)
+ 	return roles;
+ }
+ 
++#ifndef DISABLE_AUDIT
+ static int semanage_seuser_audit(semanage_handle_t * handle,
+ 			  const semanage_seuser_t * seuser,
+ 			  const semanage_seuser_t * previous,
+@@ -114,6 +119,7 @@ err:
+ 	free(proles);
+ 	return rc;
+ }
++#endif
+ 
+ int semanage_seuser_modify_local(semanage_handle_t * handle,
+ 				 const semanage_seuser_key_t * key,
+@@ -157,8 +163,11 @@ int semanage_seuser_modify_local(semanage_handle_t * handle,
+ 	(void) semanage_seuser_query(handle, key, &previous);
+ 	handle->msg_callback = callback;
+ 	rc = dbase_modify(handle, dconfig, key, new);
++
++#ifndef DISABLE_AUDIT
+ 	if (semanage_seuser_audit(handle, new, previous, AUDIT_ROLE_ASSIGN, rc == 0) < 0)
+ 		rc = -1;
++#endif
+ err:
+ 	if (previous)
+ 		semanage_seuser_free(previous);
+@@ -174,8 +183,12 @@ int semanage_seuser_del_local(semanage_handle_t * handle,
+ 	dbase_config_t *dconfig = semanage_seuser_dbase_local(handle);
+ 	rc = dbase_del(handle, dconfig, key);
+ 	semanage_seuser_query(handle, key, &seuser);
++
++#ifndef DISABLE_AUDIT
+ 	if (semanage_seuser_audit(handle, NULL, seuser, AUDIT_ROLE_REMOVE, rc == 0) < 0)
+ 		rc = -1;
++#endif
++
+ 	if (seuser)
+ 		semanage_seuser_free(seuser);
+ 	return rc;
+diff --git a/tests/Makefile b/tests/Makefile
+index 418d701..7839db6 100644
+--- a/tests/Makefile
++++ b/tests/Makefile
+@@ -13,7 +13,15 @@ EXECUTABLE = libsemanage-tests
+ CC = gcc
+ CFLAGS = -c -g -o0 -Wall -W -Wundef -Wmissing-noreturn -Wmissing-format-attribute -Wno-unused-parameter
+ INCLUDE = -I$(TESTSRC) -I$(TESTSRC)/../include
+-LDFLAGS = -lcunit -lustr -lbz2 -laudit
++DISABLE_AUDIT ?= n
++ifeq ($(DISABLE_AUDIT),y)
++	LIBAUDIT =
++	CFLAGS += -DDISABLE_AUDIT
++else
++	LIBAUDIT = -laudit
++endif
++
++LDFLAGS = -lcunit -lustr -lbz2 $(LIBAUDIT)
+ OBJECTS = $(SOURCES:.c=.o) 
+ 
+ all: $(EXECUTABLE) 
+-- 
+1.7.9.5
+
diff --git a/recipes-security/selinux/libsemanage_2.2.bb b/recipes-security/selinux/libsemanage_2.2.bb
index 4ee93c0..93daf9f 100644
--- a/recipes-security/selinux/libsemanage_2.2.bb
+++ b/recipes-security/selinux/libsemanage_2.2.bb
@@ -14,4 +14,5 @@ SRC_URI += "\
 	file://libsemanage-fix-path-nologin.patch \
 	file://libsemanage-drop-Wno-unused-but-set-variable.patch \
 	file://libsemanage-define-FD_CLOEXEC-as-necessary.patch;striplevel=2 \
+	file://libsemanage-allow-to-disable-audit-support.patch \
 	"
diff --git a/recipes-security/selinux/libsemanage_git.bb b/recipes-security/selinux/libsemanage_git.bb
index c3799fd..a32ebc3 100644
--- a/recipes-security/selinux/libsemanage_git.bb
+++ b/recipes-security/selinux/libsemanage_git.bb
@@ -12,4 +12,5 @@ SRC_URI += "\
 	file://libsemanage-fix-path-nologin.patch \
 	file://libsemanage-drop-Wno-unused-but-set-variable.patch \
 	file://libsemanage-define-FD_CLOEXEC-as-necessary.patch;striplevel=2 \
+	file://libsemanage-allow-to-disable-audit-support.patch \
 	"
-- 
1.7.9.5


