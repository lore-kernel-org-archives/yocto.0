Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1CB61E008F2; Sat, 14 Jan 2017 11:05:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 087F4E0077F
	for <yocto@yoctoproject.org>; Sat, 14 Jan 2017 11:05:40 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga104.fm.intel.com with ESMTP; 14 Jan 2017 11:05:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,229,1477983600"; d="scan'208";a="1083026104"
Received: from juro-precision-t5610.jf.intel.com ([10.7.198.149])
	by orsmga001.jf.intel.com with ESMTP; 14 Jan 2017 11:05:38 -0800
From: Juro Bystricky <juro.bystricky@intel.com>
To: yocto@yoctoproject.org
Date: Sat, 14 Jan 2017 11:01:51 -0800
Message-Id: <1484420513-18100-6-git-send-email-juro.bystricky@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1484420513-18100-1-git-send-email-juro.bystricky@intel.com>
References: <1484420513-18100-1-git-send-email-juro.bystricky@intel.com>
Cc: jurobystricky@hotmail.com
Subject: [meta-zephyr][PATCH 5/7] meta-zephyr: Support for ARC toolchain
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
X-List-Received-Date: Sat, 14 Jan 2017 19:05:44 -0000

Added support for ARC toolchains: binutils, gcc, libgcc.
These are not upstreamed, but taken from Symantec ARC repos.

[YOCTO#10659]

Signed-off-by: Juro Bystricky <juro.bystricky@intel.com>
---
 recipes-devtools-arc/binutils/binutils-2.26arc.inc | 37 +++++++++
 .../binutils/binutils-cross-canadian_2.26arc.bb    |  7 ++
 .../binutils/binutils-cross_2.26arc.bb             |  5 ++
 .../cbd8e54244cd02bdcf4f1057be3ce96631f35ac3.patch | 83 ++++++++++++++++++++
 recipes-devtools-arc/gcc/gcc-6.x.arc.inc           | 88 ++++++++++++++++++++++
 .../gcc/gcc-cross-canadian_6.x.arc.bb              |  8 ++
 recipes-devtools-arc/gcc/gcc-cross_6.x.arc .bb     | 11 +++
 recipes-devtools-arc/gcc/gcc-source_6.x.arc.bb     |  2 +
 recipes-devtools-arc/gcc/libgcc_6.x.arc.bb         | 14 ++++
 9 files changed, 255 insertions(+)
 create mode 100644 recipes-devtools-arc/binutils/binutils-2.26arc.inc
 create mode 100644 recipes-devtools-arc/binutils/binutils-cross-canadian_2.26arc.bb
 create mode 100644 recipes-devtools-arc/binutils/binutils-cross_2.26arc.bb
 create mode 100644 recipes-devtools-arc/gcc/files/cbd8e54244cd02bdcf4f1057be3ce96631f35ac3.patch
 create mode 100644 recipes-devtools-arc/gcc/gcc-6.x.arc.inc
 create mode 100644 recipes-devtools-arc/gcc/gcc-cross-canadian_6.x.arc.bb
 create mode 100644 recipes-devtools-arc/gcc/gcc-cross_6.x.arc .bb
 create mode 100644 recipes-devtools-arc/gcc/gcc-source_6.x.arc.bb
 create mode 100644 recipes-devtools-arc/gcc/libgcc_6.x.arc.bb

diff --git a/recipes-devtools-arc/binutils/binutils-2.26arc.inc b/recipes-devtools-arc/binutils/binutils-2.26arc.inc
new file mode 100644
index 0000000..c0c575b
--- /dev/null
+++ b/recipes-devtools-arc/binutils/binutils-2.26arc.inc
@@ -0,0 +1,37 @@
+LIC_FILES_CHKSUM="\
+    file://COPYING;md5=59530bdf33659b29e73d4adb9f9f6552\
+    file://COPYING.LIB;md5=9f604d8a4f8e74f4f5140845a21b6674\
+    file://COPYING3;md5=d32239bcb673463ab874e80d47fae504\
+    file://COPYING3.LIB;md5=6a6a8e020838b23406c81b19c1d46df6\
+    file://gas/COPYING;md5=d32239bcb673463ab874e80d47fae504\
+    file://include/COPYING;md5=59530bdf33659b29e73d4adb9f9f6552\
+    file://include/COPYING3;md5=d32239bcb673463ab874e80d47fae504\
+    file://libiberty/COPYING.LIB;md5=a916467b91076e631dd8edb7424769c7\
+    file://bfd/COPYING;md5=d32239bcb673463ab874e80d47fae504\
+    "
+
+def binutils_branch_version(d):
+    pvsplit = d.getVar('PV', True).split('.')
+    return pvsplit[0] + "_" + pvsplit[1]
+
+BINUPV = "${@binutils_branch_version(d)}"
+
+PV = "2.26+gitarc"
+
+#SRCREV = "bcbe0bfce780e426f2e3b78013cb49326ee76824"
+SRCREV="3bfd1155a7f0ff9e10c5ba91f089ae0bb5bfbde1"
+SRC_URI = "\
+     git://github.com/foss-for-synopsys-dwc-arc-processors/binutils-gdb.git;branch=arc-2.26-dev \
+     "
+
+S  = "${WORKDIR}/git"
+
+do_configure_prepend () {
+        rm -rf ${S}/gdb ${S}/libdecnumber ${S}/readline ${S}/sim
+}
+
+CONFIG_SHELL = "/bin/bash"
+
+sysroot_stage_all_append() {
+	sysroot_stage_dir ${D}${exec_prefix}/extlib ${SYSROOT_DESTDIR}${exec_prefix}/extlib
+}
diff --git a/recipes-devtools-arc/binutils/binutils-cross-canadian_2.26arc.bb b/recipes-devtools-arc/binutils/binutils-cross-canadian_2.26arc.bb
new file mode 100644
index 0000000..24f35fe
--- /dev/null
+++ b/recipes-devtools-arc/binutils/binutils-cross-canadian_2.26arc.bb
@@ -0,0 +1,7 @@
+require recipes-devtools/binutils/binutils.inc
+require recipes-devtools-arc/binutils/binutils-2.26arc.inc
+require recipes-devtools/binutils/binutils-cross-canadian.inc
+
+do_install_append () {
+	rm -f ${D}/${libdir}/../lib/libiberty*
+}
diff --git a/recipes-devtools-arc/binutils/binutils-cross_2.26arc.bb b/recipes-devtools-arc/binutils/binutils-cross_2.26arc.bb
new file mode 100644
index 0000000..f3695c2
--- /dev/null
+++ b/recipes-devtools-arc/binutils/binutils-cross_2.26arc.bb
@@ -0,0 +1,5 @@
+require recipes-devtools/binutils/binutils.inc
+require binutils-2.26arc.inc
+require recipes-devtools/binutils/binutils-cross.inc
+
+#COMPATIBLE_MACHINE = "arc"
diff --git a/recipes-devtools-arc/gcc/files/cbd8e54244cd02bdcf4f1057be3ce96631f35ac3.patch b/recipes-devtools-arc/gcc/files/cbd8e54244cd02bdcf4f1057be3ce96631f35ac3.patch
new file mode 100644
index 0000000..d709cd0
--- /dev/null
+++ b/recipes-devtools-arc/gcc/files/cbd8e54244cd02bdcf4f1057be3ce96631f35ac3.patch
@@ -0,0 +1,83 @@
+From cbd8e54244cd02bdcf4f1057be3ce96631f35ac3 Mon Sep 17 00:00:00 2001
+From: Claudiu Zissulescu <claziss@gmail.com>
+Date: Tue, 3 Jan 2017 12:06:28 -0500
+Subject: [PATCH] [ARC] Prevent moving stores to the frame before the stack
+ adjustment.
+
+If the stack pointer is needed, emit a special barrier that will prevent
+the scheduler from moving stores to the frame before the stack adjustment.
+
+2017-01-03  Claudiu Zissulescu  <claziss@synopsys.com>
+
+	* config/arc/arc.c (arc_expand_prologue): Emit a special barrier
+	to prevent store reordering.
+	* config/arc/arc.md (UNSPEC_ARC_STKTIE): Define.
+	(type): Add block type.
+	(stack_tie): Define special instruction to be used in
+	expand_prologue.
+---
+ gcc/config/arc/arc.c  | 10 +++++++++-
+ gcc/config/arc/arc.md | 15 ++++++++++++++-
+ 2 files changed, 23 insertions(+), 2 deletions(-)
+
+diff --git a/gcc/config/arc/arc.c b/gcc/config/arc/arc.c
+index 6f21fc3..110556c 100644
+--- a/gcc/config/arc/arc.c
++++ b/gcc/config/arc/arc.c
+@@ -3101,7 +3101,15 @@ arc_expand_prologue (void)
+   frame_size_to_allocate -= first_offset;
+   /* Allocate the stack frame.  */
+   if (frame_size_to_allocate > 0)
+-    frame_stack_add ((HOST_WIDE_INT) 0 - frame_size_to_allocate);
++    {
++      frame_stack_add ((HOST_WIDE_INT) 0 - frame_size_to_allocate);
++      /* If the frame pointer is needed, emit a special barrier that
++	 will prevent the scheduler from moving stores to the frame
++	 before the stack adjustment.  */
++      if (arc_frame_pointer_needed ())
++	emit_insn (gen_stack_tie (stack_pointer_rtx,
++				  hard_frame_pointer_rtx));
++    }
+ 
+   /* Setup the gp register, if needed.  */
+   if (crtl->uses_pic_offset_table)
+diff --git a/gcc/config/arc/arc.md b/gcc/config/arc/arc.md
+index 16f71b3..448157c 100644
+--- a/gcc/config/arc/arc.md
++++ b/gcc/config/arc/arc.md
+@@ -135,6 +135,7 @@
+   UNSPEC_ARC_VMAC2HU
+   UNSPEC_ARC_VMPY2H
+   UNSPEC_ARC_VMPY2HU
++  UNSPEC_ARC_STKTIE
+   ])
+ 
+ (define_c_enum "vunspec" [
+@@ -204,7 +205,7 @@
+    simd_vcompare, simd_vpermute, simd_vpack, simd_vpack_with_acc,
+    simd_valign, simd_valign_with_acc, simd_vcontrol,
+    simd_vspecial_3cycle, simd_vspecial_4cycle, simd_dma, mul16_em, div_rem,
+-   fpu"
++   fpu, block"
+   (cond [(eq_attr "is_sfunc" "yes")
+ 	 (cond [(match_test "!TARGET_LONG_CALLS_SET && (!TARGET_MEDIUM_CALLS || GET_CODE (PATTERN (insn)) != COND_EXEC)") (const_string "call")
+ 		(match_test "flag_pic") (const_string "sfunc")]
+@@ -6480,6 +6481,18 @@
+   (set_attr "predicable" "yes,no,no,yes,no")
+   (set_attr "cond" "canuse,nocond,nocond,canuse_limm,nocond")])
+ 
++(define_insn "stack_tie"
++  [(set (mem:BLK (scratch))
++	(unspec:BLK [(match_operand:SI 0 "register_operand" "rb")
++		     (match_operand:SI 1 "register_operand" "rb")]
++		    UNSPEC_ARC_STKTIE))]
++  ""
++  ""
++  [(set_attr "length" "0")
++   (set_attr "iscompact" "false")
++   (set_attr "type" "block")]
++  )
++
+ ;; include the arc-FPX instructions
+ (include "fpx.md")
+ 
diff --git a/recipes-devtools-arc/gcc/gcc-6.x.arc.inc b/recipes-devtools-arc/gcc/gcc-6.x.arc.inc
new file mode 100644
index 0000000..5453373
--- /dev/null
+++ b/recipes-devtools-arc/gcc/gcc-6.x.arc.inc
@@ -0,0 +1,88 @@
+require recipes-devtools/gcc/gcc-common.inc
+
+# Third digit in PV should be incremented after a minor release
+
+PV = "6.x.arc"
+
+# BINV should be incremented to a revision after a minor gcc release
+
+BINV = "6.2.1"
+
+FILESEXTRAPATHS =. "${FILE_DIRNAME}/gcc:${COREBASE}/meta/recipes-devtools/gcc/gcc-6.2:"
+
+DEPENDS =+ "mpfr gmp libmpc zlib"
+NATIVEDEPS = "mpfr-native gmp-native libmpc-native zlib-native"
+
+LICENSE = "GPL-3.0-with-GCC-exception & GPLv3"
+
+LIC_FILES_CHKSUM = "\
+    file://COPYING;md5=59530bdf33659b29e73d4adb9f9f6552 \
+    file://COPYING3;md5=d32239bcb673463ab874e80d47fae504 \
+    file://COPYING3.LIB;md5=6a6a8e020838b23406c81b19c1d46df6 \
+    file://COPYING.LIB;md5=2d5025d4aa3495befef8f17206a5b0a1 \
+    file://COPYING.RUNTIME;md5=fe60d87048567d4fe8c8a0ed2448bcc8 \
+"
+
+# tag=arc-2016.09-release (no branch)
+SRCREV="11f277e211411c21808cbb9f6cf165902edefea3"
+
+SRC_URI = "\
+    git://github.com/foss-for-synopsys-dwc-arc-processors/gcc.git;protocol=https;nobranch=1 \
+    file://0036-libcc1-fix-libcc1-s-install-path-and-rpath.patch \
+    file://0039-Fix-various-_FOR_BUILD-and-related-variables.patch \
+    file://cbd8e54244cd02bdcf4f1057be3ce96631f35ac3.patch \
+"
+
+S = "${TMPDIR}/work-shared/gcc-${PV}-${PR}/git"
+B = "${WORKDIR}/gcc-${PV}/build.${HOST_SYS}.${TARGET_SYS}"
+
+# Language Overrides
+FORTRAN = ""
+JAVA = ""
+
+LTO = "--enable-lto"
+
+EXTRA_OECONF_BASE = "\
+    ${LTO} \
+    --enable-libssp \
+    --disable-bootstrap \
+    --disable-libmudflap \
+    --with-system-zlib \
+    --enable-linker-build-id \
+    --with-ppl=no \
+    --with-cloog=no \
+    --enable-checking=release \
+    --enable-cheaders=c_global \
+"
+
+EXTRA_OECONF_INITIAL = "\
+    --disable-libmudflap \
+    --disable-libgomp \
+    --disable-libssp \
+    --disable-libquadmath \
+    --with-system-zlib \
+    --disable-lto \
+    --disable-plugin \
+    --enable-decimal-float=no \
+"
+
+EXTRA_OECONF_INTERMEDIATE = "\
+    --disable-libmudflap \
+    --disable-libgomp \
+    --disable-libquadmath \
+    --with-system-zlib \
+    --disable-lto \
+    --disable-plugin \
+    --disable-libssp \
+"
+
+EXTRA_OECONF_append_libc-uclibc = " --disable-decimal-float "
+
+EXTRA_OECONF_append_arc = ' --with-pkgversion="ARCompact/ARCv2 ISA elf32 toolchain ${SRCREV}"'
+
+EXTRA_OECONF_PATHS = "\
+    --with-gxx-include-dir=${STAGING_DIR_TARGET}${target_includedir}/c++/${BINV} \
+    --with-sysroot=${STAGING_DIR_TARGET} \
+    --with-build-sysroot=${STAGING_DIR_TARGET} \
+"
+
diff --git a/recipes-devtools-arc/gcc/gcc-cross-canadian_6.x.arc.bb b/recipes-devtools-arc/gcc/gcc-cross-canadian_6.x.arc.bb
new file mode 100644
index 0000000..39f837f
--- /dev/null
+++ b/recipes-devtools-arc/gcc/gcc-cross-canadian_6.x.arc.bb
@@ -0,0 +1,8 @@
+require recipes-devtools-arc/gcc/gcc-${PV}.inc
+require recipes-devtools/gcc/gcc-cross-canadian.inc
+
+EXTRA_OECONF_append_libc-baremetal = " --without-headers"
+EXTRA_OECONF_remove_libc-baremetal = "--with-sysroot=/not/exist"
+EXTRA_OECONF_remove_libc-baremetal = "--with-build-sysroot=${STAGING_DIR_TARGET}"
+EXTRA_OECONF_append_libc-baremetal = " --enable-plugin "
+
diff --git a/recipes-devtools-arc/gcc/gcc-cross_6.x.arc .bb b/recipes-devtools-arc/gcc/gcc-cross_6.x.arc .bb
new file mode 100644
index 0000000..911a640
--- /dev/null
+++ b/recipes-devtools-arc/gcc/gcc-cross_6.x.arc .bb	
@@ -0,0 +1,11 @@
+require recipes-devtools-arc/gcc/gcc-6.x.arc.inc
+require recipes-devtools/gcc/gcc-cross.inc
+
+DEPENDS_remove_libc-baremetal := "virtual/${TARGET_PREFIX}libc-for-gcc"
+EXTRA_OECONF_append_libc-baremetal = " --without-headers"
+EXTRA_OECONF_remove_libc-baremetal = "--with-sysroot=/not/exist"
+EXTRA_OECONF_remove_libc-baremetal = "--enable-threads=posix"
+
+#COMPATIBLE_MACHINE = "arc"
+
+BBCLASSEXTEND = "nativesdk"
diff --git a/recipes-devtools-arc/gcc/gcc-source_6.x.arc.bb b/recipes-devtools-arc/gcc/gcc-source_6.x.arc.bb
new file mode 100644
index 0000000..6272f7d
--- /dev/null
+++ b/recipes-devtools-arc/gcc/gcc-source_6.x.arc.bb
@@ -0,0 +1,2 @@
+require recipes-devtools-arc/gcc/gcc-6.x.arc.inc
+require recipes-devtools/gcc/gcc-source.inc
diff --git a/recipes-devtools-arc/gcc/libgcc_6.x.arc.bb b/recipes-devtools-arc/gcc/libgcc_6.x.arc.bb
new file mode 100644
index 0000000..4cc4833
--- /dev/null
+++ b/recipes-devtools-arc/gcc/libgcc_6.x.arc.bb
@@ -0,0 +1,14 @@
+require recipes-devtools-arc/gcc/gcc-6.x.arc.inc
+require recipes-devtools/gcc/libgcc.inc
+
+INHIBIT_PACKAGE_DEBUG_SPLIT = "1"
+#COMPATIBLE_MACHINE = "arc"
+
+EXTRA_OECONF_append_arc = " --disable-multilib"
+#EXTRA_OECONF_append_arc = " --enable-multilib"
+
+# ERROR: QA Issue: Architecture did not match (195 to 93) 
+INSANE_SKIP_${PN}-dev += "arch"
+
+# ERROR: QA Issue: non -staticdev package contains static .a library
+INSANE_SKIP_${PN}-dev += "staticdev"
-- 
2.7.4


