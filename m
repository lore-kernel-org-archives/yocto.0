Return-Path: <jessecobra@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6AD43E009D2; Wed, 27 May 2015 15:46:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.178 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jessecobra[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f178.google.com (mail-wi0-f178.google.com
	[209.85.212.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E21FE00956
	for <yocto@yoctoproject.org>; Wed, 27 May 2015 15:46:17 -0700 (PDT)
Received: by wicmx19 with SMTP id mx19so127240239wic.0
	for <yocto@yoctoproject.org>; Wed, 27 May 2015 15:46:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=aQqzVHmiQIIsU2t8ukz6DVyZxy4nPO2JfJ3UGi+nJb8=;
	b=lc7ttW12mhClg/rRPx+rryTo4chQgkw1bJbATGeahlMwNBQ2DIijaa+4GvUrNJGkhQ
	qWQ3QfNbmGhJ82KbPyDhfGxBbRTL8TaUDDh2PVyQcF758NLDH+LLurbsXBwB4WZkAEu0
	Ml+gXkDBhuUBThlaMwE5yff/N/z2v6siHuQiFFD9GNs/vyJ00r1RM7zAWRh6rx3fbYAy
	ff2OuhYCilz7aZ2HUyXEa/3LNMtOj9NWSDJQP6g3sSliq/M2EF8pxLo7jGv2RQ9BrVMm
	ckNn+rYDhhdUYsAiLQ1tfwYsCuZ/RTHHRfp46Ll/BybSIgZzXO1fawiNSZuxi8/4aelg
	VgJw==
MIME-Version: 1.0
X-Received: by 10.180.73.236 with SMTP id o12mr55420654wiv.56.1432766775446;
	Wed, 27 May 2015 15:46:15 -0700 (PDT)
Received: by 10.27.220.21 with HTTP; Wed, 27 May 2015 15:46:15 -0700 (PDT)
Date: Wed, 27 May 2015 15:46:15 -0700
Message-ID: <CACG401qjzuj6bNjSb6sjAuKYKbC5Gibwn75chuv9nfydHmim+w@mail.gmail.com>
From: Jesse Cobra <jessecobra@gmail.com>
To: yocto@yoctoproject.org
Subject: GCC 4.8.2 build errors
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
X-List-Received-Date: Wed, 27 May 2015 22:46:20 -0000
Content-Type: multipart/alternative; boundary=f46d043be090b2512805171802ef

--f46d043be090b2512805171802ef
Content-Type: text/plain; charset=UTF-8

Noob over here, any idea why my build is choking on GCC 4.8.2?

$ bitbake core-image-minimal
Loading cache: 100% |###########################################| ETA:
00:00:00
Loaded 2185 entries from dependency cache.
NOTE: Resolving any missing task queue dependencies
NOTE: multiple providers are available for jpeg (jpeg, libjpeg-turbo)
NOTE: consider defining a PREFERRED_PROVIDER entry to match jpeg
NOTE: multiple providers are available for jpeg-native (jpeg-native,
libjpeg-turbo-native)
NOTE: consider defining a PREFERRED_PROVIDER entry to match jpeg-native

Build Configuration:
BB_VERSION        = "1.22.0"
BUILD_SYS         = "i686-linux"
NATIVELSBSTRING   = "Ubuntu-12.04"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "imx6qsabresd"
DISTRO            = "poky"
DISTRO_VERSION    = "1.6.2"
TUNE_FEATURES     = "armv7a vfp neon callconvention-hard cortexa9"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto        = "(nobranch):30b8d9378b8260e452552b806610dc9b6fe0b69f"
meta-oe           = "(nobranch):8065dd8456913457a0114ddb2b4bd4842847b2a3"
meta-fsl-arm      = "(nobranch):9bc540eec9a7e280af13371ea70650fcc47ea627"
meta-fsl-arm-extra = "(nobranch):e1085deb3d915d2a95a65cceadc77c6de0dadfb6"
meta-fsl-demos    = "(nobranch):f141c7d1158b8addbd6f1ed047a1b47c2ed85f8f"
meta-fsl-arm
meta-fsl-demos    = "(nobranch):0c5367e963b5f7797ded59f835313466b896d7e9"
meta-browser      = "(nobranch):63963cc56c8d0291779693e62b66cb16e5c86883"
meta-gnome
meta-networking
meta-ruby         = "(nobranch):8065dd8456913457a0114ddb2b4bd4842847b2a3"
meta-qt5          = "(nobranch):c29c317e0f22202bfaa85329a580564bbc179089"
meta-fsl-qt5
meta-fsl-bluez    = "(nobranch):0c5367e963b5f7797ded59f835313466b896d7e9"

NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: Function failed: do_compile (log file is located at
/media/build_drive/3_10/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/gcc/4.8.2-r0/temp/log.do_compile.11487)
ERROR: Logfile of failure stored in:
/media/build_drive/3_10/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/gcc/4.8.2-r0/temp/log.do_compile.11487
Log data follows:
| DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common',
'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common']
| DEBUG: Executing shell function do_compile
| NOTE: make -j 1 ARCH_FLAGS_FOR_TARGET= -march=armv7-a -mthumb-interwork
-mfloat-abi=hard -mfpu=neon -mtune=cortex-a9
-isystem/media/build_drive/3_10/build/tmp/sysroots/imx6qsabresd/usr/include
-I/media/build_drive/3_10/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/gcc/4.8.2-r0/gcc-4.8.2/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/gcc/include/
| make[1]: Entering directory
`/media/build_drive/3_10/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/gcc/4.8.2-r0/gcc-4.8.2/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi'
| make[2]: Entering directory
`/media/build_drive/3_10/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/gcc/4.8.2-r0/gcc-4.8.2/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/libiberty'
| make[3]: Entering directory
`/media/build_drive/3_10/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/gcc/4.8.2-r0/gcc-4.8.2/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/libiberty/testsuite'
| make[3]: Nothing to be done for `all'.
| make[3]: Leaving directory
`/media/build_drive/3_10/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/gcc/4.8.2-r0/gcc-4.8.2/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/libiberty/testsuite'
| make[2]: Leaving directory
`/media/build_drive/3_10/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/gcc/4.8.2-r0/gcc-4.8.2/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/libiberty'
| make[2]: Entering directory
`/media/build_drive/3_10/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/gcc/4.8.2-r0/gcc-4.8.2/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/fixincludes'
| make[2]: Nothing to be done for `all'.
| make[2]: Leaving directory
`/media/build_drive/3_10/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/gcc/4.8.2-r0/gcc-4.8.2/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/fixincludes'
| make[2]: Entering directory
`/media/build_drive/3_10/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/gcc/4.8.2-r0/gcc-4.8.2/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/lto-plugin'
| make  all-am
| make[3]: Entering directory
`/media/build_drive/3_10/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/gcc/4.8.2-r0/gcc-4.8.2/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/lto-plugin'
| make[3]: Leaving directory
`/media/build_drive/3_10/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/gcc/4.8.2-r0/gcc-4.8.2/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/lto-plugin'
| make[2]: Leaving directory
`/media/build_drive/3_10/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/gcc/4.8.2-r0/gcc-4.8.2/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/lto-plugin'
| make[2]: Entering directory
`/media/build_drive/3_10/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/gcc/4.8.2-r0/gcc-4.8.2/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/intl'
| make[2]: Nothing to be done for `all'.
| make[2]: Leaving directory
`/media/build_drive/3_10/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/gcc/4.8.2-r0/gcc-4.8.2/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/intl'
| make[2]: Entering directory
`/media/build_drive/3_10/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/gcc/4.8.2-r0/gcc-4.8.2/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/build-i686-linux/libiberty'
| make[3]: Entering directory
`/media/build_drive/3_10/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/gcc/4.8.2-r0/gcc-4.8.2/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/build-i686-linux/libiberty/testsuite'
| make[3]: Nothing to be done for `all'.
| make[3]: Leaving directory
`/media/build_drive/3_10/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/gcc/4.8.2-r0/gcc-4.8.2/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/build-i686-linux/libiberty/testsuite'
| make[2]: Leaving directory
`/media/build_drive/3_10/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/gcc/4.8.2-r0/gcc-4.8.2/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/build-i686-linux/libiberty'
| make[2]: Entering directory
`/media/build_drive/3_10/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/gcc/4.8.2-r0/gcc-4.8.2/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/build-i686-linux/fixincludes'
| make[2]: Nothing to be done for `all'.
| make[2]: Leaving directory
`/media/build_drive/3_10/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/gcc/4.8.2-r0/gcc-4.8.2/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/build-i686-linux/fixincludes'
| make[2]: Entering directory
`/media/build_drive/3_10/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/gcc/4.8.2-r0/gcc-4.8.2/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/libbacktrace'
| make  all-am
| make[3]: Entering directory
`/media/build_drive/3_10/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/gcc/4.8.2-r0/gcc-4.8.2/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/libbacktrace'
| true  DO=all multi-do # make
| make[3]: Leaving directory
`/media/build_drive/3_10/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/gcc/4.8.2-r0/gcc-4.8.2/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/libbacktrace'
| make[2]: Leaving directory
`/media/build_drive/3_10/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/gcc/4.8.2-r0/gcc-4.8.2/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/libbacktrace'
| make[2]: Entering directory
`/media/build_drive/3_10/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/gcc/4.8.2-r0/gcc-4.8.2/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/libcpp'
| test -f config.h || (rm -f stamp-h1 && make stamp-h1)
| make[2]: Leaving directory
`/media/build_drive/3_10/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/gcc/4.8.2-r0/gcc-4.8.2/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/libcpp'
| make[2]: Entering directory
`/media/build_drive/3_10/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/gcc/4.8.2-r0/gcc-4.8.2/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/libdecnumber'
| make[2]: Nothing to be done for `all'.
| make[2]: Leaving directory
`/media/build_drive/3_10/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/gcc/4.8.2-r0/gcc-4.8.2/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/libdecnumber'
| make[2]: Entering directory
`/media/build_drive/3_10/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/gcc/4.8.2-r0/gcc-4.8.2/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/gcc'
| arm-poky-linux-gnueabi-g++  -march=armv7-a -mthumb-interwork
-mfloat-abi=hard -mfpu=neon -mtune=cortex-a9
--sysroot=/media/build_drive/3_10/build/tmp/sysroots/imx6qsabresd -c
-DIN_GCC_FRONTEND -O2 -pipe -g -feliminate-unused-debug-types
-fvisibility-inlines-hidden -DIN_GCC   -fno-exceptions -fno-rtti
-fasynchronous-unwind-tables -W -Wall -Wno-narrowing -Wwrite-strings
-Wcast-qual -Wmissing-format-attribute -pedantic -Wno-long-long
-Wno-variadic-macros -Wno-overlength-strings   -DHAVE_CONFIG_H -I. -Icp
-I/media/build_drive/3_10/build/tmp/work-shared/gcc-4.8.2-r0/gcc-4.8.2/gcc
-I/media/build_drive/3_10/build/tmp/work-shared/gcc-4.8.2-r0/gcc-4.8.2/gcc/cp
-I/media/build_drive/3_10/build/tmp/work-shared/gcc-4.8.2-r0/gcc-4.8.2/gcc/../include
-I/media/build_drive/3_10/build/tmp/work-shared/gcc-4.8.2-r0/gcc-4.8.2/gcc/../libcpp/include
-I/media/build_drive/3_10/build/tmp/work-shared/gcc-4.8.2-r0/gcc-4.8.2/gcc/../libdecnumber
-I/media/build_drive/3_10/build/tmp/work-shared/gcc-4.8.2-r0/gcc-4.8.2/gcc/../libdecnumber/dpd
-I../libdecnumber
-I/media/build_drive/3_10/build/tmp/work-shared/gcc-4.8.2-r0/gcc-4.8.2/gcc/../libbacktrace
/media/build_drive/3_10/build/tmp/work-shared/gcc-4.8.2-r0/gcc-4.8.2/gcc/cp/parser.c
-o cp/parser.o
|
/media/build_drive/3_10/build/tmp/work-shared/gcc-4.8.2-r0/gcc-4.8.2/gcc/cp/parser.c:
In function 'bool cp_parser_tokens_start_cast_expression(cp_parser*)':
|
/media/build_drive/3_10/build/tmp/work-shared/gcc-4.8.2-r0/gcc-4.8.2/gcc/cp/parser.c:7159:12:
error: 'ref_qual' was not declared in this scope
|      return ref_qual;
|             ^
| make[2]: *** [cp/parser.o] Error 1
| make[2]: Leaving directory
`/media/build_drive/3_10/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/gcc/4.8.2-r0/gcc-4.8.2/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/gcc'
| make[1]: *** [all-gcc] Error 2
| make[1]: Leaving directory
`/media/build_drive/3_10/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/gcc/4.8.2-r0/gcc-4.8.2/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi'
| make: *** [all] Error 2
| ERROR: oe_runmake failed
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_compile (log file is located at
/media/build_drive/3_10/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/gcc/4.8.2-r0/temp/log.do_compile.11487)
ERROR: Task 2466
(/media/build_drive/3_10/sources/poky/meta/recipes-devtools/gcc/gcc_4.8.bb,
do_compile) failed with exit code '1'
NOTE: Tasks Summary: Attempted 2593 tasks of which 2592 didn't need to be
rerun and 1 failed.
No currently running tasks (2592 of 3962)

Summary: 1 task failed:
  /media/build_drive/3_10/sources/poky/meta/recipes-devtools/gcc/gcc_4.8.bb,
do_compile
Summary: There was 1 ERROR message shown, returning a non-zero exit code.




Here is my local.conf

BB_NUMBER_THREADS ?= "${@oe.utils.cpu_count()}"
PARALLEL_MAKE ?= "-j ${@oe.utils.cpu_count()}"
MACHINE ??= 'imx6qsabresd'
DISTRO ?= 'poky'
PACKAGE_CLASSES ?= "package_rpm"
EXTRA_IMAGE_FEATURES = "dev-pkgs tools-sdk tools-testapps debug-tweaks"
USER_CLASSES ?= "buildstats image-mklibs image-prelink"
PATCHRESOLVE = "noop"
BB_DISKMON_DIRS = "\
    STOPTASKS,${TMPDIR},1G,100K \
    STOPTASKS,${DL_DIR},1G,100K \
    STOPTASKS,${SSTATE_DIR},1G,100K \
    ABORT,${TMPDIR},100M,1K \
    ABORT,${DL_DIR},100M,1K \
    ABORT,${SSTATE_DIR},100M,1K"
PACKAGECONFIG_pn-qemu-native = "sdl"
PACKAGECONFIG_pn-nativesdk-qemu = "sdl"
ASSUME_PROVIDED += "libsdl-native"
CONF_VERSION = "1"

BB_NUMBER_THREADS = '1'
PARALLEL_MAKE = '-j 1'

DL_DIR ?= "${BSPDIR}/downloads/"
ACCEPT_FSL_EULA = "1"

IMAGE_INSTALL_append = " pciutils iw wpa-supplicant crda"

--f46d043be090b2512805171802ef
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Noob over here, any idea why my build is choking on G=
CC 4.8.2?<br><br>$ bitbake core-image-minimal<br>Loading cache: 100% |#####=
######################################| ETA:=C2=A0 00:00:00<br>Loaded 2185 =
entries from dependency cache.<br>NOTE: Resolving any missing task queue de=
pendencies<br>NOTE: multiple providers are available for jpeg (jpeg, libjpe=
g-turbo)<br>NOTE: consider defining a PREFERRED_PROVIDER entry to match jpe=
g<br>NOTE: multiple providers are available for jpeg-native (jpeg-native, l=
ibjpeg-turbo-native)<br>NOTE: consider defining a PREFERRED_PROVIDER entry =
to match jpeg-native<br><br>Build Configuration:<br>BB_VERSION=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;1.22.0&quot;<br>BUILD_SYS=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;i686-linux&quot;<br>NATIV=
ELSBSTRING=C2=A0=C2=A0 =3D &quot;Ubuntu-12.04&quot;<br>TARGET_SYS=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;arm-poky-linux-gnueabi&quot;<br=
>MACHINE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &q=
uot;imx6qsabresd&quot;<br>DISTRO=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;poky&quot;<br>DISTRO_VERSION=C2=A0=C2=A0=
=C2=A0 =3D &quot;1.6.2&quot;<br>TUNE_FEATURES=C2=A0=C2=A0=C2=A0=C2=A0 =3D &=
quot;armv7a vfp neon callconvention-hard cortexa9&quot;<br>TARGET_FPU=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;vfp-neon&quot;<br>meta=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <b=
r>meta-yocto=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;(nobranch)=
:30b8d9378b8260e452552b806610dc9b6fe0b69f&quot;<br>meta-oe=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;(nobranch):8065dd84=
56913457a0114ddb2b4bd4842847b2a3&quot;<br>meta-fsl-arm=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 =3D &quot;(nobranch):9bc540eec9a7e280af13371ea70650fcc47ea627&quo=
t;<br>meta-fsl-arm-extra =3D &quot;(nobranch):e1085deb3d915d2a95a65cceadc77=
c6de0dadfb6&quot;<br>meta-fsl-demos=C2=A0=C2=A0=C2=A0 =3D &quot;(nobranch):=
f141c7d1158b8addbd6f1ed047a1b47c2ed85f8f&quot;<br>meta-fsl-arm=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 <br>meta-fsl-demos=C2=A0=C2=A0=C2=A0 =3D &quot;(nobranch=
):0c5367e963b5f7797ded59f835313466b896d7e9&quot;<br>meta-browser=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 =3D &quot;(nobranch):63963cc56c8d0291779693e62b66cb16=
e5c86883&quot;<br>meta-gnome=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br>=
meta-networking=C2=A0=C2=A0 <br>meta-ruby=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 =3D &quot;(nobranch):8065dd8456913457a0114ddb2b4bd4842847b2=
a3&quot;<br>meta-qt5=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
=3D &quot;(nobranch):c29c317e0f22202bfaa85329a580564bbc179089&quot;<br>meta=
-fsl-qt5=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br>meta-fsl-bluez=C2=A0=C2=A0=C2=A0=
 =3D &quot;(nobranch):0c5367e963b5f7797ded59f835313466b896d7e9&quot;<br><br=
>NOTE: Preparing runqueue<br>NOTE: Executing SetScene Tasks<br>NOTE: Execut=
ing RunQueue Tasks<br>ERROR: Function failed: do_compile (log file is locat=
ed at /media/build_drive/3_10/build/tmp/work/cortexa9hf-vfp-neon-poky-linux=
-gnueabi/gcc/4.8.2-r0/temp/log.do_compile.11487)<br>ERROR: Logfile of failu=
re stored in: /media/build_drive/3_10/build/tmp/work/cortexa9hf-vfp-neon-po=
ky-linux-gnueabi/gcc/4.8.2-r0/temp/log.do_compile.11487<br>Log data follows=
:<br>| DEBUG: SITE files [&#39;endian-little&#39;, &#39;bit-32&#39;, &#39;a=
rm-common&#39;, &#39;common-linux&#39;, &#39;common-glibc&#39;, &#39;arm-li=
nux&#39;, &#39;arm-linux-gnueabi&#39;, &#39;common&#39;]<br>| DEBUG: Execut=
ing shell function do_compile<br>| NOTE: make -j 1 ARCH_FLAGS_FOR_TARGET=3D=
 -march=3Darmv7-a -mthumb-interwork -mfloat-abi=3Dhard -mfpu=3Dneon -mtune=
=3Dcortex-a9 -isystem/media/build_drive/3_10/build/tmp/sysroots/imx6qsabres=
d/usr/include -I/media/build_drive/3_10/build/tmp/work/cortexa9hf-vfp-neon-=
poky-linux-gnueabi/gcc/4.8.2-r0/gcc-4.8.2/build.arm-poky-linux-gnueabi.arm-=
poky-linux-gnueabi/gcc/include/<br>| make[1]: Entering directory `/media/bu=
ild_drive/3_10/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/gcc/4.=
8.2-r0/gcc-4.8.2/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi&#39;<b=
r>| make[2]: Entering directory `/media/build_drive/3_10/build/tmp/work/cor=
texa9hf-vfp-neon-poky-linux-gnueabi/gcc/4.8.2-r0/gcc-4.8.2/build.arm-poky-l=
inux-gnueabi.arm-poky-linux-gnueabi/libiberty&#39;<br>| make[3]: Entering d=
irectory `/media/build_drive/3_10/build/tmp/work/cortexa9hf-vfp-neon-poky-l=
inux-gnueabi/gcc/4.8.2-r0/gcc-4.8.2/build.arm-poky-linux-gnueabi.arm-poky-l=
inux-gnueabi/libiberty/testsuite&#39;<br>| make[3]: Nothing to be done for =
`all&#39;.<br>| make[3]: Leaving directory `/media/build_drive/3_10/build/t=
mp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/gcc/4.8.2-r0/gcc-4.8.2/build=
.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/libiberty/testsuite&#39;<br>=
| make[2]: Leaving directory `/media/build_drive/3_10/build/tmp/work/cortex=
a9hf-vfp-neon-poky-linux-gnueabi/gcc/4.8.2-r0/gcc-4.8.2/build.arm-poky-linu=
x-gnueabi.arm-poky-linux-gnueabi/libiberty&#39;<br>| make[2]: Entering dire=
ctory `/media/build_drive/3_10/build/tmp/work/cortexa9hf-vfp-neon-poky-linu=
x-gnueabi/gcc/4.8.2-r0/gcc-4.8.2/build.arm-poky-linux-gnueabi.arm-poky-linu=
x-gnueabi/fixincludes&#39;<br>| make[2]: Nothing to be done for `all&#39;.<=
br>| make[2]: Leaving directory `/media/build_drive/3_10/build/tmp/work/cor=
texa9hf-vfp-neon-poky-linux-gnueabi/gcc/4.8.2-r0/gcc-4.8.2/build.arm-poky-l=
inux-gnueabi.arm-poky-linux-gnueabi/fixincludes&#39;<br>| make[2]: Entering=
 directory `/media/build_drive/3_10/build/tmp/work/cortexa9hf-vfp-neon-poky=
-linux-gnueabi/gcc/4.8.2-r0/gcc-4.8.2/build.arm-poky-linux-gnueabi.arm-poky=
-linux-gnueabi/lto-plugin&#39;<br>| make=C2=A0 all-am<br>| make[3]: Enterin=
g directory `/media/build_drive/3_10/build/tmp/work/cortexa9hf-vfp-neon-pok=
y-linux-gnueabi/gcc/4.8.2-r0/gcc-4.8.2/build.arm-poky-linux-gnueabi.arm-pok=
y-linux-gnueabi/lto-plugin&#39;<br>| make[3]: Leaving directory `/media/bui=
ld_drive/3_10/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/gcc/4.8=
.2-r0/gcc-4.8.2/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/lto-plu=
gin&#39;<br>| make[2]: Leaving directory `/media/build_drive/3_10/build/tmp=
/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/gcc/4.8.2-r0/gcc-4.8.2/build.a=
rm-poky-linux-gnueabi.arm-poky-linux-gnueabi/lto-plugin&#39;<br>| make[2]: =
Entering directory `/media/build_drive/3_10/build/tmp/work/cortexa9hf-vfp-n=
eon-poky-linux-gnueabi/gcc/4.8.2-r0/gcc-4.8.2/build.arm-poky-linux-gnueabi.=
arm-poky-linux-gnueabi/intl&#39;<br>| make[2]: Nothing to be done for `all&=
#39;.<br>| make[2]: Leaving directory `/media/build_drive/3_10/build/tmp/wo=
rk/cortexa9hf-vfp-neon-poky-linux-gnueabi/gcc/4.8.2-r0/gcc-4.8.2/build.arm-=
poky-linux-gnueabi.arm-poky-linux-gnueabi/intl&#39;<br>| make[2]: Entering =
directory `/media/build_drive/3_10/build/tmp/work/cortexa9hf-vfp-neon-poky-=
linux-gnueabi/gcc/4.8.2-r0/gcc-4.8.2/build.arm-poky-linux-gnueabi.arm-poky-=
linux-gnueabi/build-i686-linux/libiberty&#39;<br>| make[3]: Entering direct=
ory `/media/build_drive/3_10/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-=
gnueabi/gcc/4.8.2-r0/gcc-4.8.2/build.arm-poky-linux-gnueabi.arm-poky-linux-=
gnueabi/build-i686-linux/libiberty/testsuite&#39;<br>| make[3]: Nothing to =
be done for `all&#39;.<br>| make[3]: Leaving directory `/media/build_drive/=
3_10/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/gcc/4.8.2-r0/gcc=
-4.8.2/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/build-i686-linux=
/libiberty/testsuite&#39;<br>| make[2]: Leaving directory `/media/build_dri=
ve/3_10/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/gcc/4.8.2-r0/=
gcc-4.8.2/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/build-i686-li=
nux/libiberty&#39;<br>| make[2]: Entering directory `/media/build_drive/3_1=
0/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/gcc/4.8.2-r0/gcc-4.=
8.2/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/build-i686-linux/fi=
xincludes&#39;<br>| make[2]: Nothing to be done for `all&#39;.<br>| make[2]=
: Leaving directory `/media/build_drive/3_10/build/tmp/work/cortexa9hf-vfp-=
neon-poky-linux-gnueabi/gcc/4.8.2-r0/gcc-4.8.2/build.arm-poky-linux-gnueabi=
.arm-poky-linux-gnueabi/build-i686-linux/fixincludes&#39;<br>| make[2]: Ent=
ering directory `/media/build_drive/3_10/build/tmp/work/cortexa9hf-vfp-neon=
-poky-linux-gnueabi/gcc/4.8.2-r0/gcc-4.8.2/build.arm-poky-linux-gnueabi.arm=
-poky-linux-gnueabi/libbacktrace&#39;<br>| make=C2=A0 all-am<br>| make[3]: =
Entering directory `/media/build_drive/3_10/build/tmp/work/cortexa9hf-vfp-n=
eon-poky-linux-gnueabi/gcc/4.8.2-r0/gcc-4.8.2/build.arm-poky-linux-gnueabi.=
arm-poky-linux-gnueabi/libbacktrace&#39;<br>| true=C2=A0 DO=3Dall multi-do =
# make<br>| make[3]: Leaving directory `/media/build_drive/3_10/build/tmp/w=
ork/cortexa9hf-vfp-neon-poky-linux-gnueabi/gcc/4.8.2-r0/gcc-4.8.2/build.arm=
-poky-linux-gnueabi.arm-poky-linux-gnueabi/libbacktrace&#39;<br>| make[2]: =
Leaving directory `/media/build_drive/3_10/build/tmp/work/cortexa9hf-vfp-ne=
on-poky-linux-gnueabi/gcc/4.8.2-r0/gcc-4.8.2/build.arm-poky-linux-gnueabi.a=
rm-poky-linux-gnueabi/libbacktrace&#39;<br>| make[2]: Entering directory `/=
media/build_drive/3_10/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueab=
i/gcc/4.8.2-r0/gcc-4.8.2/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueab=
i/libcpp&#39;<br>| test -f config.h || (rm -f stamp-h1 &amp;&amp; make stam=
p-h1)<br>| make[2]: Leaving directory `/media/build_drive/3_10/build/tmp/wo=
rk/cortexa9hf-vfp-neon-poky-linux-gnueabi/gcc/4.8.2-r0/gcc-4.8.2/build.arm-=
poky-linux-gnueabi.arm-poky-linux-gnueabi/libcpp&#39;<br>| make[2]: Enterin=
g directory `/media/build_drive/3_10/build/tmp/work/cortexa9hf-vfp-neon-pok=
y-linux-gnueabi/gcc/4.8.2-r0/gcc-4.8.2/build.arm-poky-linux-gnueabi.arm-pok=
y-linux-gnueabi/libdecnumber&#39;<br>| make[2]: Nothing to be done for `all=
&#39;.<br>| make[2]: Leaving directory `/media/build_drive/3_10/build/tmp/w=
ork/cortexa9hf-vfp-neon-poky-linux-gnueabi/gcc/4.8.2-r0/gcc-4.8.2/build.arm=
-poky-linux-gnueabi.arm-poky-linux-gnueabi/libdecnumber&#39;<br>| make[2]: =
Entering directory `/media/build_drive/3_10/build/tmp/work/cortexa9hf-vfp-n=
eon-poky-linux-gnueabi/gcc/4.8.2-r0/gcc-4.8.2/build.arm-poky-linux-gnueabi.=
arm-poky-linux-gnueabi/gcc&#39;<br>| arm-poky-linux-gnueabi-g++=C2=A0 -marc=
h=3Darmv7-a -mthumb-interwork -mfloat-abi=3Dhard -mfpu=3Dneon -mtune=3Dcort=
ex-a9 --sysroot=3D/media/build_drive/3_10/build/tmp/sysroots/imx6qsabresd -=
c=C2=A0 -DIN_GCC_FRONTEND -O2 -pipe -g -feliminate-unused-debug-types -fvis=
ibility-inlines-hidden -DIN_GCC=C2=A0=C2=A0 -fno-exceptions -fno-rtti -fasy=
nchronous-unwind-tables -W -Wall -Wno-narrowing -Wwrite-strings -Wcast-qual=
 -Wmissing-format-attribute -pedantic -Wno-long-long -Wno-variadic-macros -=
Wno-overlength-strings=C2=A0=C2=A0 -DHAVE_CONFIG_H -I. -Icp -I/media/build_=
drive/3_10/build/tmp/work-shared/gcc-4.8.2-r0/gcc-4.8.2/gcc -I/media/build_=
drive/3_10/build/tmp/work-shared/gcc-4.8.2-r0/gcc-4.8.2/gcc/cp -I/media/bui=
ld_drive/3_10/build/tmp/work-shared/gcc-4.8.2-r0/gcc-4.8.2/gcc/../include -=
I/media/build_drive/3_10/build/tmp/work-shared/gcc-4.8.2-r0/gcc-4.8.2/gcc/.=
./libcpp/include=C2=A0 -I/media/build_drive/3_10/build/tmp/work-shared/gcc-=
4.8.2-r0/gcc-4.8.2/gcc/../libdecnumber -I/media/build_drive/3_10/build/tmp/=
work-shared/gcc-4.8.2-r0/gcc-4.8.2/gcc/../libdecnumber/dpd -I../libdecnumbe=
r -I/media/build_drive/3_10/build/tmp/work-shared/gcc-4.8.2-r0/gcc-4.8.2/gc=
c/../libbacktrace=C2=A0=C2=A0=C2=A0 /media/build_drive/3_10/build/tmp/work-=
shared/gcc-4.8.2-r0/gcc-4.8.2/gcc/cp/parser.c -o cp/parser.o<br>| /media/bu=
ild_drive/3_10/build/tmp/work-shared/gcc-4.8.2-r0/gcc-4.8.2/gcc/cp/parser.c=
: In function &#39;bool cp_parser_tokens_start_cast_expression(cp_parser*)&=
#39;:<br>| /media/build_drive/3_10/build/tmp/work-shared/gcc-4.8.2-r0/gcc-4=
.8.2/gcc/cp/parser.c:7159:12: error: &#39;ref_qual&#39; was not declared in=
 this scope<br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return ref_qual;<br>|=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^<br>| m=
ake[2]: *** [cp/parser.o] Error 1<br>| make[2]: Leaving directory `/media/b=
uild_drive/3_10/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/gcc/4=
.8.2-r0/gcc-4.8.2/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/gcc&#=
39;<br>| make[1]: *** [all-gcc] Error 2<br>| make[1]: Leaving directory `/m=
edia/build_drive/3_10/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi=
/gcc/4.8.2-r0/gcc-4.8.2/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi=
&#39;<br>| make: *** [all] Error 2<br>| ERROR: oe_runmake failed<br>| WARNI=
NG: exit code 1 from a shell command.<br>| ERROR: Function failed: do_compi=
le (log file is located at /media/build_drive/3_10/build/tmp/work/cortexa9h=
f-vfp-neon-poky-linux-gnueabi/gcc/4.8.2-r0/temp/log.do_compile.11487)<br>ER=
ROR: Task 2466 (/media/build_drive/3_10/sources/poky/meta/recipes-devtools/=
gcc/<a href=3D"http://gcc_4.8.bb">gcc_4.8.bb</a>, do_compile) failed with e=
xit code &#39;1&#39;<br>NOTE: Tasks Summary: Attempted 2593 tasks of which =
2592 didn&#39;t need to be rerun and 1 failed.<br>No currently running task=
s (2592 of 3962)<br><br>Summary: 1 task failed:<br>=C2=A0 /media/build_driv=
e/3_10/sources/poky/meta/recipes-devtools/gcc/<a href=3D"http://gcc_4.8.bb"=
>gcc_4.8.bb</a>, do_compile<br>Summary: There was 1 ERROR message shown, re=
turning a non-zero exit code.<br><br><br><br><br></div>Here is my local.con=
f<br><br>BB_NUMBER_THREADS ?=3D &quot;${@oe.utils.cpu_count()}&quot;<br>PAR=
ALLEL_MAKE ?=3D &quot;-j ${@oe.utils.cpu_count()}&quot;<br>MACHINE ??=3D &#=
39;imx6qsabresd&#39;<br>DISTRO ?=3D &#39;poky&#39;<br>PACKAGE_CLASSES ?=3D =
&quot;package_rpm&quot;<br>EXTRA_IMAGE_FEATURES =3D &quot;dev-pkgs tools-sd=
k tools-testapps debug-tweaks&quot;<br>USER_CLASSES ?=3D &quot;buildstats i=
mage-mklibs image-prelink&quot;<br>PATCHRESOLVE =3D &quot;noop&quot;<br>BB_=
DISKMON_DIRS =3D &quot;\<br>=C2=A0=C2=A0=C2=A0 STOPTASKS,${TMPDIR},1G,100K =
\<br>=C2=A0=C2=A0=C2=A0 STOPTASKS,${DL_DIR},1G,100K \<br>=C2=A0=C2=A0=C2=A0=
 STOPTASKS,${SSTATE_DIR},1G,100K \<br>=C2=A0=C2=A0=C2=A0 ABORT,${TMPDIR},10=
0M,1K \<br>=C2=A0=C2=A0=C2=A0 ABORT,${DL_DIR},100M,1K \<br>=C2=A0=C2=A0=C2=
=A0 ABORT,${SSTATE_DIR},100M,1K&quot; <br>PACKAGECONFIG_pn-qemu-native =3D =
&quot;sdl&quot;<br>PACKAGECONFIG_pn-nativesdk-qemu =3D &quot;sdl&quot;<br>A=
SSUME_PROVIDED +=3D &quot;libsdl-native&quot;<br>CONF_VERSION =3D &quot;1&q=
uot;<br><br>BB_NUMBER_THREADS =3D &#39;1&#39;<br>PARALLEL_MAKE =3D &#39;-j =
1&#39;<br><br>DL_DIR ?=3D &quot;${BSPDIR}/downloads/&quot;<br>ACCEPT_FSL_EU=
LA =3D &quot;1&quot;<br><br>IMAGE_INSTALL_append =3D &quot; pciutils iw wpa=
-supplicant crda&quot;<br></div>

--f46d043be090b2512805171802ef--
