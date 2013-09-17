Return-Path: <hans.beckerus@gmail.com>
Received: from mail-ob0-f170.google.com (mail-ob0-f170.google.com
	[209.85.214.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7D5EE015A8
	for <yocto@yoctoproject.org>; Tue, 17 Sep 2013 08:09:46 -0700 (PDT)
Received: by mail-ob0-f170.google.com with SMTP id va2so5679799obc.1
	for <yocto@yoctoproject.org>; Tue, 17 Sep 2013 08:09:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=1T1KdQiW6sI0mmz2V2GdgLHsoVtjn6lL12FfpeK+FbE=;
	b=LGX9n2XoSHax/40n7S/eroekHts76flJ1q/zpgGhBuxtZh00g4dnxTEoh4LMxw0Sl9
	MtZ8aX6vEkAk7j20Qu6YsncjjLtdaIQXPOD0I0f9nbDqsoLmT+Ez4WxVWoFUE4kSLPEd
	G6HdbuibTlhxCiISsBYRXDw2nxX+3tkyuVphxwh4XOEglmC9Db+K872dzWjfGHLn+5R2
	YfAAmMV+EjenydJpYC+psv1oUZNzCJEaYBhoZ1+wfv6nDRaP7NGswhYbyMHjkmQCkSya
	Q+8B2ffrXCQtJKwMmbx806ZRi8z6ER03un13AW+ibgH/R9Lvp+dP41Ig8oxSjyvtqikQ
	IRsg==
MIME-Version: 1.0
X-Received: by 10.182.237.44 with SMTP id uz12mr30911963obc.11.1379430586403; 
	Tue, 17 Sep 2013 08:09:46 -0700 (PDT)
Received: by 10.182.44.8 with HTTP; Tue, 17 Sep 2013 08:09:46 -0700 (PDT)
Date: Tue, 17 Sep 2013 17:09:46 +0200
Message-ID: <CAFyqS9oT-y6p7=xs22iYNvs0bv1J7AKTA5Wrg_piStiWF+z9cg@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Problems building util-linux when wide character support is disabled in distro
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
X-List-Received-Date: Tue, 17 Sep 2013 15:09:48 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi. We are having som problems building our rootfs now that our custom
distro (based on poky-tiny) no longer includes wide character support
in libc.
Here is an example of the errors we get:

| arm-poky-linux-gnueabi-libtool: link: arm-poky-linux-gnueabi-gcc
-march=armv7-a -mthumb-interwork -mfloat-abi=softfp -mtune=cortex-a9
--sysroot=/home/qhanbec/poky/build/tmp/sysroots/zynq-zc706 -std=gnu99
-fsigned-char -fno-common -Wall -Werror=sequence-point -Wextra
-Wmissing-declarations -Wmissing-parameter-type -Wmissing-prototypes
-Wno-missing-field-initializers -Wredundant-decls -Wsign-compare
-Wtype-limits -Wuninitialized -Wunused-but-set-parameter
-Wunused-but-set-variable -Wunused-parameter -Wunused-result
-Wunused-variable -O2 -pipe -g -feliminate-unused-debug-types -Wl,-O1
-Wl,--hash-style=gnu -Wl,--as-needed -o ul text-utils/ul.o  -ltinfo
| text-utils/rev.o: In function `main':
| /home/poky/build/tmp/work/cortexa9-vfp-poky-linux-gnueabi/util-linux/2.22.2-r3/util-linux-2.22.2/text-utils/rev.c:139:
undefined reference to `fgetws'
| /home/poky/build/tmp/work/cortexa9-vfp-poky-linux-gnueabi/util-linux/2.22.2-r3/util-linux-2.22.2/text-utils/rev.c:151:
undefined reference to `fgetws'
| /home//poky/build/tmp/work/cortexa9-vfp-poky-linux-gnueabi/util-linux/2.22.2-r3/util-linux-2.22.2/text-utils/rev.c:154:
undefined reference to `wcslen'
| /home/poky/build/tmp/work/cortexa9-vfp-poky-linux-gnueabi/util-linux/2.22.2-r3/util-linux-2.22.2/text-utils/rev.c:160:
undefined reference to `putwchar'
| /home/poky/build/tmp/work/cortexa9-vfp-poky-linux-gnueabi/util-linux/2.22.2-r3/util-linux-2.22.2/text-utils/rev.c:162:
undefined reference to `putwchar'
| collect2: error: ld returned 1 exit status

The problem is that util-linux still thinks we have wide character
support (from configure.ac):

AC_COMPILE_IFELSE([AC_LANG_PROGRAM([[
#include <wchar.h>
#include <wctype.h>
#include <stdio.h>
]], [[
  wchar_t wc;
  wint_t w;
  w = fgetwc(stdin);
  if (w == WEOF) exit(1);
  wc = w;
  fputwc(wc,stdout);
]])],
[AC_DEFINE(HAVE_WIDECHAR,1,Do we have wide character support?)
])

Since no linking is performed due to x-compilation, all that this does
is basically checking if wchar.h exists or not.
And that is also were the problem is. Even if we have disabled wide
character support in eglibc, the wchar.h header files is still copied
to our sysroot!?
Is that really how it should be when DISTRO_FEATURES_LIBC does not
include 'libc-posix-clang-wchar libc-posix-wchar-io'?
Here is our DISTRO_FEATURES (as reported by bitbake -e) and build environment:

DISTRO_FEATURES="ipv4 usbhost usbgadget ${DISTRO_FEATURES_WIFI}
libc-libm libc-crypt libc-utmp libc-getlogin libc-posix-regexp
libc-inet libc-nis   sysvinit largefile nfs"

Build Configuration:
BB_VERSION        = "1.19.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "SUSE-LINUX-11"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "zynq-zc706"
DISTRO            = "poky-chris"
DISTRO_VERSION    = "1.4+snapshot-20130917"
TUNE_FEATURES     = "armv7a vfp cortexa9"
TARGET_FPU        = "vfp"
meta
meta-yocto
meta-yocto-bsp    = "master:3b38c898a4647c6a639d0dbd416b0bbacbf278f5"
meta-oe           = "master:7c292ce28756824b1fa377d516aedd979fa41f19"

Any ideas how what might be wrong here?

Thanks.
Hans

