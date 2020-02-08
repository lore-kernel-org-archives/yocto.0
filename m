Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
 by mx.groups.io with SMTP id smtpd.web11.9707.1581195455003769069
 for <yocto@lists.yoctoproject.org>;
 Sat, 08 Feb 2020 12:57:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=L2PODFkV;
 spf=pass (domain: gmail.com, ip: 209.85.215.172, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f172.google.com with SMTP id j15so1686422pgm.6
        for <yocto@lists.yoctoproject.org>; Sat, 08 Feb 2020 12:57:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=SFMYuUucl4JBd42uUlow3buswpykAWOh15OydC+ELJk=;
        b=L2PODFkVuYG4lcttVfhsxxKiSt91YiljG3f612Mr3/9/sFgCcLCPrdhN7UMRah/ux4
         zm0b6d3ef/1Xv1SuRERQCkdA9PyDCVSOsVwwRoG56QJAFBcoIb5JQv+Id4134pykqbAK
         OiQdH3XNwlNaps0jp15E7TanFTyzNAEBCOnrOQbzfqUPdIUQPxcC17K8QDrL7nmkoPVc
         L1ry0DjUOTW9Q6Zbgfd7lv7T5Uh2FgVg99vDYjGbv/SiJC4s0A93FQdm/K1g6GvLSg79
         R5uqCdMFGdT/NvwwbSgnCp9h05HRVKrtSgg0tbjE/A1aH9V8nLdaM0a4ATAOdJhM24+p
         c/Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=SFMYuUucl4JBd42uUlow3buswpykAWOh15OydC+ELJk=;
        b=Vd7hpcWEDeAPYwhJcYSkEo1GZ/pyLtlI0+z8dR7GIjwl+xk4TclRWawYeH7aBlSve9
         ABOBhMAhgdT4b654mgMjoIZ4Fp3Uorknc2ojLkmXykcsDPIU1aD+0ktaLspK8iJBWFP5
         VuWU6tENAPB0efMj63HlqBZ5O+tkaxSP9edR3oSTknRm2sIItaxmCxDtevGBc1V15UUq
         rMaGKc4GNipyvgXlLsGKUc2gbSPAjKIU0fm79h/s+a/sqIUUF0sQ1gDj1KYSwfVMho/6
         7ObwRGggw77oBXRXy9D+vM+A8HTaLMST4+7OYUedVnstLMYLROWor0tJ9U0SxCxjtoYl
         e7Fw==
X-Gm-Message-State: APjAAAWDtxwmgV8F1PELw98e0p+5Svf3ao65n7Jd5+Q2SzFc8G13AMlF
	/hmKqICBQxpS26lLyG9jqk2irhKK
X-Google-Smtp-Source: APXvYqxx/Pwz6BMUAj8tNlcBRIN1H/ZQGVh6Jfkc9CRjIY70/u/ohEv311+mNra5r9idID0O3DsW7A==
X-Received: by 2002:a65:68ce:: with SMTP id k14mr6136606pgt.336.1581195454122;
        Sat, 08 Feb 2020 12:57:34 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:2c7a:b2c:b402:2f65])
        by smtp.gmail.com with ESMTPSA id k5sm6839328pju.29.2020.02.08.12.57.33
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Feb 2020 12:57:33 -0800 (PST)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/2] tpm2-tcti-uefi: fix build issue for i386 machine
Date: Sat,  8 Feb 2020 12:57:31 -0800
Message-Id: <20200208205732.24783-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../files/fix_header_file.patch               | 25 +++++++++++++++++
 .../files/tpm2-get-caps-fixed.patch           | 23 +++++++++++++++
 ...p-inserting-host-directories-into-co.patch | 13 ++++++++-
 .../tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb    | 28 +++++++++++--------
 4 files changed, 77 insertions(+), 12 deletions(-)
 create mode 100644 meta-tpm/recipes-tpm2/tpm2-tcti-uefi/files/fix_header_file.patch
 create mode 100644 meta-tpm/recipes-tpm2/tpm2-tcti-uefi/files/tpm2-get-caps-fixed.patch

diff --git a/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/files/fix_header_file.patch b/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/files/fix_header_file.patch
new file mode 100644
index 0000000..fc730e1
--- /dev/null
+++ b/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/files/fix_header_file.patch
@@ -0,0 +1,25 @@
+Error building for i386 target in cross env
+
+#include <efi/x86_64/efibind.h>
+
+ARCH is host arch, not target arch
+
+Upstream-Status: Submitted 
+
+Signed-off-by: Armin Kuster <akuster808@gmail.com>
+Index: git/src/uefi-types.h
+===================================================================
+--- git.orig/src/uefi-types.h
++++ git/src/uefi-types.h
+@@ -3,9 +3,9 @@
+ #define UEFI_TYPES_H
+ 
+ #ifndef EDK2_BUILD
+-#if ARCH == x86_64
++#if defined(__x86_64__)
+ #include <efi/x86_64/efibind.h>
+-#elif ARCH == ia32
++#elif defined(__i386__)
+ #include <efi/ia32/efibind.h>
+ #else
+ #error "Unsupported ARCH."
diff --git a/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/files/tpm2-get-caps-fixed.patch b/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/files/tpm2-get-caps-fixed.patch
new file mode 100644
index 0000000..bc70913
--- /dev/null
+++ b/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/files/tpm2-get-caps-fixed.patch
@@ -0,0 +1,23 @@
+Fix defined to match tpm2-tools 4.1.1
+
+Upstream-Status: Submitted https://github.com/tpm2-software/tpm2-tcti-uefi/pull/81
+Signed-off-by: Armin Kuster <akuster808@gmail.com>
+
+Index: git/example/tpm2-get-caps-fixed.c
+===================================================================
+--- git.orig/example/tpm2-get-caps-fixed.c
++++ git/example/tpm2-get-caps-fixed.c
+@@ -140,11 +140,11 @@ dump_tpm_properties_fixed (TPMS_TAGGED_P
+             Print (L"TPM2_PT_INPUT_BUFFER:\n"
+                     "  value: 0x%X\n", value);
+             break;
+-        case TPM2_PT_HR_TRANSIENT_MIN:
++        case TPM2_PT_TPM2_HR_TRANSIENT_MIN:
+             Print (L"TPM2_PT_TPM2_HR_TRANSIENT_MIN:\n"
+                     "  value: 0x%X\n", value);
+             break;
+-        case TPM2_PT_HR_PERSISTENT_MIN:
++        case TPM2_PT_TPM2_HR_PERSISTENT_MIN:
+             Print (L"TPM2_PT_TPM2_HR_PERSISTENT_MIN:\n"
+                     "  value: 0x%X\n", value);
+             break;
diff --git a/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi/0001-configure.ac-stop-inserting-host-directories-into-co.patch b/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi/0001-configure.ac-stop-inserting-host-directories-into-co.patch
index 3b54ddd..b3f2287 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi/0001-configure.ac-stop-inserting-host-directories-into-co.patch
+++ b/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi/0001-configure.ac-stop-inserting-host-directories-into-co.patch
@@ -16,7 +16,18 @@ Index: git/configure.ac
 ===================================================================
 --- git.orig/configure.ac
 +++ git/configure.ac
-@@ -81,7 +81,7 @@ AC_ARG_WITH([efi-lds],
+@@ -70,10 +70,6 @@ EXTRA_CFLAGS+="-I${with_efi_includedir}
+ # compiler flags / search path
+ CFLAGS_TMP="$CFLAGS"
+ CFLAGS="$CFLAGS $EXTRA_CFLAGS"
+-AC_CHECK_HEADERS([efi.h efilib.h],
+-                 [],
+-                 [AC_MSG_ERROR([Missing gnu-efi headers.])],
+-                 [#include <efi.h>])
+ CFLAGS="$CFLAGS_TMP"
+ 
+ # path to linker script from gnu-efi
+@@ -81,7 +77,7 @@ AC_ARG_WITH([efi-lds],
              AS_HELP_STRING([--with-efi-lds=LDS_PATH],[Path to gnu-efi lds file.]),
              [],
              [with_efi_lds="/usr/lib/elf_${ARCH}_efi.lds"])
diff --git a/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb b/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb
index f4918ec..67b36b7 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb
@@ -2,13 +2,15 @@ SUMMARY = "TCTI module for use with TSS2 libraries in UEFI environment"
 SECTION = "security/tpm"
 LICENSE = "BSD-2-Clause"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=500b2e742befc3da00684d8a1d5fd9da"
-DEPENDS = "libtss2-dev gnu-efi-native gnu-efi pkgconfig autoconf-archive-native"
+DEPENDS = "libtss2-dev libtss2-mu-dev gnu-efi-native gnu-efi pkgconfig autoconf-archive-native"
 
 SRC_URI = "git://github.com/tpm2-software/tpm2-tcti-uefi.git \
            file://configure_oe_fixup.patch \
            file://0001-configure.ac-stop-inserting-host-directories-into-co.patch \
+           file://tpm2-get-caps-fixed.patch \
+           file://fix_header_file.patch \
           "
-SRCREV = "431c85f45dcdca5da003ed47c6e9814282476938"
+SRCREV = "0241b08f069f0fdb3612f5c1b938144dbe9be811"
 
 S = "${WORKDIR}/git"
 
@@ -16,6 +18,17 @@ inherit autotools pkgconfig
 
 EFIDIR ?= "/EFI/BOOT"
 
+EFI_ARCH_x86 = "ia32"
+EFI_ARCH_x86-64 = "x86_64"
+
+CFLAGS_append = " -I${STAGING_INCDIR}/efi -I${STAGING_INCDIR}/efi/${EFI_ARCH}"
+
+EXTRA_OECONF_append = " \
+    --with-efi-includedir=${STAGING_INCDIR} \
+    --with-efi-crt0=${STAGING_LIBDIR}/crt0-efi-${EFI_ARCH}.o \
+    --with-efi-lds=${STAGING_LIBDIR}/elf_${EFI_ARCH}_efi.lds \
+"
+
 do_compile_append() {
 	oe_runmake example
 }
@@ -25,15 +38,8 @@ do_install_append() {
 	install -m 0755 "${B}"/example/*.efi "${D}${EFIDIR}"
 }
 
-EFI_ARCH_x86 = "ia32"
-EFI_ARCH_x86-64 = "x86_64"
-
 COMPATIBLE_HOST = "(i.86|x86_64).*-linux"
-EXTRA_OECONF_append = "\
-    --with-efi-includedir=${STAGING_INCDIR}/efi \
-    --with-efi-crt0=${STAGING_LIBDIR_NATIVE}/crt0-efi-${EFI_ARCH}.o \
-    --with-efi-lds=${STAGING_LIBDIR_NATIVE}/elf_${EFI_ARCH}_efi.lds \
-"
-RDEPENDS_${PN} = "gnu-efi"
 
 FILES_${PN} += "${EFIDIR}"
+
+RDEPENDS_${PN} = "gnu-efi libtss2-mu"
-- 
2.17.1

