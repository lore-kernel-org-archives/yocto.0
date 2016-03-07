Return-Path: <sds@tycho.nsa.gov>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EE387E00BBF; Mon,  7 Mar 2016 12:54:08 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2DBC3E0090E
	for <yocto@yoctoproject.org>; Mon,  7 Mar 2016 12:53:59 -0800 (PST)
X-TM-IMSS-Message-ID: <5220a53300020a9d@nsa.gov>
Received: from tarius.tycho.ncsc.mil ([144.51.242.1]) by nsa.gov
	([10.208.42.194]) with ESMTP (TREND IMSS SMTP Service 7.1) id
	5220a53300020a9d ; Mon, 7 Mar 2016 15:56:59 -0500
Received: from moss-pluto.infosec.tycho.ncsc.mil (moss-pluto [192.168.25.131])
	by tarius.tycho.ncsc.mil (8.14.4/8.14.4) with ESMTP id
	u27KrMGG003618; Mon, 7 Mar 2016 15:53:47 -0500
From: Stephen Smalley <sds@tycho.nsa.gov>
To: flihp@twobit.us
Date: Mon,  7 Mar 2016 15:52:42 -0500
Message-Id: <1457383972-6283-3-git-send-email-sds@tycho.nsa.gov>
X-Mailer: git-send-email 2.4.3
In-Reply-To: <1457383972-6283-1-git-send-email-sds@tycho.nsa.gov>
References: <1457383972-6283-1-git-send-email-sds@tycho.nsa.gov>
X-TM-AS-MML: disable
Cc: yocto@yoctoproject.org
Subject: [PATCH 03/13] libselinux: uprev to 2.5 (20160223)
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
X-List-Received-Date: Mon, 07 Mar 2016 20:54:09 -0000

Signed-off-by: Stephen Smalley <sds@tycho.nsa.gov>
---
 ...bselinux-get-pywrap-depends-on-selinux.py.patch | 31 ---------
 .../libselinux-make-O_CLOEXEC-optional.patch       | 67 ++++++++++----------
 .../libselinux-mount-procfs-before-check.patch     | 74 ----------------------
 recipes-security/selinux/libselinux_2.4.bb         | 17 -----
 recipes-security/selinux/libselinux_2.5.bb         | 15 +++++
 5 files changed, 47 insertions(+), 157 deletions(-)
 delete mode 100644 recipes-security/selinux/libselinux/libselinux-get-pywrap-depends-on-selinux.py.patch
 delete mode 100644 recipes-security/selinux/libselinux/libselinux-mount-procfs-before-check.patch
 delete mode 100644 recipes-security/selinux/libselinux_2.4.bb
 create mode 100644 recipes-security/selinux/libselinux_2.5.bb

diff --git a/recipes-security/selinux/libselinux/libselinux-get-pywrap-depends-on-selinux.py.patch b/recipes-security/selinux/libselinux/libselinux-get-pywrap-depends-on-selinux.py.patch
deleted file mode 100644
index 7994be4..0000000
--- a/recipes-security/selinux/libselinux/libselinux-get-pywrap-depends-on-selinux.py.patch
+++ /dev/null
@@ -1,31 +0,0 @@
-From 187ff834e40519b42caa3fba9f1054491f48ab67 Mon Sep 17 00:00:00 2001
-From: Wenzong Fan <wenzong.fan@windriver.com>
-Date: Tue, 11 Aug 2015 16:21:13 +0800
-Subject: [PATCH] libselinux: get pywrap depends on selinux.py
-
-The selinux.py will be installed as selinux/__init__.py, just make sure
-it has been generated completely while starting "make install-pywrap".
-
-Upstream-Status: Pending
-
-Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
----
- src/Makefile | 2 +-
- 1 file changed, 1 insertion(+), 1 deletion(-)
-
-diff --git a/src/Makefile b/src/Makefile
-index a4d27f4..624d25b 100644
---- a/src/Makefile
-+++ b/src/Makefile
-@@ -90,7 +90,7 @@ SWIGRUBY = swig -Wall -ruby -o $(SWIGRUBYCOUT) -outdir ./
- 
- all: $(LIBA) $(LIBSO) $(LIBPC)
- 
--pywrap: all $(SWIGSO) $(AUDIT2WHYSO)
-+pywrap: all $(SWIGFILES) $(AUDIT2WHYSO)
- 
- rubywrap: all $(SWIGRUBYSO)
- 
--- 
-1.9.1
-
diff --git a/recipes-security/selinux/libselinux/libselinux-make-O_CLOEXEC-optional.patch b/recipes-security/selinux/libselinux/libselinux-make-O_CLOEXEC-optional.patch
index 453334e..98d31cc 100644
--- a/recipes-security/selinux/libselinux/libselinux-make-O_CLOEXEC-optional.patch
+++ b/recipes-security/selinux/libselinux/libselinux-make-O_CLOEXEC-optional.patch
@@ -24,13 +24,13 @@ Signed-off-by: Joe MacDonald <joe.macdonald@windriver.com>
  src/stringrep.c  |    8 +++++++-
  4 files changed, 28 insertions(+), 4 deletions(-)
 
-diff --git a/src/label_file.c b/src/label_file.c
-index 5f697f3..49bb8df 100644
---- a/src/label_file.c
-+++ b/src/label_file.c
-@@ -255,7 +255,13 @@ static int load_mmap(struct selabel_handle *rec, const char *path, struct stat *
- 	if (rc >= sizeof(mmap_path))
- 		return -1;
+Index: libselinux-2.5/src/label_file.c
+===================================================================
+--- libselinux-2.5.orig/src/label_file.c	2016-02-25 13:10:00.159980383 -0500
++++ libselinux-2.5/src/label_file.c	2016-02-25 13:10:00.155980383 -0500
+@@ -124,7 +124,13 @@
+ 			return -1;
+ 	}
  
 -	mmapfd = open(mmap_path, O_RDONLY | O_CLOEXEC);
 +	mmapfd = open(mmap_path, O_RDONLY 
@@ -43,30 +43,30 @@ index 5f697f3..49bb8df 100644
  	if (mmapfd < 0)
  		return -1;
  
-diff --git a/src/procattr.c b/src/procattr.c
-index 6c5b45a..6cfe589 100644
---- a/src/procattr.c
-+++ b/src/procattr.c
-@@ -86,7 +86,13 @@ static int openattr(pid_t pid, const char *attr, int flags)
- 	if (rc < 0)
- 		return -1;
- 
--	fd = open(path, flags | O_CLOEXEC);
-+	fd = open(path, flags
+Index: libselinux-2.5/src/procattr.c
+===================================================================
+--- libselinux-2.5.orig/src/procattr.c	2016-02-25 13:10:00.159980383 -0500
++++ libselinux-2.5/src/procattr.c	2016-02-25 13:11:58.527980013 -0500
+@@ -76,7 +76,13 @@
+ 		rc = asprintf(&path, "/proc/thread-self/attr/%s", attr);
+ 		if (rc < 0)
+ 			return -1;
+-		fd = open(path, flags | O_CLOEXEC);
++		fd = open(path, flags
 +#ifdef O_CLOEXEC
-+             | O_CLOEXEC
++			  | O_CLOEXEC
 +#else
 +#warning O_CLOEXEC undefined on this platform, this may leak file descriptors
 +#endif
-+             );
- 	free(path);
- 	return fd;
- }
-diff --git a/src/sestatus.c b/src/sestatus.c
-index ed29dc5..0cb15b6 100644
---- a/src/sestatus.c
-+++ b/src/sestatus.c
-@@ -268,7 +268,13 @@ int selinux_status_open(int fallback)
++			);
+ 		if (fd >= 0 || errno != ENOENT)
+ 			goto out;
+ 		free(path);
+Index: libselinux-2.5/src/sestatus.c
+===================================================================
+--- libselinux-2.5.orig/src/sestatus.c	2016-02-25 13:10:00.159980383 -0500
++++ libselinux-2.5/src/sestatus.c	2016-02-25 13:10:00.155980383 -0500
+@@ -268,7 +268,13 @@
  		return -1;
  
  	snprintf(path, sizeof(path), "%s/status", selinux_mnt);
@@ -81,11 +81,11 @@ index ed29dc5..0cb15b6 100644
  	if (fd < 0)
  		goto error;
  
-diff --git a/src/stringrep.c b/src/stringrep.c
-index ba75ccd..e6ccfd5 100644
---- a/src/stringrep.c
-+++ b/src/stringrep.c
-@@ -258,7 +258,13 @@ static struct discover_class_node * discover_class(const char *s)
+Index: libselinux-2.5/src/stringrep.c
+===================================================================
+--- libselinux-2.5.orig/src/stringrep.c	2016-02-25 13:10:00.159980383 -0500
++++ libselinux-2.5/src/stringrep.c	2016-02-25 13:10:00.155980383 -0500
+@@ -105,7 +105,13 @@
  		struct stat m;
  
  		snprintf(path, sizeof path, "%s/class/%s/perms/%s", selinux_mnt,s,dentry->d_name);
@@ -100,6 +100,3 @@ index ba75ccd..e6ccfd5 100644
  		if (fd < 0)
  			goto err4;
  
--- 
-1.7.10.4
-
diff --git a/recipes-security/selinux/libselinux/libselinux-mount-procfs-before-check.patch b/recipes-security/selinux/libselinux/libselinux-mount-procfs-before-check.patch
deleted file mode 100644
index dc27aaa..0000000
--- a/recipes-security/selinux/libselinux/libselinux-mount-procfs-before-check.patch
+++ /dev/null
@@ -1,74 +0,0 @@
-commit 9df498884665d79474b79f0f30d1cd67df11bd3e
-Author: Ben Shelton <ben.shelton@ni.com>
-Date:   Wed Apr 15 15:56:57 2015 -0500
-
-    libselinux: Mount procfs before checking /proc/filesystems
-    
-    In the case where the SELinux security module is not loaded in the
-    kernel and it's early enough in the boot process that /proc has not yet
-    been mounted, selinuxfs_exists() will incorrectly return 1, and
-    selinux_init_load_policy() will print a message like this to the
-    console:
-    
-    Mount failed for selinuxfs on /sys/fs/selinux:  No such file or directory
-    
-    To fix this, mount the procfs before attempting to open
-    /proc/filesystems, and unmount it when done if it was initially not
-    mounted.  This is the same thing that selinux_init_load_policy() does
-    when reading /proc/cmdline.
-    
-    Signed-off-by: Ben Shelton <ben.shelton@ni.com>
-
-Upstream-Status: Accepted
-
-diff --git a/src/init.c b/src/init.c
-index 6d1ef33..179e0d0 100644
---- a/src/init.c
-+++ b/src/init.c
-@@ -11,6 +11,7 @@
- #include <sys/vfs.h>
- #include <stdint.h>
- #include <limits.h>
-+#include <sys/mount.h>
- 
- #include "dso.h"
- #include "policy.h"
-@@ -54,15 +55,20 @@ static int verify_selinuxmnt(const char *mnt)
- 
- int selinuxfs_exists(void)
- {
--	int exists = 0;
-+	int exists = 0, mnt_rc = 0;
- 	FILE *fp = NULL;
- 	char *buf = NULL;
- 	size_t len;
- 	ssize_t num;
- 
-+	mnt_rc = mount("proc", "/proc", "proc", 0, 0);
-+
- 	fp = fopen("/proc/filesystems", "r");
--	if (!fp)
--		return 1; /* Fail as if it exists */
-+	if (!fp) {
-+		exists = 1; /* Fail as if it exists */
-+		goto out;
-+	}
-+
- 	__fsetlocking(fp, FSETLOCKING_BYCALLER);
- 
- 	num = getline(&buf, &len, fp);
-@@ -76,6 +82,14 @@ int selinuxfs_exists(void)
- 
- 	free(buf);
- 	fclose(fp);
-+
-+out:
-+#ifndef MNT_DETACH
-+#define MNT_DETACH 2
-+#endif
-+	if (mnt_rc == 0)
-+		umount2("/proc", MNT_DETACH);
-+
- 	return exists;
- }
- hidden_def(selinuxfs_exists)
diff --git a/recipes-security/selinux/libselinux_2.4.bb b/recipes-security/selinux/libselinux_2.4.bb
deleted file mode 100644
index 64fa81d..0000000
--- a/recipes-security/selinux/libselinux_2.4.bb
+++ /dev/null
@@ -1,17 +0,0 @@
-include selinux_20150202.inc
-include ${BPN}.inc
-
-LIC_FILES_CHKSUM = "file://LICENSE;md5=84b4d2c6ef954a2d4081e775a270d0d0"
-
-SRC_URI[md5sum] = "d19af2a367a81fb00bedc1b381694995"
-SRC_URI[sha256sum] = "46043091f4c5ba4f43e8d3715f30d665a2d571c9126c1f03945c9ea4ed380f7b"
-
-SRC_URI += "\
-        file://libselinux-drop-Wno-unused-but-set-variable.patch \
-        file://libselinux-make-O_CLOEXEC-optional.patch \
-        file://libselinux-make-SOCK_CLOEXEC-optional.patch \
-        file://libselinux-define-FD_CLOEXEC-as-necessary.patch \
-        file://libselinux-get-pywrap-depends-on-selinux.py.patch \
-        file://0001-src-Makefile-fix-includedir-in-libselinux.pc.patch \
-        file://libselinux-mount-procfs-before-check.patch \
-        "
diff --git a/recipes-security/selinux/libselinux_2.5.bb b/recipes-security/selinux/libselinux_2.5.bb
new file mode 100644
index 0000000..a744b2f
--- /dev/null
+++ b/recipes-security/selinux/libselinux_2.5.bb
@@ -0,0 +1,15 @@
+include selinux_20160223.inc
+include ${BPN}.inc
+
+LIC_FILES_CHKSUM = "file://LICENSE;md5=84b4d2c6ef954a2d4081e775a270d0d0"
+
+SRC_URI[md5sum] = "d1399f5c2fd2fbe0e9603d5143b30367"
+SRC_URI[sha256sum] = "94c9e97706280bedcc288f784f67f2b9d3d6136c192b2c9f812115edba58514f"
+
+SRC_URI += "\
+        file://libselinux-drop-Wno-unused-but-set-variable.patch \
+        file://libselinux-make-O_CLOEXEC-optional.patch \
+        file://libselinux-make-SOCK_CLOEXEC-optional.patch \
+        file://libselinux-define-FD_CLOEXEC-as-necessary.patch \
+        file://0001-src-Makefile-fix-includedir-in-libselinux.pc.patch \
+        "
-- 
2.4.3


