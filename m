Return-Path: <sds@tycho.nsa.gov>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4ABAEE00B37; Mon,  7 Mar 2016 12:54:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [63.239.67.10 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from emvm-gh1-uea09.nsa.gov (emvm-gh1-uea09.nsa.gov [63.239.67.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD5D8E008B4
	for <yocto@yoctoproject.org>; Mon,  7 Mar 2016 12:54:02 -0800 (PST)
X-TM-IMSS-Message-ID: <5220ad4e00020a9e@nsa.gov>
Received: from tarius.tycho.ncsc.mil ([144.51.242.1]) by nsa.gov
	([10.208.42.194]) with ESMTP (TREND IMSS SMTP Service 7.1) id
	5220ad4e00020a9e ; Mon, 7 Mar 2016 15:57:01 -0500
Received: from moss-pluto.infosec.tycho.ncsc.mil (moss-pluto [192.168.25.131])
	by tarius.tycho.ncsc.mil (8.14.4/8.14.4) with ESMTP id
	u27KrMGH003618; Mon, 7 Mar 2016 15:53:49 -0500
From: Stephen Smalley <sds@tycho.nsa.gov>
To: flihp@twobit.us
Date: Mon,  7 Mar 2016 15:52:43 -0500
Message-Id: <1457383972-6283-4-git-send-email-sds@tycho.nsa.gov>
X-Mailer: git-send-email 2.4.3
In-Reply-To: <1457383972-6283-1-git-send-email-sds@tycho.nsa.gov>
References: <1457383972-6283-1-git-send-email-sds@tycho.nsa.gov>
X-TM-AS-MML: disable
Cc: yocto@yoctoproject.org
Subject: [PATCH 04/13] libsemanage: uprev to 2.5 (20160223)
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
X-List-Received-Date: Mon, 07 Mar 2016 20:54:11 -0000

Signed-off-by: Stephen Smalley <sds@tycho.nsa.gov>
---
 recipes-security/selinux/libsemanage.inc           |  3 ++
 ...ibsemanage-allow-to-disable-audit-support.patch | 49 ++++++++++------------
 recipes-security/selinux/libsemanage_2.4.bb        | 19 ---------
 recipes-security/selinux/libsemanage_2.5.bb        | 19 +++++++++
 4 files changed, 45 insertions(+), 45 deletions(-)
 delete mode 100644 recipes-security/selinux/libsemanage_2.4.bb
 create mode 100644 recipes-security/selinux/libsemanage_2.5.bb

diff --git a/recipes-security/selinux/libsemanage.inc b/recipes-security/selinux/libsemanage.inc
index 7742c30..552d54d 100644
--- a/recipes-security/selinux/libsemanage.inc
+++ b/recipes-security/selinux/libsemanage.inc
@@ -11,6 +11,9 @@ inherit lib_package
 DEPENDS += "libsepol libselinux ustr bzip2 python bison-native flex-native"
 DEPENDS_append_class-target += "audit"
 
+# For /usr/libexec/selinux/semanage_migrate_store
+RDEPENDS_${PN} += "python"
+
 PACKAGES += "${PN}-python"
 FILES_${PN}-python = "${libdir}/python${PYTHON_BASEVERSION}/site-packages/*"
 FILES_${PN}-dbg += "${libdir}/python${PYTHON_BASEVERSION}/site-packages/.debug/*"
diff --git a/recipes-security/selinux/libsemanage/libsemanage-allow-to-disable-audit-support.patch b/recipes-security/selinux/libsemanage/libsemanage-allow-to-disable-audit-support.patch
index 575d3a6..d727acf 100644
--- a/recipes-security/selinux/libsemanage/libsemanage-allow-to-disable-audit-support.patch
+++ b/recipes-security/selinux/libsemanage/libsemanage-allow-to-disable-audit-support.patch
@@ -12,11 +12,11 @@ Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
  tests/Makefile      |   10 +++++++++-
  3 files changed, 31 insertions(+), 2 deletions(-)
 
-diff --git a/src/Makefile b/src/Makefile
-index 359d738..24dbf29 100644
---- a/src/Makefile
-+++ b/src/Makefile
-@@ -28,6 +28,14 @@ ifeq ($(DEBUG),1)
+Index: libsemanage-2.5/src/Makefile
+===================================================================
+--- libsemanage-2.5.orig/src/Makefile	2016-02-25 13:20:30.867978414 -0500
++++ libsemanage-2.5/src/Makefile	2016-02-25 13:20:30.859978414 -0500
+@@ -28,6 +28,14 @@
  	export LDFLAGS = -g
  endif
  
@@ -31,7 +31,7 @@ index 359d738..24dbf29 100644
  LEX = flex
  LFLAGS = -s
  YACC = bison
-@@ -92,7 +100,7 @@ $(LIBA): $(OBJS)
+@@ -92,7 +100,7 @@
  	$(RANLIB) $@
  
  $(LIBSO): $(LOBJS)
@@ -40,11 +40,11 @@ index 359d738..24dbf29 100644
  	ln -sf $@ $(TARGET)
  
  $(LIBPC): $(LIBPC).in ../VERSION
-diff --git a/src/seusers_local.c b/src/seusers_local.c
-index 63ab40c..8bdc7da 100644
---- a/src/seusers_local.c
-+++ b/src/seusers_local.c
-@@ -8,7 +8,11 @@ typedef struct semanage_seuser record_t;
+Index: libsemanage-2.5/src/seusers_local.c
+===================================================================
+--- libsemanage-2.5.orig/src/seusers_local.c	2016-02-25 13:20:30.867978414 -0500
++++ libsemanage-2.5/src/seusers_local.c	2016-02-25 13:20:30.863978414 -0500
+@@ -8,7 +8,11 @@
  
  #include <sepol/policydb.h>
  #include <sepol/context.h>
@@ -56,7 +56,7 @@ index 63ab40c..8bdc7da 100644
  #include <errno.h>
  #include "user_internal.h"
  #include "seuser_internal.h"
-@@ -51,6 +55,7 @@ static char *semanage_user_roles(semanage_handle_t * handle, const char *sename)
+@@ -51,6 +55,7 @@
  	return roles;
  }
  
@@ -64,7 +64,7 @@ index 63ab40c..8bdc7da 100644
  static int semanage_seuser_audit(semanage_handle_t * handle,
  			  const semanage_seuser_t * seuser,
  			  const semanage_seuser_t * previous,
-@@ -114,6 +119,7 @@ err:
+@@ -114,6 +119,7 @@
  	free(proles);
  	return rc;
  }
@@ -72,7 +72,7 @@ index 63ab40c..8bdc7da 100644
  
  int semanage_seuser_modify_local(semanage_handle_t * handle,
  				 const semanage_seuser_key_t * key,
-@@ -157,8 +163,11 @@ int semanage_seuser_modify_local(semanage_handle_t * handle,
+@@ -158,8 +164,11 @@
  	(void) semanage_seuser_query(handle, key, &previous);
  	handle->msg_callback = callback;
  	rc = dbase_modify(handle, dconfig, key, new);
@@ -84,7 +84,7 @@ index 63ab40c..8bdc7da 100644
  err:
  	if (previous)
  		semanage_seuser_free(previous);
-@@ -174,8 +183,12 @@ int semanage_seuser_del_local(semanage_handle_t * handle,
+@@ -175,8 +184,12 @@
  	dbase_config_t *dconfig = semanage_seuser_dbase_local(handle);
  	rc = dbase_del(handle, dconfig, key);
  	semanage_seuser_query(handle, key, &seuser);
@@ -97,15 +97,15 @@ index 63ab40c..8bdc7da 100644
  	if (seuser)
  		semanage_seuser_free(seuser);
  	return rc;
-diff --git a/tests/Makefile b/tests/Makefile
-index 418d701..7839db6 100644
---- a/tests/Makefile
-+++ b/tests/Makefile
-@@ -13,7 +13,15 @@ EXECUTABLE = libsemanage-tests
+Index: libsemanage-2.5/tests/Makefile
+===================================================================
+--- libsemanage-2.5.orig/tests/Makefile	2016-02-25 13:20:30.867978414 -0500
++++ libsemanage-2.5/tests/Makefile	2016-02-25 13:22:05.171978120 -0500
+@@ -13,7 +13,15 @@
  CC = gcc
- CFLAGS = -c -g -o0 -Wall -W -Wundef -Wmissing-noreturn -Wmissing-format-attribute -Wno-unused-parameter
+ CFLAGS += -g -O0 -Wall -W -Wundef -Wmissing-noreturn -Wmissing-format-attribute -Wno-unused-parameter
  INCLUDE = -I$(TESTSRC) -I$(TESTSRC)/../include
--LDFLAGS = -lcunit -lustr -lbz2 -laudit
+-LDFLAGS += -lcunit -lustr -lbz2 -laudit
 +DISABLE_AUDIT ?= n
 +ifeq ($(DISABLE_AUDIT),y)
 +	LIBAUDIT =
@@ -114,10 +114,7 @@ index 418d701..7839db6 100644
 +	LIBAUDIT = -laudit
 +endif
 +
-+LDFLAGS = -lcunit -lustr -lbz2 $(LIBAUDIT)
++LDFLAGS += -lcunit -lustr -lbz2 $(LIBAUDIT)
  OBJECTS = $(SOURCES:.c=.o) 
  
  all: $(EXECUTABLE) 
--- 
-1.7.9.5
-
diff --git a/recipes-security/selinux/libsemanage_2.4.bb b/recipes-security/selinux/libsemanage_2.4.bb
deleted file mode 100644
index 4306675..0000000
--- a/recipes-security/selinux/libsemanage_2.4.bb
+++ /dev/null
@@ -1,19 +0,0 @@
-include selinux_20150202.inc
-include ${BPN}.inc
-
-LIC_FILES_CHKSUM = "file://COPYING;md5=a6f89e2100d9b6cdffcea4f398e37343"
-
-SRC_URI[md5sum] = "cd551eb1cc5d20652660bda037972f0d"
-SRC_URI[sha256sum] = "1a4cace4ef16786531ec075c0e7b2f961e2fee5dc86c5f983a689058899a6484"
-
-SRC_URI += "\
-	file://libsemanage-Fix-execve-segfaults-on-Ubuntu.patch \
-	file://libsemanage-fix-path-len-limit.patch \
-	file://libsemanage-fix-path-nologin.patch \
-	file://libsemanage-drop-Wno-unused-but-set-variable.patch \
-	file://libsemanage-define-FD_CLOEXEC-as-necessary.patch;striplevel=2 \
-	file://libsemanage-allow-to-disable-audit-support.patch \
-	file://libsemanage-disable-expand-check-on-policy-load.patch \
-	file://0001-src-Makefile-fix-includedir-in-libselinux.pc.patch \
-	"
-FILES_${PN} += "/usr/libexec"
diff --git a/recipes-security/selinux/libsemanage_2.5.bb b/recipes-security/selinux/libsemanage_2.5.bb
new file mode 100644
index 0000000..27cbe7d
--- /dev/null
+++ b/recipes-security/selinux/libsemanage_2.5.bb
@@ -0,0 +1,19 @@
+include selinux_20160223.inc
+include ${BPN}.inc
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=a6f89e2100d9b6cdffcea4f398e37343"
+
+SRC_URI[md5sum] = "eb030c863de1a6b3e2614a5c043c1641"
+SRC_URI[sha256sum] = "46e2f36254369b6e91d1eea0460c262b139361b055a3a67d3ceea2d8ef72e006"
+
+SRC_URI += "\
+	file://libsemanage-Fix-execve-segfaults-on-Ubuntu.patch \
+	file://libsemanage-fix-path-len-limit.patch \
+	file://libsemanage-fix-path-nologin.patch \
+	file://libsemanage-drop-Wno-unused-but-set-variable.patch \
+	file://libsemanage-define-FD_CLOEXEC-as-necessary.patch;striplevel=2 \
+	file://libsemanage-allow-to-disable-audit-support.patch \
+	file://libsemanage-disable-expand-check-on-policy-load.patch \
+	file://0001-src-Makefile-fix-includedir-in-libselinux.pc.patch \
+	"
+FILES_${PN} += "/usr/libexec"
-- 
2.4.3


