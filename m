Return-Path: <naveen.kumar.saini@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD066C433FE
	for <webhook@archiver.kernel.org>; Thu, 10 Nov 2022 06:49:28 +0000 (UTC)
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by mx.groups.io with SMTP id smtpd.web10.3978.1668062964834609945
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Nov 2022 22:49:27 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=XDYXPJm/;
 spf=pass (domain: intel.com, ip: 192.55.52.120, mailfrom: naveen.kumar.saini@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1668062967; x=1699598967;
  h=from:to:subject:date:message-id:in-reply-to:references:
   mime-version:content-transfer-encoding;
  bh=iTrLuAmbe5LA/XFsN37JdoOdmu1fe+jq7rJavfql1l4=;
  b=XDYXPJm/Y0xpib+oA2ORCUgLwNfgfVD4d1MyynANKpSNSJMh+oHMaHt4
   TS8DNKk/KMTeW1bM4CNEESsec4dspO+GYCd+TwKtyME8I1Mvv729FBQdV
   Bg3wHW/EwlyRwxIwszQxGbubSxEL0eX+nmJECLX8uU1f3XgbSv2Mo0K5/
   7WPZT0CSsktKUdn/1g+j0ncFErN6dJ0uUFccJ3tmlad5dVVJh5gV9PADi
   E5D/SppFsqRXygIDq3u7htx9GDE8hN6+Z5i4M2d19mhqk4wzLFISFsNha
   82xFpi4ELq2hJM26IqaJUKp7LGSQjxB9l5g4GsEWEOIVye29TLDumTKxH
   Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="309944899"
X-IronPort-AV: E=Sophos;i="5.96,153,1665471600"; 
   d="scan'208";a="309944899"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Nov 2022 22:49:27 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="882241265"
X-IronPort-AV: E=Sophos;i="5.96,153,1665471600"; 
   d="scan'208";a="882241265"
Received: from saininav-desk1.png.intel.com ([172.30.130.9])
  by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Nov 2022 22:49:26 -0800
From: Naveen Saini <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH v2 4/5] arc: drop obsolete recipes and bbappends
Date: Thu, 10 Nov 2022 15:09:58 +0800
Message-Id: <20221110070959.3104172-4-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221110070959.3104172-1-naveen.kumar.saini@intel.com>
References: <20221110070959.3104172-1-naveen.kumar.saini@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 10 Nov 2022 06:49:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58533

Remove recipes and bbappends which are not being used.

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 .../classes/siteinfo-zephyr.bbclass           | 14 ---
 .../recipes-core/newlib/newlib_%.bbappend     | 22 -----
 .../binutils/binutils-2.26arc.inc             | 37 --------
 .../binutils-cross-canadian_2.26arc.bb        |  7 --
 .../binutils/binutils-cross_2.26arc.bb        |  8 --
 ...e54244cd02bdcf4f1057be3ce96631f35ac3.patch | 83 ------------------
 .../recipes-devtools-arc/gcc/gcc-6.x.arc.inc  | 85 -------------------
 .../gcc/gcc-cross-canadian_6.x.arc.bb         |  8 --
 .../gcc/gcc-cross_6.x.arc .bb                 | 11 ---
 .../gcc/gcc-source_6.x.arc.bb                 |  2 -
 .../gcc/libgcc_6.x.arc.bb                     | 14 ---
 .../gcc/gcc-cross_6.%.bbappend                |  1 -
 .../recipes-devtools/gcc/libgcc_6.%.bbappend  |  3 -
 13 files changed, 295 deletions(-)
 delete mode 100644 meta-zephyr-core/recipes-core/newlib/newlib_%.bbappend
 delete mode 100644 meta-zephyr-core/recipes-devtools-arc/binutils/binutils-2.26arc.inc
 delete mode 100644 meta-zephyr-core/recipes-devtools-arc/binutils/binutils-cross-canadian_2.26arc.bb
 delete mode 100644 meta-zephyr-core/recipes-devtools-arc/binutils/binutils-cross_2.26arc.bb
 delete mode 100644 meta-zephyr-core/recipes-devtools-arc/gcc/files/cbd8e54244cd02bdcf4f1057be3ce96631f35ac3.patch
 delete mode 100644 meta-zephyr-core/recipes-devtools-arc/gcc/gcc-6.x.arc.inc
 delete mode 100644 meta-zephyr-core/recipes-devtools-arc/gcc/gcc-cross-canadian_6.x.arc.bb
 delete mode 100644 meta-zephyr-core/recipes-devtools-arc/gcc/gcc-cross_6.x.arc .bb
 delete mode 100644 meta-zephyr-core/recipes-devtools-arc/gcc/gcc-source_6.x.arc.bb
 delete mode 100644 meta-zephyr-core/recipes-devtools-arc/gcc/libgcc_6.x.arc.bb
 delete mode 100644 meta-zephyr-core/recipes-devtools/gcc/gcc-cross_6.%.bbappend
 delete mode 100644 meta-zephyr-core/recipes-devtools/gcc/libgcc_6.%.bbappend

diff --git a/meta-zephyr-core/classes/siteinfo-zephyr.bbclass b/meta-zephyr-core/classes/siteinfo-zephyr.bbclass
index b84a9b2..fc883e0 100644
--- a/meta-zephyr-core/classes/siteinfo-zephyr.bbclass
+++ b/meta-zephyr-core/classes/siteinfo-zephyr.bbclass
@@ -1,17 +1,3 @@
-def arc_siteinfo_setfunc(archinfo, osinfo, targetinfo, d):
-    archinfo['arc'] = "endian-little bit-32 "
-    osinfo['linux'] = "common-linux common-glibc"
-    targetinfo['arc-linux'] = "arc-linux"
-    return archinfo, osinfo, targetinfo
-
-SITEINFO_EXTRA_DATAFUNCS += "arc_siteinfo_setfunc"
-
-def arc_machdata_setfunc(machdata, d):
-    machdata["elf"]["arc"] = (195, 0, 0, True, 32)
-    return machdata
-
-PACKAGEQA_EXTRA_MACHDEFFUNCS += "arc_machdata_setfunc"
-
 def iamcu_siteinfo_setfunc(archinfo, osinfo, targetinfo, d):
     archinfo['iamcu'] = "endian-little bit-32 "
     osinfo['linux'] = "common-linux common-glibc"
diff --git a/meta-zephyr-core/recipes-core/newlib/newlib_%.bbappend b/meta-zephyr-core/recipes-core/newlib/newlib_%.bbappend
deleted file mode 100644
index dfecb99..0000000
--- a/meta-zephyr-core/recipes-core/newlib/newlib_%.bbappend
+++ /dev/null
@@ -1,22 +0,0 @@
-########################################################################
-#
-# ARC specific
-#
-########################################################################
-LIC_FILES_CHKSUM:arc = "file://COPYING;md5=59530bdf33659b29e73d4adb9f9f6552 \
-                    file://COPYING3.LIB;md5=6a6a8e020838b23406c81b19c1d46df6 \
-                    file://COPYING3;md5=d32239bcb673463ab874e80d47fae504 \
-                    file://COPYING.LIB;md5=9f604d8a4f8e74f4f5140845a21b6674 \
-                    file://COPYING.NEWLIB;md5=fced02ba02d66f274d4847d27e80af74 \
-                    file://newlib/libc/posix/COPYRIGHT;md5=103468ff1982be840fdf4ee9f8b51bbf \
-                    file://newlib/libc/sys/linux/linuxthreads/LICENSE;md5=73640207fbc79b198c7ffd4ad4d97aa0"
-
-#Tag arc-2016.03
-SRCREV:arc = "e4da0f88abe8dd2a0b947bcf7cb8b3736ab94f33"
-SRC_URI:arc = "git://github.com/foss-for-synopsys-dwc-arc-processors/newlib.git;branch=arc-2.3"
-S:arc  = "${WORKDIR}/git"
-
-# ERROR: QA Issue: Architecture did not match (195 to 93)
-INSANE_SKIP:${PN}:arc += " arch "
-
-
diff --git a/meta-zephyr-core/recipes-devtools-arc/binutils/binutils-2.26arc.inc b/meta-zephyr-core/recipes-devtools-arc/binutils/binutils-2.26arc.inc
deleted file mode 100644
index bfe0960..0000000
--- a/meta-zephyr-core/recipes-devtools-arc/binutils/binutils-2.26arc.inc
+++ /dev/null
@@ -1,37 +0,0 @@
-LIC_FILES_CHKSUM="\
-    file://COPYING;md5=59530bdf33659b29e73d4adb9f9f6552\
-    file://COPYING.LIB;md5=9f604d8a4f8e74f4f5140845a21b6674\
-    file://COPYING3;md5=d32239bcb673463ab874e80d47fae504\
-    file://COPYING3.LIB;md5=6a6a8e020838b23406c81b19c1d46df6\
-    file://gas/COPYING;md5=d32239bcb673463ab874e80d47fae504\
-    file://include/COPYING;md5=59530bdf33659b29e73d4adb9f9f6552\
-    file://include/COPYING3;md5=d32239bcb673463ab874e80d47fae504\
-    file://libiberty/COPYING.LIB;md5=a916467b91076e631dd8edb7424769c7\
-    file://bfd/COPYING;md5=d32239bcb673463ab874e80d47fae504\
-    "
-
-def binutils_branch_version(d):
-    pvsplit = d.getVar('PV', True).split('.')
-    return pvsplit[0] + "_" + pvsplit[1]
-
-BINUPV = "${@binutils_branch_version(d)}"
-
-PV = "2.26+gitarc"
-
-#SRCREV = "bcbe0bfce780e426f2e3b78013cb49326ee76824"
-SRCREV="3bfd1155a7f0ff9e10c5ba91f089ae0bb5bfbde1"
-SRC_URI = "\
-     git://github.com/foss-for-synopsys-dwc-arc-processors/binutils-gdb.git;branch=arc-2.26-dev \
-     "
-
-S  = "${WORKDIR}/git"
-
-do_configure:prepend () {
-        rm -rf ${S}/gdb ${S}/libdecnumber ${S}/readline ${S}/sim
-}
-
-CONFIG_SHELL = "/bin/bash"
-
-sysroot_stage_all:append() {
-	sysroot_stage_dir ${D}${exec_prefix}/extlib ${SYSROOT_DESTDIR}${exec_prefix}/extlib
-}
diff --git a/meta-zephyr-core/recipes-devtools-arc/binutils/binutils-cross-canadian_2.26arc.bb b/meta-zephyr-core/recipes-devtools-arc/binutils/binutils-cross-canadian_2.26arc.bb
deleted file mode 100644
index 88f0ad7..0000000
--- a/meta-zephyr-core/recipes-devtools-arc/binutils/binutils-cross-canadian_2.26arc.bb
+++ /dev/null
@@ -1,7 +0,0 @@
-require recipes-devtools/binutils/binutils.inc
-require recipes-devtools-arc/binutils/binutils-2.26arc.inc
-require recipes-devtools/binutils/binutils-cross-canadian.inc
-
-do_install:append () {
-	rm -f ${D}/${libdir}/../lib/libiberty*
-}
diff --git a/meta-zephyr-core/recipes-devtools-arc/binutils/binutils-cross_2.26arc.bb b/meta-zephyr-core/recipes-devtools-arc/binutils/binutils-cross_2.26arc.bb
deleted file mode 100644
index 3d94fea..0000000
--- a/meta-zephyr-core/recipes-devtools-arc/binutils/binutils-cross_2.26arc.bb
+++ /dev/null
@@ -1,8 +0,0 @@
-require recipes-devtools/binutils/binutils.inc
-require binutils-2.26arc.inc
-require recipes-devtools/binutils/binutils-cross.inc
-
-SRC_URI:remove = "file://no-tooldirpaths.patch"
-SRC_URI:remove = "file://0002-binutils-cross-Do-not-generate-linker-script-directo.patch"
-
-#COMPATIBLE_MACHINE = "arc"
diff --git a/meta-zephyr-core/recipes-devtools-arc/gcc/files/cbd8e54244cd02bdcf4f1057be3ce96631f35ac3.patch b/meta-zephyr-core/recipes-devtools-arc/gcc/files/cbd8e54244cd02bdcf4f1057be3ce96631f35ac3.patch
deleted file mode 100644
index d709cd0..0000000
--- a/meta-zephyr-core/recipes-devtools-arc/gcc/files/cbd8e54244cd02bdcf4f1057be3ce96631f35ac3.patch
+++ /dev/null
@@ -1,83 +0,0 @@
-From cbd8e54244cd02bdcf4f1057be3ce96631f35ac3 Mon Sep 17 00:00:00 2001
-From: Claudiu Zissulescu <claziss@gmail.com>
-Date: Tue, 3 Jan 2017 12:06:28 -0500
-Subject: [PATCH] [ARC] Prevent moving stores to the frame before the stack
- adjustment.
-
-If the stack pointer is needed, emit a special barrier that will prevent
-the scheduler from moving stores to the frame before the stack adjustment.
-
-2017-01-03  Claudiu Zissulescu  <claziss@synopsys.com>
-
-	* config/arc/arc.c (arc_expand_prologue): Emit a special barrier
-	to prevent store reordering.
-	* config/arc/arc.md (UNSPEC_ARC_STKTIE): Define.
-	(type): Add block type.
-	(stack_tie): Define special instruction to be used in
-	expand_prologue.
----
- gcc/config/arc/arc.c  | 10 +++++++++-
- gcc/config/arc/arc.md | 15 ++++++++++++++-
- 2 files changed, 23 insertions(+), 2 deletions(-)
-
-diff --git a/gcc/config/arc/arc.c b/gcc/config/arc/arc.c
-index 6f21fc3..110556c 100644
---- a/gcc/config/arc/arc.c
-+++ b/gcc/config/arc/arc.c
-@@ -3101,7 +3101,15 @@ arc_expand_prologue (void)
-   frame_size_to_allocate -= first_offset;
-   /* Allocate the stack frame.  */
-   if (frame_size_to_allocate > 0)
--    frame_stack_add ((HOST_WIDE_INT) 0 - frame_size_to_allocate);
-+    {
-+      frame_stack_add ((HOST_WIDE_INT) 0 - frame_size_to_allocate);
-+      /* If the frame pointer is needed, emit a special barrier that
-+	 will prevent the scheduler from moving stores to the frame
-+	 before the stack adjustment.  */
-+      if (arc_frame_pointer_needed ())
-+	emit_insn (gen_stack_tie (stack_pointer_rtx,
-+				  hard_frame_pointer_rtx));
-+    }
- 
-   /* Setup the gp register, if needed.  */
-   if (crtl->uses_pic_offset_table)
-diff --git a/gcc/config/arc/arc.md b/gcc/config/arc/arc.md
-index 16f71b3..448157c 100644
---- a/gcc/config/arc/arc.md
-+++ b/gcc/config/arc/arc.md
-@@ -135,6 +135,7 @@
-   UNSPEC_ARC_VMAC2HU
-   UNSPEC_ARC_VMPY2H
-   UNSPEC_ARC_VMPY2HU
-+  UNSPEC_ARC_STKTIE
-   ])
- 
- (define_c_enum "vunspec" [
-@@ -204,7 +205,7 @@
-    simd_vcompare, simd_vpermute, simd_vpack, simd_vpack_with_acc,
-    simd_valign, simd_valign_with_acc, simd_vcontrol,
-    simd_vspecial_3cycle, simd_vspecial_4cycle, simd_dma, mul16_em, div_rem,
--   fpu"
-+   fpu, block"
-   (cond [(eq_attr "is_sfunc" "yes")
- 	 (cond [(match_test "!TARGET_LONG_CALLS_SET && (!TARGET_MEDIUM_CALLS || GET_CODE (PATTERN (insn)) != COND_EXEC)") (const_string "call")
- 		(match_test "flag_pic") (const_string "sfunc")]
-@@ -6480,6 +6481,18 @@
-   (set_attr "predicable" "yes,no,no,yes,no")
-   (set_attr "cond" "canuse,nocond,nocond,canuse_limm,nocond")])
- 
-+(define_insn "stack_tie"
-+  [(set (mem:BLK (scratch))
-+	(unspec:BLK [(match_operand:SI 0 "register_operand" "rb")
-+		     (match_operand:SI 1 "register_operand" "rb")]
-+		    UNSPEC_ARC_STKTIE))]
-+  ""
-+  ""
-+  [(set_attr "length" "0")
-+   (set_attr "iscompact" "false")
-+   (set_attr "type" "block")]
-+  )
-+
- ;; include the arc-FPX instructions
- (include "fpx.md")
- 
diff --git a/meta-zephyr-core/recipes-devtools-arc/gcc/gcc-6.x.arc.inc b/meta-zephyr-core/recipes-devtools-arc/gcc/gcc-6.x.arc.inc
deleted file mode 100644
index 5b3772e..0000000
--- a/meta-zephyr-core/recipes-devtools-arc/gcc/gcc-6.x.arc.inc
+++ /dev/null
@@ -1,85 +0,0 @@
-require recipes-devtools/gcc/gcc-common.inc
-
-# Third digit in PV should be incremented after a minor release
-
-PV = "6.x.arc"
-
-# BINV should be incremented to a revision after a minor gcc release
-
-BINV = "6.3.0"
-
-FILESEXTRAPATHS =. "${FILE_DIRNAME}/gcc:${COREBASE}/meta/recipes-devtools/gcc/gcc-6.2:"
-
-DEPENDS =+ "mpfr gmp libmpc zlib"
-NATIVEDEPS = "mpfr-native gmp-native libmpc-native zlib-native"
-
-LICENSE = "GPL-3.0-with-GCC-exception & GPLv3"
-
-LIC_FILES_CHKSUM = "\
-    file://COPYING;md5=59530bdf33659b29e73d4adb9f9f6552 \
-    file://COPYING3;md5=d32239bcb673463ab874e80d47fae504 \
-    file://COPYING3.LIB;md5=6a6a8e020838b23406c81b19c1d46df6 \
-    file://COPYING.LIB;md5=2d5025d4aa3495befef8f17206a5b0a1 \
-    file://COPYING.RUNTIME;md5=fe60d87048567d4fe8c8a0ed2448bcc8 \
-"
-
-# tag arc-2017.03-eng009
-SRCREV = "7fe9c76c79cd9d263b839b4c8bd701943150e059"
-
-SRC_URI = "\
-    git://github.com/foss-for-synopsys-dwc-arc-processors/gcc.git;protocol=https;branch=arc-2017.03 \
-"
-
-S = "${TMPDIR}/work-shared/gcc-${PV}-${PR}/git"
-B = "${WORKDIR}/gcc-${PV}/build.${HOST_SYS}.${TARGET_SYS}"
-
-# Language Overrides
-FORTRAN = ""
-JAVA = ""
-
-LTO = "--enable-lto"
-
-EXTRA_OECONF_BASE = "\
-    ${LTO} \
-    --enable-libssp \
-    --disable-bootstrap \
-    --disable-libmudflap \
-    --with-system-zlib \
-    --enable-linker-build-id \
-    --with-ppl=no \
-    --with-cloog=no \
-    --enable-checking=release \
-    --enable-cheaders=c_global \
-"
-
-EXTRA_OECONF_INITIAL = "\
-    --disable-libmudflap \
-    --disable-libgomp \
-    --disable-libssp \
-    --disable-libquadmath \
-    --with-system-zlib \
-    --disable-lto \
-    --disable-plugin \
-    --enable-decimal-float=no \
-"
-
-EXTRA_OECONF_INTERMEDIATE = "\
-    --disable-libmudflap \
-    --disable-libgomp \
-    --disable-libquadmath \
-    --with-system-zlib \
-    --disable-lto \
-    --disable-plugin \
-    --disable-libssp \
-"
-
-EXTRA_OECONF:append:libc-uclibc = " --disable-decimal-float "
-
-EXTRA_OECONF:append:arc = ' --with-pkgversion="ARCompact/ARCv2 ISA elf32 toolchain ${SRCREV}"'
-
-EXTRA_OECONF_PATHS = "\
-    --with-gxx-include-dir=${STAGING_DIR_TARGET}${target_includedir}/c++/${BINV} \
-    --with-sysroot=${STAGING_DIR_TARGET} \
-    --with-build-sysroot=${STAGING_DIR_TARGET} \
-"
-
diff --git a/meta-zephyr-core/recipes-devtools-arc/gcc/gcc-cross-canadian_6.x.arc.bb b/meta-zephyr-core/recipes-devtools-arc/gcc/gcc-cross-canadian_6.x.arc.bb
deleted file mode 100644
index bc4a3b3..0000000
--- a/meta-zephyr-core/recipes-devtools-arc/gcc/gcc-cross-canadian_6.x.arc.bb
+++ /dev/null
@@ -1,8 +0,0 @@
-require recipes-devtools-arc/gcc/gcc-${PV}.inc
-require recipes-devtools/gcc/gcc-cross-canadian.inc
-
-EXTRA_OECONF:append:libc-baremetal = " --without-headers"
-EXTRA_OECONF:remove:libc-baremetal = "--with-sysroot=/not/exist"
-EXTRA_OECONF:remove:libc-baremetal = "--with-build-sysroot=${STAGING_DIR_TARGET}"
-EXTRA_OECONF:append:libc-baremetal = " --enable-plugin "
-
diff --git a/meta-zephyr-core/recipes-devtools-arc/gcc/gcc-cross_6.x.arc .bb b/meta-zephyr-core/recipes-devtools-arc/gcc/gcc-cross_6.x.arc .bb
deleted file mode 100644
index 6cf71c6..0000000
--- a/meta-zephyr-core/recipes-devtools-arc/gcc/gcc-cross_6.x.arc .bb	
+++ /dev/null
@@ -1,11 +0,0 @@
-require recipes-devtools-arc/gcc/gcc-6.x.arc.inc
-require recipes-devtools/gcc/gcc-cross.inc
-
-DEPENDS:remove:libc-baremetal := "virtual/${TARGET_PREFIX}libc-for-gcc"
-EXTRA_OECONF:append:libc-baremetal = " --without-headers"
-EXTRA_OECONF:remove:libc-baremetal = "--with-sysroot=/not/exist"
-EXTRA_OECONF:remove:libc-baremetal = "--enable-threads=posix"
-
-#COMPATIBLE_MACHINE = "arc"
-
-BBCLASSEXTEND = "nativesdk"
diff --git a/meta-zephyr-core/recipes-devtools-arc/gcc/gcc-source_6.x.arc.bb b/meta-zephyr-core/recipes-devtools-arc/gcc/gcc-source_6.x.arc.bb
deleted file mode 100644
index 6272f7d..0000000
--- a/meta-zephyr-core/recipes-devtools-arc/gcc/gcc-source_6.x.arc.bb
+++ /dev/null
@@ -1,2 +0,0 @@
-require recipes-devtools-arc/gcc/gcc-6.x.arc.inc
-require recipes-devtools/gcc/gcc-source.inc
diff --git a/meta-zephyr-core/recipes-devtools-arc/gcc/libgcc_6.x.arc.bb b/meta-zephyr-core/recipes-devtools-arc/gcc/libgcc_6.x.arc.bb
deleted file mode 100644
index 2ad8d34..0000000
--- a/meta-zephyr-core/recipes-devtools-arc/gcc/libgcc_6.x.arc.bb
+++ /dev/null
@@ -1,14 +0,0 @@
-require recipes-devtools-arc/gcc/gcc-6.x.arc.inc
-require recipes-devtools/gcc/libgcc.inc
-
-INHIBIT_PACKAGE_DEBUG_SPLIT = "1"
-#COMPATIBLE_MACHINE = "arc"
-
-EXTRA_OECONF:append:arc = " --disable-multilib"
-#EXTRA_OECONF_append_arc = " --enable-multilib"
-
-# ERROR: QA Issue: Architecture did not match (195 to 93) 
-INSANE_SKIP:${PN}-dev += "arch"
-
-# ERROR: QA Issue: non -staticdev package contains static .a library
-INSANE_SKIP:${PN}-dev += "staticdev"
diff --git a/meta-zephyr-core/recipes-devtools/gcc/gcc-cross_6.%.bbappend b/meta-zephyr-core/recipes-devtools/gcc/gcc-cross_6.%.bbappend
deleted file mode 100644
index 2b2c713..0000000
--- a/meta-zephyr-core/recipes-devtools/gcc/gcc-cross_6.%.bbappend
+++ /dev/null
@@ -1 +0,0 @@
-EXTRA_OECONF:append:armv7m = " --with-arch=armv7-m --with-mode=thumb "
diff --git a/meta-zephyr-core/recipes-devtools/gcc/libgcc_6.%.bbappend b/meta-zephyr-core/recipes-devtools/gcc/libgcc_6.%.bbappend
deleted file mode 100644
index 80bb46c..0000000
--- a/meta-zephyr-core/recipes-devtools/gcc/libgcc_6.%.bbappend
+++ /dev/null
@@ -1,3 +0,0 @@
-EXTRA_OECONF:remove =   "--enable_multilib"
-EXTRA_OECONF:append =   " --disable-multilib"
-
-- 
2.25.1


