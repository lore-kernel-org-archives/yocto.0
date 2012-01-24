Return-Path: <autif.mlist@gmail.com>
Received: from mail-vx0-f176.google.com (mail-vx0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CAA2E00592
	for <yocto@yoctoproject.org>; Tue, 24 Jan 2012 07:18:11 -0800 (PST)
Received: by vcbfl13 with SMTP id fl13so1564851vcb.35
	for <yocto@yoctoproject.org>; Tue, 24 Jan 2012 07:18:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=uVqoaGU19i4xfhV7Z4siy35vxqP9f4mSwOK8yZ1LFxI=;
	b=Lwflk9AQQ6kV2Wzt7KDOqqrdWaxJVH/paWMHBtdsCGA9/OwQG7nz3r3+tWRCi3q4ob
	pAV2FBH5Y6yayc/A2njQe70jkEf0JDcL9Sf5Fgk1nTbmbM7qXksge6yIYP5rZWcPWciU
	taJtsC05RDAg+RPRpLotgk3Q/AGK/RsRtDxGk=
MIME-Version: 1.0
Received: by 10.220.155.132 with SMTP id s4mr7310964vcw.38.1327418290348; Tue,
	24 Jan 2012 07:18:10 -0800 (PST)
Received: by 10.52.108.37 with HTTP; Tue, 24 Jan 2012 07:18:10 -0800 (PST)
Date: Tue, 24 Jan 2012 10:18:10 -0500
Message-ID: <CADzUK1J+pYY8hpKKY786ZWPM2O7SkZvMqjOH-5wt8323_kR=gw@mail.gmail.com>
From: autif khan <autif.mlist@gmail.com>
To: yocto@yoctoproject.org
Subject: libtool version mismatch
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
X-List-Received-Date: Tue, 24 Jan 2012 15:18:12 -0000
Content-Type: text/plain; charset=ISO-8859-1

I have been working on writing a recipe for mono. I have successfully
written one for lbgdiplus and am making headway with mono.

Mono comes with libtool version 2.2.6, Yocto uses 2.4

After do_configure(), when do_complie() is being executed, I am
getting the following error for the following command:

Command:
/bin/sh ./libtool --mode=compile i586-poky-linux-gcc  -m32
-march=core2 -msse3 -mtune=generic -mfpmath=sse
--sysroot=/home/autif/data2/nosync/dev/yocto/kokosdk/tmp/sysroots/crownbay
-DPACKAGE_NAME=\"libgc-mono\" -DPACKAGE_TARNAME=\"libgc-mono\"
-DPACKAGE_VERSION=\"6.6\" -DPACKAGE_STRING=\"libgc-mono\ 6.6\"
-DPACKAGE_BUGREPORT=\"Hans_Boehm@hp.com\" -DPACKAGE_URL=\"\"
-DGC_LINUX_THREADS=1 -D_REENTRANT=1 -DPARALLEL_MARK=1
-DTHREAD_LOCAL_ALLOC=1 -DSTDC_HEADERS=1 -DHAVE_SYS_TYPES_H=1
-DHAVE_SYS_STAT_H=1 -DHAVE_STDLIB_H=1 -DHAVE_STRING_H=1
-DHAVE_MEMORY_H=1 -DHAVE_STRINGS_H=1 -DHAVE_INTTYPES_H=1
-DHAVE_STDINT_H=1 -DHAVE_UNISTD_H=1 -DHAVE_DLFCN_H=1
-DLT_OBJDIR=\".libs/\" -DSILENT=1 -DNO_SIGNALS=1
-DNO_EXECUTE_PERMISSION=1 -DJAVA_FINALIZATION=1 -DGC_GCJ_SUPPORT=1
-DATOMIC_UNCOLLECTABLE=1 -D_IN_LIBGC=1 -I./.. -I./.. -I./include
-DGC_LINUX_THREADS -D_GNU_SOURCE -D_REENTRANT -DUSE_MMAP -DUSE_MUNMAP
-O2 -pipe -g -feliminate-unused-debug-types -g
-mno-tls-direct-seg-refs   -MT allchblk.lo -MD -MP -MF
.deps/allchblk.Tpo -c -o allchblk.lo allchblk.c

Error:
| libtool: Version mismatch error.  This is libtool 2.4, but the
| libtool: definition of this LT_INIT comes from libtool 2.2.6.
| libtool: You should recreate aclocal.m4 with macros from libtool 2.4
| libtool: and run autoconf again.
| make[3]: *** [allchblk.lo] Error 63

Here is how LT_INIT is defined in aclocal.m4:
# LT_INIT([OPTIONS])
# ------------------
AC_DEFUN([LT_INIT],
[AC_PREREQ([2.58])dnl We use AC_INCLUDES_DEFAULT
AC_BEFORE([$0], [LT_LANG])dnl
AC_BEFORE([$0], [LT_OUTPUT])dnl
AC_BEFORE([$0], [LTDL_INIT])dnl
m4_require([_LT_CHECK_BUILDDIR])dnl

dnl Autoconf doesn't catch unexpanded LT_ macros by default:
m4_pattern_forbid([^_?LT_[A-Z_]+$])dnl
m4_pattern_allow([^(_LT_EOF|LT_DLGLOBAL|LT_DLLAZY_OR_NOW|LT_MULTI_MODULE)$])dnl
dnl aclocal doesn't pull ltoptions.m4, ltsugar.m4, or ltversion.m4
dnl unless we require an AC_DEFUNed macro:
AC_REQUIRE([LTOPTIONS_VERSION])dnl
AC_REQUIRE([LTSUGAR_VERSION])dnl
AC_REQUIRE([LTVERSION_VERSION])dnl
AC_REQUIRE([LTOBSOLETE_VERSION])dnl
m4_require([_LT_PROG_LTMAIN])dnl

dnl Parse OPTIONS
_LT_SET_OPTIONS([$0], [$1])

# This can be used to rebuild libtool when needed
LIBTOOL_DEPS="$ltmain"

# Always use our own libtool.
LIBTOOL='$(SHELL) $(top_builddir)/libtool'
AC_SUBST(LIBTOOL)dnl

_LT_SETUP

# Only expand once:
m4_define([LT_INIT])
])# LT_INIT

What changes should be made to the auto tools files to fix this?

Thanks!

Autif

