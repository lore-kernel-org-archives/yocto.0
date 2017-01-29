Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C0DDE008F3; Sun, 29 Jan 2017 09:12:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_LOW,URIBL_SBL
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.196 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.6 URIBL_SBL Contains an URL's NS IP listed in the SBL blocklist
	*      [URIs: init.sh]
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C884E007AD
	for <yocto@yoctoproject.org>; Sun, 29 Jan 2017 09:12:38 -0800 (PST)
Received: by mail-pf0-f196.google.com with SMTP id e4so21727865pfg.0
	for <yocto@yoctoproject.org>; Sun, 29 Jan 2017 09:12:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references:mime-version
	:content-transfer-encoding;
	bh=PXVtR9oFXB0M/XfpWRODb7+t91w3zIRpuYXWZwX6sp0=;
	b=A3MQ7jWvT51c5qtj7EEmHHEwFZ0Gn9smRfvDeC52IDubOnvoYKsx/f8dn77J88e6Bk
	zGgBVazGjb335c65i5M2hbFvr7E/Ubr8MvTBb5Hpbx76nRL8vOP/jrj9BYsbP8aE0IpM
	vbrDYLrLN/ERzx4/2lRQ0Ywb9pqtLdw3ZtNgjvJwGNydkiwLyEZ6pke2S2qi6uzwrbEN
	zL9IX+CniPFAJ/IZfzqT284JyCPbyG/N80DL1UtwpMOVTVSZ9CodkyZZRxCqoCstdACj
	wz82d9/cPc3wgsHvSdUcRIGCpAHjeXGhPx/yxLqUxLnNbSXhsUWm/Ovdz+n37NYO3xKP
	rVHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=PXVtR9oFXB0M/XfpWRODb7+t91w3zIRpuYXWZwX6sp0=;
	b=B1zH8ANtQvFzpXqxGW8j5mR4QHAlmZ++4T9h6Bi2SE/94MBPSsMSAsr4vrE6iJMqn7
	GVHnIELFhKYpVaFJNIF1mj953Dv7Cde8BYLOg3a37I6fq4yGJoXI+LEnF1YJp4vDCbTm
	tuAg4i/NWoECBvwwDG40cIR8/jmgfXu2NjoLQYpypwtvNuR0ArA6nkVg4JRDIn5AaKQz
	THOMeNDqeEYobdxGPIZ2P5EJBKxalkzutu5gI2/XAJECPuYtPBJsiSCGksDeHBClZDUs
	orYf2LkugvaE9tJdKsgjr2RdbYfeRWC0fVHcGOnYMwvKmWvgxJPwgZ7Zajy92h/GMHj6
	XbPg==
X-Gm-Message-State: AIkVDXIjfpqlIGUOx7IVdDWmN86LibTn9cJU7s8Tmq77VLuizdBjj5oY+6EOvBxQbsFxPw==
X-Received: by 10.84.168.131 with SMTP id f3mr26398143plb.163.1485709958015;
	Sun, 29 Jan 2017 09:12:38 -0800 (PST)
Received: from akuster-ThinkPad-X240.hsd1.ca.comcast.net
	([2601:202:4001:9ea0:d8f8:ce4a:79c4:7a9d])
	by smtp.gmail.com with ESMTPSA id
	g70sm25877403pfb.50.2017.01.29.09.12.37
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 29 Jan 2017 09:12:37 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org,
	akuster@mvista.com
Date: Sun, 29 Jan 2017 09:12:30 -0800
Message-Id: <1485709952-13916-4-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1485709952-13916-1-git-send-email-akuster808@gmail.com>
References: <1485709952-13916-1-git-send-email-akuster808@gmail.com>
MIME-Version: 1.0
Subject: [meta-security][PATCH 4/6] trousers: update to 0.3.14
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
X-List-Received-Date: Sun, 29 Jan 2017 17:12:42 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

convert to git and remove incorperated patches

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 ...t-getpwent_r-is-available-before-using-it.patch | 85 ----------------------
 ...si_param.c-Include-limits.h-for-POSIX_MAX.patch | 36 ---------
 .../trousers/files/07-read_data-not-inline.patch   | 65 -----------------
 .../{trousers_0.3.13.bb => trousers_git.bb}        | 40 +++++-----
 4 files changed, 20 insertions(+), 206 deletions(-)
 delete mode 100644 recipes-tpm/trousers/files/0001-Check-that-getpwent_r-is-available-before-using-it.patch
 delete mode 100644 recipes-tpm/trousers/files/0001-tsp_tcsi_param.c-Include-limits.h-for-POSIX_MAX.patch
 delete mode 100644 recipes-tpm/trousers/files/07-read_data-not-inline.patch
 rename recipes-tpm/trousers/{trousers_0.3.13.bb => trousers_git.bb} (67%)

diff --git a/recipes-tpm/trousers/files/0001-Check-that-getpwent_r-is-available-before-using-it.patch b/recipes-tpm/trousers/files/0001-Check-that-getpwent_r-is-available-before-using-it.patch
deleted file mode 100644
index e7ba2eb..0000000
--- a/recipes-tpm/trousers/files/0001-Check-that-getpwent_r-is-available-before-using-it.patch
+++ /dev/null
@@ -1,85 +0,0 @@
-From bb721b0ae5882992037153e7257791101172556e Mon Sep 17 00:00:00 2001
-From: =?UTF-8?q?No=C3=A9=20Rubinstein?= <nrubinstein@aldebaran.com>
-Date: Wed, 24 Aug 2016 18:55:25 +0200
-Subject: [PATCH] Check that getpwent_r is available before using it
-MIME-Version: 1.0
-Content-Type: text/plain; charset=UTF-8
-Content-Transfer-Encoding: 8bit
-
-This fixes building trousers with musl
-
-Signed-off-by: Noé Rubinstein <nrubinstein@aldebaran.com>
----
-Upstream-Status: Inappropriate [not author https://git.busybox.net/buildroot/plain/package/trousers/0004-Check-that-getpwent_r-is-available-before-using-it.patch]
-Signed-off-by: André Draszik <adraszik@tycoint.com>
- configure.in        |  4 ++++
- src/tspi/ps/tspps.c | 10 +++++-----
- 2 files changed, 9 insertions(+), 5 deletions(-)
-
-diff --git a/configure.in b/configure.in
-index add23dc..cfdfcaa 100644
---- a/configure.in
-+++ b/configure.in
-@@ -144,6 +144,10 @@ else
- 	AC_MSG_ERROR(["gtk", "openssl" and "none" are the only supported gui options for trousers])
- fi
- 
-+# Look for getpwent_r. If it is not found, getpwent will be used instead, with
-+# an additional mutex.
-+AC_CHECK_FUNC(getpwent_r, [AC_DEFINE(HAVE_GETPWENT_R)])
-+
- #
- # The default port that the TCS daemon listens on
- #
-diff --git a/src/tspi/ps/tspps.c b/src/tspi/ps/tspps.c
-index c6f9c3d..9d00d2a 100644
---- a/src/tspi/ps/tspps.c
-+++ b/src/tspi/ps/tspps.c
-@@ -45,7 +45,7 @@
- 
- static int user_ps_fd = -1;
- static MUTEX_DECLARE_INIT(user_ps_lock);
--#if (defined (__FreeBSD__) || defined (__OpenBSD__))
-+#ifndef HAVE_GETPWENT_R
- static MUTEX_DECLARE_INIT(user_ps_path);
- #endif
- static struct flock fl;
-@@ -60,7 +60,7 @@ get_user_ps_path(char **file)
- 	TSS_RESULT result;
- 	char *file_name = NULL, *home_dir = NULL;
- 	struct passwd *pwp;
--#if (defined (__linux) || defined (linux) || defined(__GLIBC__))
-+#ifdef HAVE_GETPWENT_R
- 	struct passwd pw;
- #endif
- 	struct stat stat_buf;
-@@ -72,7 +72,7 @@ get_user_ps_path(char **file)
- 		*file = strdup(file_name);
- 		return (*file) ? TSS_SUCCESS : TSPERR(TSS_E_OUTOFMEMORY);
- 	}
--#if (defined (__FreeBSD__) || defined (__OpenBSD__))
-+#ifndef HAVE_GETPWENT_R
- 	MUTEX_LOCK(user_ps_path);
- #endif
- 
-@@ -90,7 +90,7 @@ get_user_ps_path(char **file)
- #else
- 	setpwent();
- 	while (1) {
--#if (defined (__linux) || defined (linux) || defined(__GLIBC__))
-+#ifdef HAVE_GETPWENT_R
- 		rc = getpwent_r(&pw, buf, PASSWD_BUFSIZE, &pwp);
- 		if (rc) {
- 			LogDebugFn("USER PS: Error getting path to home directory: getpwent_r: %s",
-@@ -99,7 +99,7 @@ get_user_ps_path(char **file)
- 			return TSPERR(TSS_E_INTERNAL_ERROR);
- 		}
- 
--#elif (defined (__FreeBSD__) || defined (__OpenBSD__))
-+#else
- 		if ((pwp = getpwent()) == NULL) {
- 			LogDebugFn("USER PS: Error getting path to home directory: getpwent: %s",
-                                    strerror(rc));
--- 
-2.10.2
-
diff --git a/recipes-tpm/trousers/files/0001-tsp_tcsi_param.c-Include-limits.h-for-POSIX_MAX.patch b/recipes-tpm/trousers/files/0001-tsp_tcsi_param.c-Include-limits.h-for-POSIX_MAX.patch
deleted file mode 100644
index c01040d..0000000
--- a/recipes-tpm/trousers/files/0001-tsp_tcsi_param.c-Include-limits.h-for-POSIX_MAX.patch
+++ /dev/null
@@ -1,36 +0,0 @@
-From c1b5f33845c56dc7aef769c99758b4f77a041d43 Mon Sep 17 00:00:00 2001
-From: Felix Janda <felix.janda@posteo.de>
-Date: Wed, 31 Aug 2016 22:52:58 -0400
-Subject: [PATCH] tsp_tcsi_param.c: Include <limits.h> for POSIX_MAX
-MIME-Version: 1.0
-Content-Type: text/plain; charset=UTF-8
-Content-Transfer-Encoding: 8bit
-
-Use POSIX instead of glibc-specific header.
-Fixes compilation with musl libc.
-
-Signed-off-by: Felix Janda <felix.janda@posteo.de>
-Reviewed-by: Hon Ching(Vicky) Lo <honclo@linux.vnet.ibm.com>
-
----
-Upstream-Status: Backport [https://sourceforge.net/p/trousers/trousers/ci/59351a56cac1710e89d207dff07eb23bbc644c13/]
-Signed-off-by: André Draszik <adraszik@tycoint.com>
- src/tspi/tsp_tcsi_param.c | 2 +-
- 1 file changed, 1 insertion(+), 1 deletion(-)
-
-diff --git a/src/tspi/tsp_tcsi_param.c b/src/tspi/tsp_tcsi_param.c
-index 670f86f..8f2b4e4 100644
---- a/src/tspi/tsp_tcsi_param.c
-+++ b/src/tspi/tsp_tcsi_param.c
-@@ -11,7 +11,7 @@
- #include <stdlib.h>
- #include <string.h>
- #include <stdio.h>
--#include <bits/local_lim.h>
-+#include <limits.h>
- #include "trousers/tss.h"
- #include "trousers/trousers.h"
- #include "trousers_types.h"
--- 
-2.10.2
-
diff --git a/recipes-tpm/trousers/files/07-read_data-not-inline.patch b/recipes-tpm/trousers/files/07-read_data-not-inline.patch
deleted file mode 100644
index 76ba98a..0000000
--- a/recipes-tpm/trousers/files/07-read_data-not-inline.patch
+++ /dev/null
@@ -1,65 +0,0 @@
-Title: Remove inline keyword for read_data and write_data
-Date: 2015-06-28
-Origin: https://chromium.googlesource.com/chromiumos%2Fthird_party%2Ftrousers/+/c9c7cd50640c2d8882a04f59f1bcb383a88b19e9
-Bug-Debian: http://bugs.debian.org/778149
-Index: trousers/src/include/tcsps.h
-===================================================================
---- trousers.orig/src/include/tcsps.h
-+++ trousers/src/include/tcsps.h
-@@ -23,13 +23,6 @@ int		   get_file();
- int		   put_file(int);
- void		   close_file(int);
- void		   ps_destroy();
--#ifdef SOLARIS
--TSS_RESULT  read_data(int, void *, UINT32);
--TSS_RESULT  write_data(int, void *, UINT32);
--#else
--inline TSS_RESULT  read_data(int, void *, UINT32);
--inline TSS_RESULT  write_data(int, void *, UINT32);
--#endif
- int		   write_key_init(int, UINT32, UINT32, UINT32);
- TSS_RESULT	   cache_key(UINT32, UINT16, TSS_UUID *, TSS_UUID *, UINT16, UINT32, UINT32);
- TSS_RESULT	   UnloadBlob_KEY_PS(UINT16 *, BYTE *, TSS_KEY *);
-Index: trousers/src/include/tspps.h
-===================================================================
---- trousers.orig/src/include/tspps.h
-+++ trousers/src/include/tspps.h
-@@ -18,8 +18,8 @@
- 
- TSS_RESULT	   get_file(int *);
- int		   put_file(int);
--inline TSS_RESULT  read_data(int, void *, UINT32);
--inline TSS_RESULT  write_data(int, void *, UINT32);
-+TSS_RESULT	   read_data(int, void *, UINT32);
-+TSS_RESULT	   write_data(int, void *, UINT32);
- UINT32		   psfile_get_num_keys(int);
- TSS_RESULT	   psfile_get_parent_uuid_by_uuid(int, TSS_UUID *, TSS_UUID *);
- TSS_RESULT	   psfile_remove_key_by_uuid(int, TSS_UUID *);
-Index: trousers/src/tcs/ps/ps_utils.c
-===================================================================
---- trousers.orig/src/tcs/ps/ps_utils.c
-+++ trousers/src/tcs/ps/ps_utils.c
-@@ -42,11 +42,7 @@
- struct key_disk_cache *key_disk_cache_head = NULL;
- 
- 
--#ifdef SOLARIS
- TSS_RESULT
--#else
--inline TSS_RESULT
--#endif
- read_data(int fd, void *data, UINT32 size)
- {
- 	int rc;
-@@ -64,11 +60,7 @@ read_data(int fd, void *data, UINT32 siz
- }
- 
- 
--#ifdef SOLARIS
- TSS_RESULT
--#else
--inline TSS_RESULT
--#endif
- write_data(int fd, void *data, UINT32 size)
- {
- 	int rc;
diff --git a/recipes-tpm/trousers/trousers_0.3.13.bb b/recipes-tpm/trousers/trousers_git.bb
similarity index 67%
rename from recipes-tpm/trousers/trousers_0.3.13.bb
rename to recipes-tpm/trousers/trousers_git.bb
index a69f763..1dedd7c 100644
--- a/recipes-tpm/trousers/trousers_0.3.13.bb
+++ b/recipes-tpm/trousers/trousers_git.bb
@@ -6,17 +6,17 @@ SECTION = "security/tpm"
 
 DEPENDS = "openssl"
 
-SRC_URI = "http://sourceforge.net/projects/trousers/files/${BPN}/${PV}/${BPN}-${PV}.tar.gz \
-    file://0001-tsp_tcsi_param.c-Include-limits.h-for-POSIX_MAX.patch \
-    file://0001-Check-that-getpwent_r-is-available-before-using-it.patch \
-    file://07-read_data-not-inline.patch \
-    file://trousers.init.sh \
-    file://trousers-udev.rules \
-    file://tcsd.service \
-    "
-
-SRC_URI[md5sum] = "ad508f97b406f6e48cd90e85d78e7ca8"
-SRC_URI[sha256sum] = "bb908e4a3c88a17b247a4fc8e0fff3419d8a13170fe7bdfbe0e2c5c082a276d3"
+SRCREV = "4b9a70d5789b0b74f43957a6c19ab2156a72d3e0"
+PV = "0.3.14+git${SRCPV}"
+
+SRC_URI = " \
+	git://git.code.sf.net/p/trousers/trousers \
+    	file://trousers.init.sh \
+    	file://trousers-udev.rules \
+    	file://tcsd.service \
+    	"
+
+S = "${WORKDIR}/git"
 
 inherit autotools pkgconfig useradd update-rc.d ${@bb.utils.contains('VIRTUAL-RUNTIME_init_manager','systemd','systemd','', d)}
 
@@ -61,10 +61,10 @@ FILES_libtspi = " \
 	"
 FILES_libtspi-dbg = " \
 	${libdir}/.debug \
-	${prefix}/src/debug/${PN}/${PV}-${PR}/${PN}-${PV}/src/tspi \
-	${prefix}/src/debug/${PN}/${PV}-${PR}/${PN}-${PV}/src/trspi \
-	${prefix}/src/debug/${PN}/${PV}-${PR}/${PN}-${PV}/src/include/*.h \
-	${prefix}/src/debug/${PN}/${PV}-${PR}/${PN}-${PV}/src/include/tss \
+	${prefix}/src/debug/${BPN}/${PV}-${PR}/git/src/tspi \
+	${prefix}/src/debug/${BPN}/${PV}-${PR}/git/src/trspi \
+	${prefix}/src/debug/${BPN}/${PV}-${PR}/git/src/include/*.h \
+	${prefix}/src/debug/${BPN}/${PV}-${PR}/git/src/include/tss \
 	"
 FILES_libtspi-dev = " \
 	${includedir} \
@@ -88,11 +88,11 @@ FILES_${PN}-dev += "${libdir}/trousers"
 
 FILES_${PN}-dbg = " \
 	${sbindir}/.debug \
-	${prefix}/src/debug/${PN}/${PV}-${PR}/${PN}-${PV}/src/tcs \
-	${prefix}/src/debug/${PN}/${PV}-${PR}/${PN}-${PV}/src/tcsd \
-	${prefix}/src/debug/${PN}/${PV}-${PR}/${PN}-${PV}/src/tddl \
-	${prefix}/src/debug/${PN}/${PV}-${PR}/${PN}-${PV}/src/trousers \
-	${prefix}/src/debug/${PN}/${PV}-${PR}/${PN}-${PV}/src/include/trousers \
+	${prefix}/src/debug/${BPN}/${PV}-${PR}/git/src/tcs \
+	${prefix}/src/debug/${BPN}/${PV}-${PR}/git/src/tcsd \
+	${prefix}/src/debug/${BPN}/${PV}-${PR}/git/src/tddl \
+	${prefix}/src/debug/${BPN}/${PV}-${PR}/git/src/trousers \
+	${prefix}/src/debug/${BPN}/${PV}-${PR}/git/src/include/trousers \
 	"
 FILES_${PN}-doc = " \
 	${mandir}/man5 \
-- 
2.7.4


