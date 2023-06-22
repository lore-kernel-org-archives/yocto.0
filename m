Return-Path: <Martin.Jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EE5D9EB64D8
	for <webhook@archiver.kernel.org>; Thu, 22 Jun 2023 14:53:07 +0000 (UTC)
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
 by mx.groups.io with SMTP id smtpd.web10.13420.1687445581032645697
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Jun 2023 07:53:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=lSiqFweS;
 spf=pass (domain: gmail.com, ip: 209.85.218.46, mailfrom: martin.jansa@gmail.com)
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-988a076a7d3so682660466b.3
        for <yocto@lists.yoctoproject.org>; Thu, 22 Jun 2023 07:53:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687445579; x=1690037579;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8hvDHoAfh8+GA4mLPB3CTcPemLfAKC2wbht0sdgFfiE=;
        b=lSiqFweSUlri2KJxFI+JqZsn/0kUFarGTrBpaOlXkZAkVQa1k3makHc9fK395SBfBq
         2K8x9OrEmpYlOvxwlRJIlfBpFTOlKmvgGGnMYnshybhlFCCBm3nkm+NCoyFoHn/v3ZnY
         MRdsaf8EIL/20a8KzVQDJ5uVdJhZ16dy4LShCOA2mtge9llRuc/3SEoTMVjsihil9cH6
         lF4BHW6oaK83VWueplvwwz3rQ3yIfHuEYKtSxXTIaDZoey4sUUT3IcYsP6ZNTWNOSgQh
         NXoaRCbI3YRfz4R0t0+r0ougw5vUYQ+tQhyDoFIjFLRqQdnP6o76BRYw9vrslYulwbgl
         4TsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687445579; x=1690037579;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8hvDHoAfh8+GA4mLPB3CTcPemLfAKC2wbht0sdgFfiE=;
        b=jKVS6YZehym07Z5m0L3B55CPsDxlsCUgIJO55+2rJ7cyJsiGnkB4BLyoV9i5wlwPRl
         pEKVmkO5J3e2A8Kvs8Al6jl0O+SBAcAvrhF85VOTF+NhzQnkGuwPrn2o3i5L2Ibl3qjh
         2CG69DkPwWdf6uiXSyl9bqbfE4dol//y7hT93BpuMDCrkD1KkJ9ggM6BxzlWLrG9Vod3
         9rKgrVqu1FR1V3eXOh8TWfJLgUMqIe2HXFyS9JRZhmvb3mI1D2lj2J8zGNqgkSUdMqMQ
         vSJQUr/dVAWsCwyuYOsqscwmEoE8cm/dY69ncj8GDxZHHw4t79lu0RGXuE055jqgg6To
         MztQ==
X-Gm-Message-State: AC+VfDytsGCf2ucVBlV9gtffPYfsBeiSLIFYeUWOA2hgAkNvITU35nY6
	D6aMpOp+VbHYQNKxfDEjX7GXlJGtsII=
X-Google-Smtp-Source: ACHHUZ7WtLVBnLG9UryqSnvPTH4dwZs4Ou4IIU2H81Evq5e6A1rU8HAZ1O+6uUZraNmSCn2d7Keu5g==
X-Received: by 2002:a17:906:eec1:b0:974:1e0e:91ee with SMTP id wu1-20020a170906eec100b009741e0e91eemr17930661ejb.13.1687445579148;
        Thu, 22 Jun 2023 07:52:59 -0700 (PDT)
Received: from localhost (ip-109-238-218-228.aim-net.cz. [109.238.218.228])
        by smtp.gmail.com with ESMTPSA id z9-20020a1709063a0900b00988c0c175c6sm4711189eje.189.2023.06.22.07.52.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jun 2023 07:52:58 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Martin Jansa <Martin.Jansa@gmail.com>
Subject: [meta-security][master-next][PATCH] .patch: remove probably unused patches
Date: Thu, 22 Jun 2023 16:52:45 +0200
Message-ID: <20230622145245.3903139-1-Martin.Jansa@gmail.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 Jun 2023 14:53:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60402

There could be some false possitives (the script is far from perfect), so please
test it on your QA, I've only double checked with "git grep" (the script looks
only in parent directory).

@ ~/layers/meta-security $ /OE/extra-layers/meta-ros/scripts/check-patch-files.sh .
./recipes-ids/tripwire/files/add_armeb_arch.patch: not used in any recipe
./dynamic-layers/meta-python/recipes-security/fail2ban/files/0001-To-fix-build-error-of-xrang.patch: not used in any recipe
./recipes-scanners/clamav/files/fix2_libcurl_check.patch: not used in any recipe
./recipes-scanners/arpwatch/files/postfix_workaround.patch: not used in any recipe
./meta-tpm/recipes-tpm/libtpm/files/Use-format-s-for-call-to-dprintf.patch: not used in any recipe
./meta-tpm/recipes-tpm/libtpm/files/fix_signed_issue.patch: not used in any recipe
./meta-tpm/recipes-tpm/libtpm/files/Convert-another-vdprintf-to-dprintf.patch: not used in any recipe
./meta-tpm/recipes-tpm/swtpm/files/fix_lib_search_path.patch: not used in any recipe
./meta-tpm/recipes-tpm/swtpm/files/fix_fcntl_h.patch: not used in any recipe
./recipes-mac/AppArmor/files/disable_perl_h_check.patch: not used in any recipe

@ ~/layers/meta-security $ git grep add_armeb_arch.patch
@ ~/layers/meta-security $ git grep 0001-To-fix-build-error-of-xrang.patch
@ ~/layers/meta-security $ git grep fix2_libcurl_check.patch
@ ~/layers/meta-security $ git grep postfix_workaround.patch
@ ~/layers/meta-security $ git grep Use-format-s-for-call-to-dprintf.patch
@ ~/layers/meta-security $ git grep fix_signed_issue.patch
@ ~/layers/meta-security $ git grep Convert-another-vdprintf-to-dprintf.patch
@ ~/layers/meta-security $ git grep fix_lib_search_path.patch
@ ~/layers/meta-security $ git grep fix_fcntl_h.patch
@ ~/layers/meta-security $ git grep disable_perl_h_check.patch

Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
---
 .../0001-To-fix-build-error-of-xrang.patch    |  29 -----
 .../Convert-another-vdprintf-to-dprintf.patch |  26 ----
 .../Use-format-s-for-call-to-dprintf.patch    |  33 -----
 .../libtpm/files/fix_signed_issue.patch       |  48 -------
 .../recipes-tpm/swtpm/files/fix_fcntl_h.patch |  31 -----
 .../swtpm/files/fix_lib_search_path.patch     |  66 ----------
 .../tripwire/files/add_armeb_arch.patch       |  18 ---
 .../AppArmor/files/disable_perl_h_check.patch |  19 ---
 .../arpwatch/files/postfix_workaround.patch   |  91 -------------
 .../clamav/files/fix2_libcurl_check.patch     | 122 ------------------
 10 files changed, 483 deletions(-)
 delete mode 100644 dynamic-layers/meta-python/recipes-security/fail2ban/files/0001-To-fix-build-error-of-xrang.patch
 delete mode 100644 meta-tpm/recipes-tpm/libtpm/files/Convert-another-vdprintf-to-dprintf.patch
 delete mode 100644 meta-tpm/recipes-tpm/libtpm/files/Use-format-s-for-call-to-dprintf.patch
 delete mode 100644 meta-tpm/recipes-tpm/libtpm/files/fix_signed_issue.patch
 delete mode 100644 meta-tpm/recipes-tpm/swtpm/files/fix_fcntl_h.patch
 delete mode 100644 meta-tpm/recipes-tpm/swtpm/files/fix_lib_search_path.patch
 delete mode 100644 recipes-ids/tripwire/files/add_armeb_arch.patch
 delete mode 100644 recipes-mac/AppArmor/files/disable_perl_h_check.patch
 delete mode 100644 recipes-scanners/arpwatch/files/postfix_workaround.patch
 delete mode 100644 recipes-scanners/clamav/files/fix2_libcurl_check.patch

diff --git a/dynamic-layers/meta-python/recipes-security/fail2ban/files/0001-To-fix-build-error-of-xrang.patch b/dynamic-layers/meta-python/recipes-security/fail2ban/files/0001-To-fix-build-error-of-xrang.patch
deleted file mode 100644
index 72475e0..0000000
--- a/dynamic-layers/meta-python/recipes-security/fail2ban/files/0001-To-fix-build-error-of-xrang.patch
+++ /dev/null
@@ -1,29 +0,0 @@
-From fe3436d65518099d35c643848cba50253abc249c Mon Sep 17 00:00:00 2001
-From: Lei Maohui <leimaohui@cn.fujitsu.com>
-Date: Thu, 9 May 2019 14:44:51 +0900
-Subject: [PATCH] To fix build error of xrange.
-
-NameError: name 'xrange' is not defined
-
-Upstream-Status: Pending
-Signed-off-by: Lei Maohui <leimaohui@cn.fujitsu.com>
----
- fail2ban/__init__.py | 2 +-
- 1 file changed, 1 insertion(+), 1 deletion(-)
-
-diff --git a/fail2ban/__init__.py b/fail2ban/__init__.py
-index fa6dcf7..61789a4 100644
---- a/fail2ban/__init__.py
-+++ b/fail2ban/__init__.py
-@@ -82,7 +82,7 @@ strptime("2012", "%Y")
- 
- # short names for pure numeric log-level ("Level 25" could be truncated by short formats):
- def _init():
--	for i in xrange(50):
-+	for i in range(50):
- 		if logging.getLevelName(i).startswith('Level'):
- 			logging.addLevelName(i, '#%02d-Lev.' % i)
- _init()
--- 
-2.7.4
-
diff --git a/meta-tpm/recipes-tpm/libtpm/files/Convert-another-vdprintf-to-dprintf.patch b/meta-tpm/recipes-tpm/libtpm/files/Convert-another-vdprintf-to-dprintf.patch
deleted file mode 100644
index 9e1021a..0000000
--- a/meta-tpm/recipes-tpm/libtpm/files/Convert-another-vdprintf-to-dprintf.patch
+++ /dev/null
@@ -1,26 +0,0 @@
-From 09e7dd42e5201d079bad70e9f7cc6033ce1c7cad Mon Sep 17 00:00:00 2001
-From: Stefan Berger <stefanb@linux.vnet.ibm.com>
-Date: Fri, 3 Feb 2017 10:58:22 -0500
-Subject: [PATCH] Convert another vdprintf to dprintf
-
-Signed-off-by: Stefan Berger <stefanb@linux.vnet.ibm.com>
-Upstream-Status: Backport
-Signed-off-by: Armin Kuster <akuster@mvista.com>
-
----
- src/tpm_library.c | 2 +-
- 1 file changed, 1 insertion(+), 1 deletion(-)
-
-Index: git/src/tpm_library.c
-===================================================================
---- git.orig/src/tpm_library.c
-+++ git/src/tpm_library.c
-@@ -427,7 +427,7 @@ void TPMLIB_LogPrintfA(unsigned int inde
-             indent = sizeof(spaces) - 1;
-         memset(spaces, ' ', indent);
-         spaces[indent] = 0;
--        vdprintf(debug_fd, spaces, NULL);
-+        dprintf(debug_fd, "%s", spaces);
-     }
- 
-     va_start(args, format);
diff --git a/meta-tpm/recipes-tpm/libtpm/files/Use-format-s-for-call-to-dprintf.patch b/meta-tpm/recipes-tpm/libtpm/files/Use-format-s-for-call-to-dprintf.patch
deleted file mode 100644
index a71b5c1..0000000
--- a/meta-tpm/recipes-tpm/libtpm/files/Use-format-s-for-call-to-dprintf.patch
+++ /dev/null
@@ -1,33 +0,0 @@
-From 6a9b4e5d70f770aa9ca31e3e6d3b1ae72c192070 Mon Sep 17 00:00:00 2001
-From: Stefan Berger <stefanb@linux.vnet.ibm.com>
-Date: Tue, 31 Jan 2017 20:10:51 -0500
-Subject: [PATCH] Use format '%s' for call to dprintf
-
-Fix the dprintf call to use a format parameter that otherwise causes
-errors with gcc on certain platforms.
-
-Signed-off-by: Stefan Berger <stefanb@linux.vnet.ibm.com>
-
-Upstream-Status: Backport
-replaces local patch
-Signed-off-by: Armin Kuster <akuster@mvsita.com>
-
----
- src/tpm_library.c | 4 ++--
- 1 file changed, 2 insertions(+), 2 deletions(-)
-
-Index: git/src/tpm_library.c
-===================================================================
---- git.orig/src/tpm_library.c
-+++ git/src/tpm_library.c
-@@ -405,8 +405,8 @@ int TPMLIB_LogPrintf(const char *format,
-     }
- 
-     if (debug_prefix)
--        dprintf(debug_fd, debug_prefix);
--    dprintf(debug_fd, buffer);
-+        dprintf(debug_fd, "%s", debug_prefix);
-+    dprintf(debug_fd, "%s", buffer);
- 
-     return i;
- }
diff --git a/meta-tpm/recipes-tpm/libtpm/files/fix_signed_issue.patch b/meta-tpm/recipes-tpm/libtpm/files/fix_signed_issue.patch
deleted file mode 100644
index fc13aa5..0000000
--- a/meta-tpm/recipes-tpm/libtpm/files/fix_signed_issue.patch
+++ /dev/null
@@ -1,48 +0,0 @@
-Upstream-Status: Pending
-Signed-off-by: Armin kuster <akuster808@gmail.com>
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
-+        printf("ptm capability is 0x%llx\n", (uint64_t)devtoh64(is_chardev, cap));
- 
-     } else if (!strcmp(command, "-i")) {
-         init.u.req.init_flags = htodev32(is_chardev, PTM_INIT_FLAG_DELETE_VOLATILE);
diff --git a/meta-tpm/recipes-tpm/swtpm/files/fix_fcntl_h.patch b/meta-tpm/recipes-tpm/swtpm/files/fix_fcntl_h.patch
deleted file mode 100644
index 3d16431..0000000
--- a/meta-tpm/recipes-tpm/swtpm/files/fix_fcntl_h.patch
+++ /dev/null
@@ -1,31 +0,0 @@
-From 8750a6c3f0b4d9e7e45b4079150d29eb44774e9c Mon Sep 17 00:00:00 2001
-From: Armin Kuster <akuster@mvista.com>
-Date: Tue, 14 Mar 2017 22:59:36 -0700
-Subject: [PATCH 2/4] logging: Fix musl build issue with fcntl
-
- error: #warning redirecting incorrect #include <sys/fcntl.h> to <fcntl.h> [-Werror=cpp]
- #warning redirecting incorrect #include <sys/fcntl.h> to <fcntl.
-
-Upstream-Status: Pending
-Signed-off-by: Armin Kuster <akuster@mvista.com>
-
----
- src/swtpm/logging.c | 2 +-
- 1 file changed, 1 insertion(+), 1 deletion(-)
-
-diff --git a/src/swtpm/logging.c b/src/swtpm/logging.c
-index f16cab6..7da8606 100644
---- a/src/swtpm/logging.c
-+++ b/src/swtpm/logging.c
-@@ -45,7 +45,7 @@
- #include <errno.h>
- #include <string.h>
- #include <sys/types.h>
--#include <sys/fcntl.h>
-+#include <fcntl.h>
- #include <sys/stat.h>
- #include <stdio.h>
- #include <stdlib.h>
--- 
-2.11.0
-
diff --git a/meta-tpm/recipes-tpm/swtpm/files/fix_lib_search_path.patch b/meta-tpm/recipes-tpm/swtpm/files/fix_lib_search_path.patch
deleted file mode 100644
index 60958f7..0000000
--- a/meta-tpm/recipes-tpm/swtpm/files/fix_lib_search_path.patch
+++ /dev/null
@@ -1,66 +0,0 @@
-From 672bb4ee625da3141ba6cecb0601c7563de4c483 Mon Sep 17 00:00:00 2001
-From: Armin Kuster <akuster808@gmail.com>
-Date: Thu, 13 Oct 2016 02:03:56 -0700
-Subject: [PATCH 1/4] swtpm: add new package
-
-Upstream-Status: Inappropriate [OE config]
-
-Signed-off-by: Armin Kuster <akuster808@gmail.com>
-
-Rebased to current tip.
-
-Signed-off-by: Patrick Ohly <patrick.ohly@intel.com>
-
----
- configure.ac | 34 ++++++++++------------------------
- 1 file changed, 10 insertions(+), 24 deletions(-)
-
-diff --git a/configure.ac b/configure.ac
-index abf5be1..85ed6ac 100644
---- a/configure.ac
-+++ b/configure.ac
-@@ -395,31 +395,17 @@ CFLAGS="$CFLAGS -Wformat -Wformat-security"
- dnl We have to make sure libtpms is using the same crypto library
- dnl to avoid problems
- AC_MSG_CHECKING([the crypto library libtpms is using])
--dirs=$($CC $CFLAGS -Xlinker --verbose 2>/dev/null | \
--       sed -n '/SEARCH_DIR/p' | \
--       sed 's/SEARCH_DIR("\(@<:@^"@:>@*\)"); */\1 /g' | \
--       sed 's|=/|/|g')
--for dir in $dirs $LIBRARY_PATH; do
--  if test -r $dir/libtpms.so; then
--    if test -n "`ldd $dir/libtpms.so | grep libcrypto.so`"; then
--      libtpms_cryptolib="openssl"
--      break
--    fi
--    if test -n "`ldd $dir/libtpms.so | grep libnss3.so`"; then
--      libtpms_cryptolib="freebl"
--      break
--    fi
-+dir="$SEARCH_DIR"
-+if test -r $dir/libtpms.so; then
-+  if test -n "`ldd $dir/libtpms.so | grep libcrypto.so`"; then
-+    libtpms_cryptolib="openssl"
-+    break
-   fi
--  case $host_os in
--  cygwin|openbsd*)
--    if test -r $dir/libtpms.a; then
--      if test -n "$(nm $dir/libtpms.a | grep "U AES_encrypt")"; then
--        libtpms_cryptolib="openssl"
--      fi
--    fi
--    ;;
--  esac
--done
-+  if test -n "`ldd $dir/libtpms.so | grep libnss3.so`"; then
-+    libtpms_cryptolib="freebl"
-+    break
-+  fi
-+fi
- 
- if test -z "$libtpms_cryptolib"; then
-   AC_MSG_ERROR([Could not determine libtpms crypto library.])
--- 
-2.11.0
-
diff --git a/recipes-ids/tripwire/files/add_armeb_arch.patch b/recipes-ids/tripwire/files/add_armeb_arch.patch
deleted file mode 100644
index 2379d66..0000000
--- a/recipes-ids/tripwire/files/add_armeb_arch.patch
+++ /dev/null
@@ -1,18 +0,0 @@
-tripwire: Add armeb support
-
-Upstream-Status: Submitted to tripwire-dev
-
-Signed-off-by: Armin Kuster <akuster@mvista.com>
-
-diff -Naurp tripwire-2.4.2.2-src_org/config.sub tripwire-2.4.2.2-src/config.sub
---- tripwire-2.4.2.2-src_org/config.sub	2015-07-20 15:03:04.161452573 +0530
-+++ tripwire-2.4.2.2-src/config.sub	2015-07-20 15:06:07.077673139 +0530
-@@ -268,7 +268,7 @@ case $basic_machine in
- 	# FIXME: clean up the formatting here.
- 	vax-* | tahoe-* | i*86-* | i860-* | ia64-* | m32r-* | m68k-* | m68000-* \
- 	      | m88k-* | sparc-* | ns32k-* | fx80-* | arc-* | c[123]* | aarch64-* | aarch64be-*  \
--	      | arm-*  | armbe-* | armle-* | armv*-* | strongarm-* | xscale-* \
-+	      | arm-*  | armeb-* | armbe-* | armle-* | armv*-* | strongarm-* | xscale-* \
- 	      | mips-* | pyramid-* | tron-* | a29k-* | romp-* | rs6000-* \
- 	      | power-* | none-* | 580-* | cray2-* | h8300-* | h8500-* | i960-* \
- 	      | xmp-* | ymp-* \
diff --git a/recipes-mac/AppArmor/files/disable_perl_h_check.patch b/recipes-mac/AppArmor/files/disable_perl_h_check.patch
deleted file mode 100644
index 7ffdf2f..0000000
--- a/recipes-mac/AppArmor/files/disable_perl_h_check.patch
+++ /dev/null
@@ -1,19 +0,0 @@
-Upstream-Status: Inappropriate [configuration]
-
-Remove file check for $perl_includedir/perl.h.  AC_CHECK_FILE will fail on
-cross compilation.  Rather than try and get a compile check to work here,
-we know that we have what's required via our metadata so remove only this
-check.
-
-Signed-off-by: Tom Rini <trini@konsulko.com>
-
---- a/libraries/libapparmor/configure.ac.orig	2017-06-13 16:41:38.668471495 -0400
-+++ b/libraries/libapparmor/configure.ac	2017-06-13 16:41:40.708471543 -0400
-@@ -58,7 +58,6 @@
-    AC_PATH_PROG(PERL, perl)
-    test -z "$PERL" && AC_MSG_ERROR([perl is required when enabling perl bindings])
-    perl_includedir="`$PERL -e 'use Config; print $Config{archlib}'`/CORE"
--   AC_CHECK_FILE($perl_includedir/perl.h, enable_perl=yes, enable_perl=no)
- fi
- 
- 
diff --git a/recipes-scanners/arpwatch/files/postfix_workaround.patch b/recipes-scanners/arpwatch/files/postfix_workaround.patch
deleted file mode 100644
index 95213f2..0000000
--- a/recipes-scanners/arpwatch/files/postfix_workaround.patch
+++ /dev/null
@@ -1,91 +0,0 @@
-Sendmail exists after the system boots. We are using postfix
-so no need to check if it exists. 
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Armin Kuster <akuster808@gmail.com>
-
-Index: arpwatch-3.0/configure
-===================================================================
---- arpwatch-3.0.orig/configure
-+++ arpwatch-3.0/configure
-@@ -636,7 +636,6 @@ LBL_LIBS
- HAVE_FREEBSD_TRUE
- HAVE_FREEBSD_FALSE
- PYTHON
--V_SENDMAIL
- LIBOBJS
- INSTALL_DATA
- INSTALL_SCRIPT
-@@ -5573,53 +5572,6 @@ fi
- done
- 
- 
--# Extract the first word of "sendmail", so it can be a program name with args.
--set dummy sendmail; ac_word=$2
--{ $as_echo "$as_me:${as_lineno-$LINENO}: checking for $ac_word" >&5
--$as_echo_n "checking for $ac_word... " >&6; }
--if ${ac_cv_path_V_SENDMAIL+:} false; then :
--  $as_echo_n "(cached) " >&6
--else
--  case $V_SENDMAIL in
--  [\\/]* | ?:[\\/]*)
--  ac_cv_path_V_SENDMAIL="$V_SENDMAIL" # Let the user override the test with a path.
--  ;;
--  *)
--  as_save_IFS=$IFS; IFS=$PATH_SEPARATOR
--as_dummy="$PATH:/usr/sbin:/usr/lib:/usr/bin:/usr/ucblib:/usr/local/etc"
--for as_dir in $as_dummy
--do
--  IFS=$as_save_IFS
--  test -z "$as_dir" && as_dir=.
--    for ac_exec_ext in '' $ac_executable_extensions; do
--  if as_fn_executable_p "$as_dir/$ac_word$ac_exec_ext"; then
--    ac_cv_path_V_SENDMAIL="$as_dir/$ac_word$ac_exec_ext"
--    $as_echo "$as_me:${as_lineno-$LINENO}: found $as_dir/$ac_word$ac_exec_ext" >&5
--    break 2
--  fi
--done
--  done
--IFS=$as_save_IFS
--
--  ;;
--esac
--fi
--V_SENDMAIL=$ac_cv_path_V_SENDMAIL
--if test -n "$V_SENDMAIL"; then
--  { $as_echo "$as_me:${as_lineno-$LINENO}: result: $V_SENDMAIL" >&5
--$as_echo "$V_SENDMAIL" >&6; }
--else
--  { $as_echo "$as_me:${as_lineno-$LINENO}: result: no" >&5
--$as_echo "no" >&6; }
--fi
--
--
--
--if test -z "${V_SENDMAIL}" ; then
--	as_fn_error $? "Can't find sendmail" "$LINENO" 5
--fi
--
--
- python=${PYTHON:-python}
- # Extract the first word of "${python}", so it can be a program name with args.
- set dummy ${python}; ac_word=$2
-Index: arpwatch-3.0/configure.in
-===================================================================
---- arpwatch-3.0.orig/configure.in
-+++ arpwatch-3.0/configure.in
-@@ -76,13 +76,6 @@ AC_LBL_UNION_WAIT
- AC_CHECK_LIB(resolv, res_query)
- AC_LBL_LIBPCAP(V_PCAPDEP, V_INCLS)
- 
--AC_PATH_PROG(V_SENDMAIL, sendmail,,
--    $PATH:/usr/sbin:/usr/lib:/usr/bin:/usr/ucblib:/usr/local/etc)
--
--if test -z "${V_SENDMAIL}" ; then
--	AC_MSG_ERROR([Can't find sendmail])
--fi
--
- dnl AC_LBL_CHECK_TYPE(int32_t, int)
- dnl AC_LBL_CHECK_TYPE(u_int32_t, u_int)
- 
diff --git a/recipes-scanners/clamav/files/fix2_libcurl_check.patch b/recipes-scanners/clamav/files/fix2_libcurl_check.patch
deleted file mode 100644
index 8b500f3..0000000
--- a/recipes-scanners/clamav/files/fix2_libcurl_check.patch
+++ /dev/null
@@ -1,122 +0,0 @@
-clamav .102.2 tries to find clamav using culf_config. Use EO pkg_config instead
-
-Upstream-Status: Inappropriate [OE specific]
-Signed-off-by: Armin Kuster <akuster808@gmail.com>
-
-Index: git/configure
-===================================================================
---- git.orig/configure
-+++ git/configure
-@@ -28850,39 +28850,14 @@ $as_echo_n "checking for libcurl install
- if test "${with_libcurl+set}" = set; then :
-   withval=$with_libcurl;
- find_curl="no"
--if test "X$withval" = "Xyes"; then
--    find_curl="yes"
--else
--    if test "X$withval" != "Xno"; then
--        if test -f "${withval}/bin/curl-config"; then
--            LIBCURL_HOME="$withval"
--            have_curl="yes"
--        fi
--    fi
--fi
--
--else
--  find_curl="yes"
--fi
--
--
--if test "X$find_curl" = "Xyes"; then
--    for p in /usr/local /usr ; do
--        if test -f "${p}/bin/curl-config"; then
--           LIBCURL_HOME=$p
--           have_curl="yes"
--        fi
--    done
--fi
--
--if test "X$have_curl" = "Xyes"; then
--    { $as_echo "$as_me:${as_lineno-$LINENO}: result: $LIBCURL_HOME" >&5
--$as_echo "$LIBCURL_HOME" >&6; }
--    if test -f "$LIBCURL_HOME/bin/curl-config"; then
-+  #save_LDFLAGS="$LDFLAGS"
-+  if test "X$withval" != "Xno"; then
-+     LIBCURL_HOME="$withval"
-+     if test  "${PKG_CONFIG} libcurl --exists"; then
-         CURL_LDFLAGS="$LDFLAGS"
--        CURL_LIBS=$($LIBCURL_HOME/bin/curl-config --libs)
--        CURL_CPPFLAGS=$($LIBCURL_HOME/bin/curl-config --cflags)
--    else
-+        CURL_LIBS=$($PKG_CONFIG libcurl --libs)
-+        CURL_CPPFLAGS=$($PKG_CONFIG libcurl --cflags)
-+     else
-         if test "$LIBCURL_HOME" != "/usr"; then
-             CURL_LDFLAGS="-L$LIBCURL_HOME/lib"
-             CURL_CPPFLAGS="-I$LIBCURL_HOME/include"
-@@ -28891,60 +28866,12 @@ $as_echo "$LIBCURL_HOME" >&6; }
-             CURL_CPPFLAGS=""
-         fi
-         CURL_LIBS="-lcurl"
--    fi
--    save_LDFLAGS="$LDFLAGS"
--    LDFLAGS="$CURL_LDFLAGS $CURL_LIBS"
--    { $as_echo "$as_me:${as_lineno-$LINENO}: checking for curl_easy_init in -lcurl" >&5
--$as_echo_n "checking for curl_easy_init in -lcurl... " >&6; }
--if ${ac_cv_lib_curl_curl_easy_init+:} false; then :
--  $as_echo_n "(cached) " >&6
--else
--  ac_check_lib_save_LIBS=$LIBS
--LIBS="-lcurl $CURL_LIBS
--     $LIBS"
--cat confdefs.h - <<_ACEOF >conftest.$ac_ext
--/* end confdefs.h.  */
--
--/* Override any GCC internal prototype to avoid an error.
--   Use char because int might match the return type of a GCC
--   builtin and then its argument prototype would still apply.  */
--#ifdef __cplusplus
--extern "C"
--#endif
--char curl_easy_init ();
--int
--main ()
--{
--return curl_easy_init ();
--  ;
--  return 0;
--}
--_ACEOF
--if ac_fn_c_try_link "$LINENO"; then :
--  ac_cv_lib_curl_curl_easy_init=yes
--else
--  ac_cv_lib_curl_curl_easy_init=no
--fi
--rm -f core conftest.err conftest.$ac_objext \
--    conftest$ac_exeext conftest.$ac_ext
--LIBS=$ac_check_lib_save_LIBS
--fi
--{ $as_echo "$as_me:${as_lineno-$LINENO}: result: $ac_cv_lib_curl_curl_easy_init" >&5
--$as_echo "$ac_cv_lib_curl_curl_easy_init" >&6; }
--if test "x$ac_cv_lib_curl_curl_easy_init" = xyes; then :
--
--            curl_msg="";
--            have_curl="yes";
--            CLAMSUBMIT_LIBS="$CLAMSUBMIT_LIBS $CURL_LDFLAGS $CURL_LIBS";
--            CLAMSUBMIT_CFLAGS="$CLAMSUBMIT_CFLAGS $CURL_CPPFLAGS";
--            FRESHCLAM_LIBS="$FRESHCLAM_LIBS $CURL_LDFLAGS $CURL_LIBS";
--            FRESHCLAM_CPPFLAGS="$FRESHCLAM_CPPFLAGS $CURL_CPPFLAGS"
--
--else
--
--            as_fn_error $? "Your libcurl is misconfigured. libcurl (e.g. libcurl-devel) is required in order to build freshclam and clamsubmit." "$LINENO" 5
-+     fi
- 
--fi
-+     have_curl="yes"
-+     LDFLAGS="$save_LDFLAGS"
-+     LDFLAGS="$CURL_LDFLAGS $CURL_LIBS"
-+ fi
- 
-     LDFLAGS="$save_LDFLAGS"
- else
-- 
2.41.0


