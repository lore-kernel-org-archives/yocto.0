Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
 by mx.groups.io with SMTP id smtpd.web10.9790.1581269217461632960
 for <yocto@lists.yoctoproject.org>;
 Sun, 09 Feb 2020 09:26:57 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=RdoQq0Q0;
 spf=pass (domain: gmail.com, ip: 209.85.216.52, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f52.google.com with SMTP id r67so3134676pjb.0
        for <yocto@lists.yoctoproject.org>; Sun, 09 Feb 2020 09:26:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=SFMYuUucl4JBd42uUlow3buswpykAWOh15OydC+ELJk=;
        b=RdoQq0Q0WMIC22BjcQA6o64jJL0tOkr6Ln1OZhY/Tt9vjUWl1KPJzSzL5glZU/zp/1
         7HFQbinTzLYlA9MLnKitoy7ghbKP+OkajEnWhEY20UgpXXt3F8QIS7Q95Se2j1Z1WHOC
         WJ58T3c43nGqqEroq2htyU+2AplSVkaRi9dcUqtGX6tvayLnwKj+Fv/udCg7WqH+E6Yh
         VFh85PzvBehD+MnO3K7NI6ZJNH6VtRXJ89UWDJg4Zk1UR76wEETRpyNTwtb+ak66K1Is
         oAKCy0Fcgfhg69/ToF7R+p0bJATSDGtrJxZHDiequA9FUPgDGDXSJziCATSLTjLrDDiN
         c9SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=SFMYuUucl4JBd42uUlow3buswpykAWOh15OydC+ELJk=;
        b=DRa9/wwvgSNZuByd/sGHEssZpvC0ue0RzdrMPvp3GRrx2G1jQRqWHBPmtJbxRGOXKh
         bzgwvhbUw2Y5fJVg2g/Zeu5xAEJQ5d+u1gAARYB1U8t4LLooqaMkDukkgwGV5mmkDgME
         nLIjEiYstwHfDDWw5fcj8Guwc56uUcHVdpglBXLfjAfa8AJSm3S91wi0yXQCZ3XLIcQC
         T70DxbVL+KvGp+NDy9v6iFL3elnp0QJW/8kpjBkNHZIYKUr4Xb7pCk3WL2RnDqKy1/hG
         1HQ93SmqCsDrpnHZUb9LIh7IbxaCXf6f3+HINwCZrEAFi7KP7nvoU/AhTaoob8hrUdoS
         MeYg==
X-Gm-Message-State: APjAAAV/uY9VDNtC+xnKnYV70v0uanVfaEQf+d9LLr41h4klum3T48ej
	e0Uc6mTmtwO0YSnlt6DlJZsTAMfc
X-Google-Smtp-Source: APXvYqxgDfAcESxowC5FyA8ELsfylLdKN42f38B4ZHqd8SzJF8Jr8+ZHR6dLDryHl1hE2CE+SSSKLA==
X-Received: by 2002:a17:90a:a587:: with SMTP id b7mr16142631pjq.18.1581269216615;
        Sun, 09 Feb 2020 09:26:56 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:154b:3780:5122:4aa9])
        by smtp.gmail.com with ESMTPSA id x143sm9956609pgx.54.2020.02.09.09.26.55
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 Feb 2020 09:26:55 -0800 (PST)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/3] tpm2-tcti-uefi: fix build issue for i386 machine
Date: Sun,  9 Feb 2020 09:26:52 -0800
Message-Id: <20200209172654.1111-1-akuster808@gmail.com>
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

