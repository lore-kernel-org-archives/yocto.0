Return-Path: <jngigiw@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81302E00AE6; Wed,  5 Jul 2017 07:10:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, WEIRD_PORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jngigiw[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.44 listed in list.dnswl.org]
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f44.google.com (mail-wm0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 653F6E00A9C
	for <yocto@yoctoproject.org>; Wed,  5 Jul 2017 07:10:20 -0700 (PDT)
Received: by mail-wm0-f44.google.com with SMTP id i127so168190636wma.0
	for <yocto@yoctoproject.org>; Wed, 05 Jul 2017 07:10:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=ZJDqSiVbiF7hxW0QXXFygWbkJYlq6vO30W7UFtNQCMc=;
	b=eCo2U+vztFgtekqbPDsWxc4LlZHf5hZw3FV50fUKVV+C9hmtwdXBm15XCbEsSGC2zi
	fPjRXEnFcokEzRS8rvmYR8fcz+wfpKjauaqHPEujlbhEEjPKQlMuAif5xa9xPpEcfIkK
	22/OtvoGeYpiYrTCUSWnzlCMQk3tW02LPjlLHUx1PtbuXd1poqSis29obm23jZU5V+t6
	1RdhDd8fohrG/uPsj1pMaBqSMXyxGZXnvYiTxqbJ6mOHTKGXv4+BoJhvVLBkKL8yHZna
	sXW9ZXNkuPgGsE7fJ3old1y6Yq0wymAY8D334SUdJDPOJwebupqluvkMsOc497bgJTAw
	kuhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=ZJDqSiVbiF7hxW0QXXFygWbkJYlq6vO30W7UFtNQCMc=;
	b=sYxgCgVKdvwYs+k+/1gshBc/D44eh7U+OTtoq9rE79BOuGbk0siVem4eKSYTc7K8xP
	5cSAWitB3hDApq9uSA/3OgcvIEYPHY6LK3lqjr7CGNa34a6WkUDYUPTSjhslr1sFP5ZY
	gWt35y4jenqlog3Bf4u9Tzdg52RkMMSLYSyf7O2lhRqfzBS6W6H7AuSI9h6tGkOMpVcD
	nLT3Dw9mcxR3TCB12eD3USH42TmGsm9mhq5gsAziDCRRzISTfyQv1bpk0J/cC8qizkTy
	/4YqzXRu2HwoG9/Xoz/gRCuRSS/PLWJMKl+pmmSvcqFnvZUlV8V/03/aQ2TIdl+uc4z6
	dfYA==
X-Gm-Message-State: AIVw110I9JHD9XESpIKvVPsUAVyNFIgng28NTVzv8qh5mHnbTNhFY6Wo
	efuqsrJu9a2Um61LCuUBetPvdW3YZnRL
X-Received: by 10.28.145.12 with SMTP id t12mr1658850wmd.107.1499263816199;
	Wed, 05 Jul 2017 07:10:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.191.70 with HTTP; Wed, 5 Jul 2017 07:10:15 -0700 (PDT)
From: Joseph Ngigi <jngigiw@gmail.com>
Date: Wed, 5 Jul 2017 17:10:15 +0300
Message-ID: <CABaDK3VRdK9jYdD0gzoDGwtOV2HOOr_+y5KibWUBYzKE6XhM7g@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: xorg-xserver and gtk+3 do_configure fail in poky-pyro
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
X-List-Received-Date: Wed, 05 Jul 2017 14:10:30 -0000
Content-Type: multipart/alternative; boundary="001a114713743073cc0553928fe4"

--001a114713743073cc0553928fe4
Content-Type: text/plain; charset="UTF-8"

Please help,
I did a clean git clone of poky-pyro and rebuilt, but not I have these two
errors:
ERROR: Task (/home/ngigijoe/src/git/pyro/poky/meta/recipes-graphics/
xorg-xserver/xserver-xorg_1.19.1.bb:do_configure) failed with exit code '1'

ERROR: Logfile of failure stored in: /home/ngigijoe/src/git/pyro/
poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-
linux-gnueabi/xserver-xorg/2_1.19.1-r0/temp/log.do_configure.763

This is how the screen output looks like:

ngigijoe@ngigijoe-HP-2000-Notebook-PC:~/src/git/pyro/poky/cubieboard2$
bitbake core-image-sato
Loading cache: 100% |#############################
############################################################
########################################| Time: 0:00:00
Loaded 2168 entries from dependency cache.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION        = "1.34.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "universal-4.8"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "cubieboard2"
DISTRO            = "poky"
DISTRO_VERSION    = "2.3"
TUNE_FEATURES     = "arm armv7ve vfp neon vfpv4 callconvention-hard
cortexa7"
TARGET_FPU        = "hard"
meta
meta-poky         = "pyro:f0d128ea0dfc2c403ff53a1ac1db3521854b63d5"
meta-sunxi        = "pyro:0056643fcf2c496a0f2cf005fb67d626ab0e2c10"
meta-oe
meta-gnome        = "pyro:5e82995148a2844c6f483ae5ddd1438d87ea9fb7"

WARNING: /home/ngigijoe/src/git/pyro/poky/meta/recipes-sato/images/core-image-sato.bb.do_build
is tainted from a forced run                           | ETA:  0:00:16
Initialising tasks: 100% |#############################
############################################################
###################################| Time: 0:00:20
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: gtk+3-3.22.8-r0 do_configure: configure failed
ERROR: gtk+3-3.22.8-r0 do_configure: Function failed: do_configure (log
file is located at /home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/
cortexa7hf-neon-vfpv4-poky-linux-gnueabi/gtk+3/3.22.8-r0/
temp/log.do_configure.28607)
ERROR: Logfile of failure stored in: /home/ngigijoe/src/git/pyro/
poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-
linux-gnueabi/gtk+3/3.22.8-r0/temp/log.do_configure.28607
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
| NOTE: Executing ACLOCAL="aclocal --system-acdir=/home/ngigijoe/
src/git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-
vfpv4-poky-linux-gnueabi/gtk+3/3.22.8-r0/recipe-sysroot/usr/share/aclocal/"
autoreconf --verbose --install --force --exclude=autopoint -I
/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/
cortexa7hf-neon-vfpv4-poky-linux-gnueabi/gtk+3/3.22.8-r0/gtk+-3.22.8/m4/ -I
/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/
cortexa7hf-neon-vfpv4-poky-linux-gnueabi/gtk+3/3.22.8-r0/gtk+-3.22.8/m4macros/
-I /home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/
cortexa7hf-neon-vfpv4-poky-linux-gnueabi/gtk+3/3.22.8-r0/
recipe-sysroot-native/usr/share/aclocal/
| NOTE: Running ../gtk+-3.22.8/configure  --build=x86_64-linux
--host=arm-poky-linux-gnueabi           --target=arm-poky-linux-gnueabi
      --prefix=/usr           --exec_prefix=/usr
--bindir=/usr/bin           --sbindir=/usr/sbin
--libexecdir=/usr/libexec           --datadir=/usr/share
--sysconfdir=/etc           --sharedstatedir=/com
--localstatedir=/var           --libdir=/usr/lib
--includedir=/usr/include           --oldincludedir=/usr/include
--infodir=/usr/share/info           --mandir=/usr/share/man
--disable-silent-rules           --disable-dependency-tracking
--with-libtool-sysroot=/home/ngigijoe/src/git/pyro/poky/
cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-
linux-gnueabi/gtk+3/3.22.8-r0/recipe-sysroot --enable-introspection
--disable-gtk-doc                    --disable-glibtest
--disable-xinerama                  --enable-modules
--disable-cups                  --disable-colord
WAYLAND_PROTOCOLS_SYSROOT_DIR=/home/ngigijoe/src/git/pyro/
poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-
linux-gnueabi/gtk+3/3.22.8-r0/recipe-sysroot
--disable-static  --enable-glx --enable-opengl --enable-wayland-backend
--enable-x11-backend --enable-nls
| automake (GNU automake) 1.15
| Copyright (C) 2014 Free Software Foundation, Inc.
| License GPLv2+: GNU GPL version 2 or later <http://gnu.org/licenses/gpl-
2.0.html>
| This is free software: you are free to change and redistribute it.
| There is NO WARRANTY, to the extent permitted by law.
|
| Written by Tom Tromey <tromey@redhat.com>
|        and Alexandre Duret-Lutz <adl@gnu.org>.
| AUTOV is 1
| autoreconf: Entering directory `.'
| autoreconf: running: aclocal --system-acdir=/home/ngigijoe/
src/git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-
vfpv4-poky-linux-gnueabi/gtk+3/3.22.8-r0/recipe-sysroot/usr/share/aclocal/
-I /home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/
cortexa7hf-neon-vfpv4-poky-linux-gnueabi/gtk+3/3.22.8-r0/gtk+-3.22.8/m4/ -I
/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/
cortexa7hf-neon-vfpv4-poky-linux-gnueabi/gtk+3/3.22.8-r0/gtk+-3.22.8/m4macros/
-I /home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/
cortexa7hf-neon-vfpv4-poky-linux-gnueabi/gtk+3/3.22.8-r0/
recipe-sysroot-native/usr/share/aclocal/ --force -I m4 ${ACLOCAL_FLAGS}
| autoreconf: configure.ac: tracing
| autoreconf: running: libtoolize --copy --force
| libtoolize: putting auxiliary files in AC_CONFIG_AUX_DIR, 'build-aux'.
| libtoolize: copying file 'build-aux/ltmain.sh'
| libtoolize: putting macros in AC_CONFIG_MACRO_DIRS, 'm4'.
| libtoolize: copying file 'm4/libtool.m4'
| libtoolize: copying file 'm4/ltoptions.m4'
| libtoolize: copying file 'm4/ltsugar.m4'
| libtoolize: copying file 'm4/ltversion.m4'
| libtoolize: copying file 'm4/lt~obsolete.m4'
| autoreconf: running: /home/ngigijoe/src/git/pyro/
poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-
linux-gnueabi/gtk+3/3.22.8-r0/recipe-sysroot-native/usr/bin/autoconf
--include=/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/
work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/gtk+3/3.22.8-r0/gtk+-3.22.8/m4/
--include=/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/
work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/gtk+3/3.22.8-r0/gtk+-3.22.8/m4macros/
--include=/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/
work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/gtk+3/3.22.
8-r0/recipe-sysroot-native/usr/share/aclocal/ --force
| autoreconf: running: /home/ngigijoe/src/git/pyro/
poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-
linux-gnueabi/gtk+3/3.22.8-r0/recipe-sysroot-native/usr/bin/autoheader
--include=/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/
work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/gtk+3/3.22.8-r0/gtk+-3.22.8/m4/
--include=/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/
work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/gtk+3/3.22.8-r0/gtk+-3.22.8/m4macros/
--include=/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/
work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/gtk+3/3.22.
8-r0/recipe-sysroot-native/usr/share/aclocal/ --force
| autoreconf: running: automake --add-missing --copy --force-missing
| configure.ac:157: installing 'build-aux/compile'
| configure.ac:84: installing 'build-aux/missing'
| demos/gtk-demo/Makefile.am: installing 'build-aux/depcomp'
| gdk/Makefile.am:137: warning: source file 'deprecated/gdkcolor.c' is in a
subdirectory,
| gdk/Makefile.am:137: but option 'subdir-objects' is disabled
| automake: warning: possible forward-incompatibility.
| automake: At least a source file is in a subdirectory, but the
'subdir-objects'
| automake: automake option hasn't been enabled.  For now, the
corresponding output
| automake: object file(s) will be placed in the top-level directory.
However,
| automake: this behaviour will change in future Automake versions: they
will
| automake: unconditionally cause object files to be placed in the same
subdirectory
| automake: of the corresponding sources.
| automake: You are advised to start using 'subdir-objects' option
throughout your
| automake: project, to avoid future incompatibilities.
| tests/Makefile.am:331: warning: source file '../gtk/gtkcairoblur.c' is in
a subdirectory,
| tests/Makefile.am:331: but option 'subdir-objects' is disabled
| tests/Makefile.am:547: warning: variable 'foreigndrawing_SOURCES' is
defined but no program or
| tests/Makefile.am:547: library has 'foreigndrawing' as canonical name
(possible typo)
| tests/Makefile.am:535: warning: variable 'gdkgears_SOURCES' is defined
but no program or
| tests/Makefile.am:535: library has 'gdkgears' as canonical name (possible
typo)
| tests/Makefile.am:540: warning: variable 'testglblending_SOURCES' is
defined but no program or
| tests/Makefile.am:540: library has 'testglblending' as canonical name
(possible typo)
| tests/Makefile.am:308: warning: variable 'foreigndrawing_DEPENDENCIES' is
defined but no program or
| tests/Makefile.am:308: library has 'foreigndrawing' as canonical name
(possible typo)
| testsuite/gtk/Makefile.am:124: warning: source file
'$(top_srcdir)/gtk/gtkallocatedbitmask.c'
is in a subdirectory,
| testsuite/gtk/Makefile.am:124: but option 'subdir-objects' is disabled
| testsuite/gtk/Makefile.am:139: warning: source file
'$(top_srcdir)/gtk/gtkkeyhash.c' is in a subdirectory,
| testsuite/gtk/Makefile.am:139: but option 'subdir-objects' is disabled
| testsuite/gtk/Makefile.am:139: warning: source file
'$(top_builddir)/gtk/gtkresources.c'
is in a subdirectory,
| testsuite/gtk/Makefile.am:139: but option 'subdir-objects' is disabled
| testsuite/gtk/Makefile.am:139: warning: source file
'$(top_srcdir)/gtk/gtkprivate.c' is in a subdirectory,
| testsuite/gtk/Makefile.am:139: but option 'subdir-objects' is disabled
| testsuite/gtk/Makefile.am:116: warning: source file
'$(top_srcdir)/gtk/gtkrbtree.c' is in a subdirectory,
| testsuite/gtk/Makefile.am:116: but option 'subdir-objects' is disabled
| autoreconf: running: gnu-configize
| autoreconf: Leaving directory `.'
| configure: loading site script /home/ngigijoe/src/git/pyro/
poky/meta/site/endian-little
| configure: loading site script /home/ngigijoe/src/git/pyro/
poky/meta/site/arm-common
| configure: loading site script /home/ngigijoe/src/git/pyro/
poky/meta/site/arm-32
| configure: loading site script /home/ngigijoe/src/git/pyro/
poky/meta/site/common-linux
| configure: loading site script /home/ngigijoe/src/git/pyro/
poky/meta/site/common-glibc
| configure: loading site script /home/ngigijoe/src/git/pyro/
poky/meta/site/arm-linux
| configure: loading site script /home/ngigijoe/src/git/pyro/
poky/meta/site/common
| configure: loading site script /home/ngigijoe/src/git/pyro/
poky/meta-openembedded/meta-oe/site/endian-little
| checking build system type... x86_64-pc-linux-gnu
| checking host system type... arm-poky-linux-gnueabi
| checking for a BSD-compatible install... /home/ngigijoe/src/git/pyro/
poky/cubieboard2/tmp/hosttools/install -c
| checking whether build environment is sane... yes
| checking for arm-poky-linux-gnueabi-strip... arm-poky-linux-gnueabi-strip
| checking for a thread-safe mkdir -p... /home/ngigijoe/src/git/pyro/
poky/cubieboard2/tmp/hosttools/mkdir -p
| checking for gawk... gawk
| checking whether make sets $(MAKE)... yes
| checking whether make supports nested variables... yes
| checking whether UID '1000' is supported by ustar format... yes
| checking whether GID '1000' is supported by ustar format... yes
| checking how to create a ustar tar archive... gnutar
| checking whether to enable maintainer-specific portions of Makefiles...
yes
| checking whether make supports nested variables... (cached) yes
| checking for arm-poky-linux-gnueabi-gcc... arm-poky-linux-gnueabi-gcc
-march=armv7ve -mfpu=neon-vfpv4  -mfloat-abi=hard -mcpu=cortex-a7
--sysroot=/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/
work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/gtk+3/3.22.8-r0/recipe-sysroot
| checking whether the C compiler works... yes
| checking for C compiler default output file name... a.out
| checking for suffix of executables...
| checking whether we are cross compiling... yes
| checking for suffix of object files... o
| checking whether we are using the GNU C compiler... yes
| checking whether arm-poky-linux-gnueabi-gcc  -march=armv7ve
-mfpu=neon-vfpv4  -mfloat-abi=hard -mcpu=cortex-a7
--sysroot=/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/
work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/gtk+3/3.22.8-r0/recipe-sysroot
accepts -g... yes
| checking for arm-poky-linux-gnueabi-gcc  -march=armv7ve -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7 --sysroot=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/gtk+3/3.22.8-r0/recipe-sysroot option to accept ISO
C89... none needed
| checking whether arm-poky-linux-gnueabi-gcc  -march=armv7ve
-mfpu=neon-vfpv4  -mfloat-abi=hard -mcpu=cortex-a7
--sysroot=/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/
work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/gtk+3/3.22.8-r0/recipe-sysroot
understands -c and -o together... yes
| checking for style of include used by make... GNU
| checking dependency style of arm-poky-linux-gnueabi-gcc  -march=armv7ve
-mfpu=neon-vfpv4  -mfloat-abi=hard -mcpu=cortex-a7
--sysroot=/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/
work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/gtk+3/3.22.8-r0/recipe-sysroot...
none
| checking how to run the C preprocessor... arm-poky-linux-gnueabi-gcc -E
--sysroot=/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/
work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/gtk+3/3.22.8-r0/recipe-sysroot
-march=armv7ve -mfpu=neon-vfpv4  -mfloat-abi=hard -mcpu=cortex-a7
| checking for gcc... gcc
| checking whether we are using the GNU C compiler... (cached) yes
| checking whether gcc  accepts -g... yes
| checking for gcc  option to accept ISO C89... (cached) none needed
| checking whether gcc  understands -c and -o together... (cached) yes
| checking dependency style of gcc ... (cached) none
| checking how to run the C preprocessor... gcc  -E
| checking whether arm-poky-linux-gnueabi-gcc  -march=armv7ve
-mfpu=neon-vfpv4  -mfloat-abi=hard -mcpu=cortex-a7
--sysroot=/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/
work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/gtk+3/3.22.8-r0/recipe-sysroot
and cc understand -c and -o together... yes
| checking whether make sets $(MAKE)... (cached) yes
| checking for grep that handles long lines and -e...
/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/hosttools/grep
| checking for egrep...
/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/hosttools/grep
-E
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
| checking minix/config.h usability... no
| checking minix/config.h presence... no
| checking for minix/config.h... no
| checking whether it is safe to define __EXTENSIONS__... yes
| checking for a sed that does not truncate output... (cached) sed
| checking whether NLS is requested... yes
| checking for msgfmt... /home/ngigijoe/src/git/pyro/
poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-
linux-gnueabi/gtk+3/3.22.8-r0/recipe-sysroot-native/usr/bin/msgfmt
| checking for gmsgfmt... /home/ngigijoe/src/git/pyro/
poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-
linux-gnueabi/gtk+3/3.22.8-r0/recipe-sysroot-native/usr/bin/msgfmt
| checking for xgettext... /home/ngigijoe/src/git/pyro/
poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-
linux-gnueabi/gtk+3/3.22.8-r0/recipe-sysroot-native/usr/bin/xgettext
| checking for msgmerge... /home/ngigijoe/src/git/pyro/
poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-
linux-gnueabi/gtk+3/3.22.8-r0/recipe-sysroot-native/usr/bin/msgmerge
| checking for ld used by arm-poky-linux-gnueabi-gcc  -march=armv7ve
-mfpu=neon-vfpv4  -mfloat-abi=hard -mcpu=cortex-a7
--sysroot=/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/
work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/gtk+3/3.22.8-r0/recipe-sysroot...
arm-poky-linux-gnueabi-ld --sysroot=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/gtk+3/3.22.8-r0/recipe-sysroot
| checking if the linker (arm-poky-linux-gnueabi-ld
--sysroot=/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/
work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/gtk+3/3.22.8-r0/recipe-sysroot
) is GNU ld... yes
| checking for shared library run path origin... done
| checking for CFPreferencesCopyAppValue... no
| checking for CFLocaleCopyCurrent... no
| checking for GNU gettext in libc... yes
| checking whether to use NLS... yes
| checking where the gettext function comes from... libc
| checking for native Win32... no
| checking for arm-poky-linux-gnueabi-c++... arm-poky-linux-gnueabi-g++
-march=armv7ve -mfpu=neon-vfpv4  -mfloat-abi=hard -mcpu=cortex-a7
--sysroot=/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/
work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/gtk+3/3.22.8-r0/recipe-sysroot
| checking whether we are using the GNU C++ compiler... yes
| checking whether arm-poky-linux-gnueabi-g++  -march=armv7ve
-mfpu=neon-vfpv4  -mfloat-abi=hard -mcpu=cortex-a7
--sysroot=/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/
work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/gtk+3/3.22.8-r0/recipe-sysroot
accepts -g... yes
| checking dependency style of arm-poky-linux-gnueabi-g++  -march=armv7ve
-mfpu=neon-vfpv4  -mfloat-abi=hard -mcpu=cortex-a7
--sysroot=/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/
work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/gtk+3/3.22.8-r0/recipe-sysroot...
none
| checking how to print strings... printf
| checking for a sed that does not truncate output... (cached) sed
| checking for fgrep...
/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/hosttools/grep
-F
| checking for ld used by arm-poky-linux-gnueabi-gcc  -march=armv7ve
-mfpu=neon-vfpv4  -mfloat-abi=hard -mcpu=cortex-a7
--sysroot=/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/
work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/gtk+3/3.22.8-r0/recipe-sysroot...
arm-poky-linux-gnueabi-ld --sysroot=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/gtk+3/3.22.8-r0/recipe-sysroot
| checking if the linker (arm-poky-linux-gnueabi-ld
--sysroot=/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/
work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/gtk+3/3.22.8-r0/recipe-sysroot
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
| checking for arm-poky-linux-gnueabi-ld --sysroot=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/gtk+3/3.22.8-r0/recipe-sysroot  option to reload object
files... -r
| checking for arm-poky-linux-gnueabi-objdump...
arm-poky-linux-gnueabi-objdump
| checking how to recognize dependent libraries... pass_all
| checking for arm-poky-linux-gnueabi-dlltool... no
| checking for dlltool... no
| checking how to associate runtime and link libraries... printf %s\n
| checking for arm-poky-linux-gnueabi-ar... arm-poky-linux-gnueabi-ar
| checking for archiver @FILE support... @
| checking for arm-poky-linux-gnueabi-strip... (cached)
arm-poky-linux-gnueabi-strip
| checking for arm-poky-linux-gnueabi-ranlib...
arm-poky-linux-gnueabi-ranlib
| checking command to parse arm-poky-linux-gnueabi-nm output from
arm-poky-linux-gnueabi-gcc  -march=armv7ve -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7 --sysroot=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/gtk+3/3.22.8-r0/recipe-sysroot object... ok
| checking for sysroot... /home/ngigijoe/src/git/pyro/
poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-
linux-gnueabi/gtk+3/3.22.8-r0/recipe-sysroot
| checking for a working dd... /home/ngigijoe/src/git/pyro/
poky/cubieboard2/tmp/hosttools/dd
| checking how to truncate binary pipes... /home/ngigijoe/src/git/pyro/
poky/cubieboard2/tmp/hosttools/dd bs=4096 count=1
| checking for arm-poky-linux-gnueabi-mt... no
| checking for mt... no
| checking if : is a manifest tool... no
| checking for dlfcn.h... yes
| checking for objdir... .libs
| checking if arm-poky-linux-gnueabi-gcc  -march=armv7ve -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7 --sysroot=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/gtk+3/3.22.8-r0/recipe-sysroot supports -fno-rtti
-fno-exceptions... no
| checking for arm-poky-linux-gnueabi-gcc  -march=armv7ve -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7 --sysroot=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/gtk+3/3.22.8-r0/recipe-sysroot option to produce PIC...
-fPIC -DPIC
| checking if arm-poky-linux-gnueabi-gcc  -march=armv7ve -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7 --sysroot=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/gtk+3/3.22.8-r0/recipe-sysroot PIC flag -fPIC -DPIC
works... yes
| checking if arm-poky-linux-gnueabi-gcc  -march=armv7ve -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7 --sysroot=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/gtk+3/3.22.8-r0/recipe-sysroot static flag -static
works... yes
| checking if arm-poky-linux-gnueabi-gcc  -march=armv7ve -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7 --sysroot=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/gtk+3/3.22.8-r0/recipe-sysroot supports -c -o file.o...
yes
| checking if arm-poky-linux-gnueabi-gcc  -march=armv7ve -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7 --sysroot=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/gtk+3/3.22.8-r0/recipe-sysroot supports -c -o file.o...
(cached) yes
| checking whether the arm-poky-linux-gnueabi-gcc  -march=armv7ve
-mfpu=neon-vfpv4  -mfloat-abi=hard -mcpu=cortex-a7
--sysroot=/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/
work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/gtk+3/3.22.8-r0/recipe-sysroot
linker (arm-poky-linux-gnueabi-ld --sysroot=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/gtk+3/3.22.8-r0/recipe-sysroot ) supports shared
libraries... yes
| checking whether -lc should be explicitly linked in... no
| checking dynamic linker characteristics... GNU/Linux ld.so
| checking how to hardcode library paths into programs... immediate
| checking whether stripping libraries is possible... yes
| checking if libtool supports shared libraries... yes
| checking whether to build shared libraries... yes
| checking whether to build static libraries... no
| checking how to run the C++ preprocessor... arm-poky-linux-gnueabi-g++
-march=armv7ve -mfpu=neon-vfpv4  -mfloat-abi=hard -mcpu=cortex-a7
--sysroot=/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/
work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/gtk+3/3.22.8-r0/recipe-sysroot
-E
| checking for ld used by arm-poky-linux-gnueabi-g++  -march=armv7ve
-mfpu=neon-vfpv4  -mfloat-abi=hard -mcpu=cortex-a7
--sysroot=/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/
work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/gtk+3/3.22.8-r0/recipe-sysroot...
arm-poky-linux-gnueabi-ld --sysroot=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/gtk+3/3.22.8-r0/recipe-sysroot
| checking if the linker (arm-poky-linux-gnueabi-ld
--sysroot=/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/
work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/gtk+3/3.22.8-r0/recipe-sysroot
) is GNU ld... yes
| checking whether the arm-poky-linux-gnueabi-g++  -march=armv7ve
-mfpu=neon-vfpv4  -mfloat-abi=hard -mcpu=cortex-a7
--sysroot=/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/
work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/gtk+3/3.22.8-r0/recipe-sysroot
linker (arm-poky-linux-gnueabi-ld --sysroot=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/gtk+3/3.22.8-r0/recipe-sysroot ) supports shared
libraries... yes
| checking for arm-poky-linux-gnueabi-g++  -march=armv7ve -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7 --sysroot=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/gtk+3/3.22.8-r0/recipe-sysroot option to produce PIC...
-fPIC -DPIC
| checking if arm-poky-linux-gnueabi-g++  -march=armv7ve -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7 --sysroot=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/gtk+3/3.22.8-r0/recipe-sysroot PIC flag -fPIC -DPIC
works... yes
| checking if arm-poky-linux-gnueabi-g++  -march=armv7ve -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7 --sysroot=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/gtk+3/3.22.8-r0/recipe-sysroot static flag -static
works... yes
| checking if arm-poky-linux-gnueabi-g++  -march=armv7ve -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7 --sysroot=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/gtk+3/3.22.8-r0/recipe-sysroot supports -c -o file.o...
yes
| checking if arm-poky-linux-gnueabi-g++  -march=armv7ve -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7 --sysroot=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/gtk+3/3.22.8-r0/recipe-sysroot supports -c -o file.o...
(cached) yes
| checking whether the arm-poky-linux-gnueabi-g++  -march=armv7ve
-mfpu=neon-vfpv4  -mfloat-abi=hard -mcpu=cortex-a7
--sysroot=/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/
work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/gtk+3/3.22.8-r0/recipe-sysroot
linker (arm-poky-linux-gnueabi-ld --sysroot=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/gtk+3/3.22.8-r0/recipe-sysroot ) supports shared
libraries... yes
| checking dynamic linker characteristics... (cached) GNU/Linux ld.so
| checking how to hardcode library paths into programs... immediate
| configure: creating ./config.lt
| config.lt: creating arm-poky-linux-gnueabi-libtool
| checking for special C compiler options needed for large files... no
| checking for _FILE_OFFSET_BITS value needed for large files... 64
| checking dependency style of arm-poky-linux-gnueabi-gcc  -march=armv7ve
-mfpu=neon-vfpv4  -mfloat-abi=hard -mcpu=cortex-a7
--sysroot=/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/
work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/gtk+3/3.22.8-r0/recipe-sysroot...
none
| checking for arm-poky-linux-gnueabi-nm... /home/ngigijoe/src/git/pyro/
poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-
linux-gnueabi/gtk+3/3.22.8-r0/recipe-sysroot-native/usr/bin/
arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-nm
| checking for some Win32 platform... no
| checking for shm_open in -lrt... yes
| checking for posix_fallocate... yes
| checking for flockfile... yes
| checking for _lock_file... no
| checking for arm-poky-linux-gnueabi-pkg-config... no
| checking for pkg-config... /home/ngigijoe/src/git/pyro/
poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-
linux-gnueabi/gtk+3/3.22.8-r0/recipe-sysroot-native/usr/bin/pkg-config
| configure: WARNING: using cross tools not prefixed with host triplet
| checking pkg-config is at least version 0.9.0... yes
| checking for wayland-scanner... /home/ngigijoe/src/git/pyro/
poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-
linux-gnueabi/gtk+3/3.22.8-r0/recipe-sysroot-native/usr/bin/wayland-scanner
| checking whether build environment is sane... yes
| checking for BASE_DEPENDENCIES... yes
| checking for CAIRO_BACKEND... yes
| checking for GMODULE... yes
| checking whether to write dependencies into .pc files... no
| checking for perl5... no
| checking for perl... /home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/
hosttools/perl
| checking for lstat... yes
| checking for mkstemp... yes
| checking for localtime_r... yes
| checking for _NL_TIME_FIRST_WEEKDAY... yes
| checking for _NL_MEASUREMENT_MEASUREMENT... yes
| checking for _NL_PAPER_HEIGHT... yes
| checking for _NL_PAPER_WIDTH... yes
| checking for extra flags to get ANSI library prototypes... none needed
| checking for the BeOS... no
| checking for HP-UX... no
| checking for arm-poky-linux-gnueabi-pkg-config...
/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/
cortexa7hf-neon-vfpv4-poky-linux-gnueabi/gtk+3/3.22.8-r0/
recipe-sysroot-native/usr/bin/pkg-config
| checking pkg-config is at least version 0.16... yes
| checking for GLIB - version >= 2.49.4... yes (version 2.50.3)
| checking build system's pkg-config is at least version 0.16... yes
| checking for bind_textdomain_codeset... yes
| checking linux/memfd.h usability... yes
| checking linux/memfd.h presence... yes
| checking for linux/memfd.h... yes
| checking sys/mman.h usability... yes
| checking sys/mman.h presence... yes
| checking for sys/mman.h... yes
| checking sys/time.h usability... yes
| checking sys/time.h presence... yes
| checking for sys/time.h... yes
| checking for unistd.h... (cached) yes
| checking ftw.h usability... yes
| checking ftw.h presence... yes
| checking for ftw.h... yes
| checking for GNU ftw extensions... yes
| checking for stdlib.h... (cached) yes
| checking for unistd.h... (cached) yes
| checking for sys/param.h... yes
| checking for getpagesize... (cached) yes
| NOTE: The following config.log files may provide further information.
| NOTE: /home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/
cortexa7hf-neon-vfpv4-poky-linux-gnueabi/gtk+3/3.22.8-r0/build/config.log
| ERROR: configure failed
| checking for working mmap... (cached) yes
| checking for mallinfo... yes
| checking for getresuid... yes
| checking for uid_t in sys/types.h... (cached) {ac_cv_type_uid_t=yes}
| checking for round in -lm... yes
| checking for round... yes
| checking for rint... yes
| checking for nearbyint... yes
| checking for sincos... yes
| checking for exp2... yes
| checking for log2... yes
| checking whether isnan is declared... yes
| checking whether isinf is declared... yes
| checking crt_externs.h usability... no
| checking crt_externs.h presence... no
| checking for crt_externs.h... no
| checking for _NSGetEnviron... no
| checking whether to build dynamic modules... yes
| checking whether dynamic modules work... yes
| checking immodules to build...
| checking sys/systeminfo.h usability... no
| checking sys/systeminfo.h presence... no
| checking for sys/systeminfo.h... no
| checking sys/sysinfo.h usability... yes
| checking sys/sysinfo.h presence... yes
| checking for sys/sysinfo.h... yes
| checking for XOpenDisplay... yes
| checking for XextFindDisplay... yes
| checking for xReply... yes
| checking for XkbQueryExtension... yes
| checking for XShapeCombineMask... yes
| checking for XSyncQueryExtension... yes
| checking for X11/extensions/sync.h... yes
| checking for XGetEventData... yes
| checking X11/extensions/XInput2.h usability... yes
| checking X11/extensions/XInput2.h presence... yes
| checking for X11/extensions/XInput2.h... yes
| checking for XIAllowTouchEvents... yes
| checking for XIScrollClassInfo.number... yes
| checking Pango flags... -I/home/ngigijoe/src/git/pyro/
poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-
linux-gnueabi/gtk+3/3.22.8-r0/recipe-sysroot/usr/include/pango-1.0
-I/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/
cortexa7hf-neon-vfpv4-poky-linux-gnueabi/gtk+3/3.22.8-r0/
recipe-sysroot/usr/include/harfbuzz -I/home/ngigijoe/src/git/pyro/
poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-
linux-gnueabi/gtk+3/3.22.8-r0/recipe-sysroot/usr/include/pango-1.0
-I/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/
cortexa7hf-neon-vfpv4-poky-linux-gnueabi/gtk+3/3.22.8-r0/
recipe-sysroot/usr/include/cairo -I/home/ngigijoe/src/git/pyro/
poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-
linux-gnueabi/gtk+3/3.22.8-r0/recipe-sysroot/usr/include/glib-2.0
-I/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/
cortexa7hf-neon-vfpv4-poky-linux-gnueabi/gtk+3/3.22.8-r0/
recipe-sysroot/usr/lib/glib-2.0/include -I/home/ngigijoe/src/git/pyro/
poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-
linux-gnueabi/gtk+3/3.22.8-r0/recipe-sysroot/usr/include/pixman-1
-I/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/
cortexa7hf-neon-vfpv4-poky-linux-gnueabi/gtk+3/3.22.8-r0/
recipe-sysroot/usr/include/freetype2 -I/home/ngigijoe/src/git/pyro/
poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-
linux-gnueabi/gtk+3/3.22.8-r0/recipe-sysroot/usr/include/libpng16
-lpangocairo-1.0 -lpango-1.0 -lgobject-2.0 -lglib-2.0 -lcairo
| checking for GDK_DEP... no
| configure: error: Package requirements (pango pangocairo gdk-pixbuf-2.0
>= 2.30.0 cairo >= 1.14.0 cairo-gobject >= 1.14.0 gio-unix-2.0 >= 2.49.4
fontconfig x11 xext xi xrandr xcursor xfixes xcomposite xdamage
wayland-client >= 1.9.91 wayland-protocols >= 1.7 xkbcommon >= 0.2.0
wayland-cursor >= 1.9.91 wayland-egl   cairo-xlib cairo epoxy >= 1.0) were
not met:
|
| No package 'wayland-egl' found
|
| Consider adjusting the PKG_CONFIG_PATH environment variable if you
| installed software in a non-standard prefix.
|
| Alternatively, you may set the environment variables GDK_DEP_CFLAGS
| and GDK_DEP_LIBS to avoid the need to call pkg-config.
| See the pkg-config man page for more details.
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_configure (log file is located at
/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/
cortexa7hf-neon-vfpv4-poky-linux-gnueabi/gtk+3/3.22.8-r0/
temp/log.do_configure.28607)
ERROR: Task (/home/ngigijoe/src/git/pyro/poky/meta/recipes-gnome/gtk+/
gtk+3_3.22.8.bb:do_configure) failed with exit code '1'
ERROR: xserver-xorg-2_1.19.1-r0 do_configure: configure failed
ERROR: xserver-xorg-2_1.19.1-r0 do_configure: Function failed: do_configure
(log file is located at /home/ngigijoe/src/git/pyro/
poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-
linux-gnueabi/xserver-xorg/2_1.19.1-r0/temp/log.do_configure.28609)
ERROR: Logfile of failure stored in: /home/ngigijoe/src/git/pyro/
poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-
linux-gnueabi/xserver-xorg/2_1.19.1-r0/temp/log.do_configure.28609
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
| NOTE: Executing ACLOCAL="aclocal --system-acdir=/home/ngigijoe/
src/git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-
vfpv4-poky-linux-gnueabi/xserver-xorg/2_1.19.1-r0/recipe-sysroot/usr/share/aclocal/"
autoreconf --verbose --install --force --exclude=autopoint -I
/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/
cortexa7hf-neon-vfpv4-poky-linux-gnueabi/xserver-xorg/2_1.19.1-r0/xorg-server-1.19.1/
-I /home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/
cortexa7hf-neon-vfpv4-poky-linux-gnueabi/xserver-xorg/2_
1.19.1-r0/xorg-server-1.19.1/m4/ -I /home/ngigijoe/src/git/pyro/
poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-
linux-gnueabi/xserver-xorg/2_1.19.1-r0/recipe-sysroot-
native/usr/share/aclocal/
| automake (GNU automake) 1.15
| Copyright (C) 2014 Free Software Foundation, Inc.
| License GPLv2+: GNU GPL version 2 or later <http://gnu.org/licenses/gpl-
2.0.html>
| This is free software: you are free to change and redistribute it.
| There is NO WARRANTY, to the extent permitted by law.
|
| Written by Tom Tromey <tromey@redhat.com>
|        and Alexandre Duret-Lutz <adl@gnu.org>.
| AUTOV is 1
| autoreconf: Entering directory `.'
| autoreconf: configure.ac: not using Gettext
| autoreconf: running: aclocal --system-acdir=/home/ngigijoe/
src/git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-
vfpv4-poky-linux-gnueabi/xserver-xorg/2_1.19.1-r0/recipe-sysroot/usr/share/aclocal/
-I /home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/
cortexa7hf-neon-vfpv4-poky-linux-gnueabi/xserver-xorg/2_1.19.1-r0/xorg-server-1.19.1/
-I /home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/
cortexa7hf-neon-vfpv4-poky-linux-gnueabi/xserver-xorg/2_
1.19.1-r0/xorg-server-1.19.1/m4/ -I /home/ngigijoe/src/git/pyro/
poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-
linux-gnueabi/xserver-xorg/2_1.19.1-r0/recipe-sysroot-native/usr/share/aclocal/
--force -I m4
| autoreconf: configure.ac: tracing
| autoreconf: running: libtoolize --copy --force
| libtoolize: putting auxiliary files in '.'.
| libtoolize: copying file './ltmain.sh'
| libtoolize: putting macros in AC_CONFIG_MACRO_DIRS, 'm4'.
| libtoolize: copying file 'm4/libtool.m4'
| libtoolize: copying file 'm4/ltoptions.m4'
| libtoolize: copying file 'm4/ltsugar.m4'
| libtoolize: copying file 'm4/ltversion.m4'
| libtoolize: copying file 'm4/lt~obsolete.m4'
| autoreconf: running: /home/ngigijoe/src/git/pyro/
poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-
linux-gnueabi/xserver-xorg/2_1.19.1-r0/recipe-sysroot-native/usr/bin/autoconf
--include=/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/
work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/xserver-
xorg/2_1.19.1-r0/xorg-server-1.19.1/ --include=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/xserver-xorg/2_1.19.1-r0/xorg-server-1.19.1/m4/
--include=/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/
work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/xserver-
xorg/2_1.19.1-r0/recipe-sysroot-native/usr/share/aclocal/ --force
| autoreconf: running: /home/ngigijoe/src/git/pyro/
poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-
linux-gnueabi/xserver-xorg/2_1.19.1-r0/recipe-sysroot-native/usr/bin/autoheader
--include=/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/
work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/xserver-
xorg/2_1.19.1-r0/xorg-server-1.19.1/ --include=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/xserver-xorg/2_1.19.1-r0/xorg-server-1.19.1/m4/
--include=/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/
work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/xserver-
xorg/2_1.19.1-r0/recipe-sysroot-native/usr/share/aclocal/ --force
| autoreconf: running: automake --add-missing --copy --force-missing
| configure.ac:35: installing './compile'
| configure.ac:34: installing './missing'
| Xext/Makefile.am: installing './depcomp'
| hw/dmx/Makefile.am:25: warning: source file
'$(top_srcdir)/mi/miinitext.c' is in a subdirectory,
| hw/dmx/Makefile.am:25: but option 'subdir-objects' is disabled
| automake: warning: possible forward-incompatibility.
| automake: At least a source file is in a subdirectory, but the
'subdir-objects'
| automake: automake option hasn't been enabled.  For now, the
corresponding output
| automake: object file(s) will be placed in the top-level directory.
However,
| automake: this behaviour will change in future Automake versions: they
will
| automake: unconditionally cause object files to be placed in the same
subdirectory
| automake: of the corresponding sources.
| automake: You are advised to start using 'subdir-objects' option
throughout your
| automake: project, to avoid future incompatibilities.
| hw/dmx/Makefile.am:6: warning: source file '$(top_srcdir)/Xext/panoramiX.c'
is in a subdirectory,
| hw/dmx/Makefile.am:6: but option 'subdir-objects' is disabled
| hw/dmx/config/Makefile.am:23: warning: source file
'$(top_srcdir)/os/strlcpy.c' is in a subdirectory,
| hw/dmx/config/Makefile.am:23: but option 'subdir-objects' is disabled
| hw/dmx/config/Makefile.am:42: warning: source file
'$(top_srcdir)/hw/dmx/dmxlog.c' is in a subdirectory,
| hw/dmx/config/Makefile.am:42: but option 'subdir-objects' is disabled
| hw/kdrive/src/Makefile.am:15: warning: source file
'$(top_srcdir)/mi/miinitext.c' is in a subdirectory,
| hw/kdrive/src/Makefile.am:15: but option 'subdir-objects' is disabled
| hw/vfb/Makefile.am:9: warning: source file '$(top_srcdir)/mi/miinitext.c'
is in a subdirectory,
| hw/vfb/Makefile.am:9: but option 'subdir-objects' is disabled
| hw/xfree86/dixmods/Makefile.am:47: warning: source file
'$(top_srcdir)/mi/miinitext.c' is in a subdirectory,
| hw/xfree86/dixmods/Makefile.am:47: but option 'subdir-objects' is disabled
| hw/xfree86/glamor_egl/Makefile.am:24: warning: source file
'$(top_srcdir)/glamor/glamor_egl.c' is in a subdirectory,
| hw/xfree86/glamor_egl/Makefile.am:24: but option 'subdir-objects' is
disabled
| hw/xfree86/glamor_egl/Makefile.am:24: warning: source file
'$(top_srcdir)/glamor/glamor_eglmodule.c' is in a subdirectory,
| hw/xfree86/glamor_egl/Makefile.am:24: but option 'subdir-objects' is
disabled
| hw/xfree86/int10/Makefile.am:43: warning: source file
'$(srcdir)/../os-support/linux/int10/vm86/linux_vm86.c' is in a
subdirectory,
| hw/xfree86/int10/Makefile.am:43: but option 'subdir-objects' is disabled
| hw/xfree86/int10/Makefile.am:43: warning: source file
'$(srcdir)/../os-support/linux/int10/linux.c' is in a subdirectory,
| hw/xfree86/int10/Makefile.am:43: but option 'subdir-objects' is disabled
| hw/xfree86/os-support/bsd/Makefile.am:57: warning: source file
'$(srcdir)/../shared/posix_tty.c' is in a subdirectory,
| hw/xfree86/os-support/bsd/Makefile.am:57: but option 'subdir-objects' is
disabled
| hw/xfree86/os-support/bsd/Makefile.am:57: warning: source file
'$(srcdir)/../shared/sigio.c' is in a subdirectory,
| hw/xfree86/os-support/bsd/Makefile.am:57: but option 'subdir-objects' is
disabled
| hw/xfree86/os-support/bsd/Makefile.am:57: warning: source file
'$(srcdir)/../shared/vidmem.c' is in a subdirectory,
| hw/xfree86/os-support/bsd/Makefile.am:57: but option 'subdir-objects' is
disabled
| hw/xfree86/os-support/bsd/Makefile.am:42: warning: source file
'$(srcdir)/../shared/ioperm_noop.c' is in a subdirectory,
| hw/xfree86/os-support/bsd/Makefile.am:42: but option 'subdir-objects' is
disabled
| hw/xfree86/os-support/bsd/Makefile.am:23: warning: source file
'$(srcdir)/../shared/agp_noop.c' is in a subdirectory,
| hw/xfree86/os-support/bsd/Makefile.am:23: but option 'subdir-objects' is
disabled
| hw/xfree86/os-support/bsd/Makefile.am:23: warning: source file
'$(srcdir)/../linux/lnx_agp.c' is in a subdirectory,
| hw/xfree86/os-support/bsd/Makefile.am:23: but option 'subdir-objects' is
disabled
| hw/xfree86/os-support/bsd/Makefile.am:5: warning: source file
'$(srcdir)/../shared/pm_noop.c' is in a subdirectory,
| hw/xfree86/os-support/bsd/Makefile.am:5: but option 'subdir-objects' is
disabled
| hw/xfree86/os-support/bsd/Makefile.am:5: warning: source file
'$(srcdir)/bsd_apm.c' is in a subdirectory,
| hw/xfree86/os-support/bsd/Makefile.am:5: but option 'subdir-objects' is
disabled
| hw/xfree86/os-support/bsd/Makefile.am:5: warning: source file
'$(srcdir)/bsd_kqueue_apm.c' is in a subdirectory,
| hw/xfree86/os-support/bsd/Makefile.am:5: but option 'subdir-objects' is
disabled
| hw/xfree86/os-support/bsd/Makefile.am:15: warning: source file
'$(srcdir)/../shared/kmod_noop.c' is in a subdirectory,
| hw/xfree86/os-support/bsd/Makefile.am:15: but option 'subdir-objects' is
disabled
| hw/xfree86/os-support/hurd/Makefile.am:3: warning: source file
'$(srcdir)/../shared/VTsw_noop.c' is in a subdirectory,
| hw/xfree86/os-support/hurd/Makefile.am:3: but option 'subdir-objects' is
disabled
| hw/xfree86/os-support/hurd/Makefile.am:3: warning: source file
'$(srcdir)/../shared/posix_tty.c' is in a subdirectory,
| hw/xfree86/os-support/hurd/Makefile.am:3: but option 'subdir-objects' is
disabled
| hw/xfree86/os-support/hurd/Makefile.am:3: warning: source file
'$(srcdir)/../shared/vidmem.c' is in a subdirectory,
| hw/xfree86/os-support/hurd/Makefile.am:3: but option 'subdir-objects' is
disabled
| NOTE: Running ../xorg-server-1.19.1/configure  --build=x86_64-linux
      --host=arm-poky-linux-gnueabi           --target=arm-poky-linux-gnueabi
      --prefix=/usr           --exec_prefix=/usr
--bindir=/usr/bin           --sbindir=/usr/sbin
--libexecdir=/usr/libexec           --datadir=/usr/share
--sysconfdir=/etc           --sharedstatedir=/com
--localstatedir=/var           --libdir=/usr/lib
--includedir=/usr/include           --oldincludedir=/usr/include
--infodir=/usr/share/info           --mandir=/usr/share/man
--disable-silent-rules           --disable-dependency-tracking
--with-libtool-sysroot=/home/ngigijoe/src/git/pyro/poky/
cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-
linux-gnueabi/xserver-xorg/2_1.19.1-r0/recipe-sysroot
--with-fop=no                  --with-pic
--disable-static                  --disable-record
--disable-dmx                  --disable-xnest
--enable-xvfb                  --enable-composite
--without-dtrace                  --with-int10=x86emu
--sysconfdir=/etc/X11                  --localstatedir=/var
--with-xkb-output=/var/lib/xkb
WAYLAND_PROTOCOLS_SYSROOT_DIR=/home/ngigijoe/src/git/pyro/
poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-
linux-gnueabi/xserver-xorg/2_1.19.1-r0/recipe-sysroot  --disable-static
--enable-dri --enable-dri2 --enable-dri3 --enable-glamor --enable-glx
--with-sha1=libcrypto --without-systemd-daemon --enable-systemd-logind=no
--enable-config-udev --disable-libunwind --disable-xinerama
--without-xmlto --enable-xshmfence --enable-xwayland
| hw/xfree86/os-support/hurd/Makefile.am:3: warning: source file
'$(srcdir)/../shared/sigiostubs.c' is in a subdirectory,
| hw/xfree86/os-support/hurd/Makefile.am:3: but option 'subdir-objects' is
disabled
| hw/xfree86/os-support/hurd/Makefile.am:3: warning: source file
'$(srcdir)/../shared/pm_noop.c' is in a subdirectory,
| hw/xfree86/os-support/hurd/Makefile.am:3: but option 'subdir-objects' is
disabled
| hw/xfree86/os-support/hurd/Makefile.am:3: warning: source file
'$(srcdir)/../shared/kmod_noop.c' is in a subdirectory,
| hw/xfree86/os-support/hurd/Makefile.am:3: but option 'subdir-objects' is
disabled
| hw/xfree86/os-support/hurd/Makefile.am:3: warning: source file
'$(srcdir)/../shared/agp_noop.c' is in a subdirectory,
| hw/xfree86/os-support/hurd/Makefile.am:3: but option 'subdir-objects' is
disabled
| hw/xfree86/os-support/linux/Makefile.am:26: warning: source file
'$(srcdir)/../shared/VTsw_usl.c' is in a subdirectory,
| hw/xfree86/os-support/linux/Makefile.am:26: but option 'subdir-objects'
is disabled
| hw/xfree86/os-support/linux/Makefile.am:26: warning: source file
'$(srcdir)/../shared/posix_tty.c' is in a subdirectory,
| hw/xfree86/os-support/linux/Makefile.am:26: but option 'subdir-objects'
is disabled
| hw/xfree86/os-support/linux/Makefile.am:26: warning: source file
'$(srcdir)/../shared/vidmem.c' is in a subdirectory,
| hw/xfree86/os-support/linux/Makefile.am:26: but option 'subdir-objects'
is disabled
| hw/xfree86/os-support/linux/Makefile.am:26: warning: source file
'$(srcdir)/../shared/sigio.c' is in a subdirectory,
| hw/xfree86/os-support/linux/Makefile.am:26: but option 'subdir-objects'
is disabled
| hw/xfree86/os-support/solaris/Makefile.am:10: warning: source file
'$(srcdir)/../shared/agp_noop.c' is in a subdirectory,
| hw/xfree86/os-support/solaris/Makefile.am:10: but option 'subdir-objects'
is disabled
| hw/xfree86/os-support/solaris/Makefile.am:20: warning: source file
'$(srcdir)/../shared/kmod_noop.c' is in a subdirectory,
| hw/xfree86/os-support/solaris/Makefile.am:20: but option 'subdir-objects'
is disabled
| hw/xfree86/os-support/solaris/Makefile.am:20: warning: source file
'$(srcdir)/../shared/posix_tty.c' is in a subdirectory,
| hw/xfree86/os-support/solaris/Makefile.am:20: but option 'subdir-objects'
is disabled
| hw/xfree86/os-support/solaris/Makefile.am:20: warning: source file
'$(srcdir)/../shared/sigio.c' is in a subdirectory,
| hw/xfree86/os-support/solaris/Makefile.am:20: but option 'subdir-objects'
is disabled
| hw/xfree86/os-support/solaris/Makefile.am:20: warning: source file
'$(srcdir)/../shared/vidmem.c' is in a subdirectory,
| hw/xfree86/os-support/solaris/Makefile.am:20: but option 'subdir-objects'
is disabled
| hw/xfree86/os-support/solaris/Makefile.am:4: warning: source file
'$(srcdir)/../shared/VTsw_noop.c' is in a subdirectory,
| hw/xfree86/os-support/solaris/Makefile.am:4: but option 'subdir-objects'
is disabled
| hw/xfree86/os-support/stub/Makefile.am:7: warning: source file
'$(srcdir)/../shared/VTsw_noop.c' is in a subdirectory,
| hw/xfree86/os-support/stub/Makefile.am:7: but option 'subdir-objects' is
disabled
| hw/xfree86/os-support/stub/Makefile.am:7: warning: source file
'$(srcdir)/../shared/agp_noop.c' is in a subdirectory,
| hw/xfree86/os-support/stub/Makefile.am:7: but option 'subdir-objects' is
disabled
| hw/xfree86/os-support/stub/Makefile.am:7: warning: source file
'$(srcdir)/../shared/ioperm_noop.c' is in a subdirectory,
| hw/xfree86/os-support/stub/Makefile.am:7: but option 'subdir-objects' is
disabled
| hw/xfree86/os-support/stub/Makefile.am:7: warning: source file
'$(srcdir)/../shared/kmod_noop.c' is in a subdirectory,
| hw/xfree86/os-support/stub/Makefile.am:7: but option 'subdir-objects' is
disabled
| hw/xfree86/os-support/stub/Makefile.am:7: warning: source file
'$(srcdir)/../shared/pm_noop.c' is in a subdirectory,
| hw/xfree86/os-support/stub/Makefile.am:7: but option 'subdir-objects' is
disabled
| hw/xfree86/os-support/stub/Makefile.am:7: warning: source file
'$(srcdir)/../shared/vidmem.c' is in a subdirectory,
| hw/xfree86/os-support/stub/Makefile.am:7: but option 'subdir-objects' is
disabled
| hw/xfree86/os-support/stub/Makefile.am:7: warning: source file
'$(srcdir)/../shared/posix_tty.c' is in a subdirectory,
| hw/xfree86/os-support/stub/Makefile.am:7: but option 'subdir-objects' is
disabled
| hw/xfree86/os-support/stub/Makefile.am:7: warning: source file
'$(srcdir)/../shared/sigio.c' is in a subdirectory,
| hw/xfree86/os-support/stub/Makefile.am:7: but option 'subdir-objects' is
disabled
| hw/xfree86/utils/cvt/Makefile.am:31: warning: source file
'$(top_srcdir)/hw/xfree86/modes/xf86cvt.c' is in a subdirectory,
| hw/xfree86/utils/cvt/Makefile.am:31: but option 'subdir-objects' is
disabled
| hw/xfree86/utils/cvt/Makefile.am:31: warning: source file
'$(top_srcdir)/os/xprintf.c' is in a subdirectory,
| hw/xfree86/utils/cvt/Makefile.am:31: but option 'subdir-objects' is
disabled
| hw/xnest/Makefile.am:9: warning: source file
'$(top_srcdir)/mi/miinitext.c' is in a subdirectory,
| hw/xnest/Makefile.am:9: but option 'subdir-objects' is disabled
| hw/xquartz/Makefile.am:22: warning: source file
'$(top_srcdir)/mi/miinitext.c' is in a subdirectory,
| hw/xquartz/Makefile.am:22: but option 'subdir-objects' is disabled
| hw/xquartz/mach-startup/Makefile.am:12: warning: source file
'$(top_srcdir)/os/strndup.c' is in a subdirectory,
| hw/xquartz/mach-startup/Makefile.am:12: but option 'subdir-objects' is
disabled
| hw/xwayland/Makefile.am:12: warning: source file
'$(top_srcdir)/Xext/dpmsstubs.c' is in a subdirectory,
| hw/xwayland/Makefile.am:12: but option 'subdir-objects' is disabled
| hw/xwayland/Makefile.am:12: warning: source file
'$(top_srcdir)/Xi/stubs.c' is in a subdirectory,
| hw/xwayland/Makefile.am:12: but option 'subdir-objects' is disabled
| hw/xwayland/Makefile.am:12: warning: source file
'$(top_srcdir)/mi/miinitext.c' is in a subdirectory,
| hw/xwayland/Makefile.am:12: but option 'subdir-objects' is disabled
| hw/xwin/Makefile.am:60: warning: source file
'$(top_srcdir)/mi/miinitext.c' is in a subdirectory,
| hw/xwin/Makefile.am:60: but option 'subdir-objects' is disabled
| test/Makefile.am:107: warning: source file '$(top_srcdir)/mi/miinitext.c'
is in a subdirectory,
| test/Makefile.am:107: but option 'subdir-objects' is disabled
| test/xi1/Makefile.am:12: warning: source file
'$(srcdir)/../xi2/protocol-common.c'
is in a subdirectory,
| test/xi1/Makefile.am:12: but option 'subdir-objects' is disabled
| autoreconf: running: gnu-configize
| autoreconf: Leaving directory `.'
| configure: loading site script /home/ngigijoe/src/git/pyro/
poky/meta/site/endian-little
| configure: loading site script /home/ngigijoe/src/git/pyro/
poky/meta/site/arm-common
| configure: loading site script /home/ngigijoe/src/git/pyro/
poky/meta/site/arm-32
| configure: loading site script /home/ngigijoe/src/git/pyro/
poky/meta/site/common-linux
| configure: loading site script /home/ngigijoe/src/git/pyro/
poky/meta/site/common-glibc
| configure: loading site script /home/ngigijoe/src/git/pyro/
poky/meta/site/arm-linux
| configure: loading site script /home/ngigijoe/src/git/pyro/
poky/meta/site/common
| configure: loading site script /home/ngigijoe/src/git/pyro/
poky/meta-openembedded/meta-oe/site/endian-little
| checking for a BSD-compatible install... /home/ngigijoe/src/git/pyro/
poky/cubieboard2/tmp/hosttools/install -c
| checking whether build environment is sane... yes
| checking for arm-poky-linux-gnueabi-strip... arm-poky-linux-gnueabi-strip
| checking for a thread-safe mkdir -p... /home/ngigijoe/src/git/pyro/
poky/cubieboard2/tmp/hosttools/mkdir -p
| checking for gawk... gawk
| checking whether make sets $(MAKE)... yes
| checking whether make supports nested variables... yes
| checking for style of include used by make... GNU
| checking for arm-poky-linux-gnueabi-gcc... arm-poky-linux-gnueabi-gcc
-march=armv7ve -mfpu=neon-vfpv4  -mfloat-abi=hard -mcpu=cortex-a7
--sysroot=/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/
work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/xserver-
xorg/2_1.19.1-r0/recipe-sysroot
| checking whether the C compiler works... yes
| checking for C compiler default output file name... a.out
| checking for suffix of executables...
| checking whether we are cross compiling... yes
| checking for suffix of object files... o
| checking whether we are using the GNU C compiler... yes
| checking whether arm-poky-linux-gnueabi-gcc  -march=armv7ve
-mfpu=neon-vfpv4  -mfloat-abi=hard -mcpu=cortex-a7
--sysroot=/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/
work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/xserver-
xorg/2_1.19.1-r0/recipe-sysroot accepts -g... yes
| checking for arm-poky-linux-gnueabi-gcc  -march=armv7ve -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7 --sysroot=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/xserver-xorg/2_1.19.1-r0/recipe-sysroot option to accept
ISO C89... none needed
| checking whether arm-poky-linux-gnueabi-gcc  -march=armv7ve
-mfpu=neon-vfpv4  -mfloat-abi=hard -mcpu=cortex-a7
--sysroot=/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/
work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/xserver-
xorg/2_1.19.1-r0/recipe-sysroot understands -c and -o together... yes
| checking dependency style of arm-poky-linux-gnueabi-gcc  -march=armv7ve
-mfpu=neon-vfpv4  -mfloat-abi=hard -mcpu=cortex-a7
--sysroot=/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/
work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/xserver-
xorg/2_1.19.1-r0/recipe-sysroot... none
| checking how to run the C preprocessor... arm-poky-linux-gnueabi-gcc -E
--sysroot=/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/
work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/xserver-
xorg/2_1.19.1-r0/recipe-sysroot  -march=armv7ve -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7
| checking for grep that handles long lines and -e...
/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/hosttools/grep
| checking for egrep...
/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/hosttools/grep
-E
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
| checking minix/config.h usability... no
| checking minix/config.h presence... no
| checking for minix/config.h... no
| checking whether it is safe to define __EXTENSIONS__... yes
| checking for arm-poky-linux-gnueabi-gcc  -march=armv7ve -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7 --sysroot=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/xserver-xorg/2_1.19.1-r0/recipe-sysroot option to accept
ISO C99... none needed
| checking whether __clang__ is declared... no
| checking whether __INTEL_COMPILER is declared... no
| checking whether __SUNPRO_C is declared... no
| checking for arm-poky-linux-gnueabi-pkg-config... no
| checking for pkg-config... /home/ngigijoe/src/git/pyro/
poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-
linux-gnueabi/xserver-xorg/2_1.19.1-r0/recipe-sysroot-
native/usr/bin/pkg-config
| configure: WARNING: using cross tools not prefixed with host triplet
| checking pkg-config is at least version 0.9.0... yes
| checking build system type... x86_64-pc-linux-gnu
| checking host system type... arm-poky-linux-gnueabi
| checking for a sed that does not truncate output... (cached) sed
| checking if arm-poky-linux-gnueabi-gcc  -march=armv7ve -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7 --sysroot=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/xserver-xorg/2_1.19.1-r0/recipe-sysroot supports
-Werror=unknown-warning-option... no
| checking if arm-poky-linux-gnueabi-gcc  -march=armv7ve -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7 --sysroot=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/xserver-xorg/2_1.19.1-r0/recipe-sysroot supports
-Werror=unused-command-line-argument... no
| checking if arm-poky-linux-gnueabi-gcc  -march=armv7ve -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7 --sysroot=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/xserver-xorg/2_1.19.1-r0/recipe-sysroot supports
-Wall... yes
| checking if arm-poky-linux-gnueabi-gcc  -march=armv7ve -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7 --sysroot=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/xserver-xorg/2_1.19.1-r0/recipe-sysroot supports
-Wpointer-arith... yes
| checking if arm-poky-linux-gnueabi-gcc  -march=armv7ve -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7 --sysroot=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/xserver-xorg/2_1.19.1-r0/recipe-sysroot supports
-Wmissing-declarations... yes
| checking if arm-poky-linux-gnueabi-gcc  -march=armv7ve -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7 --sysroot=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/xserver-xorg/2_1.19.1-r0/recipe-sysroot supports
-Wformat=2... yes
| checking if arm-poky-linux-gnueabi-gcc  -march=armv7ve -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7 --sysroot=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/xserver-xorg/2_1.19.1-r0/recipe-sysroot supports
-Wstrict-prototypes... yes
| checking if arm-poky-linux-gnueabi-gcc  -march=armv7ve -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7 --sysroot=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/xserver-xorg/2_1.19.1-r0/recipe-sysroot supports
-Wmissing-prototypes... yes
| checking if arm-poky-linux-gnueabi-gcc  -march=armv7ve -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7 --sysroot=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/xserver-xorg/2_1.19.1-r0/recipe-sysroot supports
-Wnested-externs... yes
| checking if arm-poky-linux-gnueabi-gcc  -march=armv7ve -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7 --sysroot=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/xserver-xorg/2_1.19.1-r0/recipe-sysroot supports
-Wbad-function-cast... yes
| checking if arm-poky-linux-gnueabi-gcc  -march=armv7ve -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7 --sysroot=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/xserver-xorg/2_1.19.1-r0/recipe-sysroot supports
-Wold-style-definition... yes
| checking if arm-poky-linux-gnueabi-gcc  -march=armv7ve -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7 --sysroot=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/xserver-xorg/2_1.19.1-r0/recipe-sysroot supports
-Wdeclaration-after-statement... yes
| checking if arm-poky-linux-gnueabi-gcc  -march=armv7ve -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7 --sysroot=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/xserver-xorg/2_1.19.1-r0/recipe-sysroot supports
-Wunused... yes
| checking if arm-poky-linux-gnueabi-gcc  -march=armv7ve -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7 --sysroot=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/xserver-xorg/2_1.19.1-r0/recipe-sysroot supports
-Wuninitialized... yes
| checking if arm-poky-linux-gnueabi-gcc  -march=armv7ve -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7 --sysroot=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/xserver-xorg/2_1.19.1-r0/recipe-sysroot supports
-Wshadow... yes
| checking if arm-poky-linux-gnueabi-gcc  -march=armv7ve -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7 --sysroot=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/xserver-xorg/2_1.19.1-r0/recipe-sysroot supports
-Wmissing-noreturn... yes
| checking if arm-poky-linux-gnueabi-gcc  -march=armv7ve -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7 --sysroot=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/xserver-xorg/2_1.19.1-r0/recipe-sysroot supports
-Wmissing-format-attribute... yes
| checking if arm-poky-linux-gnueabi-gcc  -march=armv7ve -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7 --sysroot=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/xserver-xorg/2_1.19.1-r0/recipe-sysroot supports
-Wredundant-decls... yes
| checking if arm-poky-linux-gnueabi-gcc  -march=armv7ve -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7 --sysroot=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/xserver-xorg/2_1.19.1-r0/recipe-sysroot supports
-Wlogical-op... yes
| checking if arm-poky-linux-gnueabi-gcc  -march=armv7ve -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7 --sysroot=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/xserver-xorg/2_1.19.1-r0/recipe-sysroot supports
-Werror=implicit... yes
| checking if arm-poky-linux-gnueabi-gcc  -march=armv7ve -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7 --sysroot=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/xserver-xorg/2_1.19.1-r0/recipe-sysroot supports
-Werror=nonnull... yes
| checking if arm-poky-linux-gnueabi-gcc  -march=armv7ve -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7 --sysroot=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/xserver-xorg/2_1.19.1-r0/recipe-sysroot supports
-Werror=init-self... yes
| checking if arm-poky-linux-gnueabi-gcc  -march=armv7ve -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7 --sysroot=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/xserver-xorg/2_1.19.1-r0/recipe-sysroot supports
-Werror=main... yes
| checking if arm-poky-linux-gnueabi-gcc  -march=armv7ve -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7 --sysroot=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/xserver-xorg/2_1.19.1-r0/recipe-sysroot supports
-Werror=missing-braces... yes
| checking if arm-poky-linux-gnueabi-gcc  -march=armv7ve -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7 --sysroot=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/xserver-xorg/2_1.19.1-r0/recipe-sysroot supports
-Werror=sequence-point... yes
| checking if arm-poky-linux-gnueabi-gcc  -march=armv7ve -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7 --sysroot=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/xserver-xorg/2_1.19.1-r0/recipe-sysroot supports
-Werror=return-type... yes
| checking if arm-poky-linux-gnueabi-gcc  -march=armv7ve -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7 --sysroot=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/xserver-xorg/2_1.19.1-r0/recipe-sysroot supports
-Werror=trigraphs... yes
| checking if arm-poky-linux-gnueabi-gcc  -march=armv7ve -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7 --sysroot=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/xserver-xorg/2_1.19.1-r0/recipe-sysroot supports
-Werror=array-bounds... yes
| checking if arm-poky-linux-gnueabi-gcc  -march=armv7ve -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7 --sysroot=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/xserver-xorg/2_1.19.1-r0/recipe-sysroot supports
-Werror=write-strings... yes
| checking if arm-poky-linux-gnueabi-gcc  -march=armv7ve -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7 --sysroot=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/xserver-xorg/2_1.19.1-r0/recipe-sysroot supports
-Werror=address... yes
| checking if arm-poky-linux-gnueabi-gcc  -march=armv7ve -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7 --sysroot=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/xserver-xorg/2_1.19.1-r0/recipe-sysroot supports
-Werror=int-to-pointer-cast... yes
| checking if arm-poky-linux-gnueabi-gcc  -march=armv7ve -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7 --sysroot=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/xserver-xorg/2_1.19.1-r0/recipe-sysroot supports
-Werror=pointer-to-int-cast... yes
| checking if arm-poky-linux-gnueabi-gcc  -march=armv7ve -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7 --sysroot=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/xserver-xorg/2_1.19.1-r0/recipe-sysroot supports
-pedantic... yes
| checking if arm-poky-linux-gnueabi-gcc  -march=armv7ve -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7 --sysroot=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/xserver-xorg/2_1.19.1-r0/recipe-sysroot supports
-Werror... yes
| checking if arm-poky-linux-gnueabi-gcc  -march=armv7ve -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7 --sysroot=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/xserver-xorg/2_1.19.1-r0/recipe-sysroot supports
-Werror=attributes... yes
| checking whether make supports nested variables... (cached) yes
| checking for doxygen... no
| configure: WARNING: doxygen not found - documentation targets will be
skipped
| checking for X.Org SGML entities >= 1.8... no
| checking whether to build documentation... yes
| checking whether to build developer documentation... yes
| checking for xsltproc... no
| configure: WARNING: xsltproc not found - cannot transform XML documents
| checking whether to build unit test cases... auto
| checking whether the linker accepts -Wl,-wrap,exit... yes
| checking dependency style of arm-poky-linux-gnueabi-gcc  -march=armv7ve
-mfpu=neon-vfpv4  -mfloat-abi=hard -mcpu=cortex-a7
--sysroot=/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/
work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/xserver-
xorg/2_1.19.1-r0/recipe-sysroot... none
| checking whether ln -s works... yes
| checking how to print strings... printf
| checking for a sed that does not truncate output... (cached) sed
| checking for fgrep...
/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/hosttools/grep
-F
| checking for ld used by arm-poky-linux-gnueabi-gcc  -march=armv7ve
-mfpu=neon-vfpv4  -mfloat-abi=hard -mcpu=cortex-a7
--sysroot=/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/
work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/xserver-
xorg/2_1.19.1-r0/recipe-sysroot... arm-poky-linux-gnueabi-ld
--sysroot=/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/
work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/xserver-
xorg/2_1.19.1-r0/recipe-sysroot
| checking if the linker (arm-poky-linux-gnueabi-ld
--sysroot=/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/
work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/xserver-
xorg/2_1.19.1-r0/recipe-sysroot ) is GNU ld... yes
| checking for BSD- or MS-compatible name lister (nm)...
arm-poky-linux-gnueabi-nm
| checking the name lister (arm-poky-linux-gnueabi-nm) interface... BSD nm
| checking the maximum length of command line arguments... 1572864
| checking how to convert x86_64-pc-linux-gnu file names to
arm-poky-linux-gnueabi format... func_convert_file_noop
| checking how to convert x86_64-pc-linux-gnu file names to toolchain
format... func_convert_file_noop
| checking for arm-poky-linux-gnueabi-ld --sysroot=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/xserver-xorg/2_1.19.1-r0/recipe-sysroot  option to
reload object files... -r
| checking for arm-poky-linux-gnueabi-objdump...
arm-poky-linux-gnueabi-objdump
| checking how to recognize dependent libraries... pass_all
| checking for arm-poky-linux-gnueabi-dlltool... no
| checking for dlltool... no
| checking how to associate runtime and link libraries... printf %s\n
| checking for arm-poky-linux-gnueabi-ar... arm-poky-linux-gnueabi-ar
| checking for archiver @FILE support... @
| checking for arm-poky-linux-gnueabi-strip... (cached)
arm-poky-linux-gnueabi-strip
| checking for arm-poky-linux-gnueabi-ranlib...
arm-poky-linux-gnueabi-ranlib
| checking command to parse arm-poky-linux-gnueabi-nm output from
arm-poky-linux-gnueabi-gcc  -march=armv7ve -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7 --sysroot=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/xserver-xorg/2_1.19.1-r0/recipe-sysroot object... ok
| checking for sysroot... /home/ngigijoe/src/git/pyro/
poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-poky-
linux-gnueabi/xserver-xorg/2_1.19.1-r0/recipe-sysroot
| checking for a working dd... /home/ngigijoe/src/git/pyro/
poky/cubieboard2/tmp/hosttools/dd
| checking how to truncate binary pipes... /home/ngigijoe/src/git/pyro/
poky/cubieboard2/tmp/hosttools/dd bs=4096 count=1
| checking for arm-poky-linux-gnueabi-mt... no
| checking for mt... no
| checking if : is a manifest tool... no
| checking for dlfcn.h... yes
| checking for objdir... .libs
| checking if arm-poky-linux-gnueabi-gcc  -march=armv7ve -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7 --sysroot=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/xserver-xorg/2_1.19.1-r0/recipe-sysroot supports
-fno-rtti -fno-exceptions... no
| checking for arm-poky-linux-gnueabi-gcc  -march=armv7ve -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7 --sysroot=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/xserver-xorg/2_1.19.1-r0/recipe-sysroot option to
produce PIC... -fPIC -DPIC
| checking if arm-poky-linux-gnueabi-gcc  -march=armv7ve -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7 --sysroot=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/xserver-xorg/2_1.19.1-r0/recipe-sysroot PIC flag -fPIC
-DPIC works... yes
| checking if arm-poky-linux-gnueabi-gcc  -march=armv7ve -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7 --sysroot=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/xserver-xorg/2_1.19.1-r0/recipe-sysroot static flag
-static works... yes
| checking if arm-poky-linux-gnueabi-gcc  -march=armv7ve -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7 --sysroot=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/xserver-xorg/2_1.19.1-r0/recipe-sysroot supports -c -o
file.o... yes
| checking if arm-poky-linux-gnueabi-gcc  -march=armv7ve -mfpu=neon-vfpv4
-mfloat-abi=hard -mcpu=cortex-a7 --sysroot=/home/ngigijoe/src/
git/pyro/poky/cubieboard2/tmp/work/cortexa7hf-neon-vfpv4-
poky-linux-gnueabi/xserver-xorg/2_1.19.1-r0/recipe-sysroot supports -c -o
file.o... (cached) yes
| checking whether the arm-poky-linux-gnueabi-gcc  -march=armv7ve
-mfpu=neon-vfpv4  -mfloat-abi=hard -mcpu=cortex-a7
--sysroot=/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/
work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/xserver-
xorg/2_1.19.1-r0/recipe-sysroot linker (arm-poky-linux-gnueabi-ld
--sysroot=/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/
work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/xserver-
xorg/2_1.19.1-r0/recipe-sysroot ) supports shared libraries... yes
| checking whether -lc should be explicitly linked in... no
| checking dynamic linker characteristics... GNU/Linux ld.so
| checking how to hardcode library paths into programs... immediate
| checking whether stripping libraries is possible... yes
| checking if libtool supports shared libraries... yes
| checking whether to build shared libraries... yes
| checking whether to build static libraries... no
| checking for arm-poky-linux-gnueabi-pkg-config...
/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/
cortexa7hf-neon-vfpv4-poky-linux-gnueabi/xserver-xorg/2_
1.19.1-r0/recipe-sysroot-native/usr/bin/pkg-config
| checking pkg-config is at least version 0.9.0... yes
| checking for flex... flex
| checking lex output file root... lex.yy
| checking lex library... none needed
| checking whether yytext is a pointer... no
| checking for bison... bison -y
| checking for special C compiler options needed for large files... no
| checking for _FILE_OFFSET_BITS value needed for large files... 64
| checking for cpp... /home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/
hosttools/cpp
| checking if /home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/hosttools/cpp
requires -undef... yes
| checking if /home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/hosttools/cpp
requires -traditional... yes
| checking for dirent.h that defines DIR... yes
| checking for library containing opendir... none required
| checking for ANSI C header files... (cached) yes
| checking fcntl.h usability... yes
| checking fcntl.h presence... yes
| checking for fcntl.h... yes
| checking for stdlib.h... (cached) yes
| checking for string.h... (cached) yes
| checking for unistd.h... (cached) yes
| checking for dlfcn.h... (cached) yes
| checking stropts.h usability... yes
| checking stropts.h presence... yes
| checking for stropts.h... yes
| checking fnmatch.h usability... yes
| checking fnmatch.h presence... yes
| checking for fnmatch.h... yes
| checking sys/mkdev.h usability... no
| checking sys/mkdev.h presence... no
| checking for sys/mkdev.h... no
| checking sys/utsname.h usability... yes
| checking sys/utsname.h presence... yes
| checking for sys/utsname.h... yes
| checking for an ANSI C-conforming const... yes
| checking for typeof syntax and keyword spelling... typeof
| checking whether byte ordering is bigendian... (cached) no
| checking size of unsigned long... (cached) 4
| checking for pid_t... yes
| checking byteswap.h usability... yes
| checking byteswap.h presence... yes
| checking for byteswap.h... yes
| checking sys/endian.h usability... no
| checking sys/endian.h presence... no
| checking for sys/endian.h... no
| checking for dlopen... no
| checking for dlopen in -ldl... yes
| checking for backtrace... yes
| checking for ffs... yes
| checking for geteuid... yes
| checking for getuid... yes
| checking for issetugid... no
| checking for getresuid... yes
| checking for getdtablesize... yes
| checking for getifaddrs... yes
| checking for getpeereid... no
| checking for getpeerucred... no
| checking for getprogname... no
| checking for getzoneid... no
| checking for mmap... yes
| checking for posix_fallocate... yes
| checking for seteuid... yes
| checking for shmctl64... no
| checking for strncasecmp... yes
| checking for vasprintf... yes
| checking for vsnprintf... yes
| checking for walkcontext... no
| checking for setitimer... yes
| checking for poll... yes
| checking for epoll_create1... yes
| checking for reallocarray... no
| checking for strcasecmp... yes
| checking for strcasestr... yes
| checking for strlcat... no
| checking for strlcpy... no
| checking for strndup... yes
| checking whether program_invocation_short_name is declared... yes
| checking for SO_PEERCRED in sys/socket.h... yes
| checking for sqrt in -lm... yes
| checking for cbrt... yes
| checking ndbm.h usability... yes
| checking ndbm.h presence... yes
| checking for ndbm.h... yes
| checking dbm.h usability... yes
| checking dbm.h presence... yes
| checking for dbm.h... yes
| checking rpcsvc/dbm.h usability... no
| checking rpcsvc/dbm.h presence... no
| checking for rpcsvc/dbm.h... no
| checking linux/agpgart.h usability... yes
| checking linux/agpgart.h presence... yes
| checking for linux/agpgart.h... yes
| checking sys/agpio.h usability... no
| checking sys/agpio.h presence... no
| checking for sys/agpio.h... no
| checking sys/agpgart.h usability... no
| checking sys/agpgart.h presence... no
| checking for sys/agpgart.h... no
| checking linux/fb.h usability... yes
| checking linux/fb.h presence... yes
| checking for linux/fb.h... yes
| checking for sys/linker.h... no
| checking for SYSV IPC... yes
| checking machine/apmvar.h usability... no
| checking machine/apmvar.h presence... no
| checking for machine/apmvar.h... no
| checking execinfo.h usability... yes
| checking execinfo.h presence... yes
| checking for execinfo.h... yes
| checking for backtrace in -lc... yes
| checking for fallback input driver... libinput
| checking for root directory for font files... /usr/share/fonts/X11
| checking for directory for misc files... ${FONTROOTDIR}/misc
| checking for directory for OTF files... ${FONTROOTDIR}/OTF
| checking for directory for TTF files... ${FONTROOTDIR}/TTF
| checking for directory for Type1 files... ${FONTROOTDIR}/Type1
| checking for directory for 75dpi files... ${FONTROOTDIR}/75dpi
| checking for directory for 100dpi files... ${FONTROOTDIR}/100dpi
| checking for default font path... ${FONTROOTDIR}/misc/,${
FONTROOTDIR}/TTF/,${FONTROOTDIR}/OTF/,${FONTROOTDIR}/Type1/,${
FONTROOTDIR}/100dpi/,${FONTROOTDIR}/75dpi/
| checking to see if we can install the Xorg server as root... no
| checking if Xtrans should support UNIX socket connections... yes
| checking if Xtrans should support TCP socket connections... yes
| checking for library containing socket... none required
| checking for library containing gethostbyname... none required
| checking for getaddrinfo... (cached) yes
| checking if IPv6 support should be built... yes
| checking for struct sockaddr_in.sin_len... NOTE: The following config.log
files may provide further information.
| NOTE: /home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/
cortexa7hf-neon-vfpv4-poky-linux-gnueabi/xserver-xorg/2_
1.19.1-r0/build/config.log
| ERROR: configure failed
| no
| checking for socklen_t... yes
| checking for struct msghdr.msg_control... yes
| checking if Xtrans should support os-specific local connections... no
| checking for authdes_seccreate... no
| checking for authdes_create... yes
| checking for library containing getsecretkey... none required
| checking if Secure RPC authentication ("SUN-DES-1") should be
supported... yes
| checking for PIXMAN... yes
| checking whether PTHREAD_MUTEX_RECURSIVE is declared... yes
| checking if compiler needs -Werror to reject unknown flags... no
| checking for the pthreads library -lpthreads... no
| checking whether pthreads work without any flags... no
| checking whether pthreads work with -Kthread... no
| checking whether pthreads work with -kthread... no
| checking for the pthreads library -llthread... no
| checking whether pthreads work with -pthread... yes
| checking for joinable pthread attribute... PTHREAD_CREATE_JOINABLE
| checking if more special flags are required for pthreads... no
| checking for PTHREAD_PRIO_INHERIT... yes
| checking for pthread_setname_np(const char*)... no
| checking for pthread_setname_np(pthread_t, const char*)... yes
| checking for UDEV... yes
| checking for udev_monitor_filter_add_match_tag... yes
| checking for udev_enumerate_add_match_tag... yes
| checking for DBUS... yes
| checking for HAL... no
| checking for glibc...... yes
| checking for clock_gettime... yes
| checking for a useful monotonic clock ...... yes
| checking whether to track client ids... yes
| checking for DRI2PROTO... yes
| Checking temp dir /run/shm
| checking for DRI3PROTO... yes
| checking for sigaction... yes
| checking for XSHMFENCE... yes
| configure: DRI3 enabled
| checking for LIBDRM... yes
| checking for XLIB... yes
| checking for GL... yes
| checking for XDMCP... yes
| checking for XdmcpWrap in -lXdmcp... yes
| checking for SHA1Init... no
| checking for CC_SHA1_Init... no
| checking for wincrypt.h... no
| checking for SHA1Init in -lmd... no
| checking for LIBSHA1... no
| checking for nettle_sha1_init in -lnettle... no
| checking for gcry_md_open in -lgcrypt... no
| checking for SHA1_Init in -lcrypto... yes
| checking for OPENSSL... yes
| checking for SHA1 implementation... libcrypto
| checking for XSERVERCFLAGS... yes
| checking for XSERVERLIBS... yes
| checking for LIBUNWIND... no
| checking if SVR4 needs to be defined... no
| checking whether to build Xvfb DDX... yes
| checking for XNESTMODULES... yes
| checking whether to build Xnest DDX... no
| checking whether to build Xorg DDX... yes
| checking for symbol visibility support... yes
| checking whether to build Xorg PCI functions... checking for PCIACCESS...
yes
| yes
|
| checking linux/apm_bios.h usability... yes
| checking linux/apm_bios.h presence... yes
| checking for linux/apm_bios.h... yes
| checking for DGA... yes
| checking for DGA... yes
| checking for XORG_MODULES... yes
| checking for GLAMOR... yes
| checking for GBM... no
| configure: error: Glamor for Xorg requires gbm >= 10.2.0
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_configure (log file is located at
/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/
cortexa7hf-neon-vfpv4-poky-linux-gnueabi/xserver-xorg/2_
1.19.1-r0/temp/log.do_configure.28609)
ERROR: Task (/home/ngigijoe/src/git/pyro/poky/meta/recipes-graphics/
xorg-xserver/xserver-xorg_1.19.1.bb:do_configure) failed with exit code '1'
NOTE: Tasks Summary: Attempted 3909 tasks of which 3836 didn't need to be
rerun and 2 failed.

Summary: 2 tasks failed:
  /home/ngigijoe/src/git/pyro/poky/meta/recipes-gnome/gtk+/gtk+3_3.22.8.bb:
do_configure
  /home/ngigijoe/src/git/pyro/poky/meta/recipes-graphics/
xorg-xserver/xserver-xorg_1.19.1.bb:do_configure
Summary: There was 1 WARNING message shown.
Summary: There were 4 ERROR messages shown, returning a non-zero exit code.

-- 
J.W.Ngigi

--001a114713743073cc0553928fe4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Please help,<br>I did a clean git clone of poky-pyro =
and rebuilt, but not I have these two errors:<br>ERROR: Task (/home/ngigijo=
e/src/git/pyro/<wbr>poky/meta/recipes-graphics/<wbr>xorg-xserver/xserver-xo=
rg_1.<wbr>19.1.bb:do_configure) failed with exit code &#39;1&#39;<br><br>ER=
ROR: Logfile of failure stored in: /home/ngigijoe/src/git/pyro/<wbr>poky/cu=
bieboard2/tmp/work/<wbr>cortexa7hf-neon-vfpv4-poky-<wbr>linux-gnueabi/xserv=
er-xorg/2_<wbr>1.19.1-r0/temp/log.do_<wbr>configure.763<br><br></div>This i=
s how the screen output looks like:<br><br>ngigijoe@ngigijoe-HP-2000-<wbr>N=
otebook-PC:~/src/git/pyro/<wbr>poky/cubieboard2$ bitbake core-image-sato<br=
>Loading cache: 100% |#############################<wbr>###################=
###########<wbr>##############################<wbr>########################=
######<wbr>##########| Time: 0:00:00<br>Loaded 2168 entries from dependency=
 cache.<br>NOTE: Resolving any missing task queue dependencies<br><br>Build=
 Configuration:<br>BB_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D=
 &quot;1.34.0&quot;<br>BUILD_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 =3D &quot;x86_64-linux&quot;<br>NATIVELSBSTRING=C2=A0=C2=A0 =3D &quo=
t;universal-4.8&quot;<br>TARGET_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 =3D &quot;arm-poky-linux-gnueabi&quot;<br>MACHINE=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;cubieboard2&quot;<br>DIST=
RO=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &q=
uot;poky&quot;<br>DISTRO_VERSION=C2=A0=C2=A0=C2=A0 =3D &quot;2.3&quot;<br>T=
UNE_FEATURES=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;arm armv7ve vfp neon vfpv4 c=
allconvention-hard cortexa7&quot;<br>TARGET_FPU=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 =3D &quot;hard&quot;<br>meta=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br>meta-poky=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;pyro:<wbr>f0d128ea0dfc2c403f=
f53a1ac1db35<wbr>21854b63d5&quot;<br>meta-sunxi=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 =3D &quot;pyro:<wbr>0056643fcf2c496a0f2cf005fb67d6<wbr>26ab=
0e2c10&quot;<br>meta-oe=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 <br>meta-gnome=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quo=
t;pyro:<wbr>5e82995148a2844c6f483ae5ddd143<wbr>8d87ea9fb7&quot;<br><br>WARN=
ING: /home/ngigijoe/src/git/pyro/<wbr>poky/meta/recipes-sato/images/<wbr>co=
re-image-sato.bb.do_build is tainted from a forced run=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | ETA:=C2=A0 0=
:00:16<br>Initialising tasks: 100% |#############################<wbr>#####=
#########################<wbr>##############################<wbr>##########=
####################<wbr>#####| Time: 0:00:20<br>NOTE: Executing SetScene T=
asks<br>NOTE: Executing RunQueue Tasks<br>ERROR: gtk+3-3.22.8-r0 do_configu=
re: configure failed<br>ERROR: gtk+3-3.22.8-r0 do_configure: Function faile=
d: do_configure (log file is located at /home/ngigijoe/src/git/pyro/<wbr>po=
ky/cubieboard2/tmp/work/<wbr>cortexa7hf-neon-vfpv4-poky-<wbr>linux-gnueabi/=
gtk+3/3.22.8-r0/<wbr>temp/log.do_configure.28607)<br>ERROR: Logfile of fail=
ure stored in: /home/ngigijoe/src/git/pyro/<wbr>poky/cubieboard2/tmp/work/<=
wbr>cortexa7hf-neon-vfpv4-poky-<wbr>linux-gnueabi/gtk+3/3.22.8-r0/<wbr>temp=
/log.do_configure.28607<span class=3D"gmail-im"><br>Log data follows:<br>|
 DEBUG: SITE files [&#39;endian-little&#39;, &#39;bit-32&#39;, &#39;arm-com=
mon&#39;, &#39;arm-32&#39;,=20
&#39;common-linux&#39;, &#39;common-glibc&#39;, &#39;arm-linux&#39;, &#39;a=
rm-linux-gnueabi&#39;,=20
&#39;common&#39;]<br>| DEBUG: Executing shell function autotools_preconfigu=
re<br>| DEBUG: Shell function autotools_preconfigure finished<br>| DEBUG: E=
xecuting python function autotools_aclocals<br>|
 DEBUG: SITE files [&#39;endian-little&#39;, &#39;bit-32&#39;, &#39;arm-com=
mon&#39;, &#39;arm-32&#39;,=20
&#39;common-linux&#39;, &#39;common-glibc&#39;, &#39;arm-linux&#39;, &#39;a=
rm-linux-gnueabi&#39;,=20
&#39;common&#39;]<br>| DEBUG: Python function autotools_aclocals finished<b=
r>| DEBUG: Executing shell function do_configure<br></span>| NOTE: Executin=
g ACLOCAL=3D&quot;aclocal --system-acdir=3D/home/ngigijoe/<wbr>src/git/pyro=
/poky/cubieboard2/<wbr>tmp/work/cortexa7hf-neon-<wbr>vfpv4-poky-linux-gnuea=
bi/gtk+<wbr>3/3.22.8-r0/recipe-sysroot/<wbr>usr/share/aclocal/&quot; autore=
conf --verbose --install --force --exclude=3Dautopoint -I /home/ngigijoe/sr=
c/git/pyro/<wbr>poky/cubieboard2/tmp/work/<wbr>cortexa7hf-neon-vfpv4-poky-<=
wbr>linux-gnueabi/gtk+3/3.22.8-r0/<wbr>gtk+-3.22.8/m4/ -I /home/ngigijoe/sr=
c/git/pyro/<wbr>poky/cubieboard2/tmp/work/<wbr>cortexa7hf-neon-vfpv4-poky-<=
wbr>linux-gnueabi/gtk+3/3.22.8-r0/<wbr>gtk+-3.22.8/m4macros/ -I /home/ngigi=
joe/src/git/pyro/<wbr>poky/cubieboard2/tmp/work/<wbr>cortexa7hf-neon-vfpv4-=
poky-<wbr>linux-gnueabi/gtk+3/3.22.8-r0/<wbr>recipe-sysroot-native/usr/<wbr=
>share/aclocal/<br>|
 NOTE: Running ../gtk+-3.22.8/configure=C2=A0 --build=3Dx86_64-linux =C2=A0=
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=20
--host=3Darm-poky-linux-gnueabi =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=
=A0 --target=3Darm-poky-linux-<wbr>gnueabi
 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0 --prefix=3D/usr =C2=A0=C2=A0=
=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0 --exec_prefix=3D/usr =C2=A0=C2=A0=C2=A0 =
=C2=A0=C2=A0=C2=A0 =C2=A0=20
--bindir=3D/usr/bin =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0 --sbindir=
=3D/usr/sbin =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=20
--libexecdir=3D/usr/libexec =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0 --=
datadir=3D/usr/share =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=20
--sysconfdir=3D/etc =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0 --sharedst=
atedir=3D/com =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=20
--localstatedir=3D/var =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0 --libdi=
r=3D/usr/lib =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=20
--includedir=3D/usr/include =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0 --=
oldincludedir=3D/usr/include =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0
 =C2=A0 --infodir=3D/usr/share/info =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =
=C2=A0 --mandir=3D/usr/share/man =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=
=A0
 --disable-silent-rules =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0 --disa=
ble-dependency-tracking =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0
 --with-libtool-sysroot=3D/home/<wbr>ngigijoe/src/git/pyro/poky/<wbr>cubieb=
oard2/tmp/work/<wbr>cortexa7hf-neon-vfpv4-poky-<wbr>linux-gnueabi/gtk+3/3.2=
2.8-r0/<wbr>recipe-sysroot --enable-introspection --disable-gtk-doc=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wb=
r>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --disable-glibtest=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 --disable-xinerama=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --enab=
le-modules=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 --disable-cups=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0 --disable-colord=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 WAYLAN=
D_PROTOCOLS_SYSROOT_DIR=3D<wbr>/home/ngigijoe/src/git/pyro/<wbr>poky/cubieb=
oard2/tmp/work/<wbr>cortexa7hf-neon-vfpv4-poky-<wbr>linux-gnueabi/gtk+3/3.2=
2.8-r0/<wbr>recipe-sysroot=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 --disable-static=C2=A0 --enable-glx --enable-openg=
l --enable-wayland-backend --enable-x11-backend --enable-nls<span class=3D"=
gmail-im"><br>| automake (GNU automake) 1.15<br>| Copyright (C) 2014 Free S=
oftware Foundation, Inc.<br>| License GPLv2+: GNU GPL version 2 or later &l=
t;<a href=3D"http://gnu.org/licenses/gpl-2.0.html" target=3D"_blank">http:/=
/gnu.org/licenses/gpl-<wbr>2.0.html</a>&gt;<br>| This is free software: you=
 are free to change and redistribute it.<br>| There is NO WARRANTY, to the =
extent permitted by law.<br>| <br>| Written by Tom Tromey &lt;<a href=3D"ma=
ilto:tromey@redhat.com" target=3D"_blank">tromey@redhat.com</a>&gt;<br>|=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 and Alexandre Duret-Lutz &lt;<a hre=
f=3D"mailto:adl@gnu.org" target=3D"_blank">adl@gnu.org</a>&gt;.<br>| AUTOV =
is 1<br>| autoreconf: Entering directory `.&#39;<br></span>| autoreconf: ru=
nning: aclocal --system-acdir=3D/home/ngigijoe/<wbr>src/git/pyro/poky/cubie=
board2/<wbr>tmp/work/cortexa7hf-neon-<wbr>vfpv4-poky-linux-gnueabi/gtk+<wbr=
>3/3.22.8-r0/recipe-sysroot/<wbr>usr/share/aclocal/ -I /home/ngigijoe/src/g=
it/pyro/<wbr>poky/cubieboard2/tmp/work/<wbr>cortexa7hf-neon-vfpv4-poky-<wbr=
>linux-gnueabi/gtk+3/3.22.8-r0/<wbr>gtk+-3.22.8/m4/ -I /home/ngigijoe/src/g=
it/pyro/<wbr>poky/cubieboard2/tmp/work/<wbr>cortexa7hf-neon-vfpv4-poky-<wbr=
>linux-gnueabi/gtk+3/3.22.8-r0/<wbr>gtk+-3.22.8/m4macros/ -I /home/ngigijoe=
/src/git/pyro/<wbr>poky/cubieboard2/tmp/work/<wbr>cortexa7hf-neon-vfpv4-pok=
y-<wbr>linux-gnueabi/gtk+3/3.22.8-r0/<wbr>recipe-sysroot-native/usr/<wbr>sh=
are/aclocal/ --force -I m4 ${ACLOCAL_FLAGS}<span class=3D"gmail-im"><br>| a=
utoreconf: <a href=3D"http://configure.ac" target=3D"_blank">configure.ac</=
a>: tracing<br>| autoreconf: running: libtoolize --copy --force<br></span>|=
 libtoolize: putting auxiliary files in AC_CONFIG_AUX_DIR, &#39;build-aux&#=
39;.<br>| libtoolize: copying file &#39;build-aux/ltmain.sh&#39;<span class=
=3D"gmail-im"><br>| libtoolize: putting macros in AC_CONFIG_MACRO_DIRS, &#3=
9;m4&#39;.<br>| libtoolize: copying file &#39;m4/libtool.m4&#39;<br>| libto=
olize: copying file &#39;m4/ltoptions.m4&#39;<br>| libtoolize: copying file=
 &#39;m4/ltsugar.m4&#39;<br>| libtoolize: copying file &#39;m4/ltversion.m4=
&#39;<br>| libtoolize: copying file &#39;m4/lt~obsolete.m4&#39;<br></span>|=
 autoreconf: running: /home/ngigijoe/src/git/pyro/<wbr>poky/cubieboard2/tmp=
/work/<wbr>cortexa7hf-neon-vfpv4-poky-<wbr>linux-gnueabi/gtk+3/3.22.8-r0/<w=
br>recipe-sysroot-native/usr/bin/<wbr>autoconf --include=3D/home/ngigijoe/s=
rc/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work/cortexa7hf-neon-vfpv4-<wbr>=
poky-linux-gnueabi/gtk+3/3.22.<wbr>8-r0/gtk+-3.22.8/m4/ --include=3D/home/n=
gigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work/cortexa7hf-neon-vf=
pv4-<wbr>poky-linux-gnueabi/gtk+3/3.22.<wbr>8-r0/gtk+-3.22.8/m4macros/ --in=
clude=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work/cor=
texa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/gtk+3/3.22.<wbr>8-r0/recipe-sysr=
oot-native/<wbr>usr/share/aclocal/ --force<br>| autoreconf: running: /home/=
ngigijoe/src/git/pyro/<wbr>poky/cubieboard2/tmp/work/<wbr>cortexa7hf-neon-v=
fpv4-poky-<wbr>linux-gnueabi/gtk+3/3.22.8-r0/<wbr>recipe-sysroot-native/usr=
/bin/<wbr>autoheader --include=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubi=
eboard2/tmp/<wbr>work/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/gtk+3/3=
.22.<wbr>8-r0/gtk+-3.22.8/m4/ --include=3D/home/ngigijoe/src/<wbr>git/pyro/=
poky/cubieboard2/tmp/<wbr>work/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueab=
i/gtk+3/3.22.<wbr>8-r0/gtk+-3.22.8/m4macros/ --include=3D/home/ngigijoe/src=
/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work/cortexa7hf-neon-vfpv4-<wbr>po=
ky-linux-gnueabi/gtk+3/3.22.<wbr>8-r0/recipe-sysroot-native/<wbr>usr/share/=
aclocal/ --force<br>| autoreconf: running: automake --add-missing --copy --=
force-missing<br>| <a href=3D"http://configure.ac:157" target=3D"_blank">co=
nfigure.ac:157</a>: installing &#39;build-aux/compile&#39;<br>| <a href=3D"=
http://configure.ac:84" target=3D"_blank">configure.ac:84</a>: installing &=
#39;build-aux/missing&#39;<br>| demos/gtk-demo/Makefile.am: installing &#39=
;build-aux/depcomp&#39;<br>| gdk/Makefile.am:137: warning: source file &#39=
;deprecated/gdkcolor.c&#39; is in a subdirectory,<br>| gdk/Makefile.am:137:=
 but option &#39;subdir-objects&#39; is disabled<br>| automake: warning: po=
ssible forward-incompatibility.<br>| automake: At least a source file is in=
 a subdirectory, but the &#39;subdir-objects&#39;<br>| automake: automake o=
ption hasn&#39;t been enabled.=C2=A0 For now, the corresponding output<br>|=
 automake: object file(s) will be placed in the top-level directory.=C2=A0 =
However,<br>| automake: this behaviour will change in future Automake versi=
ons: they will<br>| automake: unconditionally cause object files to be plac=
ed in the same subdirectory<br>| automake: of the corresponding sources.<br=
>| automake: You are advised to start using &#39;subdir-objects&#39; option=
 throughout your<br>| automake: project, to avoid future incompatibilities.=
<br>| tests/Makefile.am:331: warning: source file &#39;../gtk/gtkcairoblur.=
c&#39; is in a subdirectory,<br>| tests/Makefile.am:331: but option &#39;su=
bdir-objects&#39; is disabled<br>| tests/Makefile.am:547: warning: variable=
 &#39;foreigndrawing_SOURCES&#39; is defined but no program or<br>| tests/M=
akefile.am:547: library has &#39;foreigndrawing&#39; as canonical name (pos=
sible typo)<br>| tests/Makefile.am:535: warning: variable &#39;gdkgears_SOU=
RCES&#39; is defined but no program or<br>| tests/Makefile.am:535: library =
has &#39;gdkgears&#39; as canonical name (possible typo)<br>| tests/Makefil=
e.am:540: warning: variable &#39;testglblending_SOURCES&#39; is defined but=
 no program or<br>| tests/Makefile.am:540: library has &#39;testglblending&=
#39; as canonical name (possible typo)<br>| tests/Makefile.am:308: warning:=
 variable &#39;foreigndrawing_DEPENDENCIES&#39; is defined but no program o=
r<br>| tests/Makefile.am:308: library has &#39;foreigndrawing&#39; as canon=
ical name (possible typo)<br>| testsuite/gtk/Makefile.am:124: warning: sour=
ce file &#39;$(top_srcdir)/gtk/<wbr>gtkallocatedbitmask.c&#39; is in a subd=
irectory,<br>| testsuite/gtk/Makefile.am:124: but option &#39;subdir-object=
s&#39; is disabled<br>| testsuite/gtk/Makefile.am:139: warning: source file=
 &#39;$(top_srcdir)/gtk/gtkkeyhash.<wbr>c&#39; is in a subdirectory,<br>| t=
estsuite/gtk/Makefile.am:139: but option &#39;subdir-objects&#39; is disabl=
ed<br>| testsuite/gtk/Makefile.am:139: warning: source file &#39;$(top_buil=
ddir)/gtk/<wbr>gtkresources.c&#39; is in a subdirectory,<br>| testsuite/gtk=
/Makefile.am:139: but option &#39;subdir-objects&#39; is disabled<br>| test=
suite/gtk/Makefile.am:139: warning: source file &#39;$(top_srcdir)/gtk/gtkp=
rivate.<wbr>c&#39; is in a subdirectory,<br>| testsuite/gtk/Makefile.am:139=
: but option &#39;subdir-objects&#39; is disabled<br>| testsuite/gtk/Makefi=
le.am:116: warning: source file &#39;$(top_srcdir)/gtk/gtkrbtree.<wbr>c&#39=
; is in a subdirectory,<br>| testsuite/gtk/Makefile.am:116: but option &#39=
;subdir-objects&#39; is disabled<span class=3D"gmail-im"><br>| autoreconf: =
running: gnu-configize<br>| autoreconf: Leaving directory `.&#39;<br></span=
><span class=3D"gmail-im">| configure: loading site script /home/ngigijoe/s=
rc/git/pyro/<wbr>poky/meta/site/endian-little<br>| configure: loading site =
script /home/ngigijoe/src/git/pyro/<wbr>poky/meta/site/arm-common<br>| conf=
igure: loading site script /home/ngigijoe/src/git/pyro/<wbr>poky/meta/site/=
arm-32<br>| configure: loading site script /home/ngigijoe/src/git/pyro/<wbr=
>poky/meta/site/common-linux<br>| configure: loading site script /home/ngig=
ijoe/src/git/pyro/<wbr>poky/meta/site/common-glibc<br>| configure: loading =
site script /home/ngigijoe/src/git/pyro/<wbr>poky/meta/site/arm-linux<br>| =
configure: loading site script /home/ngigijoe/src/git/pyro/<wbr>poky/meta/s=
ite/common<br>| configure: loading site script /home/ngigijoe/src/git/pyro/=
<wbr>poky/meta-openembedded/meta-<wbr>oe/site/endian-little<br>| checking b=
uild system type... x86_64-pc-linux-gnu<br>| checking host system type... a=
rm-poky-linux-gnueabi<br></span>| checking for a BSD-compatible install... =
/home/ngigijoe/src/git/pyro/<wbr>poky/cubieboard2/tmp/<wbr>hosttools/instal=
l -c<br>| checking whether build environment is sane... yes<br>| checking f=
or arm-poky-linux-gnueabi-strip..<wbr>. arm-poky-linux-gnueabi-strip<br>| c=
hecking for a thread-safe mkdir -p... /home/ngigijoe/src/git/pyro/<wbr>poky=
/cubieboard2/tmp/<wbr>hosttools/mkdir -p<br>| checking for gawk... gawk<br>=
| checking whether make sets $(MAKE)... yes<br>| checking whether make supp=
orts nested variables... yes<br>| checking whether UID &#39;1000&#39; is su=
pported by ustar format... yes<br>| checking whether GID &#39;1000&#39; is =
supported by ustar format... yes<br>| checking how to create a ustar tar ar=
chive... gnutar<br>| checking whether to enable maintainer-specific portion=
s of Makefiles... yes<br>| checking whether make supports nested variables.=
.. (cached) yes<br>|
 checking for arm-poky-linux-gnueabi-gcc... arm-poky-linux-gnueabi-gcc=C2=
=A0=20
-march=3Darmv7ve -mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex=
-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/gtk+3/3.22.<wbr>8-r0/recipe-=
sysroot<span class=3D"gmail-im"><br>| checking whether the C compiler works=
... yes<br>| checking for C compiler default output file name... a.out<br>|=
 checking for suffix of executables...<br>| checking whether we are cross c=
ompiling... yes<br>| checking for suffix of object files... o<br>| checking=
 whether we are using the GNU C compiler... yes<br></span>|
 checking whether arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/gtk+3/3.22.<wbr>8-r0/recipe-=
sysroot accepts -g... yes<br>|
 checking for arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/gtk+3/3.22.<wbr>8-r0/recipe-=
sysroot option to accept ISO C89... none needed<br>|
 checking whether arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/gtk+3/3.22.<wbr>8-r0/recipe-=
sysroot understands -c and -o together... yes<br>| checking for style of in=
clude used by make... GNU<br>|
 checking dependency style of arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darm=
v7ve
 -mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/gtk+3/3.22.<wbr>8-r0/recipe-=
sysroot... none<br>| checking how to run the C preprocessor... arm-poky-lin=
ux-gnueabi-gcc -E --sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubiebo=
ard2/tmp/<wbr>work/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/gtk+3/3.22=
.<wbr>8-r0/recipe-sysroot=C2=A0 -march=3Darmv7ve -mfpu=3Dneon-vfpv4=C2=A0 -=
mfloat-abi=3Dhard -mcpu=3Dcortex-a7<br>| checking for gcc... gcc<br>| check=
ing whether we are using the GNU C compiler... (cached) yes<br>| checking w=
hether gcc=C2=A0 accepts -g... yes<br>| checking for gcc=C2=A0 option to ac=
cept ISO C89... (cached) none needed<br>| checking whether gcc=C2=A0 unders=
tands -c and -o together... (cached) yes<br>| checking dependency style of =
gcc ... (cached) none<br>| checking how to run the C preprocessor... gcc=C2=
=A0 -E<br>|
 checking whether arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/gtk+3/3.22.<wbr>8-r0/recipe-=
sysroot and cc understand -c and -o together... yes<br>| checking whether m=
ake sets $(MAKE)... (cached) yes<span class=3D"gmail-im"><br>| checking for=
 grep that handles long lines and -e... /home/ngigijoe/src/git/pyro/<wbr>po=
ky/cubieboard2/tmp/<wbr>hosttools/grep<br>| checking for egrep... /home/ngi=
gijoe/src/git/pyro/<wbr>poky/cubieboard2/tmp/<wbr>hosttools/grep -E<br></sp=
an><span class=3D"gmail-im">| checking for ANSI C header files... yes<br>| =
checking for sys/types.h... yes<br>| checking for sys/stat.h... yes<br>| ch=
ecking for stdlib.h... yes<br>| checking for string.h... yes<br>| checking =
for memory.h... yes<br>| checking for strings.h... yes<br>| checking for in=
ttypes.h... yes<br>| checking for stdint.h... yes<br>| checking for unistd.=
h... yes<br></span>| checking minix/config.h usability... no<br>| checking =
minix/config.h presence... no<br>| checking for minix/config.h... no<br>| c=
hecking whether it is safe to define __EXTENSIONS__... yes<span class=3D"gm=
ail-im"><br>| checking for a sed that does not truncate output... (cached) =
sed<br></span>| checking whether NLS is requested... yes<br>| checking for =
msgfmt... /home/ngigijoe/src/git/pyro/<wbr>poky/cubieboard2/tmp/work/<wbr>c=
ortexa7hf-neon-vfpv4-poky-<wbr>linux-gnueabi/gtk+3/3.22.8-r0/<wbr>recipe-sy=
sroot-native/usr/bin/<wbr>msgfmt<br>| checking for gmsgfmt... /home/ngigijo=
e/src/git/pyro/<wbr>poky/cubieboard2/tmp/work/<wbr>cortexa7hf-neon-vfpv4-po=
ky-<wbr>linux-gnueabi/gtk+3/3.22.8-r0/<wbr>recipe-sysroot-native/usr/bin/<w=
br>msgfmt<br>| checking for xgettext... /home/ngigijoe/src/git/pyro/<wbr>po=
ky/cubieboard2/tmp/work/<wbr>cortexa7hf-neon-vfpv4-poky-<wbr>linux-gnueabi/=
gtk+3/3.22.8-r0/<wbr>recipe-sysroot-native/usr/bin/<wbr>xgettext<br>| check=
ing for msgmerge... /home/ngigijoe/src/git/pyro/<wbr>poky/cubieboard2/tmp/w=
ork/<wbr>cortexa7hf-neon-vfpv4-poky-<wbr>linux-gnueabi/gtk+3/3.22.8-r0/<wbr=
>recipe-sysroot-native/usr/bin/<wbr>msgmerge<br>|
 checking for ld used by arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve=
=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/gtk+3/3.22.<wbr>8-r0/recipe-=
sysroot... arm-poky-linux-gnueabi-ld --sysroot=3D/home/ngigijoe/src/<wbr>gi=
t/pyro/poky/cubieboard2/tmp/<wbr>work/cortexa7hf-neon-vfpv4-<wbr>poky-linux=
-gnueabi/gtk+3/3.22.<wbr>8-r0/recipe-sysroot<br>| checking if the linker (a=
rm-poky-linux-gnueabi-ld --sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/=
cubieboard2/tmp/<wbr>work/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/gtk=
+3/3.22.<wbr>8-r0/recipe-sysroot ) is GNU ld... yes<br>| checking for share=
d library run path origin... done<br>| checking for CFPreferencesCopyAppVal=
ue... no<br>| checking for CFLocaleCopyCurrent... no<br>| checking for GNU =
gettext in libc... yes<br>| checking whether to use NLS... yes<br>| checkin=
g where the gettext function comes from... libc<br>| checking for native Wi=
n32... no<br>|
 checking for arm-poky-linux-gnueabi-c++... arm-poky-linux-gnueabi-g++=C2=
=A0=20
-march=3Darmv7ve -mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex=
-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/gtk+3/3.22.<wbr>8-r0/recipe-=
sysroot<br>| checking whether we are using the GNU C++ compiler... yes<br>|
 checking whether arm-poky-linux-gnueabi-g++=C2=A0 -march=3Darmv7ve=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/gtk+3/3.22.<wbr>8-r0/recipe-=
sysroot accepts -g... yes<br>|
 checking dependency style of arm-poky-linux-gnueabi-g++=C2=A0 -march=3Darm=
v7ve
 -mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/gtk+3/3.22.<wbr>8-r0/recipe-=
sysroot... none<span class=3D"gmail-im"><br>| checking how to print strings=
... printf<br></span><span class=3D"gmail-im">| checking for a sed that doe=
s not truncate output... (cached) sed<br></span><span class=3D"gmail-im">| =
checking for fgrep... /home/ngigijoe/src/git/pyro/<wbr>poky/cubieboard2/tmp=
/<wbr>hosttools/grep -F<br></span>|
 checking for ld used by arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve=
=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/gtk+3/3.22.<wbr>8-r0/recipe-=
sysroot... arm-poky-linux-gnueabi-ld --sysroot=3D/home/ngigijoe/src/<wbr>gi=
t/pyro/poky/cubieboard2/tmp/<wbr>work/cortexa7hf-neon-vfpv4-<wbr>poky-linux=
-gnueabi/gtk+3/3.22.<wbr>8-r0/recipe-sysroot<br>| checking if the linker (a=
rm-poky-linux-gnueabi-ld --sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/=
cubieboard2/tmp/<wbr>work/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/gtk=
+3/3.22.<wbr>8-r0/recipe-sysroot ) is GNU ld... yes<span class=3D"gmail-im"=
><br>| checking for BSD- or MS-compatible name lister (nm)... arm-poky-linu=
x-gnueabi-nm<br>| checking the name lister (arm-poky-linux-gnueabi-nm) inte=
rface... BSD nm<br>| checking whether ln -s works... yes<br>| checking the =
maximum length of command line arguments... 1572864<br>| checking how to co=
nvert x86_64-pc-linux-gnu file names to arm-poky-linux-gnueabi format... fu=
nc_convert_file_noop<br>| checking how to convert x86_64-pc-linux-gnu file =
names to toolchain format... func_convert_file_noop<br></span>| checking fo=
r arm-poky-linux-gnueabi-ld --sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/po=
ky/cubieboard2/tmp/<wbr>work/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/=
gtk+3/3.22.<wbr>8-r0/recipe-sysroot=C2=A0 option to reload object files... =
-r<span class=3D"gmail-im"><br>| checking for arm-poky-linux-gnueabi-<wbr>o=
bjdump... arm-poky-linux-gnueabi-objdump<br>| checking how to recognize dep=
endent libraries... pass_all<br>| checking for arm-poky-linux-gnueabi-<wbr>=
dlltool... no<br>| checking for dlltool... no<br>| checking how to associat=
e runtime and link libraries... printf %s\n<br>| checking for arm-poky-linu=
x-gnueabi-ar... arm-poky-linux-gnueabi-ar<br>| checking for archiver @FILE =
support... @<br></span>| checking for arm-poky-linux-gnueabi-strip..<wbr>. =
(cached) arm-poky-linux-gnueabi-strip<br>| checking for arm-poky-linux-gnue=
abi-ranlib.<wbr>.. arm-poky-linux-gnueabi-ranlib<br>|
 checking command to parse arm-poky-linux-gnueabi-nm output from=20
arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve -mfpu=3Dneon-vfpv4=C2=A0=
=20
-mfloat-abi=3Dhard -mcpu=3Dcortex-a7 --sysroot=3D/home/ngigijoe/src/<wbr>gi=
t/pyro/poky/cubieboard2/tmp/<wbr>work/cortexa7hf-neon-vfpv4-<wbr>poky-linux=
-gnueabi/gtk+3/3.22.<wbr>8-r0/recipe-sysroot object... ok<br>| checking for=
 sysroot... /home/ngigijoe/src/git/pyro/<wbr>poky/cubieboard2/tmp/work/<wbr=
>cortexa7hf-neon-vfpv4-poky-<wbr>linux-gnueabi/gtk+3/3.22.8-r0/<wbr>recipe-=
sysroot<span class=3D"gmail-im"><br>| checking for a working dd... /home/ng=
igijoe/src/git/pyro/<wbr>poky/cubieboard2/tmp/<wbr>hosttools/dd<br>| checki=
ng how to truncate binary pipes... /home/ngigijoe/src/git/pyro/<wbr>poky/cu=
bieboard2/tmp/<wbr>hosttools/dd bs=3D4096 count=3D1<br>| checking for arm-p=
oky-linux-gnueabi-mt... no<br>| checking for mt... no<br>| checking if : is=
 a manifest tool... no<br></span><span class=3D"gmail-im">| checking for dl=
fcn.h... yes<br>| checking for objdir... .libs<br></span>|
 checking if arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/gtk+3/3.22.<wbr>8-r0/recipe-=
sysroot supports -fno-rtti -fno-exceptions... no<br>|
 checking for arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/gtk+3/3.22.<wbr>8-r0/recipe-=
sysroot option to produce PIC... -fPIC -DPIC<br>|
 checking if arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/gtk+3/3.22.<wbr>8-r0/recipe-=
sysroot PIC flag -fPIC -DPIC works... yes<br>|
 checking if arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/gtk+3/3.22.<wbr>8-r0/recipe-=
sysroot static flag -static works... yes<br>|
 checking if arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/gtk+3/3.22.<wbr>8-r0/recipe-=
sysroot supports -c -o file.o... yes<br>|
 checking if arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/gtk+3/3.22.<wbr>8-r0/recipe-=
sysroot supports -c -o file.o... (cached) yes<br>|
 checking whether the arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/gtk+3/3.22.<wbr>8-r0/recipe-=
sysroot linker (arm-poky-linux-gnueabi-ld --sysroot=3D/home/ngigijoe/src/<w=
br>git/pyro/poky/cubieboard2/tmp/<wbr>work/cortexa7hf-neon-vfpv4-<wbr>poky-=
linux-gnueabi/gtk+3/3.22.<wbr>8-r0/recipe-sysroot ) supports shared librari=
es... yes<span class=3D"gmail-im"><br>| checking whether -lc should be expl=
icitly linked in... no<br>| checking dynamic linker characteristics... GNU/=
Linux ld.so<br>| checking how to hardcode library paths into programs... im=
mediate<br>| checking whether stripping libraries is possible... yes<br>| c=
hecking if libtool supports shared libraries... yes<br>| checking whether t=
o build shared libraries... yes<br>| checking whether to build static libra=
ries... no<br></span>|
 checking how to run the C++ preprocessor... arm-poky-linux-gnueabi-g++=C2=
=A0
 -march=3Darmv7ve -mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcorte=
x-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/gtk+3/3.22.<wbr>8-r0/recipe-=
sysroot -E<br>|
 checking for ld used by arm-poky-linux-gnueabi-g++=C2=A0 -march=3Darmv7ve=
=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/gtk+3/3.22.<wbr>8-r0/recipe-=
sysroot... arm-poky-linux-gnueabi-ld --sysroot=3D/home/ngigijoe/src/<wbr>gi=
t/pyro/poky/cubieboard2/tmp/<wbr>work/cortexa7hf-neon-vfpv4-<wbr>poky-linux=
-gnueabi/gtk+3/3.22.<wbr>8-r0/recipe-sysroot<br>| checking if the linker (a=
rm-poky-linux-gnueabi-ld --sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/=
cubieboard2/tmp/<wbr>work/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/gtk=
+3/3.22.<wbr>8-r0/recipe-sysroot ) is GNU ld... yes<br>|
 checking whether the arm-poky-linux-gnueabi-g++=C2=A0 -march=3Darmv7ve=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/gtk+3/3.22.<wbr>8-r0/recipe-=
sysroot linker (arm-poky-linux-gnueabi-ld --sysroot=3D/home/ngigijoe/src/<w=
br>git/pyro/poky/cubieboard2/tmp/<wbr>work/cortexa7hf-neon-vfpv4-<wbr>poky-=
linux-gnueabi/gtk+3/3.22.<wbr>8-r0/recipe-sysroot ) supports shared librari=
es... yes<br>|
 checking for arm-poky-linux-gnueabi-g++=C2=A0 -march=3Darmv7ve=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/gtk+3/3.22.<wbr>8-r0/recipe-=
sysroot option to produce PIC... -fPIC -DPIC<br>|
 checking if arm-poky-linux-gnueabi-g++=C2=A0 -march=3Darmv7ve=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/gtk+3/3.22.<wbr>8-r0/recipe-=
sysroot PIC flag -fPIC -DPIC works... yes<br>|
 checking if arm-poky-linux-gnueabi-g++=C2=A0 -march=3Darmv7ve=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/gtk+3/3.22.<wbr>8-r0/recipe-=
sysroot static flag -static works... yes<br>|
 checking if arm-poky-linux-gnueabi-g++=C2=A0 -march=3Darmv7ve=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/gtk+3/3.22.<wbr>8-r0/recipe-=
sysroot supports -c -o file.o... yes<br>|
 checking if arm-poky-linux-gnueabi-g++=C2=A0 -march=3Darmv7ve=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/gtk+3/3.22.<wbr>8-r0/recipe-=
sysroot supports -c -o file.o... (cached) yes<br>|
 checking whether the arm-poky-linux-gnueabi-g++=C2=A0 -march=3Darmv7ve=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/gtk+3/3.22.<wbr>8-r0/recipe-=
sysroot linker (arm-poky-linux-gnueabi-ld --sysroot=3D/home/ngigijoe/src/<w=
br>git/pyro/poky/cubieboard2/tmp/<wbr>work/cortexa7hf-neon-vfpv4-<wbr>poky-=
linux-gnueabi/gtk+3/3.22.<wbr>8-r0/recipe-sysroot ) supports shared librari=
es... yes<br>| checking dynamic linker characteristics... (cached) GNU/Linu=
x ld.so<span class=3D"gmail-im"><br>| checking how to hardcode library path=
s into programs... immediate<br></span>| configure: creating ./<a href=3D"h=
ttp://config.lt" target=3D"_blank">config.lt</a><br>| <a href=3D"http://con=
fig.lt" target=3D"_blank">config.lt</a>: creating arm-poky-linux-gnueabi-li=
btool<br>| checking for special C compiler options needed for large files..=
. no<br>| checking for _FILE_OFFSET_BITS value needed for large files... 64=
<br>|
 checking dependency style of arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darm=
v7ve
 -mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/gtk+3/3.22.<wbr>8-r0/recipe-=
sysroot... none<br>| checking for arm-poky-linux-gnueabi-nm... /home/ngigij=
oe/src/git/pyro/<wbr>poky/cubieboard2/tmp/work/<wbr>cortexa7hf-neon-vfpv4-p=
oky-<wbr>linux-gnueabi/gtk+3/3.22.8-r0/<wbr>recipe-sysroot-native/usr/bin/<=
wbr>arm-poky-linux-gnueabi/arm-<wbr>poky-linux-gnueabi-nm<br>| checking for=
 some Win32 platform... no<br>| checking for shm_open in -lrt... yes<br>| c=
hecking for posix_fallocate... yes<br>| checking for flockfile... yes<br>| =
checking for _lock_file... no<br>| checking for arm-poky-linux-gnueabi-pkg-=
<wbr>config... no<br>| checking for pkg-config... /home/ngigijoe/src/git/py=
ro/<wbr>poky/cubieboard2/tmp/work/<wbr>cortexa7hf-neon-vfpv4-poky-<wbr>linu=
x-gnueabi/gtk+3/3.22.8-r0/<wbr>recipe-sysroot-native/usr/bin/<wbr>pkg-confi=
g<br>| configure: WARNING: using cross tools not prefixed with host triplet=
<br>| checking pkg-config is at least version 0.9.0... yes<br>| checking fo=
r wayland-scanner... /home/ngigijoe/src/git/pyro/<wbr>poky/cubieboard2/tmp/=
work/<wbr>cortexa7hf-neon-vfpv4-poky-<wbr>linux-gnueabi/gtk+3/3.22.8-r0/<wb=
r>recipe-sysroot-native/usr/bin/<wbr>wayland-scanner<br>| checking whether =
build environment is sane... yes<br>| checking for BASE_DEPENDENCIES... yes=
<br>| checking for CAIRO_BACKEND... yes<br>| checking for GMODULE... yes<br=
>| checking whether to write dependencies into .pc files... no<br>| checkin=
g for perl5... no<br>| checking for perl... /home/ngigijoe/src/git/pyro/<wb=
r>poky/cubieboard2/tmp/<wbr>hosttools/perl<br>| checking for lstat... yes<b=
r>| checking for mkstemp... yes<br>| checking for localtime_r... yes<br>| c=
hecking for _NL_TIME_FIRST_WEEKDAY... yes<br>| checking for _NL_MEASUREMENT=
_MEASUREMENT... yes<br>| checking for _NL_PAPER_HEIGHT... yes<br>| checking=
 for _NL_PAPER_WIDTH... yes<br>| checking for extra flags to get ANSI libra=
ry prototypes... none needed<br>| checking for the BeOS... no<br>| checking=
 for HP-UX... no<br>| checking for arm-poky-linux-gnueabi-pkg-<wbr>config..=
. /home/ngigijoe/src/git/pyro/<wbr>poky/cubieboard2/tmp/work/<wbr>cortexa7h=
f-neon-vfpv4-poky-<wbr>linux-gnueabi/gtk+3/3.22.8-r0/<wbr>recipe-sysroot-na=
tive/usr/bin/<wbr>pkg-config<br>| checking pkg-config is at least version 0=
.16... yes<br>| checking for GLIB - version &gt;=3D 2.49.4... yes (version =
2.50.3)<br>| checking build system&#39;s pkg-config is at least version 0.1=
6... yes<br>| checking for bind_textdomain_codeset... yes<br>| checking lin=
ux/memfd.h usability... yes<br>| checking linux/memfd.h presence... yes<br>=
| checking for linux/memfd.h... yes<br>| checking sys/mman.h usability... y=
es<br>| checking sys/mman.h presence... yes<br>| checking for sys/mman.h...=
 yes<br>| checking sys/time.h usability... yes<br>| checking sys/time.h pre=
sence... yes<br>| checking for sys/time.h... yes<br>| checking for unistd.h=
... (cached) yes<br>| checking ftw.h usability... yes<br>| checking ftw.h p=
resence... yes<br>| checking for ftw.h... yes<br>| checking for GNU ftw ext=
ensions... yes<br>| checking for stdlib.h... (cached) yes<br>| checking for=
 unistd.h... (cached) yes<br>| checking for sys/param.h... yes<br>| checkin=
g for getpagesize... (cached) yes<span class=3D"gmail-im"><br>| NOTE: The f=
ollowing config.log files may provide further information.<br></span>| NOTE=
: /home/ngigijoe/src/git/pyro/<wbr>poky/cubieboard2/tmp/work/<wbr>cortexa7h=
f-neon-vfpv4-poky-<wbr>linux-gnueabi/gtk+3/3.22.8-r0/<wbr>build/config.log<=
br>| ERROR: configure failed<br>| checking for working mmap... (cached) yes=
<br>| checking for mallinfo... yes<br>| checking for getresuid... yes<br>| =
checking for uid_t in sys/types.h... (cached) {ac_cv_type_uid_t=3Dyes}<br>|=
 checking for round in -lm... yes<br>| checking for round... yes<br>| check=
ing for rint... yes<br>| checking for nearbyint... yes<br>| checking for si=
ncos... yes<br>| checking for exp2... yes<br>| checking for log2... yes<br>=
| checking whether isnan is declared... yes<br>| checking whether isinf is =
declared... yes<br>| checking crt_externs.h usability... no<br>| checking c=
rt_externs.h presence... no<br>| checking for crt_externs.h... no<br>| chec=
king for _NSGetEnviron... no<br>| checking whether to build dynamic modules=
... yes<br>| checking whether dynamic modules work... yes<br>| checking imm=
odules to build...<br>| checking sys/systeminfo.h usability... no<br>| chec=
king sys/systeminfo.h presence... no<br>| checking for sys/systeminfo.h... =
no<br>| checking sys/sysinfo.h usability... yes<br>| checking sys/sysinfo.h=
 presence... yes<br>| checking for sys/sysinfo.h... yes<br>| checking for X=
OpenDisplay... yes<br>| checking for XextFindDisplay... yes<br>| checking f=
or xReply... yes<br>| checking for XkbQueryExtension... yes<br>| checking f=
or XShapeCombineMask... yes<br>| checking for XSyncQueryExtension... yes<br=
>| checking for X11/extensions/sync.h... yes<br>| checking for XGetEventDat=
a... yes<br>| checking X11/extensions/XInput2.h usability... yes<br>| check=
ing X11/extensions/XInput2.h presence... yes<br>| checking for X11/extensio=
ns/XInput2.h... yes<br>| checking for XIAllowTouchEvents... yes<br>| checki=
ng for XIScrollClassInfo.number... yes<br>| checking Pango flags... -I/home=
/ngigijoe/src/git/pyro/<wbr>poky/cubieboard2/tmp/work/<wbr>cortexa7hf-neon-=
vfpv4-poky-<wbr>linux-gnueabi/gtk+3/3.22.8-r0/<wbr>recipe-sysroot/usr/inclu=
de/<wbr>pango-1.0 -I/home/ngigijoe/src/git/pyro/<wbr>poky/cubieboard2/tmp/w=
ork/<wbr>cortexa7hf-neon-vfpv4-poky-<wbr>linux-gnueabi/gtk+3/3.22.8-r0/<wbr=
>recipe-sysroot/usr/include/<wbr>harfbuzz -I/home/ngigijoe/src/git/pyro/<wb=
r>poky/cubieboard2/tmp/work/<wbr>cortexa7hf-neon-vfpv4-poky-<wbr>linux-gnue=
abi/gtk+3/3.22.8-r0/<wbr>recipe-sysroot/usr/include/<wbr>pango-1.0 -I/home/=
ngigijoe/src/git/pyro/<wbr>poky/cubieboard2/tmp/work/<wbr>cortexa7hf-neon-v=
fpv4-poky-<wbr>linux-gnueabi/gtk+3/3.22.8-r0/<wbr>recipe-sysroot/usr/includ=
e/<wbr>cairo -I/home/ngigijoe/src/git/pyro/<wbr>poky/cubieboard2/tmp/work/<=
wbr>cortexa7hf-neon-vfpv4-poky-<wbr>linux-gnueabi/gtk+3/3.22.8-r0/<wbr>reci=
pe-sysroot/usr/include/<wbr>glib-2.0 -I/home/ngigijoe/src/git/pyro/<wbr>pok=
y/cubieboard2/tmp/work/<wbr>cortexa7hf-neon-vfpv4-poky-<wbr>linux-gnueabi/g=
tk+3/3.22.8-r0/<wbr>recipe-sysroot/usr/lib/glib-2.<wbr>0/include -I/home/ng=
igijoe/src/git/pyro/<wbr>poky/cubieboard2/tmp/work/<wbr>cortexa7hf-neon-vfp=
v4-poky-<wbr>linux-gnueabi/gtk+3/3.22.8-r0/<wbr>recipe-sysroot/usr/include/=
<wbr>pixman-1 -I/home/ngigijoe/src/git/pyro/<wbr>poky/cubieboard2/tmp/work/=
<wbr>cortexa7hf-neon-vfpv4-poky-<wbr>linux-gnueabi/gtk+3/3.22.8-r0/<wbr>rec=
ipe-sysroot/usr/include/<wbr>freetype2 -I/home/ngigijoe/src/git/pyro/<wbr>p=
oky/cubieboard2/tmp/work/<wbr>cortexa7hf-neon-vfpv4-poky-<wbr>linux-gnueabi=
/gtk+3/3.22.8-r0/<wbr>recipe-sysroot/usr/include/<wbr>libpng16 -lpangocairo=
-1.0 -lpango-1.0 -lgobject-2.0 -lglib-2.0 -lcairo<br>| checking for GDK_DEP=
... no<br>|
 configure: error: Package requirements (pango pangocairo gdk-pixbuf-2.0
 &gt;=3D 2.30.0 cairo &gt;=3D 1.14.0 cairo-gobject &gt;=3D 1.14.0 gio-unix-=
2.0
 &gt;=3D 2.49.4 fontconfig x11 xext xi xrandr xcursor xfixes xcomposite=20
xdamage wayland-client &gt;=3D 1.9.91 wayland-protocols &gt;=3D 1.7=20
xkbcommon &gt;=3D 0.2.0 wayland-cursor &gt;=3D 1.9.91 wayland-egl=C2=A0=C2=
=A0=20
cairo-xlib cairo epoxy &gt;=3D 1.0) were not met:<br>| <br>| No package &#3=
9;wayland-egl&#39; found<br>| <br>| Consider adjusting the PKG_CONFIG_PATH =
environment variable if you<br>| installed software in a non-standard prefi=
x.<br>| <br>| Alternatively, you may set the environment variables GDK_DEP_=
CFLAGS<br>| and GDK_DEP_LIBS to avoid the need to call pkg-config.<br>| See=
 the pkg-config man page for more details.<span class=3D"gmail-im"><br>| WA=
RNING: exit code 1 from a shell command.<br></span>| ERROR: Function failed=
: do_configure (log file is located at /home/ngigijoe/src/git/pyro/<wbr>pok=
y/cubieboard2/tmp/work/<wbr>cortexa7hf-neon-vfpv4-poky-<wbr>linux-gnueabi/g=
tk+3/3.22.8-r0/<wbr>temp/log.do_configure.28607)<br>ERROR: Task (/home/ngig=
ijoe/src/git/pyro/<wbr>poky/meta/recipes-gnome/gtk+/<wbr>gtk+3_3.22.8.bb:do=
_configure) failed with exit code &#39;1&#39;<br>ERROR: xserver-xorg-2_1.19=
.1-r0 do_configure: configure failed<br>ERROR: xserver-xorg-2_1.19.1-r0 do_=
configure: Function failed: do_configure (log file is located at /home/ngig=
ijoe/src/git/pyro/<wbr>poky/cubieboard2/tmp/work/<wbr>cortexa7hf-neon-vfpv4=
-poky-<wbr>linux-gnueabi/xserver-xorg/2_<wbr>1.19.1-r0/temp/log.do_<wbr>con=
figure.28609)<br>ERROR: Logfile of failure stored in: /home/ngigijoe/src/gi=
t/pyro/<wbr>poky/cubieboard2/tmp/work/<wbr>cortexa7hf-neon-vfpv4-poky-<wbr>=
linux-gnueabi/xserver-xorg/2_<wbr>1.19.1-r0/temp/log.do_<wbr>configure.2860=
9<span class=3D"gmail-im"><br>Log data follows:<br>|
 DEBUG: SITE files [&#39;endian-little&#39;, &#39;bit-32&#39;, &#39;arm-com=
mon&#39;, &#39;arm-32&#39;,=20
&#39;common-linux&#39;, &#39;common-glibc&#39;, &#39;arm-linux&#39;, &#39;a=
rm-linux-gnueabi&#39;,=20
&#39;common&#39;]<br>| DEBUG: Executing shell function autotools_preconfigu=
re<br>| DEBUG: Shell function autotools_preconfigure finished<br>| DEBUG: E=
xecuting python function autotools_aclocals<br>|
 DEBUG: SITE files [&#39;endian-little&#39;, &#39;bit-32&#39;, &#39;arm-com=
mon&#39;, &#39;arm-32&#39;,=20
&#39;common-linux&#39;, &#39;common-glibc&#39;, &#39;arm-linux&#39;, &#39;a=
rm-linux-gnueabi&#39;,=20
&#39;common&#39;]<br>| DEBUG: Python function autotools_aclocals finished<b=
r>| DEBUG: Executing shell function do_configure<br></span>| NOTE: Executin=
g ACLOCAL=3D&quot;aclocal --system-acdir=3D/home/ngigijoe/<wbr>src/git/pyro=
/poky/cubieboard2/<wbr>tmp/work/cortexa7hf-neon-<wbr>vfpv4-poky-linux-gnuea=
bi/<wbr>xserver-xorg/2_1.19.1-r0/<wbr>recipe-sysroot/usr/share/<wbr>aclocal=
/&quot; autoreconf --verbose --install --force --exclude=3Dautopoint -I /ho=
me/ngigijoe/src/git/pyro/<wbr>poky/cubieboard2/tmp/work/<wbr>cortexa7hf-neo=
n-vfpv4-poky-<wbr>linux-gnueabi/xserver-xorg/2_<wbr>1.19.1-r0/xorg-server-1=
.19.1/ -I /home/ngigijoe/src/git/pyro/<wbr>poky/cubieboard2/tmp/work/<wbr>c=
ortexa7hf-neon-vfpv4-poky-<wbr>linux-gnueabi/xserver-xorg/2_<wbr>1.19.1-r0/=
xorg-server-1.19.1/<wbr>m4/ -I /home/ngigijoe/src/git/pyro/<wbr>poky/cubieb=
oard2/tmp/work/<wbr>cortexa7hf-neon-vfpv4-poky-<wbr>linux-gnueabi/xserver-x=
org/2_<wbr>1.19.1-r0/recipe-sysroot-<wbr>native/usr/share/aclocal/<span cla=
ss=3D"gmail-im"><br>| automake (GNU automake) 1.15<br>| Copyright (C) 2014 =
Free Software Foundation, Inc.<br>| License GPLv2+: GNU GPL version 2 or la=
ter &lt;<a href=3D"http://gnu.org/licenses/gpl-2.0.html" target=3D"_blank">=
http://gnu.org/licenses/gpl-<wbr>2.0.html</a>&gt;<br>| This is free softwar=
e: you are free to change and redistribute it.<br>| There is NO WARRANTY, t=
o the extent permitted by law.<br>| <br>| Written by Tom Tromey &lt;<a href=
=3D"mailto:tromey@redhat.com" target=3D"_blank">tromey@redhat.com</a>&gt;<b=
r>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 and Alexandre Duret-Lutz &lt;=
<a href=3D"mailto:adl@gnu.org" target=3D"_blank">adl@gnu.org</a>&gt;.<br>| =
AUTOV is 1<br>| autoreconf: Entering directory `.&#39;<br>| autoreconf: <a =
href=3D"http://configure.ac" target=3D"_blank">configure.ac</a>: not using =
Gettext<br></span>| autoreconf: running: aclocal --system-acdir=3D/home/ngi=
gijoe/<wbr>src/git/pyro/poky/cubieboard2/<wbr>tmp/work/cortexa7hf-neon-<wbr=
>vfpv4-poky-linux-gnueabi/<wbr>xserver-xorg/2_1.19.1-r0/<wbr>recipe-sysroot=
/usr/share/<wbr>aclocal/ -I /home/ngigijoe/src/git/pyro/<wbr>poky/cubieboar=
d2/tmp/work/<wbr>cortexa7hf-neon-vfpv4-poky-<wbr>linux-gnueabi/xserver-xorg=
/2_<wbr>1.19.1-r0/xorg-server-1.19.1/ -I /home/ngigijoe/src/git/pyro/<wbr>p=
oky/cubieboard2/tmp/work/<wbr>cortexa7hf-neon-vfpv4-poky-<wbr>linux-gnueabi=
/xserver-xorg/2_<wbr>1.19.1-r0/xorg-server-1.19.1/<wbr>m4/ -I /home/ngigijo=
e/src/git/pyro/<wbr>poky/cubieboard2/tmp/work/<wbr>cortexa7hf-neon-vfpv4-po=
ky-<wbr>linux-gnueabi/xserver-xorg/2_<wbr>1.19.1-r0/recipe-sysroot-<wbr>nat=
ive/usr/share/aclocal/ --force -I m4<span class=3D"gmail-im"><br>| autoreco=
nf: <a href=3D"http://configure.ac" target=3D"_blank">configure.ac</a>: tra=
cing<br>| autoreconf: running: libtoolize --copy --force<br></span>| libtoo=
lize: putting auxiliary files in &#39;.&#39;.<span class=3D"gmail-im"><br>|=
 libtoolize: copying file &#39;./ltmain.sh&#39;<br>| libtoolize: putting ma=
cros in AC_CONFIG_MACRO_DIRS, &#39;m4&#39;.<br>| libtoolize: copying file &=
#39;m4/libtool.m4&#39;<br>| libtoolize: copying file &#39;m4/ltoptions.m4&#=
39;<br>| libtoolize: copying file &#39;m4/ltsugar.m4&#39;<br>| libtoolize: =
copying file &#39;m4/ltversion.m4&#39;<br>| libtoolize: copying file &#39;m=
4/lt~obsolete.m4&#39;<br></span>| autoreconf: running: /home/ngigijoe/src/g=
it/pyro/<wbr>poky/cubieboard2/tmp/work/<wbr>cortexa7hf-neon-vfpv4-poky-<wbr=
>linux-gnueabi/xserver-xorg/2_<wbr>1.19.1-r0/recipe-sysroot-<wbr>native/usr=
/bin/autoconf --include=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2=
/tmp/<wbr>work/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/xserver-<wbr>x=
org/2_1.19.1-r0/xorg-server-<wbr>1.19.1/ --include=3D/home/ngigijoe/src/<wb=
r>git/pyro/poky/cubieboard2/tmp/<wbr>work/cortexa7hf-neon-vfpv4-<wbr>poky-l=
inux-gnueabi/xserver-<wbr>xorg/2_1.19.1-r0/xorg-server-<wbr>1.19.1/m4/ --in=
clude=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work/cor=
texa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/xserver-<wbr>xorg/2_1.19.1-r0/re=
cipe-<wbr>sysroot-native/usr/share/<wbr>aclocal/ --force<br>| autoreconf: r=
unning: /home/ngigijoe/src/git/pyro/<wbr>poky/cubieboard2/tmp/work/<wbr>cor=
texa7hf-neon-vfpv4-poky-<wbr>linux-gnueabi/xserver-xorg/2_<wbr>1.19.1-r0/re=
cipe-sysroot-<wbr>native/usr/bin/autoheader --include=3D/home/ngigijoe/src/=
<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work/cortexa7hf-neon-vfpv4-<wbr>pok=
y-linux-gnueabi/xserver-<wbr>xorg/2_1.19.1-r0/xorg-server-<wbr>1.19.1/ --in=
clude=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work/cor=
texa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/xserver-<wbr>xorg/2_1.19.1-r0/xo=
rg-server-<wbr>1.19.1/m4/ --include=3D/home/ngigijoe/src/<wbr>git/pyro/poky=
/cubieboard2/tmp/<wbr>work/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/xs=
erver-<wbr>xorg/2_1.19.1-r0/recipe-<wbr>sysroot-native/usr/share/<wbr>acloc=
al/ --force<br>| autoreconf: running: automake --add-missing --copy --force=
-missing<br>| <a href=3D"http://configure.ac:35" target=3D"_blank">configur=
e.ac:35</a>: installing &#39;./compile&#39;<br>| <a href=3D"http://configur=
e.ac:34" target=3D"_blank">configure.ac:34</a>: installing &#39;./missing&#=
39;<br>| Xext/Makefile.am: installing &#39;./depcomp&#39;<br>| hw/dmx/Makef=
ile.am:25: warning: source file &#39;$(top_srcdir)/mi/miinitext.c&#39; is i=
n a subdirectory,<br>| hw/dmx/Makefile.am:25: but option &#39;subdir-object=
s&#39; is disabled<br>| automake: warning: possible forward-incompatibility=
.<br>| automake: At least a source file is in a subdirectory, but the &#39;=
subdir-objects&#39;<br>| automake: automake option hasn&#39;t been enabled.=
=C2=A0 For now, the corresponding output<br>| automake: object file(s) will=
 be placed in the top-level directory.=C2=A0 However,<br>| automake: this b=
ehaviour will change in future Automake versions: they will<br>| automake: =
unconditionally cause object files to be placed in the same subdirectory<br=
>| automake: of the corresponding sources.<br>| automake: You are advised t=
o start using &#39;subdir-objects&#39; option throughout your<br>| automake=
: project, to avoid future incompatibilities.<br>| hw/dmx/Makefile.am:6: wa=
rning: source file &#39;$(top_srcdir)/Xext/panoramiX.<wbr>c&#39; is in a su=
bdirectory,<br>| hw/dmx/Makefile.am:6: but option &#39;subdir-objects&#39; =
is disabled<br>| hw/dmx/config/Makefile.am:23: warning: source file &#39;$(=
top_srcdir)/os/strlcpy.c&#39; is in a subdirectory,<br>| hw/dmx/config/Make=
file.am:23: but option &#39;subdir-objects&#39; is disabled<br>| hw/dmx/con=
fig/Makefile.am:42: warning: source file &#39;$(top_srcdir)/hw/dmx/dmxlog.<=
wbr>c&#39; is in a subdirectory,<br>| hw/dmx/config/Makefile.am:42: but opt=
ion &#39;subdir-objects&#39; is disabled<br>| hw/kdrive/src/Makefile.am:15:=
 warning: source file &#39;$(top_srcdir)/mi/miinitext.c&#39; is in a subdir=
ectory,<br>| hw/kdrive/src/Makefile.am:15: but option &#39;subdir-objects&#=
39; is disabled<br>| hw/vfb/Makefile.am:9: warning: source file &#39;$(top_=
srcdir)/mi/miinitext.c&#39; is in a subdirectory,<br>| hw/vfb/Makefile.am:9=
: but option &#39;subdir-objects&#39; is disabled<br>| hw/xfree86/dixmods/M=
akefile.<wbr>am:47: warning: source file &#39;$(top_srcdir)/mi/miinitext.c&=
#39; is in a subdirectory,<br>| hw/xfree86/dixmods/Makefile.<wbr>am:47: but=
 option &#39;subdir-objects&#39; is disabled<br>| hw/xfree86/glamor_egl/<wb=
r>Makefile.am:24: warning: source file &#39;$(top_srcdir)/glamor/glamor_<wb=
r>egl.c&#39; is in a subdirectory,<br>| hw/xfree86/glamor_egl/<wbr>Makefile=
.am:24: but option &#39;subdir-objects&#39; is disabled<br>| hw/xfree86/gla=
mor_egl/<wbr>Makefile.am:24: warning: source file &#39;$(top_srcdir)/glamor=
/glamor_<wbr>eglmodule.c&#39; is in a subdirectory,<br>| hw/xfree86/glamor_=
egl/<wbr>Makefile.am:24: but option &#39;subdir-objects&#39; is disabled<br=
>| hw/xfree86/int10/Makefile.am:<wbr>43: warning: source file &#39;$(srcdir=
)/../os-support/<wbr>linux/int10/vm86/linux_vm86.c&#39; is in a subdirector=
y,<br>| hw/xfree86/int10/Makefile.am:<wbr>43: but option &#39;subdir-object=
s&#39; is disabled<br>| hw/xfree86/int10/Makefile.am:<wbr>43: warning: sour=
ce file &#39;$(srcdir)/../os-support/<wbr>linux/int10/linux.c&#39; is in a =
subdirectory,<br>| hw/xfree86/int10/Makefile.am:<wbr>43: but option &#39;su=
bdir-objects&#39; is disabled<br>| hw/xfree86/os-support/bsd/<wbr>Makefile.=
am:57: warning: source file &#39;$(srcdir)/../shared/posix_<wbr>tty.c&#39; =
is in a subdirectory,<br>| hw/xfree86/os-support/bsd/<wbr>Makefile.am:57: b=
ut option &#39;subdir-objects&#39; is disabled<br>| hw/xfree86/os-support/b=
sd/<wbr>Makefile.am:57: warning: source file &#39;$(srcdir)/../shared/sigio=
.c&#39; is in a subdirectory,<br>| hw/xfree86/os-support/bsd/<wbr>Makefile.=
am:57: but option &#39;subdir-objects&#39; is disabled<br>| hw/xfree86/os-s=
upport/bsd/<wbr>Makefile.am:57: warning: source file &#39;$(srcdir)/../shar=
ed/vidmem.c&#39; is in a subdirectory,<br>| hw/xfree86/os-support/bsd/<wbr>=
Makefile.am:57: but option &#39;subdir-objects&#39; is disabled<br>| hw/xfr=
ee86/os-support/bsd/<wbr>Makefile.am:42: warning: source file &#39;$(srcdir=
)/../shared/ioperm_<wbr>noop.c&#39; is in a subdirectory,<br>| hw/xfree86/o=
s-support/bsd/<wbr>Makefile.am:42: but option &#39;subdir-objects&#39; is d=
isabled<br>| hw/xfree86/os-support/bsd/<wbr>Makefile.am:23: warning: source=
 file &#39;$(srcdir)/../shared/agp_noop.<wbr>c&#39; is in a subdirectory,<b=
r>| hw/xfree86/os-support/bsd/<wbr>Makefile.am:23: but option &#39;subdir-o=
bjects&#39; is disabled<br>| hw/xfree86/os-support/bsd/<wbr>Makefile.am:23:=
 warning: source file &#39;$(srcdir)/../linux/lnx_agp.c&#39; is in a subdir=
ectory,<br>| hw/xfree86/os-support/bsd/<wbr>Makefile.am:23: but option &#39=
;subdir-objects&#39; is disabled<br>| hw/xfree86/os-support/bsd/<wbr>Makefi=
le.am:5: warning: source file &#39;$(srcdir)/../shared/pm_noop.<wbr>c&#39; =
is in a subdirectory,<br>| hw/xfree86/os-support/bsd/<wbr>Makefile.am:5: bu=
t option &#39;subdir-objects&#39; is disabled<br>| hw/xfree86/os-support/bs=
d/<wbr>Makefile.am:5: warning: source file &#39;$(srcdir)/bsd_apm.c&#39; is=
 in a subdirectory,<br>| hw/xfree86/os-support/bsd/<wbr>Makefile.am:5: but =
option &#39;subdir-objects&#39; is disabled<br>| hw/xfree86/os-support/bsd/=
<wbr>Makefile.am:5: warning: source file &#39;$(srcdir)/bsd_kqueue_apm.c&#3=
9; is in a subdirectory,<br>| hw/xfree86/os-support/bsd/<wbr>Makefile.am:5:=
 but option &#39;subdir-objects&#39; is disabled<br>| hw/xfree86/os-support=
/bsd/<wbr>Makefile.am:15: warning: source file &#39;$(srcdir)/../shared/kmo=
d_<wbr>noop.c&#39; is in a subdirectory,<br>| hw/xfree86/os-support/bsd/<wb=
r>Makefile.am:15: but option &#39;subdir-objects&#39; is disabled<br>| hw/x=
free86/os-support/hurd/<wbr>Makefile.am:3: warning: source file &#39;$(srcd=
ir)/../shared/VTsw_<wbr>noop.c&#39; is in a subdirectory,<br>| hw/xfree86/o=
s-support/hurd/<wbr>Makefile.am:3: but option &#39;subdir-objects&#39; is d=
isabled<br>| hw/xfree86/os-support/hurd/<wbr>Makefile.am:3: warning: source=
 file &#39;$(srcdir)/../shared/posix_<wbr>tty.c&#39; is in a subdirectory,<=
br>| hw/xfree86/os-support/hurd/<wbr>Makefile.am:3: but option &#39;subdir-=
objects&#39; is disabled<br>| hw/xfree86/os-support/hurd/<wbr>Makefile.am:3=
: warning: source file &#39;$(srcdir)/../shared/vidmem.c&#39; is in a subdi=
rectory,<br>| hw/xfree86/os-support/hurd/<wbr>Makefile.am:3: but option &#3=
9;subdir-objects&#39; is disabled<br>| NOTE: Running ../xorg-server-1.19.1/=
<wbr>configure=C2=A0 --build=3Dx86_64-linux =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=
=C2=A0 =C2=A0 --host=3Darm-poky-linux-gnueabi =C2=A0=C2=A0=C2=A0 =C2=A0=C2=
=A0=C2=A0 =C2=A0 --target=3Darm-poky-linux-<wbr>gnueabi
 =C2=A0=C2=A0=C2=A0 =C2=A0 --prefix=3D/usr =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=
=C2=A0 =C2=A0 --exec_prefix=3D/usr =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =
=C2=A0=20
--bindir=3D/usr/bin =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0 --sbindir=
=3D/usr/sbin =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=20
--libexecdir=3D/usr/libexec =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0 --=
datadir=3D/usr/share =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=20
--sysconfdir=3D/etc =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0 --sharedst=
atedir=3D/com =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=20
--localstatedir=3D/var =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0 --libdi=
r=3D/usr/lib =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=20
--includedir=3D/usr/include =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0 --=
oldincludedir=3D/usr/include =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0
 =C2=A0 --infodir=3D/usr/share/info =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =
=C2=A0 --mandir=3D/usr/share/man =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=
=A0
 --disable-silent-rules =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0 --disa=
ble-dependency-tracking =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0
 --with-libtool-sysroot=3D/home/<wbr>ngigijoe/src/git/pyro/poky/<wbr>cubieb=
oard2/tmp/work/<wbr>cortexa7hf-neon-vfpv4-poky-<wbr>linux-gnueabi/xserver-x=
org/2_<wbr>1.19.1-r0/recipe-sysroot=C2=A0 --with-fop=3Dno=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 --with-pic=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --disable-static=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
<wbr>=C2=A0=C2=A0=C2=A0 --disable-record=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =
--disable-dmx=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --disable-xnest=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
<wbr>=C2=A0=C2=A0 --enable-xvfb=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --enable-compo=
site=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --without-dtrace=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=
=A0=C2=A0=C2=A0 --with-int10=3Dx86emu=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --s=
ysconfdir=3D/etc/X11=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<=
wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --localstatedir=3D/var=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --with-xkb-output=3D/var/lib/<wbr>xkb=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 WAYLAND_PROTOCOLS_SYSROOT_DIR=3D<wbr>/home/ngigijo=
e/src/git/pyro/<wbr>poky/cubieboard2/tmp/work/<wbr>cortexa7hf-neon-vfpv4-po=
ky-<wbr>linux-gnueabi/xserver-xorg/2_<wbr>1.19.1-r0/recipe-sysroot=C2=A0
 --disable-static=C2=A0 --enable-dri --enable-dri2 --enable-dri3=20
--enable-glamor --enable-glx --with-sha1=3Dlibcrypto=20
--without-systemd-daemon --enable-systemd-logind=3Dno --enable-config-udev
 --disable-libunwind --disable-xinerama=C2=A0 --without-xmlto=20
--enable-xshmfence --enable-xwayland<br>| hw/xfree86/os-support/hurd/<wbr>M=
akefile.am:3: warning: source file &#39;$(srcdir)/../shared/<wbr>sigiostubs=
.c&#39; is in a subdirectory,<br>| hw/xfree86/os-support/hurd/<wbr>Makefile=
.am:3: but option &#39;subdir-objects&#39; is disabled<br>| hw/xfree86/os-s=
upport/hurd/<wbr>Makefile.am:3: warning: source file &#39;$(srcdir)/../shar=
ed/pm_noop.<wbr>c&#39; is in a subdirectory,<br>| hw/xfree86/os-support/hur=
d/<wbr>Makefile.am:3: but option &#39;subdir-objects&#39; is disabled<br>| =
hw/xfree86/os-support/hurd/<wbr>Makefile.am:3: warning: source file &#39;$(=
srcdir)/../shared/kmod_<wbr>noop.c&#39; is in a subdirectory,<br>| hw/xfree=
86/os-support/hurd/<wbr>Makefile.am:3: but option &#39;subdir-objects&#39; =
is disabled<br>| hw/xfree86/os-support/hurd/<wbr>Makefile.am:3: warning: so=
urce file &#39;$(srcdir)/../shared/agp_noop.<wbr>c&#39; is in a subdirector=
y,<br>| hw/xfree86/os-support/hurd/<wbr>Makefile.am:3: but option &#39;subd=
ir-objects&#39; is disabled<br>| hw/xfree86/os-support/linux/<wbr>Makefile.=
am:26: warning: source file &#39;$(srcdir)/../shared/VTsw_usl.<wbr>c&#39; i=
s in a subdirectory,<br>| hw/xfree86/os-support/linux/<wbr>Makefile.am:26: =
but option &#39;subdir-objects&#39; is disabled<br>| hw/xfree86/os-support/=
linux/<wbr>Makefile.am:26: warning: source file &#39;$(srcdir)/../shared/po=
six_<wbr>tty.c&#39; is in a subdirectory,<br>| hw/xfree86/os-support/linux/=
<wbr>Makefile.am:26: but option &#39;subdir-objects&#39; is disabled<br>| h=
w/xfree86/os-support/linux/<wbr>Makefile.am:26: warning: source file &#39;$=
(srcdir)/../shared/vidmem.c&#39; is in a subdirectory,<br>| hw/xfree86/os-s=
upport/linux/<wbr>Makefile.am:26: but option &#39;subdir-objects&#39; is di=
sabled<br>| hw/xfree86/os-support/linux/<wbr>Makefile.am:26: warning: sourc=
e file &#39;$(srcdir)/../shared/sigio.c&#39; is in a subdirectory,<br>| hw/=
xfree86/os-support/linux/<wbr>Makefile.am:26: but option &#39;subdir-object=
s&#39; is disabled<br>| hw/xfree86/os-support/solaris/<wbr>Makefile.am:10: =
warning: source file &#39;$(srcdir)/../shared/agp_noop.<wbr>c&#39; is in a =
subdirectory,<br>| hw/xfree86/os-support/solaris/<wbr>Makefile.am:10: but o=
ption &#39;subdir-objects&#39; is disabled<br>| hw/xfree86/os-support/solar=
is/<wbr>Makefile.am:20: warning: source file &#39;$(srcdir)/../shared/kmod_=
<wbr>noop.c&#39; is in a subdirectory,<br>| hw/xfree86/os-support/solaris/<=
wbr>Makefile.am:20: but option &#39;subdir-objects&#39; is disabled<br>| hw=
/xfree86/os-support/solaris/<wbr>Makefile.am:20: warning: source file &#39;=
$(srcdir)/../shared/posix_<wbr>tty.c&#39; is in a subdirectory,<br>| hw/xfr=
ee86/os-support/solaris/<wbr>Makefile.am:20: but option &#39;subdir-objects=
&#39; is disabled<br>| hw/xfree86/os-support/solaris/<wbr>Makefile.am:20: w=
arning: source file &#39;$(srcdir)/../shared/sigio.c&#39; is in a subdirect=
ory,<br>| hw/xfree86/os-support/solaris/<wbr>Makefile.am:20: but option &#3=
9;subdir-objects&#39; is disabled<br>| hw/xfree86/os-support/solaris/<wbr>M=
akefile.am:20: warning: source file &#39;$(srcdir)/../shared/vidmem.c&#39; =
is in a subdirectory,<br>| hw/xfree86/os-support/solaris/<wbr>Makefile.am:2=
0: but option &#39;subdir-objects&#39; is disabled<br>| hw/xfree86/os-suppo=
rt/solaris/<wbr>Makefile.am:4: warning: source file &#39;$(srcdir)/../share=
d/VTsw_<wbr>noop.c&#39; is in a subdirectory,<br>| hw/xfree86/os-support/so=
laris/<wbr>Makefile.am:4: but option &#39;subdir-objects&#39; is disabled<b=
r>| hw/xfree86/os-support/stub/<wbr>Makefile.am:7: warning: source file &#3=
9;$(srcdir)/../shared/VTsw_<wbr>noop.c&#39; is in a subdirectory,<br>| hw/x=
free86/os-support/stub/<wbr>Makefile.am:7: but option &#39;subdir-objects&#=
39; is disabled<br>| hw/xfree86/os-support/stub/<wbr>Makefile.am:7: warning=
: source file &#39;$(srcdir)/../shared/agp_noop.<wbr>c&#39; is in a subdire=
ctory,<br>| hw/xfree86/os-support/stub/<wbr>Makefile.am:7: but option &#39;=
subdir-objects&#39; is disabled<br>| hw/xfree86/os-support/stub/<wbr>Makefi=
le.am:7: warning: source file &#39;$(srcdir)/../shared/ioperm_<wbr>noop.c&#=
39; is in a subdirectory,<br>| hw/xfree86/os-support/stub/<wbr>Makefile.am:=
7: but option &#39;subdir-objects&#39; is disabled<br>| hw/xfree86/os-suppo=
rt/stub/<wbr>Makefile.am:7: warning: source file &#39;$(srcdir)/../shared/k=
mod_<wbr>noop.c&#39; is in a subdirectory,<br>| hw/xfree86/os-support/stub/=
<wbr>Makefile.am:7: but option &#39;subdir-objects&#39; is disabled<br>| hw=
/xfree86/os-support/stub/<wbr>Makefile.am:7: warning: source file &#39;$(sr=
cdir)/../shared/pm_noop.<wbr>c&#39; is in a subdirectory,<br>| hw/xfree86/o=
s-support/stub/<wbr>Makefile.am:7: but option &#39;subdir-objects&#39; is d=
isabled<br>| hw/xfree86/os-support/stub/<wbr>Makefile.am:7: warning: source=
 file &#39;$(srcdir)/../shared/vidmem.c&#39; is in a subdirectory,<br>| hw/=
xfree86/os-support/stub/<wbr>Makefile.am:7: but option &#39;subdir-objects&=
#39; is disabled<br>| hw/xfree86/os-support/stub/<wbr>Makefile.am:7: warnin=
g: source file &#39;$(srcdir)/../shared/posix_<wbr>tty.c&#39; is in a subdi=
rectory,<br>| hw/xfree86/os-support/stub/<wbr>Makefile.am:7: but option &#3=
9;subdir-objects&#39; is disabled<br>| hw/xfree86/os-support/stub/<wbr>Make=
file.am:7: warning: source file &#39;$(srcdir)/../shared/sigio.c&#39; is in=
 a subdirectory,<br>| hw/xfree86/os-support/stub/<wbr>Makefile.am:7: but op=
tion &#39;subdir-objects&#39; is disabled<br>| hw/xfree86/utils/cvt/Makefil=
e.<wbr>am:31: warning: source file &#39;$(top_srcdir)/hw/xfree86/<wbr>modes=
/xf86cvt.c&#39; is in a subdirectory,<br>| hw/xfree86/utils/cvt/Makefile.<w=
br>am:31: but option &#39;subdir-objects&#39; is disabled<br>| hw/xfree86/u=
tils/cvt/Makefile.<wbr>am:31: warning: source file &#39;$(top_srcdir)/os/xp=
rintf.c&#39; is in a subdirectory,<br>| hw/xfree86/utils/cvt/Makefile.<wbr>=
am:31: but option &#39;subdir-objects&#39; is disabled<br>| hw/xnest/Makefi=
le.am:9: warning: source file &#39;$(top_srcdir)/mi/miinitext.c&#39; is in =
a subdirectory,<br>| hw/xnest/Makefile.am:9: but option &#39;subdir-objects=
&#39; is disabled<br>| hw/xquartz/Makefile.am:22: warning: source file &#39=
;$(top_srcdir)/mi/miinitext.c&#39; is in a subdirectory,<br>| hw/xquartz/Ma=
kefile.am:22: but option &#39;subdir-objects&#39; is disabled<br>| hw/xquar=
tz/mach-startup/<wbr>Makefile.am:12: warning: source file &#39;$(top_srcdir=
)/os/strndup.c&#39; is in a subdirectory,<br>| hw/xquartz/mach-startup/<wbr=
>Makefile.am:12: but option &#39;subdir-objects&#39; is disabled<br>| hw/xw=
ayland/Makefile.am:12: warning: source file &#39;$(top_srcdir)/Xext/dpmsstu=
bs.<wbr>c&#39; is in a subdirectory,<br>| hw/xwayland/Makefile.am:12: but o=
ption &#39;subdir-objects&#39; is disabled<br>| hw/xwayland/Makefile.am:12:=
 warning: source file &#39;$(top_srcdir)/Xi/stubs.c&#39; is in a subdirecto=
ry,<br>| hw/xwayland/Makefile.am:12: but option &#39;subdir-objects&#39; is=
 disabled<br>| hw/xwayland/Makefile.am:12: warning: source file &#39;$(top_=
srcdir)/mi/miinitext.c&#39; is in a subdirectory,<br>| hw/xwayland/Makefile=
.am:12: but option &#39;subdir-objects&#39; is disabled<br>| hw/xwin/Makefi=
le.am:60: warning: source file &#39;$(top_srcdir)/mi/miinitext.c&#39; is in=
 a subdirectory,<br>| hw/xwin/Makefile.am:60: but option &#39;subdir-object=
s&#39; is disabled<br>| test/Makefile.am:107: warning: source file &#39;$(t=
op_srcdir)/mi/miinitext.c&#39; is in a subdirectory,<br>| test/Makefile.am:=
107: but option &#39;subdir-objects&#39; is disabled<br>| test/xi1/Makefile=
.am:12: warning: source file &#39;$(srcdir)/../xi2/protocol-<wbr>common.c&#=
39; is in a subdirectory,<br>| test/xi1/Makefile.am:12: but option &#39;sub=
dir-objects&#39; is disabled<span class=3D"gmail-im"><br>| autoreconf: runn=
ing: gnu-configize<br>| autoreconf: Leaving directory `.&#39;<br></span><sp=
an class=3D"gmail-im">| configure: loading site script /home/ngigijoe/src/g=
it/pyro/<wbr>poky/meta/site/endian-little<br>| configure: loading site scri=
pt /home/ngigijoe/src/git/pyro/<wbr>poky/meta/site/arm-common<br>| configur=
e: loading site script /home/ngigijoe/src/git/pyro/<wbr>poky/meta/site/arm-=
32<br>| configure: loading site script /home/ngigijoe/src/git/pyro/<wbr>pok=
y/meta/site/common-linux<br>| configure: loading site script /home/ngigijoe=
/src/git/pyro/<wbr>poky/meta/site/common-glibc<br>| configure: loading site=
 script /home/ngigijoe/src/git/pyro/<wbr>poky/meta/site/arm-linux<br>| conf=
igure: loading site script /home/ngigijoe/src/git/pyro/<wbr>poky/meta/site/=
common<br>| configure: loading site script /home/ngigijoe/src/git/pyro/<wbr=
>poky/meta-openembedded/meta-<wbr>oe/site/endian-little<br></span>| checkin=
g for a BSD-compatible install... /home/ngigijoe/src/git/pyro/<wbr>poky/cub=
ieboard2/tmp/<wbr>hosttools/install -c<br>| checking whether build environm=
ent is sane... yes<br>| checking for arm-poky-linux-gnueabi-strip..<wbr>. a=
rm-poky-linux-gnueabi-strip<br>| checking for a thread-safe mkdir -p... /ho=
me/ngigijoe/src/git/pyro/<wbr>poky/cubieboard2/tmp/<wbr>hosttools/mkdir -p<=
br>| checking for gawk... gawk<br>| checking whether make sets $(MAKE)... y=
es<br>| checking whether make supports nested variables... yes<br>| checkin=
g for style of include used by make... GNU<br>|
 checking for arm-poky-linux-gnueabi-gcc... arm-poky-linux-gnueabi-gcc=C2=
=A0=20
-march=3Darmv7ve -mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex=
-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/xserver-<wbr>xorg/2_1.19.1-r=
0/recipe-<wbr>sysroot<span class=3D"gmail-im"><br>| checking whether the C =
compiler works... yes<br>| checking for C compiler default output file name=
... a.out<br>| checking for suffix of executables...<br>| checking whether =
we are cross compiling... yes<br>| checking for suffix of object files... o=
<br>| checking whether we are using the GNU C compiler... yes<br></span>|
 checking whether arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/xserver-<wbr>xorg/2_1.19.1-r=
0/recipe-<wbr>sysroot accepts -g... yes<br>|
 checking for arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/xserver-<wbr>xorg/2_1.19.1-r=
0/recipe-<wbr>sysroot option to accept ISO C89... none needed<br>|
 checking whether arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/xserver-<wbr>xorg/2_1.19.1-r=
0/recipe-<wbr>sysroot understands -c and -o together... yes<br>|
 checking dependency style of arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darm=
v7ve
 -mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/xserver-<wbr>xorg/2_1.19.1-r=
0/recipe-<wbr>sysroot... none<br>| checking how to run the C preprocessor..=
. arm-poky-linux-gnueabi-gcc -E --sysroot=3D/home/ngigijoe/src/<wbr>git/pyr=
o/poky/cubieboard2/tmp/<wbr>work/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnue=
abi/xserver-<wbr>xorg/2_1.19.1-r0/recipe-<wbr>sysroot=C2=A0 -march=3Darmv7v=
e -mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7<span class=
=3D"gmail-im"><br>| checking for grep that handles long lines and -e... /ho=
me/ngigijoe/src/git/pyro/<wbr>poky/cubieboard2/tmp/<wbr>hosttools/grep<br>|=
 checking for egrep... /home/ngigijoe/src/git/pyro/<wbr>poky/cubieboard2/tm=
p/<wbr>hosttools/grep -E<br></span><span class=3D"gmail-im">| checking for =
ANSI C header files... yes<br>| checking for sys/types.h... yes<br>| checki=
ng for sys/stat.h... yes<br>| checking for stdlib.h... yes<br>| checking fo=
r string.h... yes<br>| checking for memory.h... yes<br>| checking for strin=
gs.h... yes<br>| checking for inttypes.h... yes<br>| checking for stdint.h.=
.. yes<br>| checking for unistd.h... yes<br></span>| checking minix/config.=
h usability... no<br>| checking minix/config.h presence... no<br>| checking=
 for minix/config.h... no<br>| checking whether it is safe to define __EXTE=
NSIONS__... yes<br>|
 checking for arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/xserver-<wbr>xorg/2_1.19.1-r=
0/recipe-<wbr>sysroot option to accept ISO C99... none needed<br>| checking=
 whether __clang__ is declared... no<br>| checking whether __INTEL_COMPILER=
 is declared... no<br>| checking whether __SUNPRO_C is declared... no<br>| =
checking for arm-poky-linux-gnueabi-pkg-<wbr>config... no<br>| checking for=
 pkg-config... /home/ngigijoe/src/git/pyro/<wbr>poky/cubieboard2/tmp/work/<=
wbr>cortexa7hf-neon-vfpv4-poky-<wbr>linux-gnueabi/xserver-xorg/2_<wbr>1.19.=
1-r0/recipe-sysroot-<wbr>native/usr/bin/pkg-config<br>| configure: WARNING:=
 using cross tools not prefixed with host triplet<br>| checking pkg-config =
is at least version 0.9.0... yes<span class=3D"gmail-im"><br>| checking bui=
ld system type... x86_64-pc-linux-gnu<br>| checking host system type... arm=
-poky-linux-gnueabi<br></span><span class=3D"gmail-im">| checking for a sed=
 that does not truncate output... (cached) sed<br></span>|
 checking if arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/xserver-<wbr>xorg/2_1.19.1-r=
0/recipe-<wbr>sysroot supports -Werror=3Dunknown-warning-<wbr>option... no<=
br>|
 checking if arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/xserver-<wbr>xorg/2_1.19.1-r=
0/recipe-<wbr>sysroot supports -Werror=3Dunused-command-line-<wbr>argument.=
.. no<br>|
 checking if arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/xserver-<wbr>xorg/2_1.19.1-r=
0/recipe-<wbr>sysroot supports -Wall... yes<br>|
 checking if arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/xserver-<wbr>xorg/2_1.19.1-r=
0/recipe-<wbr>sysroot supports -Wpointer-arith... yes<br>|
 checking if arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/xserver-<wbr>xorg/2_1.19.1-r=
0/recipe-<wbr>sysroot supports -Wmissing-declarations... yes<br>|
 checking if arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/xserver-<wbr>xorg/2_1.19.1-r=
0/recipe-<wbr>sysroot supports -Wformat=3D2... yes<br>|
 checking if arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/xserver-<wbr>xorg/2_1.19.1-r=
0/recipe-<wbr>sysroot supports -Wstrict-prototypes... yes<br>|
 checking if arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/xserver-<wbr>xorg/2_1.19.1-r=
0/recipe-<wbr>sysroot supports -Wmissing-prototypes... yes<br>|
 checking if arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/xserver-<wbr>xorg/2_1.19.1-r=
0/recipe-<wbr>sysroot supports -Wnested-externs... yes<br>|
 checking if arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/xserver-<wbr>xorg/2_1.19.1-r=
0/recipe-<wbr>sysroot supports -Wbad-function-cast... yes<br>|
 checking if arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/xserver-<wbr>xorg/2_1.19.1-r=
0/recipe-<wbr>sysroot supports -Wold-style-definition... yes<br>|
 checking if arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/xserver-<wbr>xorg/2_1.19.1-r=
0/recipe-<wbr>sysroot supports -Wdeclaration-after-statement.<wbr>.. yes<br=
>|
 checking if arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/xserver-<wbr>xorg/2_1.19.1-r=
0/recipe-<wbr>sysroot supports -Wunused... yes<br>|
 checking if arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/xserver-<wbr>xorg/2_1.19.1-r=
0/recipe-<wbr>sysroot supports -Wuninitialized... yes<br>|
 checking if arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/xserver-<wbr>xorg/2_1.19.1-r=
0/recipe-<wbr>sysroot supports -Wshadow... yes<br>|
 checking if arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/xserver-<wbr>xorg/2_1.19.1-r=
0/recipe-<wbr>sysroot supports -Wmissing-noreturn... yes<br>|
 checking if arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/xserver-<wbr>xorg/2_1.19.1-r=
0/recipe-<wbr>sysroot supports -Wmissing-format-attribute... yes<br>|
 checking if arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/xserver-<wbr>xorg/2_1.19.1-r=
0/recipe-<wbr>sysroot supports -Wredundant-decls... yes<br>|
 checking if arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/xserver-<wbr>xorg/2_1.19.1-r=
0/recipe-<wbr>sysroot supports -Wlogical-op... yes<br>|
 checking if arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/xserver-<wbr>xorg/2_1.19.1-r=
0/recipe-<wbr>sysroot supports -Werror=3Dimplicit... yes<br>|
 checking if arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/xserver-<wbr>xorg/2_1.19.1-r=
0/recipe-<wbr>sysroot supports -Werror=3Dnonnull... yes<br>|
 checking if arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/xserver-<wbr>xorg/2_1.19.1-r=
0/recipe-<wbr>sysroot supports -Werror=3Dinit-self... yes<br>|
 checking if arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/xserver-<wbr>xorg/2_1.19.1-r=
0/recipe-<wbr>sysroot supports -Werror=3Dmain... yes<br>|
 checking if arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/xserver-<wbr>xorg/2_1.19.1-r=
0/recipe-<wbr>sysroot supports -Werror=3Dmissing-braces... yes<br>|
 checking if arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/xserver-<wbr>xorg/2_1.19.1-r=
0/recipe-<wbr>sysroot supports -Werror=3Dsequence-point... yes<br>|
 checking if arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/xserver-<wbr>xorg/2_1.19.1-r=
0/recipe-<wbr>sysroot supports -Werror=3Dreturn-type... yes<br>|
 checking if arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/xserver-<wbr>xorg/2_1.19.1-r=
0/recipe-<wbr>sysroot supports -Werror=3Dtrigraphs... yes<br>|
 checking if arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/xserver-<wbr>xorg/2_1.19.1-r=
0/recipe-<wbr>sysroot supports -Werror=3Darray-bounds... yes<br>|
 checking if arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/xserver-<wbr>xorg/2_1.19.1-r=
0/recipe-<wbr>sysroot supports -Werror=3Dwrite-strings... yes<br>|
 checking if arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/xserver-<wbr>xorg/2_1.19.1-r=
0/recipe-<wbr>sysroot supports -Werror=3Daddress... yes<br>|
 checking if arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/xserver-<wbr>xorg/2_1.19.1-r=
0/recipe-<wbr>sysroot supports -Werror=3Dint-to-pointer-cast... yes<br>|
 checking if arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/xserver-<wbr>xorg/2_1.19.1-r=
0/recipe-<wbr>sysroot supports -Werror=3Dpointer-to-int-cast... yes<br>|
 checking if arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/xserver-<wbr>xorg/2_1.19.1-r=
0/recipe-<wbr>sysroot supports -pedantic... yes<br>|
 checking if arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/xserver-<wbr>xorg/2_1.19.1-r=
0/recipe-<wbr>sysroot supports -Werror... yes<br>|
 checking if arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/xserver-<wbr>xorg/2_1.19.1-r=
0/recipe-<wbr>sysroot supports -Werror=3Dattributes... yes<br>| checking wh=
ether make supports nested variables... (cached) yes<br>| checking for doxy=
gen... no<br>| configure: WARNING: doxygen not found - documentation target=
s will be skipped<br>| checking for X.Org SGML entities &gt;=3D 1.8... no<b=
r>| checking whether to build documentation... yes<br>| checking whether to=
 build developer documentation... yes<br>| checking for xsltproc... no<br>|=
 configure: WARNING: xsltproc not found - cannot transform XML documents<br=
>| checking whether to build unit test cases... auto<br>| checking whether =
the linker accepts -Wl,-wrap,exit... yes<br>|
 checking dependency style of arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darm=
v7ve
 -mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/xserver-<wbr>xorg/2_1.19.1-r=
0/recipe-<wbr>sysroot... none<span class=3D"gmail-im"><br>| checking whethe=
r ln -s works... yes<br></span><span class=3D"gmail-im">| checking how to p=
rint strings... printf<br></span><span class=3D"gmail-im">| checking for a =
sed that does not truncate output... (cached) sed<br></span><span class=3D"=
gmail-im">| checking for fgrep... /home/ngigijoe/src/git/pyro/<wbr>poky/cub=
ieboard2/tmp/<wbr>hosttools/grep -F<br></span>|
 checking for ld used by arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve=
=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/xserver-<wbr>xorg/2_1.19.1-r=
0/recipe-<wbr>sysroot... arm-poky-linux-gnueabi-ld --sysroot=3D/home/ngigij=
oe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work/cortexa7hf-neon-vfpv4-<=
wbr>poky-linux-gnueabi/xserver-<wbr>xorg/2_1.19.1-r0/recipe-<wbr>sysroot<br=
>| checking if the linker (arm-poky-linux-gnueabi-ld --sysroot=3D/home/ngig=
ijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work/cortexa7hf-neon-vfpv4=
-<wbr>poky-linux-gnueabi/xserver-<wbr>xorg/2_1.19.1-r0/recipe-<wbr>sysroot =
) is GNU ld... yes<span class=3D"gmail-im"><br>| checking for BSD- or MS-co=
mpatible name lister (nm)... arm-poky-linux-gnueabi-nm<br>| checking the na=
me lister (arm-poky-linux-gnueabi-nm) interface... BSD nm<br></span><span c=
lass=3D"gmail-im">| checking the maximum length of command line arguments..=
. 1572864<br>| checking how to convert x86_64-pc-linux-gnu file names to ar=
m-poky-linux-gnueabi format... func_convert_file_noop<br>| checking how to =
convert x86_64-pc-linux-gnu file names to toolchain format... func_convert_=
file_noop<br></span>| checking for arm-poky-linux-gnueabi-ld --sysroot=3D/h=
ome/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work/cortexa7hf-ne=
on-vfpv4-<wbr>poky-linux-gnueabi/xserver-<wbr>xorg/2_1.19.1-r0/recipe-<wbr>=
sysroot=C2=A0 option to reload object files... -r<span class=3D"gmail-im"><=
br>| checking for arm-poky-linux-gnueabi-<wbr>objdump... arm-poky-linux-gnu=
eabi-objdump<br>| checking how to recognize dependent libraries... pass_all=
<br>| checking for arm-poky-linux-gnueabi-<wbr>dlltool... no<br>| checking =
for dlltool... no<br>| checking how to associate runtime and link libraries=
... printf %s\n<br>| checking for arm-poky-linux-gnueabi-ar... arm-poky-lin=
ux-gnueabi-ar<br>| checking for archiver @FILE support... @<br></span>| che=
cking for arm-poky-linux-gnueabi-strip..<wbr>. (cached) arm-poky-linux-gnue=
abi-strip<br>| checking for arm-poky-linux-gnueabi-ranlib.<wbr>.. arm-poky-=
linux-gnueabi-ranlib<br>|
 checking command to parse arm-poky-linux-gnueabi-nm output from=20
arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve -mfpu=3Dneon-vfpv4=C2=A0=
=20
-mfloat-abi=3Dhard -mcpu=3Dcortex-a7 --sysroot=3D/home/ngigijoe/src/<wbr>gi=
t/pyro/poky/cubieboard2/tmp/<wbr>work/cortexa7hf-neon-vfpv4-<wbr>poky-linux=
-gnueabi/xserver-<wbr>xorg/2_1.19.1-r0/recipe-<wbr>sysroot object... ok<br>=
| checking for sysroot... /home/ngigijoe/src/git/pyro/<wbr>poky/cubieboard2=
/tmp/work/<wbr>cortexa7hf-neon-vfpv4-poky-<wbr>linux-gnueabi/xserver-xorg/2=
_<wbr>1.19.1-r0/recipe-sysroot<span class=3D"gmail-im"><br>| checking for a=
 working dd... /home/ngigijoe/src/git/pyro/<wbr>poky/cubieboard2/tmp/<wbr>h=
osttools/dd<br>| checking how to truncate binary pipes... /home/ngigijoe/sr=
c/git/pyro/<wbr>poky/cubieboard2/tmp/<wbr>hosttools/dd bs=3D4096 count=3D1<=
br>| checking for arm-poky-linux-gnueabi-mt... no<br>| checking for mt... n=
o<br>| checking if : is a manifest tool... no<br></span><span class=3D"gmai=
l-im">| checking for dlfcn.h... yes<br>| checking for objdir... .libs<br></=
span>|
 checking if arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/xserver-<wbr>xorg/2_1.19.1-r=
0/recipe-<wbr>sysroot supports -fno-rtti -fno-exceptions... no<br>|
 checking for arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/xserver-<wbr>xorg/2_1.19.1-r=
0/recipe-<wbr>sysroot option to produce PIC... -fPIC -DPIC<br>|
 checking if arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/xserver-<wbr>xorg/2_1.19.1-r=
0/recipe-<wbr>sysroot PIC flag -fPIC -DPIC works... yes<br>|
 checking if arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/xserver-<wbr>xorg/2_1.19.1-r=
0/recipe-<wbr>sysroot static flag -static works... yes<br>|
 checking if arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/xserver-<wbr>xorg/2_1.19.1-r=
0/recipe-<wbr>sysroot supports -c -o file.o... yes<br>|
 checking if arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/xserver-<wbr>xorg/2_1.19.1-r=
0/recipe-<wbr>sysroot supports -c -o file.o... (cached) yes<br>|
 checking whether the arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7ve=20
-mfpu=3Dneon-vfpv4=C2=A0 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=20
--sysroot=3D/home/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work=
/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/xserver-<wbr>xorg/2_1.19.1-r=
0/recipe-<wbr>sysroot linker (arm-poky-linux-gnueabi-ld --sysroot=3D/home/n=
gigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work/cortexa7hf-neon-vf=
pv4-<wbr>poky-linux-gnueabi/xserver-<wbr>xorg/2_1.19.1-r0/recipe-<wbr>sysro=
ot ) supports shared libraries... yes<span class=3D"gmail-im"><br>| checkin=
g whether -lc should be explicitly linked in... no<br>| checking dynamic li=
nker characteristics... GNU/Linux ld.so<br>| checking how to hardcode libra=
ry paths into programs... immediate<br>| checking whether stripping librari=
es is possible... yes<br>| checking if libtool supports shared libraries...=
 yes<br>| checking whether to build shared libraries... yes<br>| checking w=
hether to build static libraries... no<br></span>| checking for arm-poky-li=
nux-gnueabi-pkg-<wbr>config... /home/ngigijoe/src/git/pyro/<wbr>poky/cubieb=
oard2/tmp/work/<wbr>cortexa7hf-neon-vfpv4-poky-<wbr>linux-gnueabi/xserver-x=
org/2_<wbr>1.19.1-r0/recipe-sysroot-<wbr>native/usr/bin/pkg-config<br>| che=
cking pkg-config is at least version 0.9.0... yes<br>| checking for flex...=
 flex<br>| checking lex output file root... lex.yy<br>| checking lex librar=
y... none needed<br>| checking whether yytext is a pointer... no<br>| check=
ing for bison... bison -y<br>| checking for special C compiler options need=
ed for large files... no<br>| checking for _FILE_OFFSET_BITS value needed f=
or large files... 64<br>| checking for cpp... /home/ngigijoe/src/git/pyro/<=
wbr>poky/cubieboard2/tmp/<wbr>hosttools/cpp<br>| checking if /home/ngigijoe=
/src/git/pyro/<wbr>poky/cubieboard2/tmp/<wbr>hosttools/cpp requires -undef.=
.. yes<br>| checking if /home/ngigijoe/src/git/pyro/<wbr>poky/cubieboard2/t=
mp/<wbr>hosttools/cpp requires -traditional... yes<br>| checking for dirent=
.h that defines DIR... yes<br>| checking for library containing opendir... =
none required<br>| checking for ANSI C header files... (cached) yes<br>| ch=
ecking fcntl.h usability... yes<br>| checking fcntl.h presence... yes<br>| =
checking for fcntl.h... yes<br>| checking for stdlib.h... (cached) yes<br>|=
 checking for string.h... (cached) yes<br>| checking for unistd.h... (cache=
d) yes<br>| checking for dlfcn.h... (cached) yes<br>| checking stropts.h us=
ability... yes<br>| checking stropts.h presence... yes<br>| checking for st=
ropts.h... yes<br>| checking fnmatch.h usability... yes<br>| checking fnmat=
ch.h presence... yes<br>| checking for fnmatch.h... yes<br>| checking sys/m=
kdev.h usability... no<br>| checking sys/mkdev.h presence... no<br>| checki=
ng for sys/mkdev.h... no<br>| checking sys/utsname.h usability... yes<br>| =
checking sys/utsname.h presence... yes<br>| checking for sys/utsname.h... y=
es<br>| checking for an ANSI C-conforming const... yes<br>| checking for ty=
peof syntax and keyword spelling... typeof<br>| checking whether byte order=
ing is bigendian... (cached) no<br>| checking size of unsigned long... (cac=
hed) 4<br>| checking for pid_t... yes<br>| checking byteswap.h usability...=
 yes<br>| checking byteswap.h presence... yes<br>| checking for byteswap.h.=
.. yes<br>| checking sys/endian.h usability... no<br>| checking sys/endian.=
h presence... no<br>| checking for sys/endian.h... no<br>| checking for dlo=
pen... no<br>| checking for dlopen in -ldl... yes<br>| checking for backtra=
ce... yes<br>| checking for ffs... yes<br>| checking for geteuid... yes<br>=
| checking for getuid... yes<br>| checking for issetugid... no<br>| checkin=
g for getresuid... yes<br>| checking for getdtablesize... yes<br>| checking=
 for getifaddrs... yes<br>| checking for getpeereid... no<br>| checking for=
 getpeerucred... no<br>| checking for getprogname... no<br>| checking for g=
etzoneid... no<br>| checking for mmap... yes<br>| checking for posix_falloc=
ate... yes<br>| checking for seteuid... yes<br>| checking for shmctl64... n=
o<br>| checking for strncasecmp... yes<br>| checking for vasprintf... yes<b=
r>| checking for vsnprintf... yes<br>| checking for walkcontext... no<br>| =
checking for setitimer... yes<br>| checking for poll... yes<br>| checking f=
or epoll_create1... yes<br>| checking for reallocarray... no<br>| checking =
for strcasecmp... yes<br>| checking for strcasestr... yes<br>| checking for=
 strlcat... no<br>| checking for strlcpy... no<br>| checking for strndup...=
 yes<br>| checking whether program_invocation_short_name is declared... yes=
<br>| checking for SO_PEERCRED in sys/socket.h... yes<br>| checking for sqr=
t in -lm... yes<br>| checking for cbrt... yes<br>| checking ndbm.h usabilit=
y... yes<br>| checking ndbm.h presence... yes<br>| checking for ndbm.h... y=
es<br>| checking dbm.h usability... yes<br>| checking dbm.h presence... yes=
<br>| checking for dbm.h... yes<br>| checking rpcsvc/dbm.h usability... no<=
br>| checking rpcsvc/dbm.h presence... no<br>| checking for rpcsvc/dbm.h...=
 no<br>| checking linux/agpgart.h usability... yes<br>| checking linux/agpg=
art.h presence... yes<br>| checking for linux/agpgart.h... yes<br>| checkin=
g sys/agpio.h usability... no<br>| checking sys/agpio.h presence... no<br>|=
 checking for sys/agpio.h... no<br>| checking sys/agpgart.h usability... no=
<br>| checking sys/agpgart.h presence... no<br>| checking for sys/agpgart.h=
... no<br>| checking linux/fb.h usability... yes<br>| checking linux/fb.h p=
resence... yes<br>| checking for linux/fb.h... yes<br>| checking for sys/li=
nker.h... no<br>| checking for SYSV IPC... yes<br>| checking machine/apmvar=
.h usability... no<br>| checking machine/apmvar.h presence... no<br>| check=
ing for machine/apmvar.h... no<br>| checking execinfo.h usability... yes<br=
>| checking execinfo.h presence... yes<br>| checking for execinfo.h... yes<=
br>| checking for backtrace in -lc... yes<br>| checking for fallback input =
driver... libinput<br>| checking for root directory for font files... /usr/=
share/fonts/X11<br>| checking for directory for misc files... ${FONTROOTDIR=
}/misc<br>| checking for directory for OTF files... ${FONTROOTDIR}/OTF<br>|=
 checking for directory for TTF files... ${FONTROOTDIR}/TTF<br>| checking f=
or directory for Type1 files... ${FONTROOTDIR}/Type1<br>| checking for dire=
ctory for 75dpi files... ${FONTROOTDIR}/75dpi<br>| checking for directory f=
or 100dpi files... ${FONTROOTDIR}/100dpi<br>| checking for default font pat=
h... ${FONTROOTDIR}/misc/,${<wbr>FONTROOTDIR}/TTF/,${<wbr>FONTROOTDIR}/OTF/=
,${<wbr>FONTROOTDIR}/Type1/,${<wbr>FONTROOTDIR}/100dpi/,${<wbr>FONTROOTDIR}=
/75dpi/<br>| checking to see if we can install the Xorg server as root... n=
o<br>| checking if Xtrans should support UNIX socket connections... yes<br>=
| checking if Xtrans should support TCP socket connections... yes<br>| chec=
king for library containing socket... none required<br>| checking for libra=
ry containing gethostbyname... none required<br>| checking for getaddrinfo.=
.. (cached) yes<br>| checking if IPv6 support should be built... yes<br>| c=
hecking for struct sockaddr_in.sin_len... NOTE: The following config.log fi=
les may provide further information.<br>| NOTE: /home/ngigijoe/src/git/pyro=
/<wbr>poky/cubieboard2/tmp/work/<wbr>cortexa7hf-neon-vfpv4-poky-<wbr>linux-=
gnueabi/xserver-xorg/2_<wbr>1.19.1-r0/build/config.log<br>| ERROR: configur=
e failed<br>| no<br>| checking for socklen_t... yes<br>| checking for struc=
t msghdr.msg_control... yes<br>| checking if Xtrans should support os-speci=
fic local connections... no<br>| checking for authdes_seccreate... no<br>| =
checking for authdes_create... yes<br>| checking for library containing get=
secretkey... none required<br>| checking if Secure RPC authentication (&quo=
t;SUN-DES-1&quot;) should be supported... yes<br>| checking for PIXMAN... y=
es<br>| checking whether PTHREAD_MUTEX_RECURSIVE is declared... yes<br>| ch=
ecking if compiler needs -Werror to reject unknown flags... no<br>| checkin=
g for the pthreads library -lpthreads... no<br>| checking whether pthreads =
work without any flags... no<br>| checking whether pthreads work with -Kthr=
ead... no<br>| checking whether pthreads work with -kthread... no<br>| chec=
king for the pthreads library -llthread... no<br>| checking whether pthread=
s work with -pthread... yes<br>| checking for joinable pthread attribute...=
 PTHREAD_CREATE_JOINABLE<br>| checking if more special flags are required f=
or pthreads... no<br>| checking for PTHREAD_PRIO_INHERIT... yes<br>| checki=
ng for pthread_setname_np(const char*)... no<br>| checking for pthread_setn=
ame_np(pthread_t, const char*)... yes<br>| checking for UDEV... yes<br>| ch=
ecking for udev_monitor_filter_add_match_<wbr>tag... yes<br>| checking for =
udev_enumerate_add_match_tag..<wbr>. yes<br>| checking for DBUS... yes<br>|=
 checking for HAL... no<br>| checking for glibc...... yes<br>| checking for=
 clock_gettime... yes<br>| checking for a useful monotonic clock ...... yes=
<br>| checking whether to track client ids... yes<br>| checking for DRI2PRO=
TO... yes<br>| Checking temp dir /run/shm<br>| checking for DRI3PROTO... ye=
s<br>| checking for sigaction... yes<br>| checking for XSHMFENCE... yes<br>=
| configure: DRI3 enabled<br>| checking for LIBDRM... yes<br>| checking for=
 XLIB... yes<br>| checking for GL... yes<br>| checking for XDMCP... yes<br>=
| checking for XdmcpWrap in -lXdmcp... yes<br>| checking for SHA1Init... no=
<br>| checking for CC_SHA1_Init... no<br>| checking for wincrypt.h... no<br=
>| checking for SHA1Init in -lmd... no<br>| checking for LIBSHA1... no<br>|=
 checking for nettle_sha1_init in -lnettle... no<br>| checking for gcry_md_=
open in -lgcrypt... no<br>| checking for SHA1_Init in -lcrypto... yes<br>| =
checking for OPENSSL... yes<br>| checking for SHA1 implementation... libcry=
pto<br>| checking for XSERVERCFLAGS... yes<br>| checking for XSERVERLIBS...=
 yes<br>| checking for LIBUNWIND... no<br>| checking if SVR4 needs to be de=
fined... no<br>| checking whether to build Xvfb DDX... yes<br>| checking fo=
r XNESTMODULES... yes<br>| checking whether to build Xnest DDX... no<br>| c=
hecking whether to build Xorg DDX... yes<br>| checking for symbol visibilit=
y support... yes<br>| checking whether to build Xorg PCI functions... check=
ing for PCIACCESS... yes<br>| yes<br>| <br>| checking linux/apm_bios.h usab=
ility... yes<br>| checking linux/apm_bios.h presence... yes<br>| checking f=
or linux/apm_bios.h... yes<br>| checking for DGA... yes<br>| checking for D=
GA... yes<br>| checking for XORG_MODULES... yes<br>| checking for GLAMOR...=
 yes<br>| checking for GBM... no<br>| configure: error: Glamor for Xorg req=
uires gbm &gt;=3D 10.2.0<span class=3D"gmail-im"><br>| WARNING: exit code 1=
 from a shell command.<br></span>| ERROR: Function failed: do_configure (lo=
g file is located at /home/ngigijoe/src/git/pyro/<wbr>poky/cubieboard2/tmp/=
work/<wbr>cortexa7hf-neon-vfpv4-poky-<wbr>linux-gnueabi/xserver-xorg/2_<wbr=
>1.19.1-r0/temp/log.do_<wbr>configure.28609)<br>ERROR: Task (/home/ngigijoe=
/src/git/pyro/<wbr>poky/meta/recipes-graphics/<wbr>xorg-xserver/xserver-xor=
g_1.<wbr>19.1.bb:do_configure) failed with exit code &#39;1&#39;<br>NOTE: T=
asks Summary: Attempted 3909 tasks of which 3836 didn&#39;t need to be reru=
n and 2 failed.<br><br>Summary: 2 tasks failed:<br>=C2=A0 /home/ngigijoe/sr=
c/git/pyro/<wbr>poky/meta/recipes-gnome/gtk+/<wbr>gtk+3_3.22.8.bb:do_config=
ure<br>=C2=A0 /home/ngigijoe/src/git/pyro/<wbr>poky/meta/recipes-graphics/<=
wbr>xorg-xserver/xserver-xorg_1.<wbr>19.1.bb:do_configure<br>Summary: There=
 was 1 WARNING message shown.<br>Summary: There were 4 ERROR messages shown=
, returning a non-zero exit code.<br clear=3D"all"><br>-- <br><div class=3D=
"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"l=
tr">J.W.Ngigi</div><div dir=3D"ltr"><br><br></div></div></div></div></div><=
/div>
</div>

--001a114713743073cc0553928fe4--
