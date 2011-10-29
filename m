Return-Path: <bsp2020@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BCCDE0132F
	for <yocto@yoctoproject.org>; Fri, 28 Oct 2011 23:59:57 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iakh37 with SMTP id h37so7703348iak.35
	for <yocto@yoctoproject.org>; Fri, 28 Oct 2011 23:59:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=PwV2zMIyDpWbXgWMbSGEpRYhHXrqJInHCJ9FQWAuTXw=;
	b=ETKDDnJ4yAU+RcjYpHecOsLaaNbPnBxEEWdTSpqU/QiAkgaTo6iaETr/rDgZgg7S7C
	bBdTIJ96E8XSmxyunzDL20UXVDjKR3my/fIsamn9uEwm7rulFaHHtRD/j3PvvZNhjxAK
	URSoFGPIN4J6tS0o1KeIVj84JshMlaY/0ip2c=
MIME-Version: 1.0
Received: by 10.42.154.7 with SMTP id o7mr8455267icw.48.1319871594597; Fri, 28
	Oct 2011 23:59:54 -0700 (PDT)
Received: by 10.42.221.202 with HTTP; Fri, 28 Oct 2011 23:59:54 -0700 (PDT)
Date: Fri, 28 Oct 2011 23:59:54 -0700
Message-ID: <CAFNE1kTY35o3iu0i9X=aACY6RoDDHjDbMvvbhR0CkDxQH3h-nw@mail.gmail.com>
From: Brian Park <bsp2020@gmail.com>
To: yocto@yoctoproject.org
Subject: Yocto build problem on Ubuntu 11.10
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
X-List-Received-Date: Sat, 29 Oct 2011 06:59:58 -0000
Content-Type: multipart/alternative; boundary=90e6ba1efd2e8b8ed204b06a8d64

--90e6ba1efd2e8b8ed204b06a8d64
Content-Type: text/plain; charset=ISO-8859-1

Hi,
I'm trying to build for Beagleboard on Ubuntu 11.10 x64. But it fails to
build with the following error. Can anyone help me resolve the problem? When
I built for x86qemu, i had no problem.

Thanks

Brian

OE Build Configuration:
BB_VERSION        = "1.13.3"
TARGET_ARCH       = "arm"
TARGET_OS         = "linux-gnueabi"
MACHINE           = "beagleboard"
DISTRO            = "poky"
DISTRO_VERSION    = "1.1"
TUNE_FEATURES     = "armv7a vfp neon cortexa8"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto        = "edison:1924f52cc894d4dd6b9d9c1a2248b32fc0a24c8c"

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: Running task 3497 of 5088 (ID: 4091,
/home/briansp/poky/meta/recipes-devtools/docbook-utils/
docbook-utils-native_0.6.14.bb, do_compile)
NOTE: Running task 4040 of 5088 (ID: 3660,
/home/briansp/poky/meta/recipes-support/shared-mime-info/
shared-mime-info_0.90.bb, do_configure)
NOTE: Running task 4212 of 5088 (ID: 3530,
/home/briansp/poky/meta/recipes-graphics/xorg-lib/xkeyboard-config_2.1.bb,
do_configure)
NOTE: package docbook-utils-native-0.6.14-r1: task do_compile: Started
ERROR: Function 'do_compile' failed (see
/home/briansp/poky-build/tmp/work/x86_64-linux/docbook-utils-native-0.6.14-r1/temp/log.do_compile.2851
for further information)
ERROR: Logfile of failure stored in:
/home/briansp/poky-build/tmp/work/x86_64-linux/docbook-utils-native-0.6.14-r1/temp/log.do_compile.2851
Log data follows:
| NOTE: make -j 3
| Making all in backends
| make[1]: Entering directory
`/home/briansp/poky-build/tmp/work/x86_64-linux/docbook-utils-native-0.6.14-r1/docbook-utils-0.6.14/backends'
| make[1]: Nothing to be done for `all'.
| make[1]: Leaving directory
`/home/briansp/poky-build/tmp/work/x86_64-linux/docbook-utils-native-0.6.14-r1/docbook-utils-0.6.14/backends'
| Making all in bin
| make[1]: Entering directory
`/home/briansp/poky-build/tmp/work/x86_64-linux/docbook-utils-native-0.6.14-r1/docbook-utils-0.6.14/bin'
| make[1]: Nothing to be done for `all'.
| make[1]: Leaving directory
`/home/briansp/poky-build/tmp/work/x86_64-linux/docbook-utils-native-0.6.14-r1/docbook-utils-0.6.14/bin'
| Making all in doc
| make[1]: Entering directory
`/home/briansp/poky-build/tmp/work/x86_64-linux/docbook-utils-native-0.6.14-r1/docbook-utils-0.6.14/doc'
| Making all in refentry
| make[2]: Entering directory
`/home/briansp/poky-build/tmp/work/x86_64-linux/docbook-utils-native-0.6.14-r1/docbook-utils-0.6.14/doc/refentry'
| make[2]: Nothing to be done for `all'.
| make[2]: Leaving directory
`/home/briansp/poky-build/tmp/work/x86_64-linux/docbook-utils-native-0.6.14-r1/docbook-utils-0.6.14/doc/refentry'
| Making all in man
| make[2]: Entering directory
`/home/briansp/poky-build/tmp/work/x86_64-linux/docbook-utils-native-0.6.14-r1/docbook-utils-0.6.14/doc/man'
| make[2]: Nothing to be done for `all'.
| make[2]: Leaving directory
`/home/briansp/poky-build/tmp/work/x86_64-linux/docbook-utils-native-0.6.14-r1/docbook-utils-0.6.14/doc/man'
| Making all in HTML
| make[2]: Entering directory
`/home/briansp/poky-build/tmp/work/x86_64-linux/docbook-utils-native-0.6.14-r1/docbook-utils-0.6.14/doc/HTML'
|
SGML_CATALOG_FILES=/home/briansp/poky-build/tmp/sysroots/x86_64-linux/etc/sgml/catalog
\
|     SGML_SEARCH_PATH=../..:../../doc:.. \
|         jade -t sgml -i html -d ../../docbook-utils.dsl\#html \
|             -V '%use-id-as-filename%' ../../doc/docbook-utils.sgml
|
SGML_CATALOG_FILES=/home/briansp/poky-build/tmp/sysroots/x86_64-linux/etc/sgml/catalog
\
|     SGML_SEARCH_PATH=../..:../../doc:.. \
|         jade -t sgml -i html -d ../../docbook-utils.dsl\#html \
|             -V '%use-id-as-filename%' ../../doc/docbook-utils.sgml
|
SGML_CATALOG_FILES=/home/briansp/poky-build/tmp/sysroots/x86_64-linux/etc/sgml/catalog
\
|     SGML_SEARCH_PATH=../..:../../doc:.. \
|         jade -t sgml -i html -d ../../docbook-utils.dsl\#html \
|             -V '%use-id-as-filename%' ../../doc/docbook-utils.sgml
| jade: symbol lookup error:
/home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/bin/../../usr/lib/libospgrove.so.0:
undefined symbol: _ZN14OpenJade_Grove8ClassDef12sgmlDocumentE
| make[2]: *** [backend-spec.html] Error 127
| make[2]: *** Waiting for unfinished jobs....
| jade: symbol lookup error:
/home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/bin/../../usr/lib/libospgrove.so.0:
undefined symbol: _ZN14OpenJade_Grove8ClassDef12sgmlDocumentE
| make[2]: *** [docbook2man.html] Error 127
| jade: symbol lookup error:
/home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/bin/../../usr/lib/libospgrove.so.0:
undefined symbol: _ZN14OpenJade_Grove8ClassDef12sgmlDocumentE
| make[2]: *** [api.html] Error 127
| make[2]: Leaving directory
`/home/briansp/poky-build/tmp/work/x86_64-linux/docbook-utils-native-0.6.14-r1/docbook-utils-0.6.14/doc/HTML'
| make[1]: *** [all-recursive] Error 1
| make[1]: Leaving directory
`/home/briansp/poky-build/tmp/work/x86_64-linux/docbook-utils-native-0.6.14-r1/docbook-utils-0.6.14/doc'
| make: *** [all-recursive] Error 1
| ERROR: oe_runmake failed
| ERROR: Function 'do_compile' failed (see
/home/briansp/poky-build/tmp/work/x86_64-linux/docbook-utils-native-0.6.14-r1/temp/log.do_compile.2851
for further information)
NOTE: package docbook-utils-native-0.6.14-r1: task do_compile: Failed
ERROR: Task 4091 (/home/briansp/poky/meta/recipes-devtools/docbook-utils/
docbook-utils-native_0.6.14.bb, do_compile) failed with exit code '1'
Waiting for 1 active tasks to finish:
0: shared-mime-info-0.90-r0 do_configure (pid 2877)
NOTE: package shared-mime-info-0.90-r0: task do_configure: Started
Waiting for 2 active tasks to finish:
0: shared-mime-info-0.90-r0 do_configure (pid 2877)
1: xkeyboard-config-2.1-r1 do_configure (pid 2878)
NOTE: package xkeyboard-config-2.1-r1: task do_configure: Started
ERROR: Function 'do_configure' failed (see
/home/briansp/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/shared-mime-info-0.90-r0/temp/log.do_configure.2877
for further information)
Waiting for 1 active tasks to finish:
0: xkeyboard-config-2.1-r1 do_configure (pid 2878)
ERROR: Logfile of failure stored in:
/home/briansp/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/shared-mime-info-0.90-r0/temp/log.do_configure.2877
Log data follows:
| DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common',
'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common']
| automake (GNU automake) 1.11.1
| Copyright (C) 2009 Free Software Foundation, Inc.
| License GPLv2+: GNU GPL version 2 or later <
http://gnu.org/licenses/gpl-2.0.html>
| This is free software: you are free to change and redistribute it.
| There is NO WARRANTY, to the extent permitted by law.
|
| Written by Tom Tromey <tromey@redhat.com>
|        and Alexandre Duret-Lutz <adl@gnu.org>.
| AUTOV is 1.11
| NOTE: Executing glib-gettextize --force --copy
| Copying file mkinstalldirs
| Copying file po/Makefile.in.in
|
| Please add the files
|   codeset.m4 gettext.m4 glibc21.m4 iconv.m4 isc-posix.m4 lcmessage.m4
|   progtest.m4
| from the
/home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/share/aclocal
directory to your autoconf macro directory
| or directly to your aclocal.m4 file.
| You will also need config.guess and config.sub, which you can get from
| ftp://ftp.gnu.org/pub/gnu/config/.
|
| NOTE: Executing intltoolize --copy --force --automake
| NOTE: Executing autoreconf --verbose --install --force --exclude=autopoint
-I
/home/briansp/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/shared-mime-info-0.90-r0/shared-mime-info-0.90/aclocal-copy/
-I/home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/share/aclocal-1.11
-I
/home/briansp/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/shared-mime-info-0.90-r0/shared-mime-info-0.90/aclocal-copy/
| autoreconf: Entering directory `.'
| autoreconf: configure.in: not using Gettext
| autoreconf: running: aclocal -I
/home/briansp/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/shared-mime-info-0.90-r0/shared-mime-info-0.90/aclocal-copy/
-I /home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/share/aclocal-1.11
-I
/home/briansp/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/shared-mime-info-0.90-r0/shared-mime-info-0.90/aclocal-copy/
-I
/home/briansp/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/shared-mime-info-0.90-r0/shared-mime-info-0.90/aclocal-copy/
-I /home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/share/aclocal-1.11
-I
/home/briansp/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/shared-mime-info-0.90-r0/shared-mime-info-0.90/aclocal-copy/
--force --warnings=cross
| aclocal: unknown warning category `cross'
| autoreconf: configure.in: tracing
| autoreconf: configure.in: not using Libtool
| autoreconf: running:
/home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/bin/autoconf
--include=/home/briansp/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/shared-mime-info-0.90-r0/shared-mime-info-0.90/aclocal-copy/
--include=/home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/share/aclocal-1.11
--include=/home/briansp/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/shared-mime-info-0.90-r0/shared-mime-info-0.90/aclocal-copy/
--force --warnings=cross
| autoreconf: running:
/home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/bin/autoheader
--include=/home/briansp/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/shared-mime-info-0.90-r0/shared-mime-info-0.90/aclocal-copy/
--include=/home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/share/aclocal-1.11
--include=/home/briansp/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/shared-mime-info-0.90-r0/shared-mime-info-0.90/aclocal-copy/
--force --warnings=cross
| autoreconf: running: automake --foreign --add-missing --copy
--force-missing --warnings=cross
| automake: unknown warning category `cross'
| autoreconf: running: gnu-configize
| autoreconf: Leaving directory `.'
| NOTE: Running
/home/briansp/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/shared-mime-info-0.90-r0/shared-mime-info-0.90/configure
         --build=x86_64-linux           --host=arm-poky-linux-gnueabi
      --target=arm-poky-linux-gnueabi           --prefix=/usr
--exec_prefix=/usr           --bindir=/usr/bin           --sbindir=/usr/sbin
      --libexecdir=/usr/libexec           --datadir=/usr/share
--sysconfdir=/etc           --sharedstatedir=/com
--localstatedir=/var           --libdir=/usr/lib
--includedir=/usr/include       --oldincludedir=/usr/include
--infodir=/usr/share/info           --mandir=/usr/share/man
--disable-silent-rules
--with-libtool-sysroot=/home/briansp/poky-build/tmp/sysroots/beagleboard
--disable-update-mimedb --enable-nls ...
| configure: WARNING: unrecognized options: --disable-silent-rules,
--with-libtool-sysroot
| configure: loading site script /home/briansp/poky/meta/site/endian-little
| configure: loading site script /home/briansp/poky/meta/site/arm-common
| configure: loading site script /home/briansp/poky/meta/site/common-linux
| configure: loading site script /home/briansp/poky/meta/site/common-glibc
| configure: loading site script /home/briansp/poky/meta/site/arm-linux
| configure: loading site script /home/briansp/poky/meta/site/common
| configure: loading site script
/home/briansp/poky-build/tmp/sysroots/beagleboard/usr/share/arm-poky-linux-gnueabi_config_site.d/zlib_config
| configure: loading site script
/home/briansp/poky-build/tmp/sysroots/beagleboard/usr/share/arm-poky-linux-gnueabi_config_site.d/ncurses_config
| configure: loading site script
/home/briansp/poky-build/tmp/sysroots/beagleboard/usr/share/arm-poky-linux-gnueabi_config_site.d/eglibc_config
| checking for a BSD-compatible install... /usr/bin/install -c
| checking whether build environment is sane... yes
| checking for arm-poky-linux-gnueabi-strip... arm-poky-linux-gnueabi-strip
| checking for a thread-safe mkdir -p... /bin/mkdir -p
| checking for gawk... gawk
| checking whether make sets $(MAKE)... yes
| checking for arm-poky-linux-gnueabi-gcc... arm-poky-linux-gnueabi-gcc
-march=armv7-a -fno-tree-vectorize      -mthumb-interwork -mfloat-abi=softfp
-mfpu=neon -mtune=cortex-a8
--sysroot=/home/briansp/poky-build/tmp/sysroots/beagleboard
| checking whether the C compiler works... yes
| checking for C compiler default output file name... a.out
| checking for suffix of executables...
| checking whether we are cross compiling... yes
| checking for suffix of object files... o
| checking whether we are using the GNU C compiler... yes
| checking whether arm-poky-linux-gnueabi-gcc  -march=armv7-a
-fno-tree-vectorize      -mthumb-interwork -mfloat-abi=softfp -mfpu=neon
-mtune=cortex-a8 --sysroot=/home/briansp/poky-build/tmp/sysroots/beagleboard
accepts -g... yes
| checking for arm-poky-linux-gnueabi-gcc  -march=armv7-a
-fno-tree-vectorize      -mthumb-interwork -mfloat-abi=softfp -mfpu=neon
-mtune=cortex-a8 --sysroot=/home/briansp/poky-build/tmp/sysroots/beagleboard
option to accept ISO C89... none needed
| checking for style of include used by make... GNU
| checking dependency style of arm-poky-linux-gnueabi-gcc  -march=armv7-a
-fno-tree-vectorize      -mthumb-interwork -mfloat-abi=softfp -mfpu=neon
-mtune=cortex-a8
--sysroot=/home/briansp/poky-build/tmp/sysroots/beagleboard... gcc3
| checking for an ANSI C-conforming const... yes
| checking whether NLS is requested... yes
| checking for intltool >= 0.35.0... 0.40.6 found
| checking for intltool-update...
/home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/bin/intltool-update
| checking for intltool-merge...
/home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/bin/intltool-merge
| checking for intltool-extract...
/home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/bin/intltool-extract
| checking for xgettext...
/home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/bin/xgettext
| checking for msgmerge...
/home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/bin/msgmerge
| checking for msgfmt...
/home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/bin/msgfmt
| checking for gmsgfmt...
/home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/bin/msgfmt
| checking for perl... /usr/bin/perl
| checking for perl >= 5.8.1... 5.12.4
| checking for XML::Parser... configure: error: XML::Parser perl module is
required for intltool
| ERROR: oe_runconf failed
| ERROR: Function 'do_configure' failed (see
/home/briansp/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/shared-mime-info-0.90-r0/temp/log.do_configure.2877
for further information)
NOTE: package shared-mime-info-0.90-r0: task do_configure: Failed
ERROR: Function 'do_configure' failed (see
/home/briansp/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/xkeyboard-config-2.1-r1/temp/log.do_configure.2878
for further information)
ERROR: Logfile of failure stored in:
/home/briansp/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/xkeyboard-config-2.1-r1/temp/log.do_configure.2878
Log data follows:
| DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common',
'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common']
| automake (GNU automake) 1.11.1
| Copyright (C) 2009 Free Software Foundation, Inc.
| License GPLv2+: GNU GPL version 2 or later <
http://gnu.org/licenses/gpl-2.0.html>
| This is free software: you are free to change and redistribute it.
| There is NO WARRANTY, to the extent permitted by law.
|
| Written by Tom Tromey <tromey@redhat.com>
|        and Alexandre Duret-Lutz <adl@gnu.org>.
| AUTOV is 1.11
| NOTE: Executing glib-gettextize --force --copy
| Copying file mkinstalldirs
| Copying file po/Makefile.in.in
|
| Please add the files
|   codeset.m4 gettext.m4 glibc21.m4 iconv.m4 isc-posix.m4 lcmessage.m4
|   progtest.m4
| from the
/home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/share/aclocal
directory to your autoconf macro directory
| or directly to your aclocal.m4 file.
| You will also need config.guess and config.sub, which you can get from
| ftp://ftp.gnu.org/pub/gnu/config/.
|
| NOTE: Executing intltoolize --copy --force --automake
| NOTE: Executing autoreconf --verbose --install --force --exclude=autopoint
-I
/home/briansp/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/xkeyboard-config-2.1-r1/xkeyboard-config-2.1/aclocal-copy/
-I/home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/share/aclocal-1.11
-I
/home/briansp/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/xkeyboard-config-2.1-r1/xkeyboard-config-2.1/aclocal-copy/
| autoreconf: Entering directory `.'
| autoreconf: configure.in: not using Gettext
| autoreconf: running: aclocal -I
/home/briansp/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/xkeyboard-config-2.1-r1/xkeyboard-config-2.1/aclocal-copy/
-I /home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/share/aclocal-1.11
-I
/home/briansp/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/xkeyboard-config-2.1-r1/xkeyboard-config-2.1/aclocal-copy/
-I
/home/briansp/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/xkeyboard-config-2.1-r1/xkeyboard-config-2.1/aclocal-copy/
-I /home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/share/aclocal-1.11
-I
/home/briansp/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/xkeyboard-config-2.1-r1/xkeyboard-config-2.1/aclocal-copy/
--force --warnings=cross
| aclocal: unknown warning category `cross'
| autoreconf: configure.in: tracing
| autoreconf: configure.in: not using Libtool
| autoreconf: running:
/home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/bin/autoconf
--include=/home/briansp/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/xkeyboard-config-2.1-r1/xkeyboard-config-2.1/aclocal-copy/
--include=/home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/share/aclocal-1.11
--include=/home/briansp/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/xkeyboard-config-2.1-r1/xkeyboard-config-2.1/aclocal-copy/
--force --warnings=cross
| autoreconf: configure.in: not using Autoheader
| autoreconf: running: automake --foreign --add-missing --copy
--force-missing --warnings=cross
| automake: unknown warning category `cross'
| autoreconf: running: gnu-configize
| autoreconf: Leaving directory `.'
| NOTE: Running
/home/briansp/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/xkeyboard-config-2.1-r1/xkeyboard-config-2.1/configure
         --build=x86_64-linux           --host=arm-poky-linux-gnueabi
      --target=arm-poky-linux-gnueabi           --prefix=/usr
--exec_prefix=/usr           --bindir=/usr/bin           --sbindir=/usr/sbin
      --libexecdir=/usr/libexec           --datadir=/usr/share
--sysconfdir=/etc           --sharedstatedir=/com
--localstatedir=/var           --libdir=/usr/lib
--includedir=/usr/include       --oldincludedir=/usr/include
--infodir=/usr/share/info           --mandir=/usr/share/man
--disable-silent-rules
--with-libtool-sysroot=/home/briansp/poky-build/tmp/sysroots/beagleboard
--with-xkb-rules-symlink=xorg ...
| configure: WARNING: unrecognized options: --disable-silent-rules,
--with-libtool-sysroot
| configure: loading site script /home/briansp/poky/meta/site/endian-little
| configure: loading site script /home/briansp/poky/meta/site/arm-common
| configure: loading site script /home/briansp/poky/meta/site/common-linux
| configure: loading site script /home/briansp/poky/meta/site/common-glibc
| configure: loading site script /home/briansp/poky/meta/site/arm-linux
| configure: loading site script /home/briansp/poky/meta/site/common
| configure: loading site script
/home/briansp/poky-build/tmp/sysroots/beagleboard/usr/share/arm-poky-linux-gnueabi_config_site.d/zlib_config
| configure: loading site script
/home/briansp/poky-build/tmp/sysroots/beagleboard/usr/share/arm-poky-linux-gnueabi_config_site.d/ncurses_config
| configure: loading site script
/home/briansp/poky-build/tmp/sysroots/beagleboard/usr/share/arm-poky-linux-gnueabi_config_site.d/eglibc_config
| checking for a BSD-compatible install... /usr/bin/install -c
| checking whether build environment is sane... yes
| checking for arm-poky-linux-gnueabi-strip... arm-poky-linux-gnueabi-strip
| checking for a thread-safe mkdir -p... /bin/mkdir -p
| checking for gawk... gawk
| checking whether make sets $(MAKE)... yes
| checking whether to enable maintainer-specific portions of Makefiles... no
| checking for xkbcomp...
/home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/bin/xkbcomp
| checking whether NLS is requested... yes
| checking for style of include used by make... GNU
| checking for arm-poky-linux-gnueabi-gcc... arm-poky-linux-gnueabi-gcc
-march=armv7-a -fno-tree-vectorize      -mthumb-interwork -mfloat-abi=softfp
-mfpu=neon -mtune=cortex-a8
--sysroot=/home/briansp/poky-build/tmp/sysroots/beagleboard
| checking whether the C compiler works... yes
| checking for C compiler default output file name... a.out
| checking for suffix of executables...
| checking whether we are cross compiling... yes
| checking for suffix of object files... o
| checking whether we are using the GNU C compiler... yes
| checking whether arm-poky-linux-gnueabi-gcc  -march=armv7-a
-fno-tree-vectorize      -mthumb-interwork -mfloat-abi=softfp -mfpu=neon
-mtune=cortex-a8 --sysroot=/home/briansp/poky-build/tmp/sysroots/beagleboard
accepts -g... yes
| checking for arm-poky-linux-gnueabi-gcc  -march=armv7-a
-fno-tree-vectorize      -mthumb-interwork -mfloat-abi=softfp -mfpu=neon
-mtune=cortex-a8 --sysroot=/home/briansp/poky-build/tmp/sysroots/beagleboard
option to accept ISO C89... none needed
| checking dependency style of arm-poky-linux-gnueabi-gcc  -march=armv7-a
-fno-tree-vectorize      -mthumb-interwork -mfloat-abi=softfp -mfpu=neon
-mtune=cortex-a8
--sysroot=/home/briansp/poky-build/tmp/sysroots/beagleboard... none
| checking for intltool >= 0.30... 0.40.6 found
| checking for intltool-update...
/home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/bin/intltool-update
| checking for intltool-merge...
/home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/bin/intltool-merge
| checking for intltool-extract...
/home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/bin/intltool-extract
| checking for xgettext...
/home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/bin/xgettext
| checking for msgmerge...
/home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/bin/msgmerge
| checking for msgfmt...
/home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/bin/msgfmt
| checking for gmsgfmt...
/home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/bin/msgfmt
| checking for perl... /usr/bin/perl
| checking for perl >= 5.8.1... 5.12.4
| checking for XML::Parser... configure: error: XML::Parser perl module is
required for intltool
| ERROR: oe_runconf failed
| ERROR: Function 'do_configure' failed (see
/home/briansp/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/xkeyboard-config-2.1-r1/temp/log.do_configure.2878
for further information)
NOTE: package xkeyboard-config-2.1-r1: task do_configure: Failed
ERROR: Task 3660 (/home/briansp/poky/meta/recipes-support/shared-mime-info/
shared-mime-info_0.90.bb, do_configure) failed with exit code '1'
ERROR: Task 3530 (/home/briansp/poky/meta/recipes-graphics/xorg-lib/
xkeyboard-config_2.1.bb, do_configure) failed with exit code '1'
ERROR: '/home/briansp/poky/meta/recipes-devtools/docbook-utils/
docbook-utils-native_0.6.14.bb' failed
ERROR: '/home/briansp/poky/meta/recipes-support/shared-mime-info/
shared-mime-info_0.90.bb' failed
ERROR: '/home/briansp/poky/meta/recipes-graphics/xorg-lib/
xkeyboard-config_2.1.bb' failed
briansp@Ubuntu:~/poky-build$

--90e6ba1efd2e8b8ed204b06a8d64
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,<br>I&#39;m trying to build for Beagleboard on Ubuntu 11.10 x64. But it =
fails to build with the following error. Can anyone help me resolve the pro=
blem? When I built for x86qemu, i had no problem.<br><br>Thanks<br><br>Bria=
n<br>
<br>OE Build Configuration:<br>BB_VERSION=A0=A0=A0=A0=A0=A0=A0 =3D &quot;1.=
13.3&quot;<br>TARGET_ARCH=A0=A0=A0=A0=A0=A0 =3D &quot;arm&quot;<br>TARGET_O=
S=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;linux-gnueabi&quot;<br>MACHINE=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 =3D &quot;beagleboard&quot;<br>DISTRO=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 =3D &quot;poky&quot;<br>
DISTRO_VERSION=A0=A0=A0 =3D &quot;1.1&quot;<br>TUNE_FEATURES=A0=A0=A0=A0 =
=3D &quot;armv7a vfp neon cortexa8&quot;<br>TARGET_FPU=A0=A0=A0=A0=A0=A0=A0=
 =3D &quot;vfp-neon&quot;<br>meta=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <b=
r>meta-yocto=A0=A0=A0=A0=A0=A0=A0 =3D &quot;edison:1924f52cc894d4dd6b9d9c1a=
2248b32fc0a24c8c&quot;<br>
<br>NOTE: Resolving any missing task queue dependencies<br>NOTE: Preparing =
runqueue<br>NOTE: Executing SetScene Tasks<br>NOTE: Executing RunQueue Task=
s<br>NOTE: Running task 3497 of 5088 (ID: 4091, /home/briansp/poky/meta/rec=
ipes-devtools/docbook-utils/<a href=3D"http://docbook-utils-native_0.6.14.b=
b">docbook-utils-native_0.6.14.bb</a>, do_compile)<br>
NOTE: Running task 4040 of 5088 (ID: 3660, /home/briansp/poky/meta/recipes-=
support/shared-mime-info/<a href=3D"http://shared-mime-info_0.90.bb">shared=
-mime-info_0.90.bb</a>, do_configure)<br>NOTE: Running task 4212 of 5088 (I=
D: 3530, /home/briansp/poky/meta/recipes-graphics/xorg-lib/<a href=3D"http:=
//xkeyboard-config_2.1.bb">xkeyboard-config_2.1.bb</a>, do_configure)<br>
NOTE: package docbook-utils-native-0.6.14-r1: task do_compile: Started<br>E=
RROR: Function &#39;do_compile&#39; failed (see /home/briansp/poky-build/tm=
p/work/x86_64-linux/docbook-utils-native-0.6.14-r1/temp/log.do_compile.2851=
 for further information)<br>
ERROR: Logfile of failure stored in: /home/briansp/poky-build/tmp/work/x86_=
64-linux/docbook-utils-native-0.6.14-r1/temp/log.do_compile.2851<br>Log dat=
a follows:<br>| NOTE: make -j 3<br>| Making all in backends<br>| make[1]: E=
ntering directory `/home/briansp/poky-build/tmp/work/x86_64-linux/docbook-u=
tils-native-0.6.14-r1/docbook-utils-0.6.14/backends&#39;<br>
| make[1]: Nothing to be done for `all&#39;.<br>| make[1]: Leaving director=
y `/home/briansp/poky-build/tmp/work/x86_64-linux/docbook-utils-native-0.6.=
14-r1/docbook-utils-0.6.14/backends&#39;<br>| Making all in bin<br>| make[1=
]: Entering directory `/home/briansp/poky-build/tmp/work/x86_64-linux/docbo=
ok-utils-native-0.6.14-r1/docbook-utils-0.6.14/bin&#39;<br>
| make[1]: Nothing to be done for `all&#39;.<br>| make[1]: Leaving director=
y `/home/briansp/poky-build/tmp/work/x86_64-linux/docbook-utils-native-0.6.=
14-r1/docbook-utils-0.6.14/bin&#39;<br>| Making all in doc<br>| make[1]: En=
tering directory `/home/briansp/poky-build/tmp/work/x86_64-linux/docbook-ut=
ils-native-0.6.14-r1/docbook-utils-0.6.14/doc&#39;<br>
| Making all in refentry<br>| make[2]: Entering directory `/home/briansp/po=
ky-build/tmp/work/x86_64-linux/docbook-utils-native-0.6.14-r1/docbook-utils=
-0.6.14/doc/refentry&#39;<br>| make[2]: Nothing to be done for `all&#39;.<b=
r>
| make[2]: Leaving directory `/home/briansp/poky-build/tmp/work/x86_64-linu=
x/docbook-utils-native-0.6.14-r1/docbook-utils-0.6.14/doc/refentry&#39;<br>=
| Making all in man<br>| make[2]: Entering directory `/home/briansp/poky-bu=
ild/tmp/work/x86_64-linux/docbook-utils-native-0.6.14-r1/docbook-utils-0.6.=
14/doc/man&#39;<br>
| make[2]: Nothing to be done for `all&#39;.<br>| make[2]: Leaving director=
y `/home/briansp/poky-build/tmp/work/x86_64-linux/docbook-utils-native-0.6.=
14-r1/docbook-utils-0.6.14/doc/man&#39;<br>| Making all in HTML<br>| make[2=
]: Entering directory `/home/briansp/poky-build/tmp/work/x86_64-linux/docbo=
ok-utils-native-0.6.14-r1/docbook-utils-0.6.14/doc/HTML&#39;<br>
| SGML_CATALOG_FILES=3D/home/briansp/poky-build/tmp/sysroots/x86_64-linux/e=
tc/sgml/catalog \<br>| =A0=A0=A0 SGML_SEARCH_PATH=3D../..:../../doc:.. \<br=
>| =A0=A0=A0 =A0=A0=A0 jade -t sgml -i html -d ../../docbook-utils.dsl\#htm=
l \<br>| =A0=A0=A0 =A0=A0=A0 =A0=A0=A0 -V &#39;%use-id-as-filename%&#39; ..=
/../doc/docbook-utils.sgml<br>
| SGML_CATALOG_FILES=3D/home/briansp/poky-build/tmp/sysroots/x86_64-linux/e=
tc/sgml/catalog \<br>| =A0=A0=A0 SGML_SEARCH_PATH=3D../..:../../doc:.. \<br=
>| =A0=A0=A0 =A0=A0=A0 jade -t sgml -i html -d ../../docbook-utils.dsl\#htm=
l \<br>| =A0=A0=A0 =A0=A0=A0 =A0=A0=A0 -V &#39;%use-id-as-filename%&#39; ..=
/../doc/docbook-utils.sgml<br>
| SGML_CATALOG_FILES=3D/home/briansp/poky-build/tmp/sysroots/x86_64-linux/e=
tc/sgml/catalog \<br>| =A0=A0=A0 SGML_SEARCH_PATH=3D../..:../../doc:.. \<br=
>| =A0=A0=A0 =A0=A0=A0 jade -t sgml -i html -d ../../docbook-utils.dsl\#htm=
l \<br>| =A0=A0=A0 =A0=A0=A0 =A0=A0=A0 -V &#39;%use-id-as-filename%&#39; ..=
/../doc/docbook-utils.sgml<br>
| jade: symbol lookup error: /home/briansp/poky-build/tmp/sysroots/x86_64-l=
inux/usr/bin/../../usr/lib/libospgrove.so.0: undefined symbol: _ZN14OpenJad=
e_Grove8ClassDef12sgmlDocumentE<br>| make[2]: *** [backend-spec.html] Error=
 127<br>
| make[2]: *** Waiting for unfinished jobs....<br>| jade: symbol lookup err=
or: /home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/bin/../../usr/li=
b/libospgrove.so.0: undefined symbol: _ZN14OpenJade_Grove8ClassDef12sgmlDoc=
umentE<br>
| make[2]: *** [docbook2man.html] Error 127<br>| jade: symbol lookup error:=
 /home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/bin/../../usr/lib/l=
ibospgrove.so.0: undefined symbol: _ZN14OpenJade_Grove8ClassDef12sgmlDocume=
ntE<br>
| make[2]: *** [api.html] Error 127<br>| make[2]: Leaving directory `/home/=
briansp/poky-build/tmp/work/x86_64-linux/docbook-utils-native-0.6.14-r1/doc=
book-utils-0.6.14/doc/HTML&#39;<br>| make[1]: *** [all-recursive] Error 1<b=
r>
| make[1]: Leaving directory `/home/briansp/poky-build/tmp/work/x86_64-linu=
x/docbook-utils-native-0.6.14-r1/docbook-utils-0.6.14/doc&#39;<br>| make: *=
** [all-recursive] Error 1<br>| ERROR: oe_runmake failed<br>| ERROR: Functi=
on &#39;do_compile&#39; failed (see /home/briansp/poky-build/tmp/work/x86_6=
4-linux/docbook-utils-native-0.6.14-r1/temp/log.do_compile.2851 for further=
 information)<br>
NOTE: package docbook-utils-native-0.6.14-r1: task do_compile: Failed<br>ER=
ROR: Task 4091 (/home/briansp/poky/meta/recipes-devtools/docbook-utils/<a h=
ref=3D"http://docbook-utils-native_0.6.14.bb">docbook-utils-native_0.6.14.b=
b</a>, do_compile) failed with exit code &#39;1&#39;<br>
Waiting for 1 active tasks to finish:<br>0: shared-mime-info-0.90-r0 do_con=
figure (pid 2877)<br>NOTE: package shared-mime-info-0.90-r0: task do_config=
ure: Started<br>Waiting for 2 active tasks to finish:<br>0: shared-mime-inf=
o-0.90-r0 do_configure (pid 2877)<br>
1: xkeyboard-config-2.1-r1 do_configure (pid 2878)<br>NOTE: package xkeyboa=
rd-config-2.1-r1: task do_configure: Started<br>ERROR: Function &#39;do_con=
figure&#39; failed (see /home/briansp/poky-build/tmp/work/armv7a-vfp-neon-p=
oky-linux-gnueabi/shared-mime-info-0.90-r0/temp/log.do_configure.2877 for f=
urther information)<br>
Waiting for 1 active tasks to finish:<br>0: xkeyboard-config-2.1-r1 do_conf=
igure (pid 2878)<br>ERROR: Logfile of failure stored in: /home/briansp/poky=
-build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/shared-mime-info-0.90-r0=
/temp/log.do_configure.2877<br>
Log data follows:<br>| DEBUG: SITE files [&#39;endian-little&#39;, &#39;bit=
-32&#39;, &#39;arm-common&#39;, &#39;common-linux&#39;, &#39;common-glibc&#=
39;, &#39;arm-linux&#39;, &#39;arm-linux-gnueabi&#39;, &#39;common&#39;]<br=
>
| automake (GNU automake) 1.11.1<br>| Copyright (C) 2009 Free Software Foun=
dation, Inc.<br>| License GPLv2+: GNU GPL version 2 or later &lt;<a href=3D=
"http://gnu.org/licenses/gpl-2.0.html">http://gnu.org/licenses/gpl-2.0.html=
</a>&gt;<br>
| This is free software: you are free to change and redistribute it.<br>| T=
here is NO WARRANTY, to the extent permitted by law.<br>| <br>| Written by =
Tom Tromey &lt;<a href=3D"mailto:tromey@redhat.com">tromey@redhat.com</a>&g=
t;<br>
|=A0=A0=A0=A0=A0=A0=A0 and Alexandre Duret-Lutz &lt;<a href=3D"mailto:adl@g=
nu.org">adl@gnu.org</a>&gt;.<br>| AUTOV is 1.11<br>| NOTE: Executing glib-g=
ettextize --force --copy<br>| Copying file mkinstalldirs<br>| Copying file =
po/<a href=3D"http://Makefile.in.in">Makefile.in.in</a><br>
| <br>| Please add the files<br>|=A0=A0 codeset.m4 gettext.m4 glibc21.m4 ic=
onv.m4 isc-posix.m4 lcmessage.m4<br>|=A0=A0 progtest.m4<br>| from the /home=
/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/share/aclocal directory t=
o your autoconf macro directory<br>
| or directly to your aclocal.m4 file.<br>| You will also need config.guess=
 and config.sub, which you can get from<br>| <a href=3D"ftp://ftp.gnu.org/p=
ub/gnu/config/">ftp://ftp.gnu.org/pub/gnu/config/</a>.<br>| <br>| NOTE: Exe=
cuting intltoolize --copy --force --automake<br>
| NOTE: Executing autoreconf --verbose --install --force --exclude=3Dautopo=
int -I /home/briansp/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi=
/shared-mime-info-0.90-r0/shared-mime-info-0.90/aclocal-copy/ -I/home/brian=
sp/poky-build/tmp/sysroots/x86_64-linux/usr/share/aclocal-1.11 -I /home/bri=
ansp/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/shared-mime-inf=
o-0.90-r0/shared-mime-info-0.90/aclocal-copy/<br>
| autoreconf: Entering directory `.&#39;<br>| autoreconf: <a href=3D"http:/=
/configure.in">configure.in</a>: not using Gettext<br>| autoreconf: running=
: aclocal -I /home/briansp/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-g=
nueabi/shared-mime-info-0.90-r0/shared-mime-info-0.90/aclocal-copy/ -I /hom=
e/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/share/aclocal-1.11 -I /h=
ome/briansp/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/shared-m=
ime-info-0.90-r0/shared-mime-info-0.90/aclocal-copy/ -I /home/briansp/poky-=
build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/shared-mime-info-0.90-r0/=
shared-mime-info-0.90/aclocal-copy/ -I /home/briansp/poky-build/tmp/sysroot=
s/x86_64-linux/usr/share/aclocal-1.11 -I /home/briansp/poky-build/tmp/work/=
armv7a-vfp-neon-poky-linux-gnueabi/shared-mime-info-0.90-r0/shared-mime-inf=
o-0.90/aclocal-copy/ --force --warnings=3Dcross<br>
| aclocal: unknown warning category `cross&#39;<br>| autoreconf: <a href=3D=
"http://configure.in">configure.in</a>: tracing<br>| autoreconf: <a href=3D=
"http://configure.in">configure.in</a>: not using Libtool<br>| autoreconf: =
running: /home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/bin/autocon=
f --include=3D/home/briansp/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-=
gnueabi/shared-mime-info-0.90-r0/shared-mime-info-0.90/aclocal-copy/ --incl=
ude=3D/home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/share/aclocal-=
1.11 --include=3D/home/briansp/poky-build/tmp/work/armv7a-vfp-neon-poky-lin=
ux-gnueabi/shared-mime-info-0.90-r0/shared-mime-info-0.90/aclocal-copy/ --f=
orce --warnings=3Dcross<br>
| autoreconf: running: /home/briansp/poky-build/tmp/sysroots/x86_64-linux/u=
sr/bin/autoheader --include=3D/home/briansp/poky-build/tmp/work/armv7a-vfp-=
neon-poky-linux-gnueabi/shared-mime-info-0.90-r0/shared-mime-info-0.90/aclo=
cal-copy/ --include=3D/home/briansp/poky-build/tmp/sysroots/x86_64-linux/us=
r/share/aclocal-1.11 --include=3D/home/briansp/poky-build/tmp/work/armv7a-v=
fp-neon-poky-linux-gnueabi/shared-mime-info-0.90-r0/shared-mime-info-0.90/a=
clocal-copy/ --force --warnings=3Dcross<br>
| autoreconf: running: automake --foreign --add-missing --copy --force-miss=
ing --warnings=3Dcross<br>| automake: unknown warning category `cross&#39;<=
br>| autoreconf: running: gnu-configize<br>| autoreconf: Leaving directory =
`.&#39;<br>
| NOTE: Running /home/briansp/poky-build/tmp/work/armv7a-vfp-neon-poky-linu=
x-gnueabi/shared-mime-info-0.90-r0/shared-mime-info-0.90/configure =A0=A0=
=A0 =A0=A0=A0 =A0--build=3Dx86_64-linux =A0=A0=A0 =A0=A0=A0 =A0 --host=3Dar=
m-poky-linux-gnueabi =A0=A0=A0 =A0=A0=A0 =A0 --target=3Darm-poky-linux-gnue=
abi =A0=A0=A0 =A0=A0=A0 =A0 --prefix=3D/usr =A0=A0=A0 =A0=A0=A0 =A0 --exec_=
prefix=3D/usr =A0=A0=A0 =A0=A0=A0 =A0 --bindir=3D/usr/bin =A0=A0=A0 =A0=A0=
=A0 =A0 --sbindir=3D/usr/sbin =A0=A0=A0 =A0 --libexecdir=3D/usr/libexec =A0=
=A0=A0 =A0=A0=A0 =A0 --datadir=3D/usr/share =A0=A0=A0 =A0=A0=A0 =A0 --sysco=
nfdir=3D/etc =A0=A0=A0 =A0=A0=A0 =A0 --sharedstatedir=3D/com =A0=A0=A0 =A0=
=A0=A0 =A0 --localstatedir=3D/var =A0=A0=A0 =A0=A0=A0 =A0 --libdir=3D/usr/l=
ib =A0=A0=A0 =A0=A0=A0 =A0 --includedir=3D/usr/include =A0=A0=A0 =A0 --oldi=
ncludedir=3D/usr/include =A0=A0=A0 =A0=A0=A0 =A0 --infodir=3D/usr/share/inf=
o =A0=A0=A0 =A0=A0=A0 =A0 --mandir=3D/usr/share/man =A0=A0=A0 =A0=A0=A0 =A0=
 --disable-silent-rules =A0=A0=A0 =A0=A0=A0 =A0 --with-libtool-sysroot=3D/h=
ome/briansp/poky-build/tmp/sysroots/beagleboard --disable-update-mimedb --e=
nable-nls ...<br>
| configure: WARNING: unrecognized options: --disable-silent-rules, --with-=
libtool-sysroot<br>| configure: loading site script /home/briansp/poky/meta=
/site/endian-little<br>| configure: loading site script /home/briansp/poky/=
meta/site/arm-common<br>
| configure: loading site script /home/briansp/poky/meta/site/common-linux<=
br>| configure: loading site script /home/briansp/poky/meta/site/common-gli=
bc<br>| configure: loading site script /home/briansp/poky/meta/site/arm-lin=
ux<br>
| configure: loading site script /home/briansp/poky/meta/site/common<br>| c=
onfigure: loading site script /home/briansp/poky-build/tmp/sysroots/beagleb=
oard/usr/share/arm-poky-linux-gnueabi_config_site.d/zlib_config<br>| config=
ure: loading site script /home/briansp/poky-build/tmp/sysroots/beagleboard/=
usr/share/arm-poky-linux-gnueabi_config_site.d/ncurses_config<br>
| configure: loading site script /home/briansp/poky-build/tmp/sysroots/beag=
leboard/usr/share/arm-poky-linux-gnueabi_config_site.d/eglibc_config<br>| c=
hecking for a BSD-compatible install... /usr/bin/install -c<br>| checking w=
hether build environment is sane... yes<br>
| checking for arm-poky-linux-gnueabi-strip... arm-poky-linux-gnueabi-strip=
<br>| checking for a thread-safe mkdir -p... /bin/mkdir -p<br>| checking fo=
r gawk... gawk<br>| checking whether make sets $(MAKE)... yes<br>| checking=
 for arm-poky-linux-gnueabi-gcc... arm-poky-linux-gnueabi-gcc=A0 -march=3Da=
rmv7-a -fno-tree-vectorize=A0=A0=A0=A0=A0 -mthumb-interwork -mfloat-abi=3Ds=
oftfp -mfpu=3Dneon -mtune=3Dcortex-a8 --sysroot=3D/home/briansp/poky-build/=
tmp/sysroots/beagleboard<br>
| checking whether the C compiler works... yes<br>| checking for C compiler=
 default output file name... a.out<br>| checking for suffix of executables.=
..<br>| checking whether we are cross compiling... yes<br>| checking for su=
ffix of object files... o<br>
| checking whether we are using the GNU C compiler... yes<br>| checking whe=
ther arm-poky-linux-gnueabi-gcc=A0 -march=3Darmv7-a -fno-tree-vectorize=A0=
=A0=A0=A0=A0 -mthumb-interwork -mfloat-abi=3Dsoftfp -mfpu=3Dneon -mtune=3Dc=
ortex-a8 --sysroot=3D/home/briansp/poky-build/tmp/sysroots/beagleboard acce=
pts -g... yes<br>
| checking for arm-poky-linux-gnueabi-gcc=A0 -march=3Darmv7-a -fno-tree-vec=
torize=A0=A0=A0=A0=A0 -mthumb-interwork -mfloat-abi=3Dsoftfp -mfpu=3Dneon -=
mtune=3Dcortex-a8 --sysroot=3D/home/briansp/poky-build/tmp/sysroots/beagleb=
oard option to accept ISO C89... none needed<br>
| checking for style of include used by make... GNU<br>| checking dependenc=
y style of arm-poky-linux-gnueabi-gcc=A0 -march=3Darmv7-a -fno-tree-vectori=
ze=A0=A0=A0=A0=A0 -mthumb-interwork -mfloat-abi=3Dsoftfp -mfpu=3Dneon -mtun=
e=3Dcortex-a8 --sysroot=3D/home/briansp/poky-build/tmp/sysroots/beagleboard=
... gcc3<br>
| checking for an ANSI C-conforming const... yes<br>| checking whether NLS =
is requested... yes<br>| checking for intltool &gt;=3D 0.35.0... 0.40.6 fou=
nd<br>| checking for intltool-update... /home/briansp/poky-build/tmp/sysroo=
ts/x86_64-linux/usr/bin/intltool-update<br>
| checking for intltool-merge... /home/briansp/poky-build/tmp/sysroots/x86_=
64-linux/usr/bin/intltool-merge<br>| checking for intltool-extract... /home=
/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/bin/intltool-extract<br>
| checking for xgettext... /home/briansp/poky-build/tmp/sysroots/x86_64-lin=
ux/usr/bin/xgettext<br>| checking for msgmerge... /home/briansp/poky-build/=
tmp/sysroots/x86_64-linux/usr/bin/msgmerge<br>| checking for msgfmt... /hom=
e/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/bin/msgfmt<br>
| checking for gmsgfmt... /home/briansp/poky-build/tmp/sysroots/x86_64-linu=
x/usr/bin/msgfmt<br>| checking for perl... /usr/bin/perl<br>| checking for =
perl &gt;=3D 5.8.1... 5.12.4<br>| checking for XML::Parser... configure: er=
ror: XML::Parser perl module is required for intltool<br>
| ERROR: oe_runconf failed<br>| ERROR: Function &#39;do_configure&#39; fail=
ed (see /home/briansp/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-gnueab=
i/shared-mime-info-0.90-r0/temp/log.do_configure.2877 for further informati=
on)<br>
NOTE: package shared-mime-info-0.90-r0: task do_configure: Failed<br>ERROR:=
 Function &#39;do_configure&#39; failed (see /home/briansp/poky-build/tmp/w=
ork/armv7a-vfp-neon-poky-linux-gnueabi/xkeyboard-config-2.1-r1/temp/log.do_=
configure.2878 for further information)<br>
ERROR: Logfile of failure stored in: /home/briansp/poky-build/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/xkeyboard-config-2.1-r1/temp/log.do_configur=
e.2878<br>Log data follows:<br>| DEBUG: SITE files [&#39;endian-little&#39;=
, &#39;bit-32&#39;, &#39;arm-common&#39;, &#39;common-linux&#39;, &#39;comm=
on-glibc&#39;, &#39;arm-linux&#39;, &#39;arm-linux-gnueabi&#39;, &#39;commo=
n&#39;]<br>
| automake (GNU automake) 1.11.1<br>| Copyright (C) 2009 Free Software Foun=
dation, Inc.<br>| License GPLv2+: GNU GPL version 2 or later &lt;<a href=3D=
"http://gnu.org/licenses/gpl-2.0.html">http://gnu.org/licenses/gpl-2.0.html=
</a>&gt;<br>
| This is free software: you are free to change and redistribute it.<br>| T=
here is NO WARRANTY, to the extent permitted by law.<br>| <br>| Written by =
Tom Tromey &lt;<a href=3D"mailto:tromey@redhat.com">tromey@redhat.com</a>&g=
t;<br>
|=A0=A0=A0=A0=A0=A0=A0 and Alexandre Duret-Lutz &lt;<a href=3D"mailto:adl@g=
nu.org">adl@gnu.org</a>&gt;.<br>| AUTOV is 1.11<br>| NOTE: Executing glib-g=
ettextize --force --copy<br>| Copying file mkinstalldirs<br>| Copying file =
po/<a href=3D"http://Makefile.in.in">Makefile.in.in</a><br>
| <br>| Please add the files<br>|=A0=A0 codeset.m4 gettext.m4 glibc21.m4 ic=
onv.m4 isc-posix.m4 lcmessage.m4<br>|=A0=A0 progtest.m4<br>| from the /home=
/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/share/aclocal directory t=
o your autoconf macro directory<br>
| or directly to your aclocal.m4 file.<br>| You will also need config.guess=
 and config.sub, which you can get from<br>| <a href=3D"ftp://ftp.gnu.org/p=
ub/gnu/config/">ftp://ftp.gnu.org/pub/gnu/config/</a>.<br>| <br>| NOTE: Exe=
cuting intltoolize --copy --force --automake<br>
| NOTE: Executing autoreconf --verbose --install --force --exclude=3Dautopo=
int -I /home/briansp/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi=
/xkeyboard-config-2.1-r1/xkeyboard-config-2.1/aclocal-copy/ -I/home/briansp=
/poky-build/tmp/sysroots/x86_64-linux/usr/share/aclocal-1.11 -I /home/brian=
sp/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/xkeyboard-config-=
2.1-r1/xkeyboard-config-2.1/aclocal-copy/<br>
| autoreconf: Entering directory `.&#39;<br>| autoreconf: <a href=3D"http:/=
/configure.in">configure.in</a>: not using Gettext<br>| autoreconf: running=
: aclocal -I /home/briansp/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-g=
nueabi/xkeyboard-config-2.1-r1/xkeyboard-config-2.1/aclocal-copy/ -I /home/=
briansp/poky-build/tmp/sysroots/x86_64-linux/usr/share/aclocal-1.11 -I /hom=
e/briansp/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/xkeyboard-=
config-2.1-r1/xkeyboard-config-2.1/aclocal-copy/ -I /home/briansp/poky-buil=
d/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/xkeyboard-config-2.1-r1/xkeyb=
oard-config-2.1/aclocal-copy/ -I /home/briansp/poky-build/tmp/sysroots/x86_=
64-linux/usr/share/aclocal-1.11 -I /home/briansp/poky-build/tmp/work/armv7a=
-vfp-neon-poky-linux-gnueabi/xkeyboard-config-2.1-r1/xkeyboard-config-2.1/a=
clocal-copy/ --force --warnings=3Dcross<br>
| aclocal: unknown warning category `cross&#39;<br>| autoreconf: <a href=3D=
"http://configure.in">configure.in</a>: tracing<br>| autoreconf: <a href=3D=
"http://configure.in">configure.in</a>: not using Libtool<br>| autoreconf: =
running: /home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/bin/autocon=
f --include=3D/home/briansp/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-=
gnueabi/xkeyboard-config-2.1-r1/xkeyboard-config-2.1/aclocal-copy/ --includ=
e=3D/home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/share/aclocal-1.=
11 --include=3D/home/briansp/poky-build/tmp/work/armv7a-vfp-neon-poky-linux=
-gnueabi/xkeyboard-config-2.1-r1/xkeyboard-config-2.1/aclocal-copy/ --force=
 --warnings=3Dcross<br>
| autoreconf: <a href=3D"http://configure.in">configure.in</a>: not using A=
utoheader<br>| autoreconf: running: automake --foreign --add-missing --copy=
 --force-missing --warnings=3Dcross<br>| automake: unknown warning category=
 `cross&#39;<br>
| autoreconf: running: gnu-configize<br>| autoreconf: Leaving directory `.&=
#39;<br>| NOTE: Running /home/briansp/poky-build/tmp/work/armv7a-vfp-neon-p=
oky-linux-gnueabi/xkeyboard-config-2.1-r1/xkeyboard-config-2.1/configure =
=A0=A0=A0 =A0=A0=A0 =A0--build=3Dx86_64-linux =A0=A0=A0 =A0=A0=A0 =A0 --hos=
t=3Darm-poky-linux-gnueabi =A0=A0=A0 =A0=A0=A0 =A0 --target=3Darm-poky-linu=
x-gnueabi =A0=A0=A0 =A0=A0=A0 =A0 --prefix=3D/usr =A0=A0=A0 =A0=A0=A0 =A0 -=
-exec_prefix=3D/usr =A0=A0=A0 =A0=A0=A0 =A0 --bindir=3D/usr/bin =A0=A0=A0 =
=A0=A0=A0 =A0 --sbindir=3D/usr/sbin =A0=A0=A0 =A0 --libexecdir=3D/usr/libex=
ec =A0=A0=A0 =A0=A0=A0 =A0 --datadir=3D/usr/share =A0=A0=A0 =A0=A0=A0 =A0 -=
-sysconfdir=3D/etc =A0=A0=A0 =A0=A0=A0 =A0 --sharedstatedir=3D/com =A0=A0=
=A0 =A0=A0=A0 =A0 --localstatedir=3D/var =A0=A0=A0 =A0=A0=A0 =A0 --libdir=
=3D/usr/lib =A0=A0=A0 =A0=A0=A0 =A0 --includedir=3D/usr/include =A0=A0=A0 =
=A0 --oldincludedir=3D/usr/include =A0=A0=A0 =A0=A0=A0 =A0 --infodir=3D/usr=
/share/info =A0=A0=A0 =A0=A0=A0 =A0 --mandir=3D/usr/share/man =A0=A0=A0 =A0=
=A0=A0 =A0 --disable-silent-rules =A0=A0=A0 =A0=A0=A0 =A0 --with-libtool-sy=
sroot=3D/home/briansp/poky-build/tmp/sysroots/beagleboard --with-xkb-rules-=
symlink=3Dxorg ...<br>
| configure: WARNING: unrecognized options: --disable-silent-rules, --with-=
libtool-sysroot<br>| configure: loading site script /home/briansp/poky/meta=
/site/endian-little<br>| configure: loading site script /home/briansp/poky/=
meta/site/arm-common<br>
| configure: loading site script /home/briansp/poky/meta/site/common-linux<=
br>| configure: loading site script /home/briansp/poky/meta/site/common-gli=
bc<br>| configure: loading site script /home/briansp/poky/meta/site/arm-lin=
ux<br>
| configure: loading site script /home/briansp/poky/meta/site/common<br>| c=
onfigure: loading site script /home/briansp/poky-build/tmp/sysroots/beagleb=
oard/usr/share/arm-poky-linux-gnueabi_config_site.d/zlib_config<br>| config=
ure: loading site script /home/briansp/poky-build/tmp/sysroots/beagleboard/=
usr/share/arm-poky-linux-gnueabi_config_site.d/ncurses_config<br>
| configure: loading site script /home/briansp/poky-build/tmp/sysroots/beag=
leboard/usr/share/arm-poky-linux-gnueabi_config_site.d/eglibc_config<br>| c=
hecking for a BSD-compatible install... /usr/bin/install -c<br>| checking w=
hether build environment is sane... yes<br>
| checking for arm-poky-linux-gnueabi-strip... arm-poky-linux-gnueabi-strip=
<br>| checking for a thread-safe mkdir -p... /bin/mkdir -p<br>| checking fo=
r gawk... gawk<br>| checking whether make sets $(MAKE)... yes<br>| checking=
 whether to enable maintainer-specific portions of Makefiles... no<br>
| checking for xkbcomp... /home/briansp/poky-build/tmp/sysroots/x86_64-linu=
x/usr/bin/xkbcomp<br>| checking whether NLS is requested... yes<br>| checki=
ng for style of include used by make... GNU<br>| checking for arm-poky-linu=
x-gnueabi-gcc... arm-poky-linux-gnueabi-gcc=A0 -march=3Darmv7-a -fno-tree-v=
ectorize=A0=A0=A0=A0=A0 -mthumb-interwork -mfloat-abi=3Dsoftfp -mfpu=3Dneon=
 -mtune=3Dcortex-a8 --sysroot=3D/home/briansp/poky-build/tmp/sysroots/beagl=
eboard<br>
| checking whether the C compiler works... yes<br>| checking for C compiler=
 default output file name... a.out<br>| checking for suffix of executables.=
..<br>| checking whether we are cross compiling... yes<br>| checking for su=
ffix of object files... o<br>
| checking whether we are using the GNU C compiler... yes<br>| checking whe=
ther arm-poky-linux-gnueabi-gcc=A0 -march=3Darmv7-a -fno-tree-vectorize=A0=
=A0=A0=A0=A0 -mthumb-interwork -mfloat-abi=3Dsoftfp -mfpu=3Dneon -mtune=3Dc=
ortex-a8 --sysroot=3D/home/briansp/poky-build/tmp/sysroots/beagleboard acce=
pts -g... yes<br>
| checking for arm-poky-linux-gnueabi-gcc=A0 -march=3Darmv7-a -fno-tree-vec=
torize=A0=A0=A0=A0=A0 -mthumb-interwork -mfloat-abi=3Dsoftfp -mfpu=3Dneon -=
mtune=3Dcortex-a8 --sysroot=3D/home/briansp/poky-build/tmp/sysroots/beagleb=
oard option to accept ISO C89... none needed<br>
| checking dependency style of arm-poky-linux-gnueabi-gcc=A0 -march=3Darmv7=
-a -fno-tree-vectorize=A0=A0=A0=A0=A0 -mthumb-interwork -mfloat-abi=3Dsoftf=
p -mfpu=3Dneon -mtune=3Dcortex-a8 --sysroot=3D/home/briansp/poky-build/tmp/=
sysroots/beagleboard... none<br>
| checking for intltool &gt;=3D 0.30... 0.40.6 found<br>| checking for intl=
tool-update... /home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/bin/i=
ntltool-update<br>| checking for intltool-merge... /home/briansp/poky-build=
/tmp/sysroots/x86_64-linux/usr/bin/intltool-merge<br>
| checking for intltool-extract... /home/briansp/poky-build/tmp/sysroots/x8=
6_64-linux/usr/bin/intltool-extract<br>| checking for xgettext... /home/bri=
ansp/poky-build/tmp/sysroots/x86_64-linux/usr/bin/xgettext<br>| checking fo=
r msgmerge... /home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/bin/ms=
gmerge<br>
| checking for msgfmt... /home/briansp/poky-build/tmp/sysroots/x86_64-linux=
/usr/bin/msgfmt<br>| checking for gmsgfmt... /home/briansp/poky-build/tmp/s=
ysroots/x86_64-linux/usr/bin/msgfmt<br>| checking for perl... /usr/bin/perl=
<br>
| checking for perl &gt;=3D 5.8.1... 5.12.4<br>| checking for XML::Parser..=
. configure: error: XML::Parser perl module is required for intltool<br>| E=
RROR: oe_runconf failed<br>| ERROR: Function &#39;do_configure&#39; failed =
(see /home/briansp/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/x=
keyboard-config-2.1-r1/temp/log.do_configure.2878 for further information)<=
br>
NOTE: package xkeyboard-config-2.1-r1: task do_configure: Failed<br>ERROR: =
Task 3660 (/home/briansp/poky/meta/recipes-support/shared-mime-info/<a href=
=3D"http://shared-mime-info_0.90.bb">shared-mime-info_0.90.bb</a>, do_confi=
gure) failed with exit code &#39;1&#39;<br>
ERROR: Task 3530 (/home/briansp/poky/meta/recipes-graphics/xorg-lib/<a href=
=3D"http://xkeyboard-config_2.1.bb">xkeyboard-config_2.1.bb</a>, do_configu=
re) failed with exit code &#39;1&#39;<br>ERROR: &#39;/home/briansp/poky/met=
a/recipes-devtools/docbook-utils/<a href=3D"http://docbook-utils-native_0.6=
.14.bb">docbook-utils-native_0.6.14.bb</a>&#39; failed<br>
ERROR: &#39;/home/briansp/poky/meta/recipes-support/shared-mime-info/<a hre=
f=3D"http://shared-mime-info_0.90.bb">shared-mime-info_0.90.bb</a>&#39; fai=
led<br>ERROR: &#39;/home/briansp/poky/meta/recipes-graphics/xorg-lib/<a hre=
f=3D"http://xkeyboard-config_2.1.bb">xkeyboard-config_2.1.bb</a>&#39; faile=
d<br>
briansp@Ubuntu:~/poky-build$ <br><br>

--90e6ba1efd2e8b8ed204b06a8d64--
