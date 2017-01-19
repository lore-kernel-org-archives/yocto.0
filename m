Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51D31E00A64; Thu, 19 Jan 2017 10:03:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,LOTS_OF_MONEY,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 LOTS_OF_MONEY Huge... sums of money
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 659F1E00A53
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 10:03:49 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga101.fm.intel.com with ESMTP; 19 Jan 2017 10:03:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,254,1477983600"; d="scan'208";a="1084972768"
Received: from juro-precision-t5610.jf.intel.com ([10.7.198.149])
	by orsmga001.jf.intel.com with ESMTP; 19 Jan 2017 10:03:42 -0800
From: Juro Bystricky <juro.bystricky@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 19 Jan 2017 09:59:39 -0800
Message-Id: <1484848779-10836-6-git-send-email-juro.bystricky@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1484848779-10836-1-git-send-email-juro.bystricky@intel.com>
References: <1484848779-10836-1-git-send-email-juro.bystricky@intel.com>
Cc: jurobystricky@hotmail.com
Subject: [meta-zephyr][PATCH 5/5] meta-zephyr: newlib support
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
X-List-Received-Date: Thu, 19 Jan 2017 18:03:55 -0000

This patch adds newlib libraries for cortex-m3, x86, IAMCU and ARC toolchains.

[YOCTO#10662]

Signed-off-by: Juro Bystricky <juro.bystricky@intel.com>
---
 conf/distro/zephyr.conf                            |   1 +
 recipes-core/newlib/newlib/assert-fiprintf.patch   |  23 ++
 .../newlib/newlib/gettimeofday-header-fix.patch    |  20 ++
 .../newlib/newlib/iamcu-commit-5d3ad3b.patch       | 399 +++++++++++++++++++++
 recipes-core/newlib/newlib_2.%.bb                  |  83 +++++
 recipes-core/newlib/newlib_2.%.bbappend            |  23 ++
 recipes-devtools/gcc/libgcc_6.%.bbappend           |   3 +
 .../zephyr-kernel/files/Makefile.toolchain.yocto   |  19 +-
 .../zephyr-kernel/zephyr-kernel-common.inc         |  10 +-
 9 files changed, 574 insertions(+), 7 deletions(-)
 create mode 100644 recipes-core/newlib/newlib/assert-fiprintf.patch
 create mode 100644 recipes-core/newlib/newlib/gettimeofday-header-fix.patch
 create mode 100644 recipes-core/newlib/newlib/iamcu-commit-5d3ad3b.patch
 create mode 100644 recipes-core/newlib/newlib_2.%.bb
 create mode 100644 recipes-core/newlib/newlib_2.%.bbappend
 create mode 100644 recipes-devtools/gcc/libgcc_6.%.bbappend

diff --git a/conf/distro/zephyr.conf b/conf/distro/zephyr.conf
index 4a832db..0c6a8b3 100644
--- a/conf/distro/zephyr.conf
+++ b/conf/distro/zephyr.conf
@@ -11,3 +11,4 @@ TCLIBCAPPEND = ""
 TEST_TARGET = "QemuTargetZephyr"
 TEST_SUITES = "zephyr"
 
+TOOLCHAIN_TARGET_TASK += " newlib"
diff --git a/recipes-core/newlib/newlib/assert-fiprintf.patch b/recipes-core/newlib/newlib/assert-fiprintf.patch
new file mode 100644
index 0000000..dd83c1a
--- /dev/null
+++ b/recipes-core/newlib/newlib/assert-fiprintf.patch
@@ -0,0 +1,23 @@
+
+Fix unresolved external "fiprintf".
+When newlib is configured with:
+
+  --enable-newlib-nano-formatted-io
+
+"fiprintf" should be an alias of "fprintf". However the alias does 
+not seem to work properly, as we encounter unresolved external
+error if we uses "assert" in code. So we patch the code directly.
+
+Signed-off-by: Juro Bystricky <juro.bystricky@intel.com>
+
+--- a/newlib/libc/stdlib/assert.c	2016-11-08 08:04:45.669248139 -0800
++++ b/newlib/libc/stdlib/assert.c	2016-11-08 08:05:47.357554034 -0800
+@@ -56,7 +56,7 @@
+ 	const char *func _AND
+ 	const char *failedexpr)
+ {
+-  fiprintf(stderr,
++  fprintf(stderr,
+ 	   "assertion \"%s\" failed: file \"%s\", line %d%s%s\n",
+ 	   failedexpr, file, line,
+ 	   func ? ", function: " : "", func ? func : "");
diff --git a/recipes-core/newlib/newlib/gettimeofday-header-fix.patch b/recipes-core/newlib/newlib/gettimeofday-header-fix.patch
new file mode 100644
index 0000000..d1f9bf4
--- /dev/null
+++ b/recipes-core/newlib/newlib/gettimeofday-header-fix.patch
@@ -0,0 +1,20 @@
+
+newlib-2.4.0 regression.
+Export the prototype of gettimeofday
+
+Signed-off-by: Juro Bystricky <juro.bystricky@intel.com>
+
+--- a/newlib/libc/include/sys/time.h	2016-03-29 14:33:42.000000000 -0700
++++ b/newlib/libc/include/sys/time.h	2016-10-12 09:48:03.873642589 -0700
+@@ -429,9 +429,10 @@
+ int _EXFUN(getitimer, (int __which, struct itimerval *__value));
+ int _EXFUN(setitimer, (int __which, const struct itimerval *__restrict __value,
+ 					struct itimerval *__restrict __ovalue));
++#endif
++
+ int _EXFUN(gettimeofday, (struct timeval *__restrict __p,
+ 			  void *__restrict __tz));
+-#endif
+ 
+ #if __GNU_VISIBLE
+ int _EXFUN(futimesat, (int, const char *, const struct timeval [2]));
diff --git a/recipes-core/newlib/newlib/iamcu-commit-5d3ad3b.patch b/recipes-core/newlib/newlib/iamcu-commit-5d3ad3b.patch
new file mode 100644
index 0000000..f44aa07
--- /dev/null
+++ b/recipes-core/newlib/newlib/iamcu-commit-5d3ad3b.patch
@@ -0,0 +1,399 @@
+From 5d3ad3b123b7c121d7a6eac27fb13016171e27bc Mon Sep 17 00:00:00 2001
+From: Igor Venevtsev <igor.venevtsev@gmail.com>
+Date: Thu, 31 Mar 2016 12:12:00 +0300
+Subject: Add Intel MCU target
+
+Intel MCU System V ABI are incompartible with i386 System V ABI:
+    o Minimum instruction set is Intel Pentium ISA minus x87 instructions
+    o No x87 or vector registers
+    o First three args are passed in %eax, %edx and %ecx
+    o Full specification available here:
+      https://github.com/hjl-tools/x86-psABI/wiki/iamcu-psABI-0.7.pdf
+
+newlib/
+    * configure.host: Add new ix86-*-elfiamcu target
+
+newlib/libc/include/
+    * setjmp.h: Change _JBLEN for Intel MCU target
+
+newlib/libc/machine/i386/
+    * memchr.S:  (memchr)  Target-specific size-optimized version
+    * memcmp.S:  (memcmp)  Likewise
+    * memcpy.S:  (memcpy)  Likewise
+    * memmove.S: (memmove) Likewise
+    * memset.S:  (memset)  Likewise
+    * setjmp.S:  (setjmp)  Likewise
+    * strchr.S:  (strchr)  Likewise
+    * strlen.S:  (strlen)  Likewise
+
+newlib/libc/stdlib/
+    * srtold.c:  (__flt_rounds) Disable for Intel MCU
+
+diff --git a/newlib/configure.host b/newlib/configure.host
+index 8b0846e..bb163ec 100644
+--- a/newlib/configure.host
++++ b/newlib/configure.host
+@@ -696,6 +696,15 @@ case "${host}" in
+   i[34567]86-*-netware*)
+ 	newlib_cflags="${newlib_cflags} -DMISSING_SYSCALL_NAMES -DNO_EXEC -DABORT_PROVIDED -DCLOCK_PROVIDED -DMALLOC_PROVIDED -DHAVE_FCNTL"
+ 	;;
++  i[3-7]86-*-elfiamcu)
++	newlib_cflags="${newlib_cflags} -Os -DPREFER_SIZE_OVER_SPEED -ffunction-sections -fomit-frame-pointer -DREENTRANT_SYSCALL_PROVIDED"
++	if [ "${newlib_multithread}" = "no" ] ; then
++		newlib_cflags="${newlib_cflags} -DMISSING_SYSCALL_NAMES"
++	else
++		syscall_dir=syscalls
++		newlib_cflags="${newlib_cflags} -D__DYNAMIC_REENT__"
++	fi
++	;;
+   iq2000*)
+ 	syscall_dir=syscalls
+ 	default_newlib_io_long_long="yes"
+diff --git a/newlib/libc/include/machine/setjmp.h b/newlib/libc/include/machine/setjmp.h
+index c08e682..2b4dd8b 100644
+--- a/newlib/libc/include/machine/setjmp.h
++++ b/newlib/libc/include/machine/setjmp.h
+@@ -92,6 +92,9 @@ _BEGIN_STD_C
+ #  define _JBLEN (13 * 4)
+ # elif defined(__unix__) || defined(__rtems__)
+ #  define _JBLEN	9
++# elif defined(__iamcu__)
++/* Intel MCU jmp_buf only covers callee-saved registers. */
++#  define _JBLEN	6
+ # else
+ #  include "setjmp-dj.h"
+ # endif
+diff --git a/newlib/libc/machine/i386/memchr.S b/newlib/libc/machine/i386/memchr.S
+index 7639685..d9b0bf2 100644
+--- a/newlib/libc/machine/i386/memchr.S
++++ b/newlib/libc/machine/i386/memchr.S
+@@ -14,13 +14,33 @@
+        SOTYPE_FUNCTION(memchr)
+ 
+ SYM (memchr):
++#ifdef __iamcu__
++	pushl	edi
++	movl	eax,edi
++	movl	edx,eax
++	xorl	edx,edx
++	testl	ecx,ecx
++	jz	L20
++
++	repnz
++	scasb
++
++	setnz	dl
++	decl	edi
++
++	decl	edx
++	andl	edi,edx
++L20:
++	movl	edx,eax
++
++	popl	edi
++#else
+ 	pushl	ebp
+ 	movl	esp,ebp
+ 	pushl	edi
+ 	movzbl	12(ebp),eax
+ 	movl	16(ebp),ecx
+ 	movl	8(ebp),edi
+-
+ 	xorl	edx,edx
+ 	testl	ecx,ecx
+ 	jz	L20
+@@ -111,4 +131,5 @@ L20:
+ 	leal	-4(ebp),esp
+ 	popl	edi
+ 	leave
++#endif
+ 	ret
+diff --git a/newlib/libc/machine/i386/memcmp.S b/newlib/libc/machine/i386/memcmp.S
+index 26b8ef1..4a01b82 100644
+--- a/newlib/libc/machine/i386/memcmp.S
++++ b/newlib/libc/machine/i386/memcmp.S
+@@ -15,6 +15,33 @@
+ 
+ SYM (memcmp):
+ 
++#ifdef __iamcu__
++	pushl edi
++	pushl esi
++	movl eax,edi
++	movl edx,esi
++	cld
++
++/* check if length is zero in which case just return 0 */
++
++	xorl eax,eax
++	testl ecx,ecx
++	jz L4
++
++/* compare any unaligned bytes or remainder bytes */
++	repz
++	cmpsb
++
++/* set output to be < 0 if less than, 0 if equal, or > 0 if greater than */
++	xorl edx,edx
++	movb -1(esi),dl
++	movb -1(edi),al
++	subl edx,eax
++
++L4:
++	popl esi
++	popl edi
++#else
+ 	pushl ebp
+ 	movl esp,ebp
+ 	subl $16,esp
+@@ -73,4 +100,5 @@ L4:
+ 	popl edi
+ 	popl ebx
+ 	leave
++#endif
+ 	ret
+diff --git a/newlib/libc/machine/i386/memcpy.S b/newlib/libc/machine/i386/memcpy.S
+index b53e2a1..a14aa2a 100644
+--- a/newlib/libc/machine/i386/memcpy.S
++++ b/newlib/libc/machine/i386/memcpy.S
+@@ -15,6 +15,17 @@
+ 
+ SYM (memcpy):
+ 
++#ifdef __iamcu__
++	pushl esi
++	pushl edi
++	movl eax,edi
++	movl edx,esi
++
++	rep movsb
++
++	popl edi
++	popl esi
++#else
+ 	pushl ebp
+ 	movl esp,ebp
+ 	pushl esi
+@@ -71,4 +82,5 @@ SYM (memcpy):
+ 	popl edi
+ 	popl esi
+ 	leave
++#endif
+ 	ret
+diff --git a/newlib/libc/machine/i386/memmove.S b/newlib/libc/machine/i386/memmove.S
+index 1ea2f6d..1026582 100644
+--- a/newlib/libc/machine/i386/memmove.S
++++ b/newlib/libc/machine/i386/memmove.S
+@@ -15,6 +15,32 @@
+ 
+ SYM (memmove):
+ 
++#ifdef __iamcu__
++	pushl esi
++	pushl edi
++	movl eax,edi
++	movl edx,esi
++	cmp esi,edi
++	ja .Lcopy_backward
++	je .Lbwd_write_0bytes
++
++	rep movsb
++
++	popl edi
++	popl esi
++	ret
++
++.Lcopy_backward:
++	lea -1(edi,ecx),edi
++	lea -1(esi,ecx),esi
++	std
++	rep movsb
++	cld
++
++.Lbwd_write_0bytes:
++	popl edi
++	popl esi
++#else
+ 	pushl ebp
+ 	movl esp,ebp
+ 	pushl esi
+@@ -143,4 +169,5 @@ SYM (memmove):
+ 	popl edi
+ 	popl esi
+ 	leave
++#endif
+ 	ret
+diff --git a/newlib/libc/machine/i386/memset.S b/newlib/libc/machine/i386/memset.S
+index 6eb2cd6..83b2556 100644
+--- a/newlib/libc/machine/i386/memset.S
++++ b/newlib/libc/machine/i386/memset.S
+@@ -15,6 +15,15 @@
+ 
+ SYM (memset):
+ 
++#ifdef __iamcu__
++	pushl edi
++	movl eax,edi
++	movzbl dl,eax
++	mov edi,edx
++	rep stosb
++	mov edx,eax
++	popl edi
++#else
+ 	pushl ebp
+ 	movl esp,ebp
+ 	pushl edi
+@@ -96,4 +105,5 @@ SYM (memset):
+ 	leal -4(ebp),esp
+ 	popl edi
+ 	leave
++#endif
+ 	ret
+diff --git a/newlib/libc/machine/i386/setjmp.S b/newlib/libc/machine/i386/setjmp.S
+index fd746e4..45c689f 100644
+--- a/newlib/libc/machine/i386/setjmp.S
++++ b/newlib/libc/machine/i386/setjmp.S
+@@ -20,6 +20,10 @@
+  **	jmp_buf:
+  **	 eax ebx ecx edx esi edi ebp esp eip
+  **	 0   4   8   12  16  20  24  28  32
++ **
++ **	Intel MCU jmp_buf:
++ **	 ebx esi edi ebp esp eip
++ **	 0   4   8   12  16  20
+  */
+ 
+        #include "i386mach.h"
+@@ -31,6 +35,23 @@
+  
+ SYM (setjmp):
+ 
++#ifdef __iamcu__
++	/* Store EIP.  */
++	movl	0(esp),ecx
++	movl	ecx,20(eax)
++
++	movl	ebx,0 (eax)
++	movl	esi,4 (eax)
++	movl	edi,8 (eax)
++	movl	ebp,12(eax)
++
++	/* Skip return address, which will be pushed onto stack in
++	   longjmp, and store SP.  */
++	leal	4(esp),ecx
++	movl	ecx,16(eax)
++
++	xorl	eax,eax
++#else
+ 	pushl	ebp
+ 	movl	esp,ebp
+ 
+@@ -59,9 +80,28 @@ SYM (setjmp):
+ 	popl	edi
+ 	movl	$0,eax
+ 	leave
++#endif
+ 	ret
+ 
+ SYM (longjmp):
++#ifdef __iamcu__
++	/* Check retval.  */
++	testl	edx,edx
++	jne	0f
++	incl	edx
++0:
++	/* Restore stack first.  */
++	movl	16(eax),esp
++
++	/* Put return address on stack.  */
++	pushl	20(eax)
++
++	movl	0(eax),ebx
++	movl	4(eax),esi
++	movl	8(eax),edi
++	movl	12(eax),ebp
++	movl	edx,eax
++#else
+ 	pushl	ebp
+ 	movl	esp,ebp
+ 
+@@ -87,5 +127,6 @@ SYM (longjmp):
+ 	movl	16(edi),esi
+ 	movl	20(edi),edi
+        __STI
++#endif
+ 
+ 	ret
+diff --git a/newlib/libc/machine/i386/strchr.S b/newlib/libc/machine/i386/strchr.S
+index 1d98b81..43ee0fb 100644
+--- a/newlib/libc/machine/i386/strchr.S
++++ b/newlib/libc/machine/i386/strchr.S
+@@ -15,6 +15,29 @@
+ 
+ SYM (strchr):
+ 
++#ifdef __iamcu__
++	xorl ecx,ecx
++	movb dl,cl
++
++/* loop while (*s && *s++ != c) */
++	leal -1(eax),eax
++L15:
++	incl eax
++	movb (eax),dl
++	testb dl,dl
++	je L14
++	cmpb cl,dl
++	jne L15
++
++L14:
++/*  if (*s == c) return address otherwise return NULL */
++	cmpb cl,(eax)
++	je L19
++	xorl eax,eax
++
++L19:
++	ret
++#else
+ 	pushl ebp
+ 	movl esp,ebp
+ 	pushl edi
+@@ -170,3 +193,5 @@ L27:
+ 	jmp L9
+ 
+ #endif /* !__OPTIMIZE_SIZE__ */
++
++#endif /* __iamcu__ */
+diff --git a/newlib/libc/machine/i386/strlen.S b/newlib/libc/machine/i386/strlen.S
+index 0e3cb64..373ea0f 100644
+--- a/newlib/libc/machine/i386/strlen.S
++++ b/newlib/libc/machine/i386/strlen.S
+@@ -18,9 +18,13 @@ SYM (strlen):
+ 	pushl ebp
+ 	movl esp,ebp
+ 	pushl edi
++#ifdef __iamcu__
++	movl eax,edx
++#else
+ 	movl 8(ebp),edx
++#endif
+ 
+-#ifdef __OPTIMIZE_SIZE__
++#if defined __OPTIMIZE_SIZE__ || defined __iamcu__
+ 	cld
+ 	movl edx,edi
+ 	movl $4294967295,ecx
+diff --git a/newlib/libc/stdlib/strtold.c b/newlib/libc/stdlib/strtold.c
+index a6d415d..1128b74 100644
+--- a/newlib/libc/stdlib/strtold.c
++++ b/newlib/libc/stdlib/strtold.c
+@@ -35,7 +35,8 @@ POSSIBILITY OF SUCH DAMAGE.
+ 
+ #ifdef _HAVE_LONG_DOUBLE
+ 
+-#if defined (__x86_64__) || defined (__i386__)
++/* Intel MCU has no x87 floating point unit */
++#if (defined (__x86_64__) || defined (__i386__)) && !defined (__iamcu__)
+ static const int map[] = {
+         1,      /* round to nearest */
+         3,      /* round to zero */
diff --git a/recipes-core/newlib/newlib_2.%.bb b/recipes-core/newlib/newlib_2.%.bb
new file mode 100644
index 0000000..77b5184
--- /dev/null
+++ b/recipes-core/newlib/newlib_2.%.bb
@@ -0,0 +1,83 @@
+HOMEPAGE = "https://sourceware.org/newlib/"
+SUMMARY = "C library for embedded systems"
+DESCRIPTION = "Newlib is a conglomeration of several library parts, all under free software licenses that make them easily usable on embedded products."
+
+PV = "2.4.0"
+
+LICENSE = "GPLv2 & LGPLv3 & GPLv3 & LGPLv2"
+LIC_FILES_CHKSUM = "file://COPYING;md5=59530bdf33659b29e73d4adb9f9f6552 \
+                    file://COPYING3.LIB;md5=6a6a8e020838b23406c81b19c1d46df6 \
+                    file://COPYING3;md5=d32239bcb673463ab874e80d47fae504 \
+                    file://COPYING.LIBGLOSS;md5=73f5c98779aea7dba4a6c94a74ab0ae2 \
+                    file://COPYING.LIB;md5=2d5025d4aa3495befef8f17206a5b0a1 \
+                    file://COPYING.NEWLIB;md5=fced02ba02d66f274d4847d27e80af74 \
+                    file://newlib/libc/posix/COPYRIGHT;md5=103468ff1982be840fdf4ee9f8b51bbf \
+                    file://newlib/libc/sys/linux/linuxthreads/LICENSE;md5=73640207fbc79b198c7ffd4ad4d97aa0"
+
+SRC_URI = "ftp://sourceware.org/pub/newlib/newlib-${PV}.tar.gz"
+SRC_URI[md5sum] = "37c07a65c6effdb4822fb6f83067f37e"
+SRC_URI[sha256sum] = "545b3d235e350d2c61491df8b9f775b1b972f191380db8f52ec0b1c829c52706"
+SRC_URI += "file://gettimeofday-header-fix.patch"
+SRC_URI += "file://assert-fiprintf.patch"
+SRC_URI += "file://iamcu-commit-5d3ad3b.patch"
+
+S = "${WORKDIR}/newlib-${PV}"
+
+DEPENDS = "flex-native bison-native m4-native"
+DEPENDS_remove = "virtual/libc virtual/${TARGET_PREFIX}compilerlibs"
+PACKAGES = "${PN}"
+
+# This will determine the name of the folder with libc as well.
+NEWLIB_HOST = "${TARGET_SYS}"
+
+TUNE_CCARGS += " -nostdlib "
+
+CFLAGS += " -DMISSING_SYSCALL_NAMES "
+
+# Specify any options you want to pass to the configure script using EXTRA_OECONF:
+EXTRA_OECONF = " --enable-languages=c \
+    --host=${NEWLIB_HOST} \
+    --with-newlib --with-gnu-as --with-gnu-ld -v \
+    --disable-newlib-supplied-syscalls \
+    --disable-newlib-wide-orient \
+    --disable-newlib-fseek-optimization \
+    --enable-newlib-nano-formatted-io \
+    --enable-newlib-nano-malloc \
+    --disable-newlib-fvwrite-in-streamio \
+    --disable-newlib-unbuf-stream-opt --enable-lite-exit \
+    --enable-newlib-global-atexit \
+    --disable-multilib \
+"
+
+do_configure () {
+    # If we're being rebuilt due to a dependency change, we need to make sure
+    # everything is clean before we configure and build -- if we haven't previously
+    # built this will fail and be ignored.
+    make distclean || :
+    export CC_FOR_TARGET="${CC}"
+    ${S}/configure ${EXTRA_OECONF}
+}
+
+do_install () {
+    oe_runmake 'DESTDIR=${D}' install
+
+    # Delete standards.info, configure.info
+    rm -rf ${D}/usr/share/
+    # Place the libraries where gcc can find them
+    # usr/${NEWLIB_HOST}/lib -> usr/lib
+    # usr/${NEWLIB_HOST}/include ->usr/include
+
+    mv -v ${D}/usr/local/${NEWLIB_HOST}/lib* ${D}/usr/lib
+    mv -v ${D}/usr/local/${NEWLIB_HOST}/include* ${D}/usr/include
+    rm -rf ${D}/usr/local/${NEWLIB_HOST}
+    rm -rf ${D}/usr/local
+}
+
+INHIBIT_PACKAGE_DEBUG_SPLIT = "1"
+INHIBIT_PACKAGE_STRIP = "1"
+
+FILES_${PN} = "/usr/lib /usr/include"
+
+INSANE_SKIP_${PN} += " staticdev"
+INSANE_SKIP_${PN}-dev += " staticdev"
+
diff --git a/recipes-core/newlib/newlib_2.%.bbappend b/recipes-core/newlib/newlib_2.%.bbappend
new file mode 100644
index 0000000..b4edea1
--- /dev/null
+++ b/recipes-core/newlib/newlib_2.%.bbappend
@@ -0,0 +1,23 @@
+########################################################################
+#
+# ARC specific
+#
+########################################################################
+LIC_FILES_CHKSUM_arc = "file://COPYING;md5=59530bdf33659b29e73d4adb9f9f6552 \
+                    file://COPYING3.LIB;md5=6a6a8e020838b23406c81b19c1d46df6 \
+                    file://COPYING3;md5=d32239bcb673463ab874e80d47fae504 \
+                    file://COPYING.LIB;md5=9f604d8a4f8e74f4f5140845a21b6674 \
+                    file://COPYING.NEWLIB;md5=fced02ba02d66f274d4847d27e80af74 \
+                    file://newlib/libc/posix/COPYRIGHT;md5=103468ff1982be840fdf4ee9f8b51bbf \
+                    file://newlib/libc/sys/linux/linuxthreads/LICENSE;md5=73640207fbc79b198c7ffd4ad4d97aa0"
+
+#Tag arc-2016.03
+SRCREV_arc = "e4da0f88abe8dd2a0b947bcf7cb8b3736ab94f33"
+SRC_URI_arc = "git://github.com/foss-for-synopsys-dwc-arc-processors/newlib.git;branch=arc-2.3"
+SRC_URI_arc += "file://assert-fiprintf.patch"
+S_arc  = "${WORKDIR}/git"
+
+# ERROR: QA Issue: Architecture did not match (195 to 93)
+INSANE_SKIP_${PN}_arc += " arch "
+
+
diff --git a/recipes-devtools/gcc/libgcc_6.%.bbappend b/recipes-devtools/gcc/libgcc_6.%.bbappend
new file mode 100644
index 0000000..5c3fd1f
--- /dev/null
+++ b/recipes-devtools/gcc/libgcc_6.%.bbappend
@@ -0,0 +1,3 @@
+EXTRA_OECONF_remove =   "--enable_multilib"
+EXTRA_OECONF_append =   " --disable-multilib"
+
diff --git a/recipes-kernel/zephyr-kernel/files/Makefile.toolchain.yocto b/recipes-kernel/zephyr-kernel/files/Makefile.toolchain.yocto
index 6f80ab7..867fd39 100644
--- a/recipes-kernel/zephyr-kernel/files/Makefile.toolchain.yocto
+++ b/recipes-kernel/zephyr-kernel/files/Makefile.toolchain.yocto
@@ -1,8 +1,17 @@
+$(info ZEPHYR_SYSROOT:${ZEPHYR_SYSROOT})
+
+LIBGCC_DIR = $(shell dirname `$(CC) -print-libgcc-file-name`)
+$(info LIBGCCDIR:${LIBGCC_DIR} )
+
+#NEWLIB_DIR = $(shell `$(CC) -print-multi-directory`)
+#$(info NEWLIB_DIR:${NEWLIB_DIR})
+
+LIB_INCLUDE_DIR += -L $(LIBGCC_DIR) -L $(ZEPHYR_SYSROOT)/usr/lib/$(NEWLIB_DIR)
+$(info LIB_INCLUDE_DIR:${LIB_INCLUDE_DIR})
+
+TOOLCHAIN_CFLAGS = -I$(ZEPHYR_SYSROOT)/usr/include
+$(info TOOLCHAIN_CFLAGS:${TOOLCHAIN_CFLAGS})
 
-LIBGCC_DIR = $(shell dirname `$(CC)gcc -print-libgcc-file-name`)
-LIB_INCLUDE_DIR += -L $(LIBGCC_DIR)
-#TOOLCHAIN_CFLAGS = -I $(SYSROOT)/usr/include
 TOOLCHAIN_LIBS = gcc
 
-export LIB_INCLUDE_DIR CROSS_COMPILE TOOLCHAIN_LIBS 
-#export TOOLCHAIN_CFLAGS
+export LIB_INCLUDE_DIR CROSS_COMPILE TOOLCHAIN_LIBS TOOLCHAIN_CFLAGS
diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
index b2dc48a..cb3c76b 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
@@ -6,11 +6,14 @@ inherit zephyr
 # filesystem.
 IMAGE_NO_MANIFEST = "1"
 
-ZEPHYR_MAKE_ARGS = " V=1 BOARD=${BOARD} CROSS_COMPILE=${CROSS_COMPILE} ZEPHYR_GCC_VARIANT="yocto" ZEPHYR_BASE=${ZEPHYR_BASE} SYSROOT=${STAGING_DIR_TARGET}"
+ZEPHYR_GCC_VARIANT="yocto"
+ZEPHYR_SYSROOT="${STAGING_DIR_TARGET}"
+
+ZEPHYR_MAKE_ARGS = " V=1 BOARD=${BOARD} CROSS_COMPILE=${CROSS_COMPILE} ZEPHYR_GCC_VARIANT=${ZEPHYR_GCC_VARIANT} ZEPHYR_BASE=${ZEPHYR_BASE} ZEPHYR_SYSROOT=${ZEPHYR_SYSROOT}"
 
 # We always need a toolchain to cross-compile.
 INHIBIT_DEFAULT_DEPS = "1"
-DEPENDS += "gcc-cross-${TARGET_ARCH} libgcc"
+DEPENDS += "gcc-cross-${TARGET_ARCH} libgcc ${TOOLCHAIN_TARGET_TASK}"
 CROSS_COMPILE = "${STAGING_BINDIR_TOOLCHAIN}/${TARGET_PREFIX}"
 
 do_configure[noexec] = "1"
@@ -25,7 +28,10 @@ python () {
     d.delVar('CXXFLAGS')
     d.delVar('LDFLAGS')
 }
+
 OE_TERMINAL_EXPORTS += "CROSS_COMPILE"
 OE_TERMINAL_EXPORTS += "BOARD"
 OE_TERMINAL_EXPORTS += "ZEPHYR_SRC_DIR"
 OE_TERMINAL_EXPORTS += "ZEPHYR_BASE"
+OE_TERMINAL_EXPORTS += "ZEPHYR_SYSROOT"
+OE_TERMINAL_EXPORTS += "ZEPHYR_GCC_VARIANT"
-- 
2.7.4


