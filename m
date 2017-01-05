Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 05101E00480; Thu,  5 Jan 2017 00:23:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3321BE00480
	for <yocto@yoctoproject.org>; Thu,  5 Jan 2017 00:23:30 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v058NTS6006597
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <yocto@yoctoproject.org>; Thu, 5 Jan 2017 00:23:29 -0800
Received: from ala-lpggp5.wrs.com (147.11.105.121) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Thu, 5 Jan 2017 00:23:29 -0800
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 5 Jan 2017 00:23:20 -0800
Message-ID: <96e06824dca11b9c6ea82975e2dde2a9b43f16cf.1483601828.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1483601828.git.wenzong.fan@windriver.com>
References: <cover.1483601828.git.wenzong.fan@windriver.com>
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 3/9] libselinux: uprev to 2.6 (20161014)
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
X-List-Received-Date: Thu, 05 Jan 2017 08:23:33 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

* rebase patch:
  - libselinux-make-O_CLOEXEC-optional.patch

* cleanup patches:
  - libselinux-only-mount-proc-if-necessary.patch
  - libselinux-procattr-return-einval-for-0-pid.patch
  - libselinux-procattr-return-error-on-invalid-pid.patch

* other fixes:
  - remove useless variables according to latest Makefile
  - update FILES_${PN}-python to match the installed file:
    '${libdir}/python2.7/site-packages/_selinux.so'.

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 recipes-security/selinux/libselinux.inc            | 11 +---
 .../libselinux-make-O_CLOEXEC-optional.patch       | 77 +++++++++++-----------
 .../libselinux-only-mount-proc-if-necessary.patch  | 54 ---------------
 ...bselinux-procattr-return-einval-for-0-pid.patch | 47 -------------
 ...inux-procattr-return-error-on-invalid-pid.patch | 40 -----------
 .../{libselinux_2.5.bb => libselinux_2.6.bb}       |  9 +--
 6 files changed, 44 insertions(+), 194 deletions(-)
 delete mode 100644 recipes-security/selinux/libselinux/libselinux-only-mount-proc-if-necessary.patch
 delete mode 100644 recipes-security/selinux/libselinux/libselinux-procattr-return-einval-for-0-pid.patch
 delete mode 100644 recipes-security/selinux/libselinux/libselinux-procattr-return-error-on-invalid-pid.patch
 rename recipes-security/selinux/{libselinux_2.5.bb => libselinux_2.6.bb} (54%)

diff --git a/recipes-security/selinux/libselinux.inc b/recipes-security/selinux/libselinux.inc
index d571a7c..ad00d10 100644
--- a/recipes-security/selinux/libselinux.inc
+++ b/recipes-security/selinux/libselinux.inc
@@ -10,7 +10,7 @@ inherit lib_package pythonnative
 DEPENDS += "libsepol python libpcre swig-native"
 
 PACKAGES += "${PN}-python"
-FILES_${PN}-python = "${libdir}/python${PYTHON_BASEVERSION}/site-packages/selinux/*"
+FILES_${PN}-python = "${libdir}/python${PYTHON_BASEVERSION}/site-packages/*"
 FILES_${PN}-dbg += "${libdir}/python${PYTHON_BASEVERSION}/site-packages/selinux/.debug/*"
 
 def get_policyconfigarch(d):
@@ -27,17 +27,12 @@ do_compile_append() {
     oe_runmake pywrap -j1 \
             INCLUDEDIR='${STAGING_INCDIR}' \
             LIBDIR='${STAGING_LIBDIR}' \
-            PYLIBVER='python${PYTHON_BASEVERSION}' \
-            PYINC='-I${STAGING_INCDIR}/$(PYLIBVER)' \
-            PYLIB='-L${STAGING_LIBDIR}/$(PYLIBVER) -l$(PYLIBVER)' \
-            PYTHONLIBDIR='${PYLIB}'
+            PYINC='-I${STAGING_INCDIR}/python${PYTHON_BASEVERSION}'
 }
 
 do_install_append() {
     oe_runmake install-pywrap swigify \
-            DESTDIR=${D} \
-            PYLIBVER='python${PYTHON_BASEVERSION}' \
-            PYLIBDIR='${D}/${libdir}/$(PYLIBVER)'
+            PYSITEDIR=${D}${libdir}/python${PYTHON_BASEVERSION}/site-packages
     rm -rf ${D}${base_sbindir}
 }
 
diff --git a/recipes-security/selinux/libselinux/libselinux-make-O_CLOEXEC-optional.patch b/recipes-security/selinux/libselinux/libselinux-make-O_CLOEXEC-optional.patch
index 98d31cc..a041dd3 100644
--- a/recipes-security/selinux/libselinux/libselinux-make-O_CLOEXEC-optional.patch
+++ b/recipes-security/selinux/libselinux/libselinux-make-O_CLOEXEC-optional.patch
@@ -17,37 +17,18 @@ produce curious AVC Denied messages.
 Uptream-Status: Inappropriate [O_CLOEXEC has been in Linux since 2007 and POSIX since 2008]
 
 Signed-off-by: Joe MacDonald <joe.macdonald@windriver.com>
+Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
 ---
- src/label_file.c |    8 +++++++-
- src/procattr.c   |    8 +++++++-
- src/sestatus.c   |    8 +++++++-
- src/stringrep.c  |    8 +++++++-
- 4 files changed, 28 insertions(+), 4 deletions(-)
+ src/procattr.c  | 16 ++++++++++++++--
+ src/sestatus.c  |  8 +++++++-
+ src/stringrep.c |  8 +++++++-
+ 3 files changed, 28 insertions(+), 4 deletions(-)
 
-Index: libselinux-2.5/src/label_file.c
-===================================================================
---- libselinux-2.5.orig/src/label_file.c	2016-02-25 13:10:00.159980383 -0500
-+++ libselinux-2.5/src/label_file.c	2016-02-25 13:10:00.155980383 -0500
-@@ -124,7 +124,13 @@
- 			return -1;
- 	}
- 
--	mmapfd = open(mmap_path, O_RDONLY | O_CLOEXEC);
-+	mmapfd = open(mmap_path, O_RDONLY 
-+#ifdef O_CLOEXEC
-+                 | O_CLOEXEC
-+#else
-+#warning O_CLOEXEC undefined on this platform, this may leak file descriptors
-+#endif
-+                 );
- 	if (mmapfd < 0)
- 		return -1;
- 
-Index: libselinux-2.5/src/procattr.c
-===================================================================
---- libselinux-2.5.orig/src/procattr.c	2016-02-25 13:10:00.159980383 -0500
-+++ libselinux-2.5/src/procattr.c	2016-02-25 13:11:58.527980013 -0500
-@@ -76,7 +76,13 @@
+diff --git a/src/procattr.c b/src/procattr.c
+index 7efcd7e..3007876 100644
+--- a/src/procattr.c
++++ b/src/procattr.c
+@@ -79,7 +79,13 @@ static int openattr(pid_t pid, const char *attr, int flags)
  		rc = asprintf(&path, "/proc/thread-self/attr/%s", attr);
  		if (rc < 0)
  			return -1;
@@ -62,11 +43,26 @@ Index: libselinux-2.5/src/procattr.c
  		if (fd >= 0 || errno != ENOENT)
  			goto out;
  		free(path);
-Index: libselinux-2.5/src/sestatus.c
-===================================================================
---- libselinux-2.5.orig/src/sestatus.c	2016-02-25 13:10:00.159980383 -0500
-+++ libselinux-2.5/src/sestatus.c	2016-02-25 13:10:00.155980383 -0500
-@@ -268,7 +268,13 @@
+@@ -92,7 +98,13 @@ static int openattr(pid_t pid, const char *attr, int flags)
+ 	if (rc < 0)
+ 		return -1;
+ 
+-	fd = open(path, flags | O_CLOEXEC);
++	fd = open(path, flags
++#ifdef O_CLOEXEC
++		  | O_CLOEXEC
++#else
++#warning O_CLOEXEC undefined on this platform, this may leak file descriptors
++#endif
++		);
+ out:
+ 	free(path);
+ 	return fd;
+diff --git a/src/sestatus.c b/src/sestatus.c
+index ed29dc5..0cb15b6 100644
+--- a/src/sestatus.c
++++ b/src/sestatus.c
+@@ -268,7 +268,13 @@ int selinux_status_open(int fallback)
  		return -1;
  
  	snprintf(path, sizeof(path), "%s/status", selinux_mnt);
@@ -81,11 +77,11 @@ Index: libselinux-2.5/src/sestatus.c
  	if (fd < 0)
  		goto error;
  
-Index: libselinux-2.5/src/stringrep.c
-===================================================================
---- libselinux-2.5.orig/src/stringrep.c	2016-02-25 13:10:00.159980383 -0500
-+++ libselinux-2.5/src/stringrep.c	2016-02-25 13:10:00.155980383 -0500
-@@ -105,7 +105,13 @@
+diff --git a/src/stringrep.c b/src/stringrep.c
+index 2dbec2b..de2a70b 100644
+--- a/src/stringrep.c
++++ b/src/stringrep.c
+@@ -105,7 +105,13 @@ static struct discover_class_node * discover_class(const char *s)
  		struct stat m;
  
  		snprintf(path, sizeof path, "%s/class/%s/perms/%s", selinux_mnt,s,dentry->d_name);
@@ -100,3 +96,6 @@ Index: libselinux-2.5/src/stringrep.c
  		if (fd < 0)
  			goto err4;
  
+-- 
+2.7.4
+
diff --git a/recipes-security/selinux/libselinux/libselinux-only-mount-proc-if-necessary.patch b/recipes-security/selinux/libselinux/libselinux-only-mount-proc-if-necessary.patch
deleted file mode 100644
index ab157b6..0000000
--- a/recipes-security/selinux/libselinux/libselinux-only-mount-proc-if-necessary.patch
+++ /dev/null
@@ -1,54 +0,0 @@
-From 0d9368ee5af662a99cf123407884ba0e42053c68 Mon Sep 17 00:00:00 2001
-From: Stephen Smalley <sds@tycho.nsa.gov>
-Date: Mon, 29 Feb 2016 10:10:55 -0500
-Subject: [meta-selinux][PATCH] libselinux: only mount /proc if necessary
-
-Commit 9df498884665d ("libselinux: Mount procfs before checking
-/proc/filesystems") changed selinuxfs_exists() to always try
-mounting /proc before reading /proc/filesystems.  However, this is
-unnecessary if /proc is already mounted and can produce avc denials
-if the process is not allowed to perform the mount.  Check first
-to see if /proc is already present and only try the mount if it is not.
-
-Signed-off-by: Stephen Smalley <sds@tycho.nsa.gov>
----
- src/init.c | 11 +++++++++--
- 1 file changed, 9 insertions(+), 2 deletions(-)
-
-diff --git a/src/init.c b/src/init.c
-index 3db4de0..3530594 100644
---- a/src/init.c
-+++ b/src/init.c
-@@ -12,6 +12,7 @@
- #include <stdint.h>
- #include <limits.h>
- #include <sys/mount.h>
-+#include <linux/magic.h>
- 
- #include "dso.h"
- #include "policy.h"
-@@ -57,13 +58,19 @@ static int verify_selinuxmnt(const char *mnt)
- 
- int selinuxfs_exists(void)
- {
--	int exists = 0, mnt_rc = 0;
-+	int exists = 0, mnt_rc = -1, rc;
-+	struct statfs sb;
- 	FILE *fp = NULL;
- 	char *buf = NULL;
- 	size_t len;
- 	ssize_t num;
- 
--	mnt_rc = mount("proc", "/proc", "proc", 0, 0);
-+	do {
-+		rc = statfs("/proc", &sb);
-+	} while (rc < 0 && errno == EINTR);
-+
-+	if (rc == 0 && ((uint32_t)sb.f_type != (uint32_t)PROC_SUPER_MAGIC))
-+		mnt_rc = mount("proc", "/proc", "proc", 0, 0);
- 
- 	fp = fopen("/proc/filesystems", "r");
- 	if (!fp) {
--- 
-2.4.3
-
diff --git a/recipes-security/selinux/libselinux/libselinux-procattr-return-einval-for-0-pid.patch b/recipes-security/selinux/libselinux/libselinux-procattr-return-einval-for-0-pid.patch
deleted file mode 100644
index cfac80e..0000000
--- a/recipes-security/selinux/libselinux/libselinux-procattr-return-einval-for-0-pid.patch
+++ /dev/null
@@ -1,47 +0,0 @@
-From c7cf5d8aa061b9616bf9d5e91139ce4fb40f532c Mon Sep 17 00:00:00 2001
-From: dcashman <dcashman@android.com>
-Date: Tue, 23 Feb 2016 12:24:00 -0800
-Subject: libselinux: procattr: return einval for <= 0 pid args.
-
-getpidcon documentation does not specify that a pid of 0 refers to the
-current process, and getcon exists specifically to provide this
-functionality, and getpidcon(getpid()) would provide it as well.
-Disallow pid values <= 0 that may lead to unintended behavior in
-userspace object managers.
-
-Signed-off-by: Daniel Cashman <dcashman@android.com>
----
- src/procattr.c | 14 ++++++++++++--
- 1 file changed, 12 insertions(+), 2 deletions(-)
-
-diff --git a/src/procattr.c b/src/procattr.c
-index c20f003..eee4612 100644
---- a/src/procattr.c
-+++ b/src/procattr.c
-@@ -306,11 +306,21 @@ static int setprocattrcon(const char * context,
- #define getpidattr_def(fn, attr) \
- 	int get##fn##_raw(pid_t pid, char **c)	\
- 	{ \
--		return getprocattrcon_raw(c, pid, #attr); \
-+		if (pid <= 0) { \
-+			errno = EINVAL; \
-+			return -1; \
-+		} else { \
-+			return getprocattrcon_raw(c, pid, #attr); \
-+		} \
- 	} \
- 	int get##fn(pid_t pid, char **c)	\
- 	{ \
--		return getprocattrcon(c, pid, #attr); \
-+		if (pid <= 0) { \
-+			errno = EINVAL; \
-+			return -1; \
-+		} else { \
-+			return getprocattrcon(c, pid, #attr); \
-+		} \
- 	}
- 
- all_selfattr_def(con, current)
--- 
-2.4.3
-
diff --git a/recipes-security/selinux/libselinux/libselinux-procattr-return-error-on-invalid-pid.patch b/recipes-security/selinux/libselinux/libselinux-procattr-return-error-on-invalid-pid.patch
deleted file mode 100644
index 0717d67..0000000
--- a/recipes-security/selinux/libselinux/libselinux-procattr-return-error-on-invalid-pid.patch
+++ /dev/null
@@ -1,40 +0,0 @@
-From f77021d720f12767576c25d751c75cacd7478614 Mon Sep 17 00:00:00 2001
-From: dcashman <dcashman@android.com>
-Date: Tue, 23 Feb 2016 12:23:59 -0800
-Subject: libselinux: procattr: return error on invalid pid_t
- input.
-
-Signed-off-by: Daniel Cashman <dcashman@android.com>
----
- src/procattr.c | 7 +++++--
- 1 file changed, 5 insertions(+), 2 deletions(-)
-
-diff --git a/src/procattr.c b/src/procattr.c
-index 527a0a5..c20f003 100644
---- a/src/procattr.c
-+++ b/src/procattr.c
-@@ -70,9 +70,9 @@ static int openattr(pid_t pid, const char *attr, int flags)
- 	char *path;
- 	pid_t tid;
- 
--	if (pid > 0)
-+	if (pid > 0) {
- 		rc = asprintf(&path, "/proc/%d/attr/%s", pid, attr);
--	else {
-+	} else if (pid == 0) {
- 		rc = asprintf(&path, "/proc/thread-self/attr/%s", attr);
- 		if (rc < 0)
- 			return -1;
-@@ -82,6 +82,9 @@ static int openattr(pid_t pid, const char *attr, int flags)
- 		free(path);
- 		tid = gettid();
- 		rc = asprintf(&path, "/proc/self/task/%d/attr/%s", tid, attr);
-+	} else {
-+		errno = EINVAL;
-+		return -1;
- 	}
- 	if (rc < 0)
- 		return -1;
--- 
-2.4.3
-
diff --git a/recipes-security/selinux/libselinux_2.5.bb b/recipes-security/selinux/libselinux_2.6.bb
similarity index 54%
rename from recipes-security/selinux/libselinux_2.5.bb
rename to recipes-security/selinux/libselinux_2.6.bb
index 0284494..b9ad231 100644
--- a/recipes-security/selinux/libselinux_2.5.bb
+++ b/recipes-security/selinux/libselinux_2.6.bb
@@ -1,18 +1,15 @@
-include selinux_20160223.inc
+include selinux_20161014.inc
 include ${BPN}.inc
 
 LIC_FILES_CHKSUM = "file://LICENSE;md5=84b4d2c6ef954a2d4081e775a270d0d0"
 
-SRC_URI[md5sum] = "d1399f5c2fd2fbe0e9603d5143b30367"
-SRC_URI[sha256sum] = "94c9e97706280bedcc288f784f67f2b9d3d6136c192b2c9f812115edba58514f"
+SRC_URI[md5sum] = "0e066ba6d6e590ba4b53eed64905d901"
+SRC_URI[sha256sum] = "4ea2dde50665c202253ba5caac7738370ea0337c47b251ba981c60d24e1a118a"
 
 SRC_URI += "\
         file://libselinux-drop-Wno-unused-but-set-variable.patch \
         file://libselinux-make-O_CLOEXEC-optional.patch \
         file://libselinux-make-SOCK_CLOEXEC-optional.patch \
         file://libselinux-define-FD_CLOEXEC-as-necessary.patch \
-        file://libselinux-procattr-return-einval-for-0-pid.patch \
-        file://libselinux-procattr-return-error-on-invalid-pid.patch \
-        file://libselinux-only-mount-proc-if-necessary.patch \
         file://0001-src-Makefile-fix-includedir-in-libselinux.pc.patch \
         "
-- 
2.7.4


