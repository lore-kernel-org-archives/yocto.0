Return-Path: <jngigiw@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CDED1E00B65; Mon,  3 Jul 2017 05:11:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jngigiw[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f47.google.com (mail-wm0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2C9BE00B49
	for <yocto@yoctoproject.org>; Mon,  3 Jul 2017 05:11:50 -0700 (PDT)
Received: by mail-wm0-f47.google.com with SMTP id i127so106447348wma.0
	for <yocto@yoctoproject.org>; Mon, 03 Jul 2017 05:11:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=utOajMvCiVWiYzFMc80VxcNsAothPcERIfks6aMUfCY=;
	b=jN60ilAlGoL303t1zvRxis4c3ukuCYMIM3wT98XA3olbtRpCHL9w3BWZtytnqIvgv8
	2B38930iwn7Esxc+vPjiESqT4WM8MDJAr2Zr/OLuxjp0y1OCcbY9dzKp4zGRId3eCMyH
	ctTJ4Td17H4ZB3yVKcGrJknmIZ/o3mQZaFYTTyhsgso+GimDo5ec8m9ntJ92ORLBtt0o
	kL88tqT810v1CUYKOwh9lMXUiHod426tnTky5tM7LG+6fm9LFdMJXY0OiYtX7z3428Db
	iraCBGJQlfmr3/U1sOA7KmeCUNBQIYjJhA6AWypvMf2YImF3P0J+VheKFuS1D6UHRw/V
	hW0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=utOajMvCiVWiYzFMc80VxcNsAothPcERIfks6aMUfCY=;
	b=Ku6p09I3lRlfZ+GDwssEtE2tR4QuUwP/yCQuwaiyOMPxgvypr91Bdd88WZOcBRres1
	YPcr5VS5HpkOw/x3/FHU4TinjxLJ7SMeihnA/7C40rhHvyuubOG3E5EvPAD/yGd/2905
	I7vgJvWWd9Vc/wW94ZczxtiUY1ylJ10yckJs3JRlpJL+LiI3PSzQ3gR7r9MxSmod2WVT
	rPypqcrWZiJS99+bJY/cAZb7I6zs+iPP2Fk2zQfgZPJnJx45gtsP9Yoro+Xv70YVpQIg
	aaWwsiVjC5qmAuDG85/iebztkbcap7NkPmaNhgrp3Pj+TiXb0mKXMK4bRyEmUxXBV9S1
	DB/Q==
X-Gm-Message-State: AIVw112f7XrTUHAxt56wBMwE+VDQot1ZaWqF/1JhvUXzYmeIAxGQfKe4
	tLu1L6njUYVe9SYZoaUj+WMv17dWr7hh
X-Received: by 10.28.50.200 with SMTP id y191mr3886790wmy.104.1499083908788;
	Mon, 03 Jul 2017 05:11:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.191.70 with HTTP; Mon, 3 Jul 2017 05:11:48 -0700 (PDT)
From: Joseph Ngigi <jngigiw@gmail.com>
Date: Mon, 3 Jul 2017 15:11:48 +0300
Message-ID: <CABaDK3WSki7XPP=CzmHsmL3qV3YuwEviSTqLp_ftz65agw=vgQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: /meta/recipes-support/attr/acl_2.2.52.bb:do_configure) failed with exit code '1'
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
X-List-Received-Date: Mon, 03 Jul 2017 12:11:56 -0000
Content-Type: multipart/alternative; boundary="001a1140dce2df3737055368ab4a"

--001a1140dce2df3737055368ab4a
Content-Type: text/plain; charset="UTF-8"

Hello,

I am trying to build a core-image-sato for Allwinner's cubieboard2.
However, the acl_2.2.52.bb:do_configure fails.I am on Poky-Pyro branch. Any
solutions out there?

The build output is as follows:

ERROR: pango-1.40.3-r0 do_compile: Function failed: do_compile (log file is
located at
/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/pango/1.40.3-r0/temp/log.do_compile.15966)
ERROR: Logfile of failure stored in:
/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/pango/1.40.3-r0/temp/log.do_compile.15966
Log data follows:
| DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common', 'arm-32',
'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common']
| DEBUG: Executing shell function do_compile
| make: Entering directory
'/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/pango/1.40.3-r0/build/tests'
| gcc  -DHAVE_CONFIG_H -I. -I../../pango-1.40.3/tests -I..      -c -o
gen-all-unicode.o ../../pango-1.40.3/tests/gen-all-unicode.c
| ../../pango-1.40.3/tests/gen-all-unicode.c:1:18: fatal error: glib.h: No
such file or directory
|  #include <glib.h>
|                   ^
| compilation terminated.
| Makefile:933: recipe for target 'gen-all-unicode.o' failed
| make: *** [gen-all-unicode.o] Error 1
| make: Leaving directory
'/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/pango/1.40.3-r0/build/tests'
| WARNING: exit code 2 from a shell command.
| ERROR: Function failed: do_compile (log file is located at
/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/pango/1.40.3-r0/temp/log.do_compile.15966)
ERROR: Task
(/home/ngigijoe/src/git/pyro/poky/meta/recipes-graphics/pango/pango_1.40.3.bb:do_compile)
failed with exit code '1'
ERROR: acl-2.2.52-r0 do_configure: configure failed
ERROR: acl-2.2.52-r0 do_configure: Function failed: do_configure (log file
is located at
/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/acl/2.2.52-r0/temp/log.do_configure.15967)
ERROR: Logfile of failure stored in:
/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/acl/2.2.52-r0/temp/log.do_configure.15967
Log data follows:
| DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common', 'arm-32',
'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common']
| DEBUG: Executing shell function autotools_preconfigure
| DEBUG: Shell function autotools_preconfigure finished
| DEBUG: Executing python function autotools_aclocals
| DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common', 'arm-32',
'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common']
| DEBUG: Python function autotools_aclocals finished
| DEBUG: Executing shell function do_configure
| NOTE: Executing ACLOCAL="aclocal
--system-acdir=/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/acl/2.2.52-r0/recipe-sysroot/usr/share/aclocal/"
autoreconf --verbose --install --force --exclude=autopoint
--exclude=autoheader -I
/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/acl/2.2.52-r0/acl-2.2.52/m4/
-I
/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/acl/2.2.52-r0/recipe-sysroot-native/usr/share/aclocal/
| NOTE: Running ./configure  --build=x86_64-linux
--host=arm-poky-linux-gnueabi           --target=arm-poky-linux-gnueabi
      --prefix=/usr           --exec_prefix=/usr
--bindir=/usr/bin           --sbindir=/usr/sbin
--libexecdir=/usr/libexec           --datadir=/usr/share
--sysconfdir=/etc   --sharedstatedir=/com           --localstatedir=/var
          --libdir=/usr/lib           --includedir=/usr/include
--oldincludedir=/usr/include           --infodir=/usr/share/info
--mandir=/usr/share/man           --disable-silent-rules
--disable-dependency-tracking
--with-libtool-sysroot=/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/acl/2.2.52-r0/recipe-sysroot
INSTALL_USER=root INSTALL_GROUP=root --disable-static  --enable-nls
| automake (GNU automake) 1.15
| Copyright (C) 2014 Free Software Foundation, Inc.
| License GPLv2+: GNU GPL version 2 or later <
http://gnu.org/licenses/gpl-2.0.html>
| This is free software: you are free to change and redistribute it.
| There is NO WARRANTY, to the extent permitted by law.
|
| Written by Tom Tromey <tromey@redhat.com>
|        and Alexandre Duret-Lutz <adl@gnu.org>.
| AUTOV is 1
| autoreconf: Entering directory `.'
| autoreconf: configure.ac: not using Gettext
| autoreconf: running: aclocal
--system-acdir=/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/acl/2.2.52-r0/recipe-sysroot/usr/share/aclocal/
-I
/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/acl/2.2.52-r0/acl-2.2.52/m4/
-I
/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/acl/2.2.52-r0/recipe-sysroot-native/usr/share/aclocal/
--force
| autoreconf: configure.ac: tracing
| autoreconf: running: libtoolize --copy --force
| libtoolize: putting auxiliary files in AC_CONFIG_AUX_DIR, '.'.
| libtoolize: copying file './ltmain.sh'
| libtoolize: putting macros in AC_CONFIG_MACRO_DIRS, 'm4'.
| libtoolize: copying file 'm4/libtool.m4'
| libtoolize: copying file 'm4/ltoptions.m4'
| libtoolize: copying file 'm4/ltsugar.m4'
| libtoolize: copying file 'm4/ltversion.m4'
| libtoolize: copying file 'm4/lt~obsolete.m4'
| libtoolize: Consider adding '-I m4' to ACLOCAL_AMFLAGS in Makefile.am.
| autoreconf: running:
/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/acl/2.2.52-r0/recipe-sysroot-native/usr/bin/autoconf
--include=/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/acl/2.2.52-r0/acl-2.2.52/m4/
--include=/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/acl/2.2.52-r0/recipe-sysroot-native/usr/share/aclocal/
--force
| autoreconf: configure.ac: not using Automake
| autoreconf: running: gnu-configize
| autoreconf: Leaving directory `.'
| configure: WARNING: unrecognized options: --disable-silent-rules,
--disable-dependency-tracking, --enable-nls
| configure: loading site script
/home/ngigijoe/src/git/pyro/poky/meta/site/endian-little
| configure: loading site script
/home/ngigijoe/src/git/pyro/poky/meta/site/arm-common
| configure: loading site script
/home/ngigijoe/src/git/pyro/poky/meta/site/arm-32
| configure: loading site script
/home/ngigijoe/src/git/pyro/poky/meta/site/common-linux
| configure: loading site script
/home/ngigijoe/src/git/pyro/poky/meta/site/common-glibc
| configure: loading site script
/home/ngigijoe/src/git/pyro/poky/meta/site/arm-linux
| configure: loading site script
/home/ngigijoe/src/git/pyro/poky/meta/site/common
| configure: loading site script
/home/ngigijoe/src/git/pyro/poky/meta-openembedded/meta-oe/site/endian-little
| checking build system type... x86_64-pc-linux-gnu
| checking host system type... arm-poky-linux-gnueabi
| checking how to print strings... printf
| checking for arm-poky-linux-gnueabi-gcc... arm-poky-linux-gnueabi-gcc
-march=armv7ve -mfpu=neon-vfpv4  -mfloat-abi=hard -mcpu=cortex-a7
--sysroot=/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/acl/2.2.52-r0/recipe-sysroot
| checking whether the C compiler works... yes
| checking for C compiler default output file name... a.out
| checking for suffix of executables...
| checking whether we are cross compiling... yes
| checking for suffix of object files... o
| checking whether we are using the GNU C compiler... yes
| checking whether arm-poky-linux-gnueabi-gcc  -march=armv7ve
-mfpu=neon-vfpv4  -mfloat-abi=hard -mcpu=cortex-a7
--sysroot=/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/acl/2.2.52-r0/recipe-sysroot
accepts -g... yes
| checking for arm-poky-linux-gnueabi-gcc  -march=armv7ve -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7
--sysroot=/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/acl/2.2.52-r0/recipe-sysroot
option to accept ISO C89... none needed
| checking for a sed that does not truncate output... (cached) sed
| checking for grep that handles long lines and -e...
/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/hosttools/grep
| checking for egrep...
/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/hosttools/grep -E
| checking for fgrep...
/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/hosttools/grep -F
| checking for ld used by arm-poky-linux-gnueabi-gcc  -march=armv7ve
-mfpu=neon-vfpv4  -mfloat-abi=hard -mcpu=cortex-a7
--sysroot=/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/acl/2.2.52-r0/recipe-sysroot...
arm-poky-linux-gnueabi-ld
--sysroot=/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/acl/2.2.52-r0/recipe-sysroot
| checking if the linker (arm-poky-linux-gnueabi-ld
--sysroot=/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/acl/2.2.52-r0/recipe-sysroot
) is GNU ld... yes
| checking for BSD- or MS-compatible name lister (nm)...
arm-poky-linux-gnueabi-nm
| checking the name lister (arm-poky-linux-gnueabi-nm) interface... BSD nm
| checking whether ln -s works... yes
| checking the maximum length of command line arguments... 1572864
| checking how to convert x86_64-pc-linux-gnu file names to
arm-poky-linux-gnueabi format... func_convert_file_noop
| checking how to convert x86_64-pc-linux-gnu file names to toolchain
format... func_convert_file_noop
| checking for arm-poky-linux-gnueabi-ld
--sysroot=/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/acl/2.2.52-r0/recipe-sysroot
option to reload object files... -r
| checking for arm-poky-linux-gnueabi-objdump...
arm-poky-linux-gnueabi-objdump
| checking how to recognize dependent libraries... pass_all
| checking for arm-poky-linux-gnueabi-dlltool... no
| checking for dlltool... no
| checking how to associate runtime and link libraries... printf %s\n
| checking for arm-poky-linux-gnueabi-ar... arm-poky-linux-gnueabi-ar
| checking for archiver @FILE support... @
| checking for arm-poky-linux-gnueabi-strip... arm-poky-linux-gnueabi-strip
| checking for arm-poky-linux-gnueabi-ranlib...
arm-poky-linux-gnueabi-ranlib
| checking for gawk... gawk
| checking command to parse arm-poky-linux-gnueabi-nm output from
arm-poky-linux-gnueabi-gcc  -march=armv7ve -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7
--sysroot=/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/acl/2.2.52-r0/recipe-sysroot
object... ok
| checking for sysroot...
/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/acl/2.2.52-r0/recipe-sysroot
| checking for a working dd...
/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/hosttools/dd
| checking how to truncate binary pipes...
/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/hosttools/dd bs=4096
count=1
| checking for arm-poky-linux-gnueabi-mt... no
| checking for mt... no
| checking if : is a manifest tool... no
| checking how to run the C preprocessor... arm-poky-linux-gnueabi-gcc -E
--sysroot=/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/acl/2.2.52-r0/recipe-sysroot
-march=armv7ve -mfpu=neon-vfpv4  -mfloat-abi=hard -mcpu=cortex-a7
| checking for ANSI C header files... yes
| checking for sys/types.h... yes
| checking for sys/stat.h... yes
| checking for stdlib.h... yes
| checking for string.h... yes
| checking for memory.h... yes
| checking for strings.h... yes
| checking for inttypes.h... yes
| checking for stdint.h... yes
| checking for unistd.h... yes
| checking for dlfcn.h... yes
| checking for objdir... .libs
| checking if arm-poky-linux-gnueabi-gcc  -march=armv7ve -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7
--sysroot=/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/acl/2.2.52-r0/recipe-sysroot
supports -fno-rtti -fno-exceptions... no
| checking for arm-poky-linux-gnueabi-gcc  -march=armv7ve -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7
--sysroot=/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/acl/2.2.52-r0/recipe-sysroot
option to produce PIC... NOTE: The following config.log files may provide
further information.
| NOTE:
/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/acl/2.2.52-r0/acl-2.2.52/config.log
| ERROR: configure failed
| -fPIC -DPIC
| checking if arm-poky-linux-gnueabi-gcc  -march=armv7ve -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7
--sysroot=/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/acl/2.2.52-r0/recipe-sysroot
PIC flag -fPIC -DPIC works... yes
| checking if arm-poky-linux-gnueabi-gcc  -march=armv7ve -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7
--sysroot=/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/acl/2.2.52-r0/recipe-sysroot
static flag -static works... yes
| checking if arm-poky-linux-gnueabi-gcc  -march=armv7ve -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7
--sysroot=/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/acl/2.2.52-r0/recipe-sysroot
supports -c -o file.o... yes
| checking if arm-poky-linux-gnueabi-gcc  -march=armv7ve -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7
--sysroot=/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/acl/2.2.52-r0/recipe-sysroot
supports -c -o file.o... (cached) yes
| checking whether the arm-poky-linux-gnueabi-gcc  -march=armv7ve
-mfpu=neon-vfpv4  -mfloat-abi=hard -mcpu=cortex-a7
--sysroot=/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/acl/2.2.52-r0/recipe-sysroot
linker (arm-poky-linux-gnueabi-ld
--sysroot=/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/acl/2.2.52-r0/recipe-sysroot
) supports shared libraries... yes
| checking whether -lc should be explicitly linked in... no
| checking dynamic linker characteristics... GNU/Linux ld.so
| checking how to hardcode library paths into programs... immediate
| checking whether stripping libraries is possible... yes
| checking if libtool supports shared libraries... yes
| checking whether to build shared libraries... yes
| checking whether to build static libraries... no
| ./configure: line 11139: syntax error near unexpected token
`subdir-objects'
| ./configure: line 11139: `AUTOMAKE_OPTIONS(subdir-objects)'
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_configure (log file is located at
/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/acl/2.2.52-r0/temp/log.do_configure.15967)
ERROR: Task
(/home/ngigijoe/src/git/pyro/poky/meta/recipes-support/attr/acl_2.2.52.bb:do_configure)
failed with exit code '1'





-- 
J.W.Ngigi

--001a1140dce2df3737055368ab4a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hello,<br><br></div>I am trying to build a core-=
image-sato for Allwinner&#39;s cubieboard2. However, the acl_2.2.52.bb:do_c=
onfigure fails.I am on Poky-Pyro branch. Any solutions out there?<br><br></=
div>The build output is as follows:<br><br>ERROR: pango-1.40.3-r0 do_compil=
e: Function failed: do_compile (log file is located at /home/ngigijoe/src/g=
it/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/=
pango/1.40.3-r0/temp/log.do_compile.15966)<br>ERROR: Logfile of failure sto=
red in: /home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-ne=
on-vfpv4-poky-linux-gnueabi/pango/1.40.3-r0/temp/log.do_compile.15966<br>Lo=
g data follows:<br>| DEBUG: SITE files [&#39;endian-little&#39;, &#39;bit-3=
2&#39;, &#39;arm-common&#39;, &#39;arm-32&#39;, &#39;common-linux&#39;, &#3=
9;common-glibc&#39;, &#39;arm-linux&#39;, &#39;arm-linux-gnueabi&#39;, &#39=
;common&#39;]<br>| DEBUG: Executing shell function do_compile<br>| make: En=
tering directory &#39;/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work=
/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/pango/1.40.3-r0/build/tests&#39;<=
br>| gcc=C2=A0 -DHAVE_CONFIG_H -I. -I../../pango-1.40.3/tests -I..=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 -c -o gen-all-unicode.o ../../pango-1.40.3/tests/gen-=
all-unicode.c<br>| ../../pango-1.40.3/tests/gen-all-unicode.c:1:18: fatal e=
rror: glib.h: No such file or directory<br>|=C2=A0 #include &lt;glib.h&gt;<=
br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^<br>| compilation terminated.<br>|=
 Makefile:933: recipe for target &#39;gen-all-unicode.o&#39; failed<br>| ma=
ke: *** [gen-all-unicode.o] Error 1<br>| make: Leaving directory &#39;/home=
/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky=
-linux-gnueabi/pango/1.40.3-r0/build/tests&#39;<br>| WARNING: exit code 2 f=
rom a shell command.<br>| ERROR: Function failed: do_compile (log file is l=
ocated at /home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-=
neon-vfpv4-poky-linux-gnueabi/pango/1.40.3-r0/temp/log.do_compile.15966)<br=
>ERROR: Task (/home/ngigijoe/src/git/pyro/poky/meta/recipes-graphics/pango/=
pango_1.40.3.bb:do_compile) failed with exit code &#39;1&#39;<br>ERROR: acl=
-2.2.52-r0 do_configure: configure failed<br>ERROR: acl-2.2.52-r0 do_config=
ure: Function failed: do_configure (log file is located at /home/ngigijoe/s=
rc/git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnue=
abi/acl/2.2.52-r0/temp/log.do_configure.15967)<br>ERROR: Logfile of failure=
 stored in: /home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/cortexa7h=
f-neon-vfpv4-poky-linux-gnueabi/acl/2.2.52-r0/temp/log.do_configure.15967<b=
r>Log data follows:<br>| DEBUG: SITE files [&#39;endian-little&#39;, &#39;b=
it-32&#39;, &#39;arm-common&#39;, &#39;arm-32&#39;, &#39;common-linux&#39;,=
 &#39;common-glibc&#39;, &#39;arm-linux&#39;, &#39;arm-linux-gnueabi&#39;, =
&#39;common&#39;]<br>| DEBUG: Executing shell function autotools_preconfigu=
re<br>| DEBUG: Shell function autotools_preconfigure finished<br>| DEBUG: E=
xecuting python function autotools_aclocals<br>| DEBUG: SITE files [&#39;en=
dian-little&#39;, &#39;bit-32&#39;, &#39;arm-common&#39;, &#39;arm-32&#39;,=
 &#39;common-linux&#39;, &#39;common-glibc&#39;, &#39;arm-linux&#39;, &#39;=
arm-linux-gnueabi&#39;, &#39;common&#39;]<br>| DEBUG: Python function autot=
ools_aclocals finished<br>| DEBUG: Executing shell function do_configure<br=
>| NOTE: Executing ACLOCAL=3D&quot;aclocal --system-acdir=3D/home/ngigijoe/=
src/git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnu=
eabi/acl/2.2.52-r0/recipe-sysroot/usr/share/aclocal/&quot; autoreconf --ver=
bose --install --force --exclude=3Dautopoint --exclude=3Dautoheader -I /hom=
e/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-pok=
y-linux-gnueabi/acl/2.2.52-r0/acl-2.2.52/m4/ -I /home/ngigijoe/src/git/pyro=
/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/acl/2.2=
.52-r0/recipe-sysroot-native/usr/share/aclocal/<br>| NOTE: Running ./config=
ure=C2=A0 --build=3Dx86_64-linux =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=
=A0 --host=3Darm-poky-linux-gnueabi =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =
=C2=A0 --target=3Darm-poky-linux-gnueabi =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=
=A0 =C2=A0 --prefix=3D/usr =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0 --e=
xec_prefix=3D/usr =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0 --bindir=3D/=
usr/bin =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0 --sbindir=3D/usr/sbin =
=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0 --libexecdir=3D/usr/libexec =
=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0 --datadir=3D/usr/share =C2=A0=
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0 --sysconfdir=3D/etc=C2=A0=C2=A0 --sh=
aredstatedir=3D/com =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0 --localsta=
tedir=3D/var =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0 --libdir=3D/usr/l=
ib =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0 --includedir=3D/usr/include=
 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0 --oldincludedir=3D/usr/includ=
e =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0 --infodir=3D/usr/share/info =
=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0 --mandir=3D/usr/share/man =C2=
=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0 --disable-silent-rules =C2=A0=C2=
=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0 --disable-dependency-tracking =C2=A0=C2=
=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0 --with-libtool-sysroot=3D/home/ngigijoe=
/src/git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gn=
ueabi/acl/2.2.52-r0/recipe-sysroot INSTALL_USER=3Droot INSTALL_GROUP=3Droot=
 --disable-static=C2=A0 --enable-nls<br>| automake (GNU automake) 1.15<br>|=
 Copyright (C) 2014 Free Software Foundation, Inc.<br>| License GPLv2+: GNU=
 GPL version 2 or later &lt;<a href=3D"http://gnu.org/licenses/gpl-2.0.html=
">http://gnu.org/licenses/gpl-2.0.html</a>&gt;<br>| This is free software: =
you are free to change and redistribute it.<br>| There is NO WARRANTY, to t=
he extent permitted by law.<br>| <br>| Written by Tom Tromey &lt;<a href=3D=
"mailto:tromey@redhat.com">tromey@redhat.com</a>&gt;<br>|=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 and Alexandre Duret-Lutz &lt;<a href=3D"mailto:adl=
@gnu.org">adl@gnu.org</a>&gt;.<br>| AUTOV is 1<br>| autoreconf: Entering di=
rectory `.&#39;<br>| autoreconf: <a href=3D"http://configure.ac">configure.=
ac</a>: not using Gettext<br>| autoreconf: running: aclocal --system-acdir=
=3D/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vf=
pv4-poky-linux-gnueabi/acl/2.2.52-r0/recipe-sysroot/usr/share/aclocal/ -I /=
home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-=
poky-linux-gnueabi/acl/2.2.52-r0/acl-2.2.52/m4/ -I /home/ngigijoe/src/git/p=
yro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/acl/=
2.2.52-r0/recipe-sysroot-native/usr/share/aclocal/ --force<br>| autoreconf:=
 <a href=3D"http://configure.ac">configure.ac</a>: tracing<br>| autoreconf:=
 running: libtoolize --copy --force<br>| libtoolize: putting auxiliary file=
s in AC_CONFIG_AUX_DIR, &#39;.&#39;.<br>| libtoolize: copying file &#39;./l=
tmain.sh&#39;<br>| libtoolize: putting macros in AC_CONFIG_MACRO_DIRS, &#39=
;m4&#39;.<br>| libtoolize: copying file &#39;m4/libtool.m4&#39;<br>| libtoo=
lize: copying file &#39;m4/ltoptions.m4&#39;<br>| libtoolize: copying file =
&#39;m4/ltsugar.m4&#39;<br>| libtoolize: copying file &#39;m4/ltversion.m4&=
#39;<br>| libtoolize: copying file &#39;m4/lt~obsolete.m4&#39;<br>| libtool=
ize: Consider adding &#39;-I m4&#39; to ACLOCAL_AMFLAGS in Makefile.am.<br>=
| autoreconf: running: /home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/wor=
k/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/acl/2.2.52-r0/recipe-sysroot-nat=
ive/usr/bin/autoconf --include=3D/home/ngigijoe/src/git/pyro/poky/cubieboar=
d2/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/acl/2.2.52-r0/acl-2.2.=
52/m4/ --include=3D/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/co=
rtexa7hf-neon-vfpv4-poky-linux-gnueabi/acl/2.2.52-r0/recipe-sysroot-native/=
usr/share/aclocal/ --force<br>| autoreconf: <a href=3D"http://configure.ac"=
>configure.ac</a>: not using Automake<br>| autoreconf: running: gnu-configi=
ze<br>| autoreconf: Leaving directory `.&#39;<br>| configure: WARNING: unre=
cognized options: --disable-silent-rules, --disable-dependency-tracking, --=
enable-nls<br>| configure: loading site script /home/ngigijoe/src/git/pyro/=
poky/meta/site/endian-little<br>| configure: loading site script /home/ngig=
ijoe/src/git/pyro/poky/meta/site/arm-common<br>| configure: loading site sc=
ript /home/ngigijoe/src/git/pyro/poky/meta/site/arm-32<br>| configure: load=
ing site script /home/ngigijoe/src/git/pyro/poky/meta/site/common-linux<br>=
| configure: loading site script /home/ngigijoe/src/git/pyro/poky/meta/site=
/common-glibc<br>| configure: loading site script /home/ngigijoe/src/git/py=
ro/poky/meta/site/arm-linux<br>| configure: loading site script /home/ngigi=
joe/src/git/pyro/poky/meta/site/common<br>| configure: loading site script =
/home/ngigijoe/src/git/pyro/poky/meta-openembedded/meta-oe/site/endian-litt=
le<br>| checking build system type... x86_64-pc-linux-gnu<br>| checking hos=
t system type... arm-poky-linux-gnueabi<br>| checking how to print strings.=
.. printf<br>| checking for arm-poky-linux-gnueabi-gcc... arm-poky-linux-gn=
ueabi-gcc=C2=A0 -march=3Darmv7ve -mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhar=
d -mcpu=3Dcortex-a7 --sysroot=3D/home/ngigijoe/src/git/pyro/poky/cubieboard=
2/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/acl/2.2.52-r0/recipe-sy=
sroot<br>| checking whether the C compiler works... yes<br>| checking for C=
 compiler default output file name... a.out<br>| checking for suffix of exe=
cutables...<br>| checking whether we are cross compiling... yes<br>| checki=
ng for suffix of object files... o<br>| checking whether we are using the G=
NU C compiler... yes<br>| checking whether arm-poky-linux-gnueabi-gcc=C2=A0=
 -march=3Darmv7ve -mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcorte=
x-a7 --sysroot=3D/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/cort=
exa7hf-neon-vfpv4-poky-linux-gnueabi/acl/2.2.52-r0/recipe-sysroot accepts -=
g... yes<br>| checking for arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7v=
e -mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7 --sysroot=
=3D/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vf=
pv4-poky-linux-gnueabi/acl/2.2.52-r0/recipe-sysroot option to accept ISO C8=
9... none needed<br>| checking for a sed that does not truncate output... (=
cached) sed<br>| checking for grep that handles long lines and -e... /home/=
ngigijoe/src/git/pyro/poky/cubieboard2/tmp/hosttools/grep<br>| checking for=
 egrep... /home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/hosttools/grep -=
E<br>| checking for fgrep... /home/ngigijoe/src/git/pyro/poky/cubieboard2/t=
mp/hosttools/grep -F<br>| checking for ld used by arm-poky-linux-gnueabi-gc=
c=C2=A0 -march=3Darmv7ve -mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=
=3Dcortex-a7 --sysroot=3D/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/w=
ork/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/acl/2.2.52-r0/recipe-sysroot..=
. arm-poky-linux-gnueabi-ld --sysroot=3D/home/ngigijoe/src/git/pyro/poky/cu=
bieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/acl/2.2.52-r0/r=
ecipe-sysroot<br>| checking if the linker (arm-poky-linux-gnueabi-ld --sysr=
oot=3D/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon=
-vfpv4-poky-linux-gnueabi/acl/2.2.52-r0/recipe-sysroot ) is GNU ld... yes<b=
r>| checking for BSD- or MS-compatible name lister (nm)... arm-poky-linux-g=
nueabi-nm<br>| checking the name lister (arm-poky-linux-gnueabi-nm) interfa=
ce... BSD nm<br>| checking whether ln -s works... yes<br>| checking the max=
imum length of command line arguments... 1572864<br>| checking how to conve=
rt x86_64-pc-linux-gnu file names to arm-poky-linux-gnueabi format... func_=
convert_file_noop<br>| checking how to convert x86_64-pc-linux-gnu file nam=
es to toolchain format... func_convert_file_noop<br>| checking for arm-poky=
-linux-gnueabi-ld --sysroot=3D/home/ngigijoe/src/git/pyro/poky/cubieboard2/=
tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/acl/2.2.52-r0/recipe-sysr=
oot=C2=A0 option to reload object files... -r<br>| checking for arm-poky-li=
nux-gnueabi-objdump... arm-poky-linux-gnueabi-objdump<br>| checking how to =
recognize dependent libraries... pass_all<br>| checking for arm-poky-linux-=
gnueabi-dlltool... no<br>| checking for dlltool... no<br>| checking how to =
associate runtime and link libraries... printf %s\n<br>| checking for arm-p=
oky-linux-gnueabi-ar... arm-poky-linux-gnueabi-ar<br>| checking for archive=
r @FILE support... @<br>| checking for arm-poky-linux-gnueabi-strip... arm-=
poky-linux-gnueabi-strip<br>| checking for arm-poky-linux-gnueabi-ranlib...=
 arm-poky-linux-gnueabi-ranlib<br>| checking for gawk... gawk<br>| checking=
 command to parse arm-poky-linux-gnueabi-nm output from arm-poky-linux-gnue=
abi-gcc=C2=A0 -march=3Darmv7ve -mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard =
-mcpu=3Dcortex-a7 --sysroot=3D/home/ngigijoe/src/git/pyro/poky/cubieboard2/=
tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/acl/2.2.52-r0/recipe-sysr=
oot object... ok<br>| checking for sysroot... /home/ngigijoe/src/git/pyro/p=
oky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/acl/2.2.5=
2-r0/recipe-sysroot<br>| checking for a working dd... /home/ngigijoe/src/gi=
t/pyro/poky/cubieboard2/tmp/hosttools/dd<br>| checking how to truncate bina=
ry pipes... /home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/hosttools/dd b=
s=3D4096 count=3D1<br>| checking for arm-poky-linux-gnueabi-mt... no<br>| c=
hecking for mt... no<br>| checking if : is a manifest tool... no<br>| check=
ing how to run the C preprocessor... arm-poky-linux-gnueabi-gcc -E --sysroo=
t=3D/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-v=
fpv4-poky-linux-gnueabi/acl/2.2.52-r0/recipe-sysroot=C2=A0 -march=3Darmv7ve=
 -mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7<br>| checkin=
g for ANSI C header files... yes<br>| checking for sys/types.h... yes<br>| =
checking for sys/stat.h... yes<br>| checking for stdlib.h... yes<br>| check=
ing for string.h... yes<br>| checking for memory.h... yes<br>| checking for=
 strings.h... yes<br>| checking for inttypes.h... yes<br>| checking for std=
int.h... yes<br>| checking for unistd.h... yes<br>| checking for dlfcn.h...=
 yes<br>| checking for objdir... .libs<br>| checking if arm-poky-linux-gnue=
abi-gcc=C2=A0 -march=3Darmv7ve -mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard =
-mcpu=3Dcortex-a7 --sysroot=3D/home/ngigijoe/src/git/pyro/poky/cubieboard2/=
tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/acl/2.2.52-r0/recipe-sysr=
oot supports -fno-rtti -fno-exceptions... no<br>| checking for arm-poky-lin=
ux-gnueabi-gcc=C2=A0 -march=3Darmv7ve -mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=
=3Dhard -mcpu=3Dcortex-a7 --sysroot=3D/home/ngigijoe/src/git/pyro/poky/cubi=
eboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/acl/2.2.52-r0/rec=
ipe-sysroot option to produce PIC... NOTE: The following config.log files m=
ay provide further information.<br>| NOTE: /home/ngigijoe/src/git/pyro/poky=
/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/acl/2.2.52-r=
0/acl-2.2.52/config.log<br>| ERROR: configure failed<br>| -fPIC -DPIC<br>| =
checking if arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve -mfpu=3Dneon-=
vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7 --sysroot=3D/home/ngigijoe=
/src/git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gn=
ueabi/acl/2.2.52-r0/recipe-sysroot PIC flag -fPIC -DPIC works... yes<br>| c=
hecking if arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve -mfpu=3Dneon-v=
fpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7 --sysroot=3D/home/ngigijoe/=
src/git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnu=
eabi/acl/2.2.52-r0/recipe-sysroot static flag -static works... yes<br>| che=
cking if arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve -mfpu=3Dneon-vfp=
v4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7 --sysroot=3D/home/ngigijoe/sr=
c/git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnuea=
bi/acl/2.2.52-r0/recipe-sysroot supports -c -o file.o... yes<br>| checking =
if arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve -mfpu=3Dneon-vfpv4=C2=
=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7 --sysroot=3D/home/ngigijoe/src/git=
/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/ac=
l/2.2.52-r0/recipe-sysroot supports -c -o file.o... (cached) yes<br>| check=
ing whether the arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve -mfpu=3Dn=
eon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7 --sysroot=3D/home/ngig=
ijoe/src/git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-linu=
x-gnueabi/acl/2.2.52-r0/recipe-sysroot linker (arm-poky-linux-gnueabi-ld --=
sysroot=3D/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-=
neon-vfpv4-poky-linux-gnueabi/acl/2.2.52-r0/recipe-sysroot ) supports share=
d libraries... yes<br>| checking whether -lc should be explicitly linked in=
... no<br>| checking dynamic linker characteristics... GNU/Linux ld.so<br>|=
 checking how to hardcode library paths into programs... immediate<br>| che=
cking whether stripping libraries is possible... yes<br>| checking if libto=
ol supports shared libraries... yes<br>| checking whether to build shared l=
ibraries... yes<br>| checking whether to build static libraries... no<br>| =
./configure: line 11139: syntax error near unexpected token `subdir-objects=
&#39;<br>| ./configure: line 11139: `AUTOMAKE_OPTIONS(subdir-objects)&#39;<=
br>| WARNING: exit code 1 from a shell command.<br>| ERROR: Function failed=
: do_configure (log file is located at /home/ngigijoe/src/git/pyro/poky/cub=
ieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/acl/2.2.52-r0/te=
mp/log.do_configure.15967)<br>ERROR: Task (/home/ngigijoe/src/git/pyro/poky=
/meta/recipes-support/attr/acl_2.2.52.bb:do_configure) failed with exit cod=
e &#39;1&#39;<br><br><br><br><br clear=3D"all"><div><div><div><br>-- <br><d=
iv class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><d=
iv dir=3D"ltr">J.W.Ngigi</div><div dir=3D"ltr"><br><br></div></div></div></=
div></div></div>
</div></div></div></div>

--001a1140dce2df3737055368ab4a--
