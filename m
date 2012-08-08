Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5405BE002A5
	for <yocto@yoctoproject.org>; Wed,  8 Aug 2012 14:24:07 -0700 (PDT)
Received: by eabd1 with SMTP id d1so405728eab.35
	for <yocto@yoctoproject.org>; Wed, 08 Aug 2012 14:24:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=FfhYaKGT+iXJb5NyI10qtGPyIToFOReCzcSQT/rO3IA=;
	b=J4NskiLI41xn9B6M9CQo/32Ro840QBlrsqK7fk5uDqr6AJ2O9UNVUckcwvFK68Hseg
	PgSKPNXZON8MtWjnXA+Y19r/0Yd7AYGWNddefXwtaodKFY9o7UaZtx8qLUJKPW+yQ1DW
	XnV/h1EdBElhBf5fg4m5yKhJCa+L7Flrt18tS8Ws9poa0WalYyAGU9W3wdVF76liX7+z
	FW/y7EGw972tiINxcPPtsep9p9hSt6Hp+O+PNLRIdZIUtcfPBMK/O8Wmjjp3Kw/kg+k/
	oZ+VSZLIbxR+s1vFJmBKFC+HKtcs9za/p7Lw8vXwTDL1lCNQF0LJSvRR35lELyoDnfSK
	JvGA==
Received: by 10.14.194.198 with SMTP id m46mr24034441een.13.1344461046094;
	Wed, 08 Aug 2012 14:24:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.97.141 with HTTP; Wed, 8 Aug 2012 14:23:35 -0700 (PDT)
In-Reply-To: <735CD356-A6DB-4939-9C39-EDB0A15D7343@gmail.com>
References: <735CD356-A6DB-4939-9C39-EDB0A15D7343@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 8 Aug 2012 14:23:35 -0700
Message-ID: <CAMKF1sogsUv1ahoYdTBFoM8oVq0u410Wi8Ghv5WRT+uN4FgK+Q@mail.gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: poky/bernard: gcc-4.5.1 configure: error: cannot compute suffix of object files: cannot compile
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 08 Aug 2012 21:24:07 -0000
Content-Type: text/plain; charset=UTF-8

Elvis

I think gcc 4.6 is retired in toolchain-layer in meta-openembedded
repo. I think first thing
I would suggest is use that layer and use gcc 4.6 this might work
better. I think 4.6 should still
work with master or we can kind of fix it if need be.

Then if you are still unlucky then use 4.5.1

Thanks
-Khem

On Wed, Aug 8, 2012 at 1:24 PM, Elvis Dowson <elvis.dowson@gmail.com> wrote:
> Hi,
>       I'm trying to get build using the bernard branch, for a PowerPC440
> target, and I get a build failure for gcc-4.5.1:
>
> NOTE: Running task 500 of 1502 (ID: 590,
> virtual:native:/tool/yocto/poky/meta/recipes-core/readline/readline_6.1.bb,
> do_install)
> ERROR: Function 'do_compile' failed (see
> /tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1-r4/temp/log.do_compile.9332
> for further information)
> ERROR: Logfile of failure stored in:
> /tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1-r4/temp/log.do_compile.9332
> Log data follows:
> | NOTE: make -j 6 ARCH_FLAGS_FOR_TARGET=-m32 -mcpu=440  -mfpu-soft
> -isystem/tool/yocto/poky/build/tmp/sysroots/virtex5/usr/include
> | make[1]: Entering directory
> `/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux'
> | make[2]: Entering directory
> `/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/libdecnumber'
> | make[2]: Nothing to be done for `all'.
> | make[2]: Leaving directory
> `/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/libdecnumber'
> | make[2]: Entering directory
> `/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/zlib'
> | true "AR_FLAGS=rc" "CC_FOR_BUILD=gcc"
> "CFLAGS=-isystem/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/include
> -O2"
> "CXXFLAGS=-isystem/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/include
> -O2"
> "CFLAGS_FOR_BUILD=-isystem/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/include
> -O2" "CFLAGS_FOR_TARGET=-g
> -isystem/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/include -O2"
> "INSTALL=/usr/bin/install -c" "INSTALL_DATA=/usr/bin/install -c -m 644"
> "INSTALL_PROGRAM=/usr/bin/install -c" "INSTALL_SCRIPT=/usr/bin/install -c"
> "LDFLAGS=-L/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib
> -Wl,-rpath-link,/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib
> -Wl,-rpath,/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib -Wl,-O1"
> "LIBCFLAGS=-isystem/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/include
> -O2" "LIBCFLAGS_FOR_TARGET=-g
> -isystem/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/include -O2"
> "MAKE=make" "MAKEINFO=makeinfo --split-size=5000000 --split-size=5000000 "
> "PICFLAG=" "PICFLAG_FOR_TARGET=" "SHELL=/bin/sh" "EXPECT=expect"
> "RUNTEST=runtest" "RUNTESTFLAGS="
> "exec_prefix=/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr"
> "infodir=/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/share/info"
> "libdir=/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/ppc440-poky-linux.gcc-cross-initial"
> "prefix=/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr"
> "tooldir=/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/powerpc-poky-linux"
> "AR=ar" "AS=as" "CC=gcc" "CXX=g++" "LD=ld"
> "LIBCFLAGS=-isystem/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/include
> -O2" "NM=nm" "PICFLAG=" "RANLIB=ranlib" "DESTDIR=" DO=all multi-do # make
> | make[2]: Leaving directory
> `/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/zlib'
> | make[2]: Entering directory
> `/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/libiberty'
> | make[2]: Entering directory
> `/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/intl'
> | make[2]: Nothing to be done for `all'.
> | make[2]: Leaving directory
> `/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/intl'
> | make[2]: Entering directory
> `/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/build-x86_64-linux/libiberty'
> | make[3]: Entering directory
> `/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/build-x86_64-linux/libiberty/testsuite'
> | make[3]: Nothing to be done for `all'.
> | make[3]: Leaving directory
> `/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/build-x86_64-linux/libiberty/testsuite'
> | make[2]: Leaving directory
> `/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/build-x86_64-linux/libiberty'
> | make[3]: Entering directory
> `/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/libiberty/testsuite'
> | make[3]: Nothing to be done for `all'.
> | make[3]: Leaving directory
> `/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/libiberty/testsuite'
> | make[2]: Leaving directory
> `/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/libiberty'
> | make[2]: Entering directory
> `/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/build-x86_64-linux/fixincludes'
> | make[2]: Nothing to be done for `all'.
> | make[2]: Leaving directory
> `/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/build-x86_64-linux/fixincludes'
> | make[2]: Entering directory
> `/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/libcpp'
> | test -f config.h || (rm -f stamp-h1 && make stamp-h1)
> | make[2]: Leaving directory
> `/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/libcpp'
> | make[2]: Entering directory
> `/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/fixincludes'
> | make[2]: Nothing to be done for `all'.
> | make[2]: Leaving directory
> `/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/fixincludes'
> | make[2]: Entering directory
> `/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/gcc'
> | make[2]: Leaving directory
> `/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/gcc'
> | Checking multilib configuration for libgcc...
> | Configuring in powerpc-poky-linux/libgcc
> | configure: loading cache ./config.cache
> | checking for --enable-version-specific-runtime-libs... no
> | checking for a BSD-compatible install... /usr/bin/install -c
> | checking for gawk... gawk
> | checking build system type... x86_64-pc-linux-gnu
> | checking host system type... powerpc-poky-linux-gnu
> | checking for powerpc-poky-linux-ar... powerpc-poky-linux-ar
> | checking for powerpc-poky-linux-lipo... powerpc-poky-linux-lipo
> | checking for powerpc-poky-linux-nm...
> /tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/./gcc/nm
> | checking for powerpc-poky-linux-ranlib... powerpc-poky-linux-ranlib
> | checking for powerpc-poky-linux-strip... powerpc-poky-linux-strip
> | checking whether ln -s works... yes
> | checking for powerpc-poky-linux-gcc...
> /tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/./gcc/xgcc
> -B/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/./gcc/
> -m32 -mcpu=440  -mfpu-soft
> -isystem/tool/yocto/poky/build/tmp/sysroots/virtex5/usr/include
> -B/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/powerpc-poky-linux/bin/
> -B/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/powerpc-poky-linux/lib/
> -isystem
> /tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/powerpc-poky-linux/include
> -isystem
> /tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/powerpc-poky-linux/sys-include
> --sysroot=/tool/yocto/poky/build/tmp/sysroots/virtex5
> | checking for suffix of object files... configure: error: in
> `/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/powerpc-poky-linux/libgcc':
> | configure: error: cannot compute suffix of object files: cannot compile
> | See `config.log' for more details.
> | make[1]: *** [configure-target-libgcc] Error 1
> | make[1]: Leaving directory
> `/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux'
> | make: *** [all] Error 2
> | FATAL: oe_runmake failed
> | ERROR: Function 'do_compile' failed (see
> /tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1-r4/temp/log.do_compile.9332
> for further information)
> NOTE: package gcc-cross-initial-4.5.1-r4: task do_compile: Failed
> ERROR: Task 1112
> (/tool/yocto/poky/meta/recipes-devtools/gcc/gcc-cross-initial_4.5.1.bb,
> do_compile) failed with exit code '1'
>
> What should I do to get past this error?
>
> Best regards,
>
> Elvis Dowson
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

