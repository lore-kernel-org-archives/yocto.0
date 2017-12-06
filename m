Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F3D19E00D67; Wed,  6 Dec 2017 00:35:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6803FE00D00
	for <yocto@yoctoproject.org>; Wed,  6 Dec 2017 00:35:02 -0800 (PST)
Received: by mail-wm0-f68.google.com with SMTP id n138so5714930wmg.2
	for <yocto@yoctoproject.org>; Wed, 06 Dec 2017 00:35:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=sMEo8vY0gFdHpf19Md0uzc2Tu07wOiu8MG/udZX78eM=;
	b=JELfmCtFmcMSUJDO6cC4rUHxeHXu/jJevuI9MGshiMod49lWhxpppg7QgBhqHwarn4
	7Ni8xIp1TCdO5W2J9TXqNkUT3xcCYaGaaH1vUPXNWJKuhRJK+VdodKkPPe1Cp2dV0Uoa
	pyP1u6H6lDN6NaGwNWgcOSjdhzsP64nEtdljQfXU0qrYOxAvO8AizmIq1OWHpoIgNwX+
	zYTs2/fJPNIHlJ2AF26OeOBwGbhr1LGtB12kDPlLfK9VKIURXjH7uz7WIi9Rb+EbWMSj
	mPghCM32b5KqcKObOcsHC4tgzXXSYRomCOOZyPOuaxcmOKVTt2BL/zzARklV7mamU8tb
	UPKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=sMEo8vY0gFdHpf19Md0uzc2Tu07wOiu8MG/udZX78eM=;
	b=DrINcKrj/zne6Ogy0UHb1qQ6s603vQojNSZyPCwl4jDT2TULJt1w1djarLeHRA7HJw
	vvKpZsQ1ijOdH/dND6hCRVuRDCcwA7QWT1jbT+3j2kLisnoVKNL2QVp1PmYbzCum/lh0
	UCqx5x/QUl5OrOrl6xoq5Akp8p3igl4AlyfDrfd+FAju6rTld5h8DuzOzJFTmgygRe9J
	V+kdt4Bl5+ck3S7YIQCvjTUn0JKVjdzGrpnWBpA3PVV79LGGCTp3N0ajyugFWb4A9XjZ
	EVjm1DckdqPLvsn5jmS637pAiLTWku1oKDDtAl32KjsqTcbSm518DK4qP4pVu3690wGB
	s1Ag==
X-Gm-Message-State: AKGB3mL6oZ+SOitW6VqawTcvtV3GAvZ0PST3Xs0spdhEC0NPhnRX77nh
	pzZWSae6OTyN2/yEJCOX1Y9d+ag=
X-Google-Smtp-Source: AGs4zManYvcTMXUxem52Da/jT6MVgMvXDQQlmwB0iDjX+gZuX89f4Ul2XI5XeiWiMI2THnf5x03rJw==
X-Received: by 10.28.156.10 with SMTP id f10mr9013848wme.128.1512549301914;
	Wed, 06 Dec 2017 00:35:01 -0800 (PST)
Received: from pohly-desktop.fritz.box (p54BD5190.dip0.t-ipconnect.de.
	[84.189.81.144]) by smtp.gmail.com with ESMTPSA id
	b66sm2323800wmh.32.2017.12.06.00.35.01
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 06 Dec 2017 00:35:01 -0800 (PST)
From: Patrick Ohly <patrick.ohly@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  6 Dec 2017 09:34:51 +0100
Message-Id: <20171206083452.8412-1-patrick.ohly@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [meta-security][PATCH 1/1] swtpm/libtpm: update to latest master
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
X-List-Received-Date: Wed, 06 Dec 2017 08:35:07 -0000

This allows dropping some patches for issues that were addressed
upstream. It also brings in support for connecting swtpm to qemu
without relying on CUSE.

Signed-off-by: Patrick Ohly <patrick.ohly@intel.com>
---
 meta-tpm/recipes-tpm/libtpm/libtpm_1.0.bb          |  4 +-
 meta-tpm/recipes-tpm/swtpm/files/fix_fcntl_h.patch | 24 +++++++----
 .../swtpm/files/fix_lib_search_path.patch          | 20 +++++----
 .../recipes-tpm/swtpm/files/fix_signed_issue.patch | 48 ----------------------
 meta-tpm/recipes-tpm/swtpm/swtpm_1.0.bb            | 14 +++----
 5 files changed, 35 insertions(+), 75 deletions(-)
 delete mode 100644 meta-tpm/recipes-tpm/swtpm/files/fix_signed_issue.patch

diff --git a/meta-tpm/recipes-tpm/libtpm/libtpm_1.0.bb b/meta-tpm/recipes-tpm/libtpm/libtpm_1.0.bb
index f9624f6..b29ec6b 100644
--- a/meta-tpm/recipes-tpm/libtpm/libtpm_1.0.bb
+++ b/meta-tpm/recipes-tpm/libtpm/libtpm_1.0.bb
@@ -2,11 +2,9 @@ SUMMARY = "LIBPM - Software TPM Library"
 LICENSE = "BSD-3-Clause"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=97e5eea8d700d76b3ddfd35c4c96485f"
 
-SRCREV = "ad44846dda5a96e269ad2f78a532e01e9a2f02a1"
+SRCREV = "3388d45082bdc588c6fc0672f44d6d7d0aaa86ff"
 SRC_URI = " \
 	git://github.com/stefanberger/libtpms.git \
-	file://Convert-another-vdprintf-to-dprintf.patch \
-	file://Use-format-s-for-call-to-dprintf.patch \
 	"
 
 S = "${WORKDIR}/git"
diff --git a/meta-tpm/recipes-tpm/swtpm/files/fix_fcntl_h.patch b/meta-tpm/recipes-tpm/swtpm/files/fix_fcntl_h.patch
index e844045..3d16431 100644
--- a/meta-tpm/recipes-tpm/swtpm/files/fix_fcntl_h.patch
+++ b/meta-tpm/recipes-tpm/swtpm/files/fix_fcntl_h.patch
@@ -1,4 +1,7 @@
-logging: Fix musl build issue with fcntl
+From 8750a6c3f0b4d9e7e45b4079150d29eb44774e9c Mon Sep 17 00:00:00 2001
+From: Armin Kuster <akuster@mvista.com>
+Date: Tue, 14 Mar 2017 22:59:36 -0700
+Subject: [PATCH 2/4] logging: Fix musl build issue with fcntl
 
  error: #warning redirecting incorrect #include <sys/fcntl.h> to <fcntl.h> [-Werror=cpp]
  #warning redirecting incorrect #include <sys/fcntl.h> to <fcntl.
@@ -6,16 +9,23 @@ logging: Fix musl build issue with fcntl
 Upstream-Status: Pending
 Signed-off-by: Armin Kuster <akuster@mvista.com>
 
-Index: git/src/swtpm/logging.c
-===================================================================
---- git.orig/src/swtpm/logging.c
-+++ git/src/swtpm/logging.c
-@@ -43,7 +43,7 @@
+---
+ src/swtpm/logging.c | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/src/swtpm/logging.c b/src/swtpm/logging.c
+index f16cab6..7da8606 100644
+--- a/src/swtpm/logging.c
++++ b/src/swtpm/logging.c
+@@ -45,7 +45,7 @@
  #include <errno.h>
  #include <string.h>
  #include <sys/types.h>
 -#include <sys/fcntl.h>
 +#include <fcntl.h>
+ #include <sys/stat.h>
  #include <stdio.h>
  #include <stdlib.h>
- #include <stdarg.h>
+-- 
+2.11.0
+
diff --git a/meta-tpm/recipes-tpm/swtpm/files/fix_lib_search_path.patch b/meta-tpm/recipes-tpm/swtpm/files/fix_lib_search_path.patch
index 28aca4a..60958f7 100644
--- a/meta-tpm/recipes-tpm/swtpm/files/fix_lib_search_path.patch
+++ b/meta-tpm/recipes-tpm/swtpm/files/fix_lib_search_path.patch
@@ -1,7 +1,7 @@
-From 85706ceb6877ade3b589d3c390abf5b3492bb718 Mon Sep 17 00:00:00 2001
+From 672bb4ee625da3141ba6cecb0601c7563de4c483 Mon Sep 17 00:00:00 2001
 From: Armin Kuster <akuster808@gmail.com>
 Date: Thu, 13 Oct 2016 02:03:56 -0700
-Subject: [PATCH] swtpm: add new package
+Subject: [PATCH 1/4] swtpm: add new package
 
 Upstream-Status: Inappropriate [OE config]
 
@@ -12,20 +12,21 @@ Rebased to current tip.
 Signed-off-by: Patrick Ohly <patrick.ohly@intel.com>
 
 ---
- configure.ac | 32 ++++++++++----------------------
- 1 file changed, 10 insertions(+), 22 deletions(-)
+ configure.ac | 34 ++++++++++------------------------
+ 1 file changed, 10 insertions(+), 24 deletions(-)
 
 diff --git a/configure.ac b/configure.ac
-index c4a9c6d..6267f64 100644
+index abf5be1..85ed6ac 100644
 --- a/configure.ac
 +++ b/configure.ac
-@@ -395,29 +395,17 @@ CFLAGS="$CFLAGS -Wformat -Wformat-security"
+@@ -395,31 +395,17 @@ CFLAGS="$CFLAGS -Wformat -Wformat-security"
  dnl We have to make sure libtpms is using the same crypto library
  dnl to avoid problems
  AC_MSG_CHECKING([the crypto library libtpms is using])
 -dirs=$($CC $CFLAGS -Xlinker --verbose 2>/dev/null | \
 -       sed -n '/SEARCH_DIR/p' | \
--       sed 's/SEARCH_DIR("=\?\(@<:@^"@:>@\+\)"); */\1\n/g')
+-       sed 's/SEARCH_DIR("\(@<:@^"@:>@*\)"); */\1 /g' | \
+-       sed 's|=/|/|g')
 -for dir in $dirs $LIBRARY_PATH; do
 -  if test -r $dir/libtpms.so; then
 -    if test -n "`ldd $dir/libtpms.so | grep libcrypto.so`"; then
@@ -43,12 +44,13 @@ index c4a9c6d..6267f64 100644
 +    break
    fi
 -  case $host_os in
--  cygwin)
+-  cygwin|openbsd*)
 -    if test -r $dir/libtpms.a; then
 -      if test -n "$(nm $dir/libtpms.a | grep "U AES_encrypt")"; then
 -        libtpms_cryptolib="openssl"
 -      fi
 -    fi
+-    ;;
 -  esac
 -done
 +  if test -n "`ldd $dir/libtpms.so | grep libnss3.so`"; then
@@ -60,5 +62,5 @@ index c4a9c6d..6267f64 100644
  if test -z "$libtpms_cryptolib"; then
    AC_MSG_ERROR([Could not determine libtpms crypto library.])
 -- 
-2.1.4
+2.11.0
 
diff --git a/meta-tpm/recipes-tpm/swtpm/files/fix_signed_issue.patch b/meta-tpm/recipes-tpm/swtpm/files/fix_signed_issue.patch
deleted file mode 100644
index 140585b..0000000
--- a/meta-tpm/recipes-tpm/swtpm/files/fix_signed_issue.patch
+++ /dev/null
@@ -1,48 +0,0 @@
-Upstream-Status: Pending
-Signed-off-by Armin Kuster <akuster808@gmail>
-
-Index: git/src/swtpm/ctrlchannel.c
-===================================================================
---- git.orig/src/swtpm/ctrlchannel.c
-+++ git/src/swtpm/ctrlchannel.c
-@@ -152,7 +152,8 @@ static int ctrlchannel_receive_state(ptm
-     uint32_t tpm_number = 0;
-     unsigned char *blob = NULL;
-     uint32_t blob_length = be32toh(pss->u.req.length);
--    uint32_t remain = blob_length, offset = 0;
-+    ssize_t remain = (ssize_t) blob_length;
-+    uint32_t offset = 0;
-     TPM_RESULT res;
-     uint32_t flags = be32toh(pss->u.req.state_flags);
-     TPM_BOOL is_encrypted = (flags & PTM_STATE_FLAG_ENCRYPTED) != 0;
-Index: git/src/swtpm_ioctl/tpm_ioctl.c
-===================================================================
---- git.orig/src/swtpm_ioctl/tpm_ioctl.c
-+++ git/src/swtpm_ioctl/tpm_ioctl.c
-@@ -303,7 +303,7 @@ static int do_save_state_blob(int fd, bo
-         numbytes = write(file_fd, pgs.u.resp.data,
-                          devtoh32(is_chardev, pgs.u.resp.length));
- 
--        if (numbytes != devtoh32(is_chardev, pgs.u.resp.length)) {
-+        if (numbytes != (ssize_t) devtoh32(is_chardev, pgs.u.resp.length)) {
-             fprintf(stderr,
-                     "Could not write to file '%s': %s\n",
-                     filename, strerror(errno));
-@@ -420,7 +420,7 @@ static int do_load_state_blob(int fd, bo
-                had_error = true;
-                break;
-             }
--            pss.u.req.length = htodev32(is_chardev, numbytes);
-+            pss.u.req.length = htodev32(is_chardev, (uint32_t) numbytes);
- 
-             /* the returnsize is zero on all intermediate packets */
-             returnsize = ((size_t)numbytes < sizeof(pss.u.req.data))
-@@ -863,7 +863,7 @@ int main(int argc, char *argv[])
-             return EXIT_FAILURE;
-         }
-         /* no tpm_result here */
--        printf("ptm capability is 0x%lx\n", (uint64_t)devtoh64(is_chardev, cap));
-+        printf("ptm capability is 0x%llx\n", (long long unsigned)devtoh64(is_chardev, cap));
- 
-     } else if (!strcmp(command, "-i")) {
-         init.u.req.init_flags = htodev32(is_chardev, PTM_INIT_FLAG_DELETE_VOLATILE);
diff --git a/meta-tpm/recipes-tpm/swtpm/swtpm_1.0.bb b/meta-tpm/recipes-tpm/swtpm/swtpm_1.0.bb
index 952de1a..7476020 100644
--- a/meta-tpm/recipes-tpm/swtpm/swtpm_1.0.bb
+++ b/meta-tpm/recipes-tpm/swtpm/swtpm_1.0.bb
@@ -10,14 +10,12 @@ DEPENDS = "libtasn1 expect socat glib-2.0 libtpm libtpm-native"
 DEPENDS += "tpm-tools-native expect-native socat-native"
 RDEPENDS_${PN} += "tpm-tools"
 
-SRCREV = "073e71f99eaa7a0ff9499339176af1af62c090b2"
-SRC_URI = " \
-	git://github.com/stefanberger/swtpm.git \
-	file://fix_signed_issue.patch \
-	file://fix_lib_search_path.patch \
-        file://fix_fcntl_h.patch \
-        file://ioctl_h.patch \
-	"
+SRCREV = "4f4f2f0a7e3195f6df8d235d58630a08e69403d8"
+SRC_URI = "git://github.com/stefanberger/swtpm.git \
+           file://fix_lib_search_path.patch \
+           file://fix_fcntl_h.patch \
+           file://ioctl_h.patch \
+           "
 
 S = "${WORKDIR}/git"
 
-- 
2.11.0


