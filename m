Return-Path: <raj.khem@gmail.com>
Received: from mail-qe0-f44.google.com (mail-qe0-f44.google.com
	[209.85.128.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99DF1E00715
	for <yocto@yoctoproject.org>; Thu, 19 Sep 2013 09:55:17 -0700 (PDT)
Received: by mail-qe0-f44.google.com with SMTP id 3so5950676qeb.17
	for <yocto@yoctoproject.org>; Thu, 19 Sep 2013 09:55:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=GiPRo2XZTE7sx+WEp/f344qnrOAeRG9fNl7j1crBNbY=;
	b=xatiLJGFH7lUJAtZTDy8qe5oRAGBiEP5JKnQfyjBWU/zaNfUvaExttv9K0pAM2RRSI
	e/5aFsJN3Z5V32YE9BApeDQaWB2vTrXF99SjqoNn3DYuDFXY/Za216IDVoomwtzoiyNF
	CVcKGpVsRzoLgx84s4TRfGWcg2uAa89m3pD+QmhB9oI21WHBxZ1C2fIeUnPRjk1w5MLw
	TCe5rxu+ZjB75HOEZCqddXjZdrRteNVa7lQsFOIvfumwENF6dAjcGZOFgeePWr5Qd2Nr
	WiT2FP95jaTPL+ktGFRXiRmvZAlQ8ehWWE2F4Gt5aUmwQ5gWXYGxrOTvny+WDfGRIJLN
	RIMg==
MIME-Version: 1.0
X-Received: by 10.49.30.227 with SMTP id v3mr5485341qeh.92.1379609715762; Thu,
	19 Sep 2013 09:55:15 -0700 (PDT)
Received: by 10.224.204.200 with HTTP; Thu, 19 Sep 2013 09:55:15 -0700 (PDT)
In-Reply-To: <1379608028-22559-1-git-send-email-carlo.caione@gmail.com>
References: <1379608028-22559-1-git-send-email-carlo.caione@gmail.com>
Date: Thu, 19 Sep 2013 09:55:15 -0700
Message-ID: <CAMKF1sp4zR2UG4Y9f0J=bVeMjqfzA2j1ZixmfgAdvdEKaMSfcA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: Carlo Caione <carlo.caione@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] uclibc-git: add two patches to fix build breakage with thumb2
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
X-List-Received-Date: Thu, 19 Sep 2013 16:55:18 -0000
Content-Type: multipart/alternative; boundary=047d7bd767ae09703404e6bf6b5d

--047d7bd767ae09703404e6bf6b5d
Content-Type: text/plain; charset=UTF-8

Carlo

thanks for patch it looks fine yo me but please post it to oe-core mailing
list

On Thursday, September 19, 2013, Carlo Caione <carlo.caione@gmail.com>
wrote:
> uclibc doesn't compile for Thumb2-aware CPUs.
> Added two patches (from uclibc) to make it compiling.
>
> Signed-off-by: Carlo Caione <carlo.caione@gmail.com>
> ---
>  yocto/meta/recipes-core/uclibc/uclibc-git.inc      |   2 +
>  .../add-missing-IT-instruction-for-Thumb2.patch    |  22 ++
>  .../move-check-for-BX-to-its-own-header.patch      | 247
+++++++++++++++++++++
>  3 files changed, 271 insertions(+)
>  create mode 100644
yocto/meta/recipes-core/uclibc/uclibc-git/add-missing-IT-instruction-for-Thumb2.patch
>  create mode 100644
yocto/meta/recipes-core/uclibc/uclibc-git/move-check-for-BX-to-its-own-header.patch
>
> diff --git a/yocto/meta/recipes-core/uclibc/uclibc-git.inc
b/yocto/meta/recipes-core/uclibc/uclibc-git.inc
> index db00ee6..29e3ba3 100644
> --- a/yocto/meta/recipes-core/uclibc/uclibc-git.inc
> +++ b/yocto/meta/recipes-core/uclibc/uclibc-git.inc
> @@ -23,5 +23,7 @@ SRC_URI = "git://
uclibc.org/uClibc.git;branch=master;protocol=git \
>         file://0001-librt-Use-nodefaultlibs-instead-of-nostdlib.patch \
>
file://0001-Revert-utent.c-wtent.c-move-functions-from-utxent.c.patch \
>         file://0001-i386-sysdep.h-Remove-STABS_-macros.patch \
> +       file://add-missing-IT-instruction-for-Thumb2.patch \
> +       file://move-check-for-BX-to-its-own-header.patch \
>         "
>  S = "${WORKDIR}/git"
> diff --git
a/yocto/meta/recipes-core/uclibc/uclibc-git/add-missing-IT-instruction-for-Thumb2.patch
b/yocto/meta/recipes-core/uclibc/uclibc-git/add-missing-IT-instruction-for-Thumb2.patch
> new file mode 100644
> index 0000000..c761d08
> --- /dev/null
> +++
b/yocto/meta/recipes-core/uclibc/uclibc-git/add-missing-IT-instruction-for-Thumb2.patch
> @@ -0,0 +1,22 @@
> +The conditional load needs to be made part of an IT block on Thumb2
> +cores.
> +
> +Signed-off-by: Will Newton <will.newton at linaro.org>
> +---
> + libc/sysdeps/linux/arm/clone.S | 1 +
> + 1 file changed, 1 insertion(+)
> +
> +diff --git a/libc/sysdeps/linux/arm/clone.S
b/libc/sysdeps/linux/arm/clone.S
> +index 98dde22..e73ddb6 100644
> +--- a/libc/sysdeps/linux/arm/clone.S
> ++++ b/libc/sysdeps/linux/arm/clone.S
> +@@ -110,6 +110,7 @@ __clone:
> +       ldr     r4, [sp, #12]
> +       DO_CALL (clone)
> +       movs    a1, a1
> ++      IT(t, ne)
> +       ldmnefd sp!, {r4}
> +       blt     __error
> +       IT(t, ne)
> +--
> +1.8.1.4
> diff --git
a/yocto/meta/recipes-core/uclibc/uclibc-git/move-check-for-BX-to-its-own-header.patch
b/yocto/meta/recipes-core/uclibc/uclibc-git/move-check-for-BX-to-its-own-header.patch
> new file mode 100644
> index 0000000..5cfe0dc
> --- /dev/null
> +++
b/yocto/meta/recipes-core/uclibc/uclibc-git/move-check-for-BX-to-its-own-header.patch
> @@ -0,0 +1,247 @@
> +As Will noticed, the header this check is currently done in
> +is asm-only, and is not meant to be included from C code.
> +This breaks compilation when compiled for a Thumb2-aware CPU.
> +
> +Move the BX check to its own header, and revert 7a246fd.
> +
> +Reported-by: Will Newton <will.newton at gmail.com>
> +Signed-off-by: "Yann E. MORIN" <yann.morin.1998 at free.fr>
> +Cc: Will Newton <will.newton at gmail.com>
> +---
> + ldso/ldso/arm/dl-startup.h            |    2 +-
> + ldso/ldso/arm/resolve.S               |    1 +
> + libc/string/arm/_memcpy.S             |    1 +
> + libc/string/arm/memcmp.S              |    1 +
> + libc/string/arm/memset.S              |    1 +
> + libc/string/arm/strcmp.S              |    1 +
> + libc/string/arm/strlen.S              |    1 +
> + libc/sysdeps/linux/arm/__longjmp.S    |    1 +
> + libc/sysdeps/linux/arm/bits/arm_asm.h |    8 -------
> + libc/sysdeps/linux/arm/bits/arm_bx.h  |   34
+++++++++++++++++++++++++++++++++
> + libc/sysdeps/linux/arm/clone.S        |    1 +
> + libc/sysdeps/linux/arm/mmap64.S       |    1 +
> + libc/sysdeps/linux/arm/syscall-eabi.S |    1 +
> + libc/sysdeps/linux/arm/sysdep.h       |    2 +-
> + libc/sysdeps/linux/arm/vfork.S        |    1 +
> + 15 files changed, 47 insertions(+), 10 deletions(-)
> + create mode 100644 libc/sysdeps/linux/arm/bits/arm_bx.h
> +
> +diff --git a/ldso/ldso/arm/dl-startup.h b/ldso/ldso/arm/dl-startup.h
> +index 0723d29..df2c824 100644
> +--- a/ldso/ldso/arm/dl-startup.h
> ++++ b/ldso/ldso/arm/dl-startup.h
> +@@ -7,7 +7,7 @@
> +  */
> +
> + #include <features.h>
> +-#include <bits/arm_asm.h>
> ++#include <bits/arm_bx.h>
> +
> + #if !defined(__thumb__)
> + __asm__(
> +diff --git a/ldso/ldso/arm/resolve.S b/ldso/ldso/arm/resolve.S
> +index b0907f7..c1caf9a 100644
> +--- a/ldso/ldso/arm/resolve.S
> ++++ b/ldso/ldso/arm/resolve.S
> +@@ -92,6 +92,7 @@
> +
> + #include <sys/syscall.h>
> + #include <bits/arm_asm.h>
> ++#include <bits/arm_bx.h>
> +
> + #include <features.h>
> +
> +diff --git a/libc/string/arm/_memcpy.S b/libc/string/arm/_memcpy.S
> +index b26080d..c59f5b8 100644
> +--- a/libc/string/arm/_memcpy.S
> ++++ b/libc/string/arm/_memcpy.S
> +@@ -40,6 +40,7 @@
> + #include <features.h>
> + #include <endian.h>
> + #include <bits/arm_asm.h>
> ++#include <bits/arm_bx.h>
> +
> + #if !defined(THUMB1_ONLY)
> + /*
> +diff --git a/libc/string/arm/memcmp.S b/libc/string/arm/memcmp.S
> +index 65409f4..9f78415 100644
> +--- a/libc/string/arm/memcmp.S
> ++++ b/libc/string/arm/memcmp.S
> +@@ -31,6 +31,7 @@
> +
> + #include <features.h>
> + #include <bits/arm_asm.h>
> ++#include <bits/arm_bx.h>
> +
> + .text
> + .global memcmp
> +diff --git a/libc/string/arm/memset.S b/libc/string/arm/memset.S
> +index c66b599..8ddc47e 100644
> +--- a/libc/string/arm/memset.S
> ++++ b/libc/string/arm/memset.S
> +@@ -19,6 +19,7 @@
> + #include <features.h>
> + #include <sys/syscall.h>
> + #include <bits/arm_asm.h>
> ++#include <bits/arm_bx.h>
> +
> + .text
> + .global memset
> +diff --git a/libc/string/arm/strcmp.S b/libc/string/arm/strcmp.S
> +index 97363c1..8b77ab0 100644
> +--- a/libc/string/arm/strcmp.S
> ++++ b/libc/string/arm/strcmp.S
> +@@ -31,6 +31,7 @@
> +
> + #include <features.h>
> + #include <bits/arm_asm.h>
> ++#include <bits/arm_bx.h>
> +
> + .text
> + .global strcmp
> +diff --git a/libc/string/arm/strlen.S b/libc/string/arm/strlen.S
> +index cfe041a..0e7737e 100644
> +--- a/libc/string/arm/strlen.S
> ++++ b/libc/string/arm/strlen.S
> +@@ -20,6 +20,7 @@
> + #include <endian.h>
> + #include <sys/syscall.h>
> + #include <bits/arm_asm.h>
> ++#include <bits/arm_bx.h>
> +
> + /* size_t strlen(const char *S)
> +  * entry: r0 -> string
> +diff --git a/libc/sysdeps/linux/arm/__longjmp.S
b/libc/sysdeps/linux/arm/__longjmp.S
> +index b6e4961..853b906 100644
> +--- a/libc/sysdeps/linux/arm/__longjmp.S
> ++++ b/libc/sysdeps/linux/arm/__longjmp.S
> +@@ -18,6 +18,7 @@
> +
> + #include <features.h>
> + #include <bits/arm_asm.h>
> ++#include <bits/arm_bx.h>
> +
> + .global __longjmp
> + .type __longjmp,%function
> +diff --git a/libc/sysdeps/linux/arm/bits/arm_asm.h
b/libc/sysdeps/linux/arm/bits/arm_asm.h
> +index 921c9a3..ff8ea92 100644
> +--- a/libc/sysdeps/linux/arm/bits/arm_asm.h
> ++++ b/libc/sysdeps/linux/arm/bits/arm_asm.h
> +@@ -24,12 +24,4 @@
> + #define THUMB1_ONLY 1
> + #endif
> +
> +-#if defined(__USE_BX__)
> +-# if (   defined (__ARM_ARCH_2__)  || defined (__ARM_ARCH_3__) \
> +-      || defined (__ARM_ARCH_3M__) || defined (__ARM_ARCH_4__) \
> +-     )
> +-#  error Use of BX was requested, but is not available on the target
processor.
> +-# endif /* ARCH level */
> +-#endif /* __USE_BX__ */
> +-
> + #endif /* _ARM_ASM_H */
> +diff --git a/libc/sysdeps/linux/arm/bits/arm_bx.h
b/libc/sysdeps/linux/arm/bits/arm_bx.h
> +new file mode 100644
> +index 0000000..321490e
> +--- /dev/null
> ++++ b/libc/sysdeps/linux/arm/bits/arm_bx.h
> +@@ -0,0 +1,34 @@
> ++/* Copyright (C) 2013 Yann E. MORIN <yann.morin.1998 at free.fr>
> ++ *
> ++ * This file is free software; you can redistribute it and/or modify
> ++ * it under the terms of the GNU Lesser General Public License as
> ++ * published by the Free Software Foundation; either version 2.1 of
> ++ * the License, or (at your option) any later version.
> ++ *
> ++ * This file is distributed in the hope that it will be useful, but
> ++ * WITHOUT ANY WARRANTY; without even the implied warranty of
> ++ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
> ++ * Lesser General Public License for more details.
> ++ *
> ++ * You should have received a copy of the GNU Lesser General Public
> ++ * License along with the GNU C Library; if not, see
> ++ * <http://www.gnu.org/licenses/>.
> ++ */
> ++
> ++#ifndef _ARM_BX_H
> ++#define _ARM_BX_H
> ++
> ++/* We need features.h first */
> ++#if !defined _FEATURES_H
> ++#error Please include features.h first
> ++#endif /* features.h not yet included */
> ++
> ++#if defined(__USE_BX__)
> ++# if (   defined (__ARM_ARCH_2__)  || defined (__ARM_ARCH_3__) \
> ++      || defined (__ARM_ARCH_3M__) || defined (__ARM_ARCH_4__) \
> ++     )
> ++#  error Use of BX was requested, but is not available on the target
processor.
> ++# endif /* ARCH level */
> ++#endif /* __USE_BX__ */
> ++
> ++#endif /* _ARM_BX_H */
> +diff --git a/libc/sysdeps/linux/arm/clone.S
b/libc/sysdeps/linux/arm/clone.S
> +index 98dde22..670a058 100644
> +--- a/libc/sysdeps/linux/arm/clone.S
> ++++ b/libc/sysdeps/linux/arm/clone.S
> +@@ -24,6 +24,7 @@
> + #include <bits/errno.h>
> + #include <sys/syscall.h>
> + #include <bits/arm_asm.h>
> ++#include <bits/arm_bx.h>
> +
> + #if defined(__NR_clone)
> + /* int clone(int (*fn)(void *arg), void *child_stack, int flags, void
*arg); */
> +diff --git a/libc/sysdeps/linux/arm/mmap64.S
b/libc/sysdeps/linux/arm/mmap64.S
> +index 3b66ef3..f4c491a 100644
> +--- a/libc/sysdeps/linux/arm/mmap64.S
> ++++ b/libc/sysdeps/linux/arm/mmap64.S
> +@@ -20,6 +20,7 @@
> + #include <bits/errno.h>
> + #include <sys/syscall.h>
> + #include <bits/arm_asm.h>
> ++#include <bits/arm_bx.h>
> +
> + #ifdef __NR_mmap2
> +
> +diff --git a/libc/sysdeps/linux/arm/syscall-eabi.S
b/libc/sysdeps/linux/arm/syscall-eabi.S
> +index 5643904..005cfe3 100644
> +--- a/libc/sysdeps/linux/arm/syscall-eabi.S
> ++++ b/libc/sysdeps/linux/arm/syscall-eabi.S
> +@@ -17,6 +17,7 @@
> +
> + #include <sys/syscall.h>
> + #include <bits/arm_asm.h>
> ++#include <bits/arm_bx.h>
> +
> + /* In the EABI syscall interface, we don't need a special syscall to
> +    implement syscall().  It won't work reliably with 64-bit arguments
> +diff --git a/libc/sysdeps/linux/arm/sysdep.h
b/libc/sysdeps/linux/arm/sysdep.h
> +index d4a86d3..a1b650f 100644
> +--- a/libc/sysdeps/linux/arm/sysdep.h
> ++++ b/libc/sysdeps/linux/arm/sysdep.h
> +@@ -20,7 +20,7 @@
> + #define _LINUX_ARM_SYSDEP_H 1
> +
> + #include <common/sysdep.h>
> +-#include <bits/arm_asm.h>
> ++#include <bits/arm_bx.h>
> +
> + #include <sys/syscall.h>
> + /* For Linux we can use the system call table in the header file
> +diff --git a/libc/sysdeps/linux/arm/vfork.S
b/libc/sysdeps/linux/arm/vfork.S
> +index 6a1c65e..99fb6cb 100644
> +--- a/libc/sysdeps/linux/arm/vfork.S
> ++++ b/libc/sysdeps/linux/arm/vfork.S
> +@@ -7,6 +7,7 @@
> +
> + #include <features.h>
> + #include <bits/arm_asm.h>
> ++#include <bits/arm_bx.h>
> +
> + #define _ERRNO_H
> + #include <bits/errno.h>
> +--
> +1.7.2.5
> +
> +
> --
> 1.8.4
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--047d7bd767ae09703404e6bf6b5d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Carlo<br><br>thanks for patch it looks fine yo me but please post it to oe-=
core mailing list<br><br>On Thursday, September 19, 2013, Carlo Caione &lt;=
<a href=3D"mailto:carlo.caione@gmail.com">carlo.caione@gmail.com</a>&gt; wr=
ote:<br>
&gt; uclibc doesn&#39;t compile for Thumb2-aware CPUs.<br>&gt; Added two pa=
tches (from uclibc) to make it compiling.<br>&gt;<br>&gt; Signed-off-by: Ca=
rlo Caione &lt;<a href=3D"mailto:carlo.caione@gmail.com">carlo.caione@gmail=
.com</a>&gt;<br>
&gt; ---<br>&gt; =C2=A0yocto/meta/recipes-core/uclibc/uclibc-git.inc =C2=A0=
 =C2=A0 =C2=A0| =C2=A0 2 +<br>&gt; =C2=A0.../add-missing-IT-instruction-for=
-Thumb2.patch =C2=A0 =C2=A0| =C2=A022 ++<br>&gt; =C2=A0.../move-check-for-B=
X-to-its-own-header.patch =C2=A0 =C2=A0 =C2=A0| 247 +++++++++++++++++++++<b=
r>
&gt; =C2=A03 files changed, 271 insertions(+)<br>&gt; =C2=A0create mode 100=
644 yocto/meta/recipes-core/uclibc/uclibc-git/add-missing-IT-instruction-fo=
r-Thumb2.patch<br>&gt; =C2=A0create mode 100644 yocto/meta/recipes-core/ucl=
ibc/uclibc-git/move-check-for-BX-to-its-own-header.patch<br>
&gt;<br>&gt; diff --git a/yocto/meta/recipes-core/uclibc/uclibc-git.inc b/y=
octo/meta/recipes-core/uclibc/uclibc-git.inc<br>&gt; index db00ee6..29e3ba3=
 100644<br>&gt; --- a/yocto/meta/recipes-core/uclibc/uclibc-git.inc<br>
&gt; +++ b/yocto/meta/recipes-core/uclibc/uclibc-git.inc<br>&gt; @@ -23,5 +=
23,7 @@ SRC_URI =3D &quot;git://<a href=3D"http://uclibc.org/uClibc.git;bra=
nch=3Dmaster;protocol=3Dgit">uclibc.org/uClibc.git;branch=3Dmaster;protocol=
=3Dgit</a> \<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://0001-librt-Use-nodefaultlibs-instea=
d-of-nostdlib.patch \<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://0001-Rever=
t-utent.c-wtent.c-move-functions-from-utxent.c.patch \<br>&gt; =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 file://0001-i386-sysdep.h-Remove-STABS_-macros.patch \<br=
>
&gt; + =C2=A0 =C2=A0 =C2=A0 file://add-missing-IT-instruction-for-Thumb2.pa=
tch \<br>&gt; + =C2=A0 =C2=A0 =C2=A0 file://move-check-for-BX-to-its-own-he=
ader.patch \<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;<br>&gt; =C2=A0S =3D=
 &quot;${WORKDIR}/git&quot;<br>&gt; diff --git a/yocto/meta/recipes-core/uc=
libc/uclibc-git/add-missing-IT-instruction-for-Thumb2.patch b/yocto/meta/re=
cipes-core/uclibc/uclibc-git/add-missing-IT-instruction-for-Thumb2.patch<br=
>
&gt; new file mode 100644<br>&gt; index 0000000..c761d08<br>&gt; --- /dev/n=
ull<br>&gt; +++ b/yocto/meta/recipes-core/uclibc/uclibc-git/add-missing-IT-=
instruction-for-Thumb2.patch<br>&gt; @@ -0,0 +1,22 @@<br>&gt; +The conditio=
nal load needs to be made part of an IT block on Thumb2<br>
&gt; +cores.<br>&gt; +<br>&gt; +Signed-off-by: Will Newton &lt;will.newton =
at <a href=3D"http://linaro.org">linaro.org</a>&gt;<br>&gt; +---<br>&gt; + =
libc/sysdeps/linux/arm/clone.S | 1 +<br>&gt; + 1 file changed, 1 insertion(=
+)<br>
&gt; +<br>&gt; +diff --git a/libc/sysdeps/linux/arm/clone.S b/libc/sysdeps/=
linux/arm/clone.S<br>&gt; +index 98dde22..e73ddb6 100644<br>&gt; +--- a/lib=
c/sysdeps/linux/arm/clone.S<br>&gt; ++++ b/libc/sysdeps/linux/arm/clone.S<b=
r>
&gt; +@@ -110,6 +110,7 @@ __clone:<br>&gt; + =C2=A0 =C2=A0 =C2=A0 ldr =C2=
=A0 =C2=A0 r4, [sp, #12]<br>&gt; + =C2=A0 =C2=A0 =C2=A0 DO_CALL (clone)<br>=
&gt; + =C2=A0 =C2=A0 =C2=A0 movs =C2=A0 =C2=A0a1, a1<br>&gt; ++ =C2=A0 =C2=
=A0 =C2=A0IT(t, ne)<br>&gt; + =C2=A0 =C2=A0 =C2=A0 ldmnefd sp!, {r4}<br>&gt=
; + =C2=A0 =C2=A0 =C2=A0 blt =C2=A0 =C2=A0 __error<br>
&gt; + =C2=A0 =C2=A0 =C2=A0 IT(t, ne)<br>&gt; +--<br>&gt; +1.8.1.4<br>&gt; =
diff --git a/yocto/meta/recipes-core/uclibc/uclibc-git/move-check-for-BX-to=
-its-own-header.patch b/yocto/meta/recipes-core/uclibc/uclibc-git/move-chec=
k-for-BX-to-its-own-header.patch<br>
&gt; new file mode 100644<br>&gt; index 0000000..5cfe0dc<br>&gt; --- /dev/n=
ull<br>&gt; +++ b/yocto/meta/recipes-core/uclibc/uclibc-git/move-check-for-=
BX-to-its-own-header.patch<br>&gt; @@ -0,0 +1,247 @@<br>&gt; +As Will notic=
ed, the header this check is currently done in<br>
&gt; +is asm-only, and is not meant to be included from C code.<br>&gt; +Th=
is breaks compilation when compiled for a Thumb2-aware CPU.<br>&gt; +<br>&g=
t; +Move the BX check to its own header, and revert 7a246fd.<br>&gt; +<br>
&gt; +Reported-by: Will Newton &lt;will.newton at <a href=3D"http://gmail.c=
om">gmail.com</a>&gt;<br>&gt; +Signed-off-by: &quot;Yann E. MORIN&quot; &lt=
;yann.morin.1998 at <a href=3D"http://free.fr">free.fr</a>&gt;<br>&gt; +Cc:=
 Will Newton &lt;will.newton at <a href=3D"http://gmail.com">gmail.com</a>&=
gt;<br>
&gt; +---<br>&gt; + ldso/ldso/arm/dl-startup.h =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0| =C2=A0 =C2=A02 +-<br>&gt; + ldso/ldso/arm/resolve.S =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A01 +<br>&gt; + libc=
/string/arm/_memcpy.S =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =
=C2=A01 +<br>&gt; + libc/string/arm/memcmp.S =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0| =C2=A0 =C2=A01 +<br>
&gt; + libc/string/arm/memset.S =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0| =C2=A0 =C2=A01 +<br>&gt; + libc/string/arm/strcmp.S =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A0 =C2=A01 +<br>&gt; + libc/string/=
arm/strlen.S =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A0 =C2=
=A01 +<br>&gt; + libc/sysdeps/linux/arm/__longjmp.S =C2=A0 =C2=A0| =C2=A0 =
=C2=A01 +<br>
&gt; + libc/sysdeps/linux/arm/bits/arm_asm.h | =C2=A0 =C2=A08 -------<br>&g=
t; + libc/sysdeps/linux/arm/bits/arm_bx.h =C2=A0| =C2=A0 34 +++++++++++++++=
++++++++++++++++++<br>&gt; + libc/sysdeps/linux/arm/clone.S =C2=A0 =C2=A0 =
=C2=A0 =C2=A0| =C2=A0 =C2=A01 +<br>&gt; + libc/sysdeps/linux/arm/mmap64.S =
=C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A01 +<br>
&gt; + libc/sysdeps/linux/arm/syscall-eabi.S | =C2=A0 =C2=A01 +<br>&gt; + l=
ibc/sysdeps/linux/arm/sysdep.h =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A02 +-<br>=
&gt; + libc/sysdeps/linux/arm/vfork.S =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A0 =
=C2=A01 +<br>&gt; + 15 files changed, 47 insertions(+), 10 deletions(-)<br>
&gt; + create mode 100644 libc/sysdeps/linux/arm/bits/arm_bx.h<br>&gt; +<br=
>&gt; +diff --git a/ldso/ldso/arm/dl-startup.h b/ldso/ldso/arm/dl-startup.h=
<br>&gt; +index 0723d29..df2c824 100644<br>&gt; +--- a/ldso/ldso/arm/dl-sta=
rtup.h<br>
&gt; ++++ b/ldso/ldso/arm/dl-startup.h<br>&gt; +@@ -7,7 +7,7 @@<br>&gt; + =
=C2=A0*/<br>&gt; +<br>&gt; + #include &lt;features.h&gt;<br>&gt; +-#include=
 &lt;bits/arm_asm.h&gt;<br>&gt; ++#include &lt;bits/arm_bx.h&gt;<br>&gt; +<=
br>
&gt; + #if !defined(__thumb__)<br>&gt; + __asm__(<br>&gt; +diff --git a/lds=
o/ldso/arm/resolve.S b/ldso/ldso/arm/resolve.S<br>&gt; +index b0907f7..c1ca=
f9a 100644<br>&gt; +--- a/ldso/ldso/arm/resolve.S<br>&gt; ++++ b/ldso/ldso/=
arm/resolve.S<br>
&gt; +@@ -92,6 +92,7 @@<br>&gt; +<br>&gt; + #include &lt;sys/syscall.h&gt;<=
br>&gt; + #include &lt;bits/arm_asm.h&gt;<br>&gt; ++#include &lt;bits/arm_b=
x.h&gt;<br>&gt; +<br>&gt; + #include &lt;features.h&gt;<br>&gt; +<br>&gt; +=
diff --git a/libc/string/arm/_memcpy.S b/libc/string/arm/_memcpy.S<br>
&gt; +index b26080d..c59f5b8 100644<br>&gt; +--- a/libc/string/arm/_memcpy.=
S<br>&gt; ++++ b/libc/string/arm/_memcpy.S<br>&gt; +@@ -40,6 +40,7 @@<br>&g=
t; + #include &lt;features.h&gt;<br>&gt; + #include &lt;endian.h&gt;<br>
&gt; + #include &lt;bits/arm_asm.h&gt;<br>&gt; ++#include &lt;bits/arm_bx.h=
&gt;<br>&gt; +<br>&gt; + #if !defined(THUMB1_ONLY)<br>&gt; + /*<br>&gt; +di=
ff --git a/libc/string/arm/memcmp.S b/libc/string/arm/memcmp.S<br>&gt; +ind=
ex 65409f4..9f78415 100644<br>
&gt; +--- a/libc/string/arm/memcmp.S<br>&gt; ++++ b/libc/string/arm/memcmp.=
S<br>&gt; +@@ -31,6 +31,7 @@<br>&gt; +<br>&gt; + #include &lt;features.h&gt=
;<br>&gt; + #include &lt;bits/arm_asm.h&gt;<br>&gt; ++#include &lt;bits/arm=
_bx.h&gt;<br>
&gt; +<br>&gt; + .text<br>&gt; + .global memcmp<br>&gt; +diff --git a/libc/=
string/arm/memset.S b/libc/string/arm/memset.S<br>&gt; +index c66b599..8ddc=
47e 100644<br>&gt; +--- a/libc/string/arm/memset.S<br>&gt; ++++ b/libc/stri=
ng/arm/memset.S<br>
&gt; +@@ -19,6 +19,7 @@<br>&gt; + #include &lt;features.h&gt;<br>&gt; + #in=
clude &lt;sys/syscall.h&gt;<br>&gt; + #include &lt;bits/arm_asm.h&gt;<br>&g=
t; ++#include &lt;bits/arm_bx.h&gt;<br>&gt; +<br>&gt; + .text<br>&gt; + .gl=
obal memset<br>
&gt; +diff --git a/libc/string/arm/strcmp.S b/libc/string/arm/strcmp.S<br>&=
gt; +index 97363c1..8b77ab0 100644<br>&gt; +--- a/libc/string/arm/strcmp.S<=
br>&gt; ++++ b/libc/string/arm/strcmp.S<br>&gt; +@@ -31,6 +31,7 @@<br>&gt; =
+<br>
&gt; + #include &lt;features.h&gt;<br>&gt; + #include &lt;bits/arm_asm.h&gt=
;<br>&gt; ++#include &lt;bits/arm_bx.h&gt;<br>&gt; +<br>&gt; + .text<br>&gt=
; + .global strcmp<br>&gt; +diff --git a/libc/string/arm/strlen.S b/libc/st=
ring/arm/strlen.S<br>
&gt; +index cfe041a..0e7737e 100644<br>&gt; +--- a/libc/string/arm/strlen.S=
<br>&gt; ++++ b/libc/string/arm/strlen.S<br>&gt; +@@ -20,6 +20,7 @@<br>&gt;=
 + #include &lt;endian.h&gt;<br>&gt; + #include &lt;sys/syscall.h&gt;<br>
&gt; + #include &lt;bits/arm_asm.h&gt;<br>&gt; ++#include &lt;bits/arm_bx.h=
&gt;<br>&gt; +<br>&gt; + /* size_t strlen(const char *S)<br>&gt; + =C2=A0* =
entry: r0 -&gt; string<br>&gt; +diff --git a/libc/sysdeps/linux/arm/__longj=
mp.S b/libc/sysdeps/linux/arm/__longjmp.S<br>
&gt; +index b6e4961..853b906 100644<br>&gt; +--- a/libc/sysdeps/linux/arm/_=
_longjmp.S<br>&gt; ++++ b/libc/sysdeps/linux/arm/__longjmp.S<br>&gt; +@@ -1=
8,6 +18,7 @@<br>&gt; +<br>&gt; + #include &lt;features.h&gt;<br>&gt; + #inc=
lude &lt;bits/arm_asm.h&gt;<br>
&gt; ++#include &lt;bits/arm_bx.h&gt;<br>&gt; +<br>&gt; + .global __longjmp=
<br>&gt; + .type __longjmp,%function<br>&gt; +diff --git a/libc/sysdeps/lin=
ux/arm/bits/arm_asm.h b/libc/sysdeps/linux/arm/bits/arm_asm.h<br>&gt; +inde=
x 921c9a3..ff8ea92 100644<br>
&gt; +--- a/libc/sysdeps/linux/arm/bits/arm_asm.h<br>&gt; ++++ b/libc/sysde=
ps/linux/arm/bits/arm_asm.h<br>&gt; +@@ -24,12 +24,4 @@<br>&gt; + #define T=
HUMB1_ONLY 1<br>&gt; + #endif<br>&gt; +<br>&gt; +-#if defined(__USE_BX__)<b=
r>
&gt; +-# if ( =C2=A0 defined (__ARM_ARCH_2__) =C2=A0|| defined (__ARM_ARCH_=
3__) \<br>&gt; +- =C2=A0 =C2=A0 =C2=A0|| defined (__ARM_ARCH_3M__) || defin=
ed (__ARM_ARCH_4__) \<br>&gt; +- =C2=A0 =C2=A0 )<br>&gt; +-# =C2=A0error Us=
e of BX was requested, but is not available on the target processor.<br>
&gt; +-# endif /* ARCH level */<br>&gt; +-#endif /* __USE_BX__ */<br>&gt; +=
-<br>&gt; + #endif /* _ARM_ASM_H */<br>&gt; +diff --git a/libc/sysdeps/linu=
x/arm/bits/arm_bx.h b/libc/sysdeps/linux/arm/bits/arm_bx.h<br>&gt; +new fil=
e mode 100644<br>
&gt; +index 0000000..321490e<br>&gt; +--- /dev/null<br>&gt; ++++ b/libc/sys=
deps/linux/arm/bits/arm_bx.h<br>&gt; +@@ -0,0 +1,34 @@<br>&gt; ++/* Copyrig=
ht (C) 2013 Yann E. MORIN &lt;yann.morin.1998 at <a href=3D"http://free.fr"=
>free.fr</a>&gt;<br>
&gt; ++ *<br>&gt; ++ * This file is free software; you can redistribute it =
and/or modify<br>&gt; ++ * it under the terms of the GNU Lesser General Pub=
lic License as<br>&gt; ++ * published by the Free Software Foundation; eith=
er version 2.1 of<br>
&gt; ++ * the License, or (at your option) any later version.<br>&gt; ++ *<=
br>&gt; ++ * This file is distributed in the hope that it will be useful, b=
ut<br>&gt; ++ * WITHOUT ANY WARRANTY; without even the implied warranty of<=
br>
&gt; ++ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. =C2=A0See th=
e GNU<br>&gt; ++ * Lesser General Public License for more details.<br>&gt; =
++ *<br>&gt; ++ * You should have received a copy of the GNU Lesser General=
 Public<br>
&gt; ++ * License along with the GNU C Library; if not, see<br>&gt; ++ * &l=
t;<a href=3D"http://www.gnu.org/licenses/">http://www.gnu.org/licenses/</a>=
&gt;.<br>&gt; ++ */<br>&gt; ++<br>&gt; ++#ifndef _ARM_BX_H<br>&gt; ++#defin=
e _ARM_BX_H<br>
&gt; ++<br>&gt; ++/* We need features.h first */<br>&gt; ++#if !defined _FE=
ATURES_H<br>&gt; ++#error Please include features.h first<br>&gt; ++#endif =
/* features.h not yet included */<br>&gt; ++<br>&gt; ++#if defined(__USE_BX=
__)<br>
&gt; ++# if ( =C2=A0 defined (__ARM_ARCH_2__) =C2=A0|| defined (__ARM_ARCH_=
3__) \<br>&gt; ++ =C2=A0 =C2=A0 =C2=A0|| defined (__ARM_ARCH_3M__) || defin=
ed (__ARM_ARCH_4__) \<br>&gt; ++ =C2=A0 =C2=A0 )<br>&gt; ++# =C2=A0error Us=
e of BX was requested, but is not available on the target processor.<br>
&gt; ++# endif /* ARCH level */<br>&gt; ++#endif /* __USE_BX__ */<br>&gt; +=
+<br>&gt; ++#endif /* _ARM_BX_H */<br>&gt; +diff --git a/libc/sysdeps/linux=
/arm/clone.S b/libc/sysdeps/linux/arm/clone.S<br>&gt; +index 98dde22..670a0=
58 100644<br>
&gt; +--- a/libc/sysdeps/linux/arm/clone.S<br>&gt; ++++ b/libc/sysdeps/linu=
x/arm/clone.S<br>&gt; +@@ -24,6 +24,7 @@<br>&gt; + #include &lt;bits/errno.=
h&gt;<br>&gt; + #include &lt;sys/syscall.h&gt;<br>&gt; + #include &lt;bits/=
arm_asm.h&gt;<br>
&gt; ++#include &lt;bits/arm_bx.h&gt;<br>&gt; +<br>&gt; + #if defined(__NR_=
clone)<br>&gt; + /* int clone(int (*fn)(void *arg), void *child_stack, int =
flags, void *arg); */<br>&gt; +diff --git a/libc/sysdeps/linux/arm/mmap64.S=
 b/libc/sysdeps/linux/arm/mmap64.S<br>
&gt; +index 3b66ef3..f4c491a 100644<br>&gt; +--- a/libc/sysdeps/linux/arm/m=
map64.S<br>&gt; ++++ b/libc/sysdeps/linux/arm/mmap64.S<br>&gt; +@@ -20,6 +2=
0,7 @@<br>&gt; + #include &lt;bits/errno.h&gt;<br>&gt; + #include &lt;sys/s=
yscall.h&gt;<br>
&gt; + #include &lt;bits/arm_asm.h&gt;<br>&gt; ++#include &lt;bits/arm_bx.h=
&gt;<br>&gt; +<br>&gt; + #ifdef __NR_mmap2<br>&gt; +<br>&gt; +diff --git a/=
libc/sysdeps/linux/arm/syscall-eabi.S b/libc/sysdeps/linux/arm/syscall-eabi=
.S<br>
&gt; +index 5643904..005cfe3 100644<br>&gt; +--- a/libc/sysdeps/linux/arm/s=
yscall-eabi.S<br>&gt; ++++ b/libc/sysdeps/linux/arm/syscall-eabi.S<br>&gt; =
+@@ -17,6 +17,7 @@<br>&gt; +<br>&gt; + #include &lt;sys/syscall.h&gt;<br>
&gt; + #include &lt;bits/arm_asm.h&gt;<br>&gt; ++#include &lt;bits/arm_bx.h=
&gt;<br>&gt; +<br>&gt; + /* In the EABI syscall interface, we don&#39;t nee=
d a special syscall to<br>&gt; + =C2=A0 =C2=A0implement syscall(). =C2=A0It=
 won&#39;t work reliably with 64-bit arguments<br>
&gt; +diff --git a/libc/sysdeps/linux/arm/sysdep.h b/libc/sysdeps/linux/arm=
/sysdep.h<br>&gt; +index d4a86d3..a1b650f 100644<br>&gt; +--- a/libc/sysdep=
s/linux/arm/sysdep.h<br>&gt; ++++ b/libc/sysdeps/linux/arm/sysdep.h<br>
&gt; +@@ -20,7 +20,7 @@<br>&gt; + #define _LINUX_ARM_SYSDEP_H 1<br>&gt; +<b=
r>&gt; + #include &lt;common/sysdep.h&gt;<br>&gt; +-#include &lt;bits/arm_a=
sm.h&gt;<br>&gt; ++#include &lt;bits/arm_bx.h&gt;<br>&gt; +<br>&gt; + #incl=
ude &lt;sys/syscall.h&gt;<br>
&gt; + /* For Linux we can use the system call table in the header file<br>=
&gt; +diff --git a/libc/sysdeps/linux/arm/vfork.S b/libc/sysdeps/linux/arm/=
vfork.S<br>&gt; +index 6a1c65e..99fb6cb 100644<br>&gt; +--- a/libc/sysdeps/=
linux/arm/vfork.S<br>
&gt; ++++ b/libc/sysdeps/linux/arm/vfork.S<br>&gt; +@@ -7,6 +7,7 @@<br>&gt;=
 +<br>&gt; + #include &lt;features.h&gt;<br>&gt; + #include &lt;bits/arm_as=
m.h&gt;<br>&gt; ++#include &lt;bits/arm_bx.h&gt;<br>&gt; +<br>&gt; + #defin=
e _ERRNO_H<br>
&gt; + #include &lt;bits/errno.h&gt;<br>&gt; +--<br>&gt; +1.7.2.5<br>&gt; +=
<br>&gt; +<br>&gt; --<br>&gt; 1.8.4<br>&gt;<br>&gt; _______________________=
________________________<br>&gt; yocto mailing list<br>&gt; <a href=3D"mail=
to:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://list=
s.yoctoproject.org/listinfo/yocto</a><br>&gt;

--047d7bd767ae09703404e6bf6b5d--
