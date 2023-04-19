Return-Path: <electronicconsult1@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 88ACEC7EE25
	for <webhook@archiver.kernel.org>; Wed, 19 Apr 2023 14:10:50 +0000 (UTC)
Subject: [meta-raspberrypi] - problem adding meta-qt6 SDK #qt #sdk
To: yocto@lists.yoctoproject.org
From: "Electronic Consult" <electronicconsult1@gmail.com>
X-Originating-Location: US (50.201.39.35)
X-Originating-Platform: Linux Firefox 112
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 19 Apr 2023 07:10:40 -0700
Message-ID: <5F3b.1681913440236245932.FIHo@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="QgZfUQXFBV38U0zrS6cD"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 19 Apr 2023 14:10:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59731

--QgZfUQXFBV38U0zrS6cD
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello all,

I'm using dunfell with meta-raspberrypi & meta-qt6 ( https://code.qt.io/yoc=
to/meta-qt6.git ), v6.2.24 under the open-source license. I've successfully=
 built a simple qt6 application with the setup but now trying to build the =
SDK to support Qt6 development on the RPi.

As per Qt instructions I've ( https://doc.qt.io/Boot2Qt-6.2/b2qt-meta-qt6.h=
tml#toolchain ) added:

populate_sdk_qt6_base

To my build but I'm getting a build error during the build of gcc-cross-arm=
:

make[1]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspberryp=
i/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/gcc'
| sed: -e expression #1, char 0: no previous regular expression
| WARNING: exit code 1 from a shell command.

Its a little cryptic so difficult to understand where to start looking.=C2=
=A0 I'm using KAS to configure my build & its modified from the meta-raspbe=
rrypi:

header:
version: 8

machine: raspberrypi4
distro: poky
target:
- core-image-base

repos:
meta-raspberry:

poky:
url: https://git.yoctoproject.org/git/poky
refspec: dunfell
layers:
meta:
meta-poky:
meta-yocto-bsp:

meta-openembedded:
url: http://git.openembedded.org/meta-openembedded
refspec: dunfell
layers:
meta-oe:
meta-python:
meta-networking:
meta-perl:

meta-qt6:
url: https://code.qt.io/yocto/meta-qt6.git
refspec: origin/6.2.4

meta-test:
url: https://github.com/OOHehir/meta-test.git
refspec: origin/main

bblayers_conf_header:
standard: |
POKY_BBLAYERS_CONF_VERSION =3D "2"
BBPATH =3D "${TOPDIR}"
BBFILES ?=3D ""
local_conf_header:
reduce_diskspace: |
INHERIT +=3D "rm_work_and_downloads"
build_qt6_sdk: |
INHERIT +=3D "populate_sdk_qt6_base"
standard: |
# Added
DL_DIR =3D "/media/owen/yocto/meritechYocto/localCache/sstate-cache"
SSTATE_DIR =3D "/media/owen/yocto/meritechYocto/localCache/sstate-cache"
BB_SIGNATURE_HANDLER =3D "OEEquivHash"
BB_HASHSERVE =3D "auto"
BB_HASHSERVE_UPSTREAM =3D "hashserv.yocto.io:8687"
SSTATE_MIRRORS ?=3D "file://.* https://sstate.yoctoproject.org/all/PATH;dow=
nloadfilename=3DPATH"

CONF_VERSION =3D "1"
PACKAGE_CLASSES =3D "package_rpm"
SDKMACHINE =3D "x86_64"
USER_CLASSES =3D "buildstats image-mklibs image-prelink"
PATCHRESOLVE =3D "noop"

IMAGE_INSTALL +=3D "qt-test qtbase"
IMAGE_INSTALL +=3D "helloworld"

DISTRO_FEATURES_remove =3D "ptest"

rpi-specific: |
DISABLE_RPI_BOOT_LOGO =3D "1"

debug-tweaks: |
EXTRA_IMAGE_FEATURES =3D "debug-tweaks ssh-server-dropbear"
diskmon: |
BB_DISKMON_DIRS =3D "\
STOPTASKS,${TMPDIR},1G,100K \
STOPTASKS,${DL_DIR},1G,100K \
STOPTASKS,${SSTATE_DIR},1G,100K \
STOPTASKS,/tmp,100M,100K \
ABORT,${TMPDIR},100M,1K \
ABORT,${DL_DIR},100M,1K \
ABORT,${SSTATE_DIR},100M,1K \
ABORT,/tmp,10M,1K"

Full build failure is below, any pointer appreciated,

Regards,

Owen

ERROR: gcc-cross-arm-9.5.0-r0 do_compile: Execution of '/media/owen/yocto/m=
eritechYocto/meta-raspberrypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5=
.0-r0/temp/run.do_compile.3969185' failed with exit code 1
ERROR: Logfile of failure stored in: /media/owen/yocto/meritechYocto/meta-r=
aspberrypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/temp/log.do_c=
ompile.3969185
Log data follows:
| DEBUG: Executing python function autotools_aclocals
| DEBUG: SITE files ['endian-little', 'common-linux', 'common-glibc', 'bit-=
64', 'x86_64-linux', 'common']
| DEBUG: Python function autotools_aclocals finished
| DEBUG: Executing shell function do_compile
| NOTE: make -j 4 configure-gcc
| make[1]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspber=
rypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/libiberty'
| make[2]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspber=
rypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/libiberty/tes=
tsuite'
| make[2]: Nothing to be done for 'all'.
| make[2]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspberr=
ypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/libiberty/test=
suite'
| make[1]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspberr=
ypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/libiberty'
| make[1]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspber=
rypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/lto-plugin'
| make=C2=A0 all-am
| make[2]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspber=
rypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/lto-plugin'
| make[2]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspberr=
ypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/lto-plugin'
| make[1]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspberr=
ypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/lto-plugin'
| NOTE: make -j 4 TARGET-gcc=3Dchecksum-options all-gcc
| make[1]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspber=
rypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/libiberty'
| make[1]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspber=
rypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/intl'
| make[1]: Nothing to be done for 'all'.
| make[1]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspberr=
ypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/intl'
| make[1]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspber=
rypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/build-x86_64-=
linux/libiberty'
| make[2]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspber=
rypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/libiberty/tes=
tsuite'
| make[2]: Nothing to be done for 'all'.
| make[2]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspberr=
ypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/libiberty/test=
suite'
| make[1]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspberr=
ypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/libiberty'
| make[1]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspber=
rypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/libbacktrace'
| make=C2=A0 all-am
| make[2]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspber=
rypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/libbacktrace'
| make[2]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspber=
rypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/build-x86_64-=
linux/libiberty/testsuite'
| make[2]: Nothing to be done for 'all'.
| make[2]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspberr=
ypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/build-x86_64-l=
inux/libiberty/testsuite'
| true=C2=A0 DO=3Dall multi-do # make
| make[1]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspberr=
ypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/build-x86_64-l=
inux/libiberty'
| make[2]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspberr=
ypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/libbacktrace'
| make[1]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspberr=
ypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/libbacktrace'
| make[1]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspber=
rypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/libdecnumber'
| make[1]: Nothing to be done for 'all'.
| make[1]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspberr=
ypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/libdecnumber'
| make[1]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspber=
rypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/lto-plugin'
| make=C2=A0 all-am
| make[2]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspber=
rypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/lto-plugin'
| make[2]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspberr=
ypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/lto-plugin'
| make[1]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspberr=
ypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/lto-plugin'
| make[1]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspber=
rypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/fixincludes'
| make[1]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspber=
rypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/libcpp'
| test -f config.h || (rm -f stamp-h1 && make stamp-h1)
| make[1]: Nothing to be done for 'all'.
| make[1]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspberr=
ypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/fixincludes'
| make[1]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspberr=
ypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/libcpp'
| make[1]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspber=
rypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/build-x86_64-=
linux/fixincludes'
| make[1]: Nothing to be done for 'all'.
| make[1]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspberr=
ypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/build-x86_64-l=
inux/fixincludes'
| make[1]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspber=
rypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/build-x86_64-=
linux/libcpp'
| test -f config.h || (rm -f stamp-h1 && make stamp-h1)
| make[1]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspberr=
ypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/build-x86_64-l=
inux/libcpp'
| make[1]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspber=
rypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/gcc'
| make[1]: 'checksum-options' is up to date.
| make[1]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspberr=
ypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/gcc'
| sed: -e expression #1, char 0: no previous regular expression
| WARNING: exit code 1 from a shell command.
| ERROR: Execution of '/media/owen/yocto/meritechYocto/meta-raspberrypi/bui=
ld/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/temp/run.do_compile.3969185=
' failed with exit code 1
ERROR: Task (/media/owen/yocto/meritechYocto/meta-raspberrypi/build/../poky=
/meta/recipes-devtools/gcc/gcc-cross_9.5.bb:do_compile) failed with exit co=
de '1'
ERROR: gcc-crosssdk-x86_64-pokysdk-linux-9.5.0-r0 do_compile: Execution of =
'/media/owen/yocto/meritechYocto/meta-raspberrypi/build/tmp/work/x86_64-lin=
ux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r0/temp/run.do_compile.3969186' =
failed with exit code 1
ERROR: Logfile of failure stored in: /media/owen/yocto/meritechYocto/meta-r=
aspberrypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.=
5.0-r0/temp/log.do_compile.3969186
Log data follows:
| DEBUG: Executing python function autotools_aclocals
| DEBUG: SITE files ['endian-little', 'common-linux', 'common-glibc', 'bit-=
64', 'x86_64-linux', 'common']
| DEBUG: Python function autotools_aclocals finished
| DEBUG: Executing shell function do_compile
| NOTE: make -j 4 configure-gcc
| make[1]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspber=
rypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r0=
/build/libiberty'
| make[2]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspber=
rypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r0=
/build/libiberty/testsuite'
| make[2]: Nothing to be done for 'all'.
| make[2]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspberr=
ypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r0/=
build/libiberty/testsuite'
| make[1]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspberr=
ypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r0/=
build/libiberty'
| make[1]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspber=
rypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r0=
/build/lto-plugin'
| make=C2=A0 all-am
| make[2]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspber=
rypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r0=
/build/lto-plugin'
| make[2]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspberr=
ypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r0/=
build/lto-plugin'
| make[1]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspberr=
ypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r0/=
build/lto-plugin'
| NOTE: make -j 4 TARGET-gcc=3Dchecksum-options all-gcc
| make[1]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspber=
rypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r0=
/build/libiberty'
| make[2]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspber=
rypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r0=
/build/libiberty/testsuite'
| make[2]: Nothing to be done for 'all'.
| make[2]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspberr=
ypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r0/=
build/libiberty/testsuite'
| make[1]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspberr=
ypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r0/=
build/libiberty'
| make[1]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspber=
rypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r0=
/build/intl'
| make[1]: Nothing to be done for 'all'.
| make[1]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspberr=
ypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r0/=
build/intl'
| make[1]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspber=
rypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r0=
/build/libbacktrace'
| make[1]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspber=
rypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r0=
/build/build-x86_64-linux/libiberty'
| make=C2=A0 all-am
| make[2]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspber=
rypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r0=
/build/libbacktrace'
| true=C2=A0 DO=3Dall multi-do # make
| make[2]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspberr=
ypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r0/=
build/libbacktrace'
| make[1]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspberr=
ypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r0/=
build/libbacktrace'
| make[2]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspber=
rypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r0=
/build/build-x86_64-linux/libiberty/testsuite'
| make[2]: Nothing to be done for 'all'.
| make[2]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspberr=
ypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r0/=
build/build-x86_64-linux/libiberty/testsuite'
| make[1]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspber=
rypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r0=
/build/libdecnumber'
| make[1]: Nothing to be done for 'all'.
| make[1]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspberr=
ypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r0/=
build/libdecnumber'
| make[1]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspberr=
ypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r0/=
build/build-x86_64-linux/libiberty'
| make[1]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspber=
rypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r0=
/build/lto-plugin'
| make=C2=A0 all-am
| make[2]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspber=
rypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r0=
/build/lto-plugin'
| make[1]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspber=
rypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r0=
/build/build-x86_64-linux/fixincludes'
| make[1]: Nothing to be done for 'all'.
| make[1]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspberr=
ypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r0/=
build/build-x86_64-linux/fixincludes'
| make[2]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspberr=
ypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r0/=
build/lto-plugin'
| make[1]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspberr=
ypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r0/=
build/lto-plugin'
| make[1]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspber=
rypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r0=
/build/build-x86_64-linux/libcpp'
| test -f config.h || (rm -f stamp-h1 && make stamp-h1)
| make[1]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspberr=
ypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r0/=
build/build-x86_64-linux/libcpp'
| make[1]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspber=
rypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r0=
/build/libcpp'
| test -f config.h || (rm -f stamp-h1 && make stamp-h1)
| make[1]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspberr=
ypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r0/=
build/libcpp'
| make[1]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspber=
rypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r0=
/build/fixincludes'
| make[1]: Nothing to be done for 'all'.
| make[1]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspberr=
ypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r0/=
build/fixincludes'
| make[1]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspber=
rypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r0=
/build/gcc'
| make[1]: 'checksum-options' is up to date.
| make[1]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspberr=
ypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r0/=
build/gcc'
| sed: -e expression #1, char 0: no previous regular expression
| WARNING: exit code 1 from a shell command.
| ERROR: Execution of '/media/owen/yocto/meritechYocto/meta-raspberrypi/bui=
ld/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r0/temp/ru=
n.do_compile.3969186' failed with exit code 1
ERROR: Task (/media/owen/yocto/meritechYocto/meta-raspberrypi/build/../poky=
/meta/recipes-devtools/gcc/gcc-crosssdk_9.5.bb:do_compile) failed with exit=
 code '1'
NOTE: Tasks Summary: Attempted 551 tasks of which 530 didn't need to be rer=
un and 2 failed.

Summary: 2 tasks failed:
/media/owen/yocto/meritechYocto/meta-raspberrypi/build/../poky/meta/recipes=
-devtools/gcc/gcc-cross_9.5.bb:do_compile
/media/owen/yocto/meritechYocto/meta-raspberrypi/build/../poky/meta/recipes=
-devtools/gcc/gcc-crosssdk_9.5.bb:do_compile
Summary: There were 2 WARNING messages shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
2023-04-19 14:40:49 - ERROR=C2=A0=C2=A0=C2=A0 - Command returned non-zero e=
xit status 1
owen@owen-XPS:/media/owen/yocto/meritechYocto/meta-raspberrypi$

--QgZfUQXFBV38U0zrS6cD
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello all,<br /><br />I'm using dunfell with meta-raspberrypi &amp; meta-qt=
6 (<a href=3D"https://code.qt.io/yocto/meta-qt6.git" target=3D"_blank" rel=
=3D"noopener">https://code.qt.io/yocto/meta-qt6.git</a>), v6.2.24 under the=
 open-source license. I've successfully built a simple qt6 application with=
 the setup but now trying to build the SDK to support Qt6 development on th=
e RPi. <br /><br />As per <a href=3D"https://doc.qt.io/Boot2Qt-6.2/b2qt-met=
a-qt6.html#toolchain" target=3D"_blank" rel=3D"noopener">Qt instructions I'=
ve</a> added:<br /><br />populate_sdk_qt6_base<br /><br />To my build but I=
'm getting a build error during the build of gcc-cross-arm:<br /><br />make=
[1]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspberrypi/bu=
ild/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/gcc'<br />| sed: -e =
expression #1, char 0: no previous regular expression<br />| WARNING: exit =
code 1 from a shell command.<br /><br />Its a little cryptic so difficult t=
o understand where to start looking.&nbsp; I'm using KAS to configure my bu=
ild &amp; its modified from the meta-raspberrypi:<br /><br />header:<br />&=
nbsp; version: 8<br /><br />machine: raspberrypi4<br />distro: poky<br />ta=
rget:<br />&nbsp; - core-image-base<br /><br />repos:<br />&nbsp; meta-rasp=
berry:<br /><br />&nbsp; poky:<br />&nbsp;&nbsp;&nbsp; url: https://git.yoc=
toproject.org/git/poky<br />&nbsp;&nbsp;&nbsp; refspec: dunfell<br />&nbsp;=
&nbsp;&nbsp; layers:<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; meta:<br />&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; meta-poky:<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; meta=
-yocto-bsp:<br /><br />&nbsp; meta-openembedded:<br />&nbsp;&nbsp;&nbsp; ur=
l: http://git.openembedded.org/meta-openembedded<br />&nbsp;&nbsp;&nbsp; re=
fspec: dunfell<br />&nbsp;&nbsp;&nbsp; layers:<br />&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; meta-oe:<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; meta-python:<br />&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; meta-networking:<br />&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; meta-perl:<br /><br />&nbsp; meta-qt6:<br />&nbsp;&nbsp;&nbsp; url: ht=
tps://code.qt.io/yocto/meta-qt6.git<br />&nbsp;&nbsp;&nbsp; refspec: origin=
/6.2.4<br /><br />&nbsp; meta-test:<br />&nbsp;&nbsp;&nbsp; url: https://gi=
thub.com/OOHehir/meta-test.git<br />&nbsp;&nbsp;&nbsp; refspec: origin/main=
<br /><br />bblayers_conf_header:<br />&nbsp; standard: |<br />&nbsp;&nbsp;=
&nbsp; POKY_BBLAYERS_CONF_VERSION =3D "2"<br />&nbsp;&nbsp;&nbsp; BBPATH =
=3D "${TOPDIR}"<br />&nbsp;&nbsp;&nbsp; BBFILES ?=3D ""<br />local_conf_hea=
der:<br />&nbsp; reduce_diskspace: |<br />&nbsp;&nbsp;&nbsp; INHERIT +=3D "=
rm_work_and_downloads"<br />&nbsp; build_qt6_sdk: |<br />&nbsp;&nbsp;&nbsp;=
 INHERIT +=3D "populate_sdk_qt6_base"<br />&nbsp; standard: |<br />&nbsp;&n=
bsp;&nbsp; # Added<br />&nbsp;&nbsp;&nbsp; DL_DIR =3D "/media/owen/yocto/me=
ritechYocto/localCache/sstate-cache"<br />&nbsp;&nbsp;&nbsp; SSTATE_DIR =3D=
 "/media/owen/yocto/meritechYocto/localCache/sstate-cache"<br />&nbsp;&nbsp=
;&nbsp; BB_SIGNATURE_HANDLER =3D "OEEquivHash"<br />&nbsp;&nbsp;&nbsp; BB_H=
ASHSERVE =3D "auto"<br />&nbsp;&nbsp;&nbsp; BB_HASHSERVE_UPSTREAM =3D "hash=
serv.yocto.io:8687"<br />&nbsp;&nbsp;&nbsp; SSTATE_MIRRORS ?=3D "file://.* =
https://sstate.yoctoproject.org/all/PATH;downloadfilename=3DPATH"<br /><br =
/>&nbsp;&nbsp;&nbsp; CONF_VERSION =3D "1"<br />&nbsp;&nbsp;&nbsp; PACKAGE_C=
LASSES =3D "package_rpm"<br />&nbsp;&nbsp;&nbsp; SDKMACHINE =3D "x86_64"<br=
 />&nbsp;&nbsp;&nbsp; USER_CLASSES =3D "buildstats image-mklibs image-preli=
nk"<br />&nbsp;&nbsp;&nbsp; PATCHRESOLVE =3D "noop"<br /><br />&nbsp;&nbsp;=
&nbsp; IMAGE_INSTALL +=3D "qt-test qtbase"<br />&nbsp;&nbsp;&nbsp; IMAGE_IN=
STALL +=3D "helloworld"<br /><br />&nbsp;&nbsp;&nbsp; DISTRO_FEATURES_remov=
e =3D "ptest"<br /><br />&nbsp; rpi-specific: |<br />&nbsp;&nbsp;&nbsp; DIS=
ABLE_RPI_BOOT_LOGO =3D "1"<br /><br />&nbsp; debug-tweaks: |<br />&nbsp;&nb=
sp;&nbsp; EXTRA_IMAGE_FEATURES =3D "debug-tweaks ssh-server-dropbear"<br />=
&nbsp; diskmon: |<br />&nbsp;&nbsp;&nbsp; BB_DISKMON_DIRS =3D "\<br />&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; STOPTASKS,${TMPDIR},1G,100K \<br />&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; STOPTASKS,${DL_DIR},1G,100K \<br /=
>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; STOPTASKS,${SSTATE_DIR},1G,100K=
 \<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; STOPTASKS,/tmp,100M,100K=
 \<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ABORT,${TMPDIR},100M,1K =
\<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ABORT,${DL_DIR},100M,1K \=
<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ABORT,${SSTATE_DIR},100M,1=
K \<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ABORT,/tmp,10M,1K"<br /=
><br /><br />Full build failure is below, any pointer appreciated,<br /><br=
 />Regards,<br /><br />Owen<br /><br />ERROR: gcc-cross-arm-9.5.0-r0 do_com=
pile: Execution of '/media/owen/yocto/meritechYocto/meta-raspberrypi/build/=
tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/temp/run.do_compile.3969185' f=
ailed with exit code 1<br />ERROR: Logfile of failure stored in: /media/owe=
n/yocto/meritechYocto/meta-raspberrypi/build/tmp/work/x86_64-linux/gcc-cros=
s-arm/9.5.0-r0/temp/log.do_compile.3969185<br />Log data follows:<br />| DE=
BUG: Executing python function autotools_aclocals<br />| DEBUG: SITE files =
['endian-little', 'common-linux', 'common-glibc', 'bit-64', 'x86_64-linux',=
 'common']<br />| DEBUG: Python function autotools_aclocals finished<br />|=
 DEBUG: Executing shell function do_compile<br />| NOTE: make -j 4 configur=
e-gcc<br />| make[1]: Entering directory '/media/owen/yocto/meritechYocto/m=
eta-raspberrypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/li=
biberty'<br />| make[2]: Entering directory '/media/owen/yocto/meritechYoct=
o/meta-raspberrypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build=
/libiberty/testsuite'<br />| make[2]: Nothing to be done for 'all'.<br />| =
make[2]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspberryp=
i/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/libiberty/testsu=
ite'<br />| make[1]: Leaving directory '/media/owen/yocto/meritechYocto/met=
a-raspberrypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/libi=
berty'<br />| make[1]: Entering directory '/media/owen/yocto/meritechYocto/=
meta-raspberrypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/l=
to-plugin'<br />| make&nbsp; all-am<br />| make[2]: Entering directory '/me=
dia/owen/yocto/meritechYocto/meta-raspberrypi/build/tmp/work/x86_64-linux/g=
cc-cross-arm/9.5.0-r0/build/lto-plugin'<br />| make[2]: Leaving directory '=
/media/owen/yocto/meritechYocto/meta-raspberrypi/build/tmp/work/x86_64-linu=
x/gcc-cross-arm/9.5.0-r0/build/lto-plugin'<br />| make[1]: Leaving director=
y '/media/owen/yocto/meritechYocto/meta-raspberrypi/build/tmp/work/x86_64-l=
inux/gcc-cross-arm/9.5.0-r0/build/lto-plugin'<br />| NOTE: make -j 4 TARGET=
-gcc=3Dchecksum-options all-gcc<br />| make[1]: Entering directory '/media/=
owen/yocto/meritechYocto/meta-raspberrypi/build/tmp/work/x86_64-linux/gcc-c=
ross-arm/9.5.0-r0/build/libiberty'<br />| make[1]: Entering directory '/med=
ia/owen/yocto/meritechYocto/meta-raspberrypi/build/tmp/work/x86_64-linux/gc=
c-cross-arm/9.5.0-r0/build/intl'<br />| make[1]: Nothing to be done for 'al=
l'.<br />| make[1]: Leaving directory '/media/owen/yocto/meritechYocto/meta=
-raspberrypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/intl'=
<br />| make[1]: Entering directory '/media/owen/yocto/meritechYocto/meta-r=
aspberrypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/build-x=
86_64-linux/libiberty'<br />| make[2]: Entering directory '/media/owen/yoct=
o/meritechYocto/meta-raspberrypi/build/tmp/work/x86_64-linux/gcc-cross-arm/=
9.5.0-r0/build/libiberty/testsuite'<br />| make[2]: Nothing to be done for =
'all'.<br />| make[2]: Leaving directory '/media/owen/yocto/meritechYocto/m=
eta-raspberrypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/li=
biberty/testsuite'<br />| make[1]: Leaving directory '/media/owen/yocto/mer=
itechYocto/meta-raspberrypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0=
-r0/build/libiberty'<br />| make[1]: Entering directory '/media/owen/yocto/=
meritechYocto/meta-raspberrypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.=
5.0-r0/build/libbacktrace'<br />| make&nbsp; all-am<br />| make[2]: Enterin=
g directory '/media/owen/yocto/meritechYocto/meta-raspberrypi/build/tmp/wor=
k/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/libbacktrace'<br />| make[2]: E=
ntering directory '/media/owen/yocto/meritechYocto/meta-raspberrypi/build/t=
mp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/build-x86_64-linux/libibe=
rty/testsuite'<br />| make[2]: Nothing to be done for 'all'.<br />| make[2]=
: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspberrypi/build=
/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/build-x86_64-linux/libi=
berty/testsuite'<br />| true&nbsp; DO=3Dall multi-do # make<br />| make[1]:=
 Leaving directory '/media/owen/yocto/meritechYocto/meta-raspberrypi/build/=
tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/build-x86_64-linux/libib=
erty'<br />| make[2]: Leaving directory '/media/owen/yocto/meritechYocto/me=
ta-raspberrypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/lib=
backtrace'<br />| make[1]: Leaving directory '/media/owen/yocto/meritechYoc=
to/meta-raspberrypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/buil=
d/libbacktrace'<br />| make[1]: Entering directory '/media/owen/yocto/merit=
echYocto/meta-raspberrypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r=
0/build/libdecnumber'<br />| make[1]: Nothing to be done for 'all'.<br />| =
make[1]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspberryp=
i/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/libdecnumber'<br=
 />| make[1]: Entering directory '/media/owen/yocto/meritechYocto/meta-rasp=
berrypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/lto-plugin=
'<br />| make&nbsp; all-am<br />| make[2]: Entering directory '/media/owen/=
yocto/meritechYocto/meta-raspberrypi/build/tmp/work/x86_64-linux/gcc-cross-=
arm/9.5.0-r0/build/lto-plugin'<br />| make[2]: Leaving directory '/media/ow=
en/yocto/meritechYocto/meta-raspberrypi/build/tmp/work/x86_64-linux/gcc-cro=
ss-arm/9.5.0-r0/build/lto-plugin'<br />| make[1]: Leaving directory '/media=
/owen/yocto/meritechYocto/meta-raspberrypi/build/tmp/work/x86_64-linux/gcc-=
cross-arm/9.5.0-r0/build/lto-plugin'<br />| make[1]: Entering directory '/m=
edia/owen/yocto/meritechYocto/meta-raspberrypi/build/tmp/work/x86_64-linux/=
gcc-cross-arm/9.5.0-r0/build/fixincludes'<br />| make[1]: Entering director=
y '/media/owen/yocto/meritechYocto/meta-raspberrypi/build/tmp/work/x86_64-l=
inux/gcc-cross-arm/9.5.0-r0/build/libcpp'<br />| test -f config.h || (rm -f=
 stamp-h1 &amp;&amp; make stamp-h1)<br />| make[1]: Nothing to be done for =
'all'.<br />| make[1]: Leaving directory '/media/owen/yocto/meritechYocto/m=
eta-raspberrypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/fi=
xincludes'<br />| make[1]: Leaving directory '/media/owen/yocto/meritechYoc=
to/meta-raspberrypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/buil=
d/libcpp'<br />| make[1]: Entering directory '/media/owen/yocto/meritechYoc=
to/meta-raspberrypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/buil=
d/build-x86_64-linux/fixincludes'<br />| make[1]: Nothing to be done for 'a=
ll'.<br />| make[1]: Leaving directory '/media/owen/yocto/meritechYocto/met=
a-raspberrypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/buil=
d-x86_64-linux/fixincludes'<br />| make[1]: Entering directory '/media/owen=
/yocto/meritechYocto/meta-raspberrypi/build/tmp/work/x86_64-linux/gcc-cross=
-arm/9.5.0-r0/build/build-x86_64-linux/libcpp'<br />| test -f config.h || (=
rm -f stamp-h1 &amp;&amp; make stamp-h1)<br />| make[1]: Leaving directory =
'/media/owen/yocto/meritechYocto/meta-raspberrypi/build/tmp/work/x86_64-lin=
ux/gcc-cross-arm/9.5.0-r0/build/build-x86_64-linux/libcpp'<br />| make[1]: =
Entering directory '/media/owen/yocto/meritechYocto/meta-raspberrypi/build/=
tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/gcc'<br />| make[1]: 'ch=
ecksum-options' is up to date.<br />| make[1]: Leaving directory '/media/ow=
en/yocto/meritechYocto/meta-raspberrypi/build/tmp/work/x86_64-linux/gcc-cro=
ss-arm/9.5.0-r0/build/gcc'<br />| sed: -e expression #1, char 0: no previou=
s regular expression<br />| WARNING: exit code 1 from a shell command.<br /=
>| ERROR: Execution of '/media/owen/yocto/meritechYocto/meta-raspberrypi/bu=
ild/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/temp/run.do_compile.396918=
5' failed with exit code 1<br />ERROR: Task (/media/owen/yocto/meritechYoct=
o/meta-raspberrypi/build/../poky/meta/recipes-devtools/gcc/gcc-cross_9.5.bb=
:do_compile) failed with exit code '1'<br />ERROR: gcc-crosssdk-x86_64-poky=
sdk-linux-9.5.0-r0 do_compile: Execution of '/media/owen/yocto/meritechYoct=
o/meta-raspberrypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-=
linux/9.5.0-r0/temp/run.do_compile.3969186' failed with exit code 1<br />ER=
ROR: Logfile of failure stored in: /media/owen/yocto/meritechYocto/meta-ras=
pberrypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.=
0-r0/temp/log.do_compile.3969186<br />Log data follows:<br />| DEBUG: Execu=
ting python function autotools_aclocals<br />| DEBUG: SITE files ['endian-l=
ittle', 'common-linux', 'common-glibc', 'bit-64', 'x86_64-linux', 'common']=
<br />| DEBUG: Python function autotools_aclocals finished<br />| DEBUG: Ex=
ecuting shell function do_compile<br />| NOTE: make -j 4 configure-gcc<br /=
>| make[1]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspbe=
rrypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r=
0/build/libiberty'<br />| make[2]: Entering directory '/media/owen/yocto/me=
ritechYocto/meta-raspberrypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_6=
4-pokysdk-linux/9.5.0-r0/build/libiberty/testsuite'<br />| make[2]: Nothing=
 to be done for 'all'.<br />| make[2]: Leaving directory '/media/owen/yocto=
/meritechYocto/meta-raspberrypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x8=
6_64-pokysdk-linux/9.5.0-r0/build/libiberty/testsuite'<br />| make[1]: Leav=
ing directory '/media/owen/yocto/meritechYocto/meta-raspberrypi/build/tmp/w=
ork/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r0/build/libiberty=
'<br />| make[1]: Entering directory '/media/owen/yocto/meritechYocto/meta-=
raspberrypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9=
.5.0-r0/build/lto-plugin'<br />| make&nbsp; all-am<br />| make[2]: Entering=
 directory '/media/owen/yocto/meritechYocto/meta-raspberrypi/build/tmp/work=
/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r0/build/lto-plugin'<=
br />| make[2]: Leaving directory '/media/owen/yocto/meritechYocto/meta-ras=
pberrypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.=
0-r0/build/lto-plugin'<br />| make[1]: Leaving directory '/media/owen/yocto=
/meritechYocto/meta-raspberrypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x8=
6_64-pokysdk-linux/9.5.0-r0/build/lto-plugin'<br />| NOTE: make -j 4 TARGET=
-gcc=3Dchecksum-options all-gcc<br />| make[1]: Entering directory '/media/=
owen/yocto/meritechYocto/meta-raspberrypi/build/tmp/work/x86_64-linux/gcc-c=
rosssdk-x86_64-pokysdk-linux/9.5.0-r0/build/libiberty'<br />| make[2]: Ente=
ring directory '/media/owen/yocto/meritechYocto/meta-raspberrypi/build/tmp/=
work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r0/build/libibert=
y/testsuite'<br />| make[2]: Nothing to be done for 'all'.<br />| make[2]: =
Leaving directory '/media/owen/yocto/meritechYocto/meta-raspberrypi/build/t=
mp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r0/build/libib=
erty/testsuite'<br />| make[1]: Leaving directory '/media/owen/yocto/merite=
chYocto/meta-raspberrypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-po=
kysdk-linux/9.5.0-r0/build/libiberty'<br />| make[1]: Entering directory '/=
media/owen/yocto/meritechYocto/meta-raspberrypi/build/tmp/work/x86_64-linux=
/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r0/build/intl'<br />| make[1]: Not=
hing to be done for 'all'.<br />| make[1]: Leaving directory '/media/owen/y=
octo/meritechYocto/meta-raspberrypi/build/tmp/work/x86_64-linux/gcc-crosssd=
k-x86_64-pokysdk-linux/9.5.0-r0/build/intl'<br />| make[1]: Entering direct=
ory '/media/owen/yocto/meritechYocto/meta-raspberrypi/build/tmp/work/x86_64=
-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r0/build/libbacktrace'<br />=
| make[1]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspber=
rypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r0=
/build/build-x86_64-linux/libiberty'<br />| make&nbsp; all-am<br />| make[2=
]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspberrypi/bui=
ld/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r0/build/l=
ibbacktrace'<br />| true&nbsp; DO=3Dall multi-do # make<br />| make[2]: Lea=
ving directory '/media/owen/yocto/meritechYocto/meta-raspberrypi/build/tmp/=
work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r0/build/libbackt=
race'<br />| make[1]: Leaving directory '/media/owen/yocto/meritechYocto/me=
ta-raspberrypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linu=
x/9.5.0-r0/build/libbacktrace'<br />| make[2]: Entering directory '/media/o=
wen/yocto/meritechYocto/meta-raspberrypi/build/tmp/work/x86_64-linux/gcc-cr=
osssdk-x86_64-pokysdk-linux/9.5.0-r0/build/build-x86_64-linux/libiberty/tes=
tsuite'<br />| make[2]: Nothing to be done for 'all'.<br />| make[2]: Leavi=
ng directory '/media/owen/yocto/meritechYocto/meta-raspberrypi/build/tmp/wo=
rk/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r0/build/build-x86_=
64-linux/libiberty/testsuite'<br />| make[1]: Entering directory '/media/ow=
en/yocto/meritechYocto/meta-raspberrypi/build/tmp/work/x86_64-linux/gcc-cro=
sssdk-x86_64-pokysdk-linux/9.5.0-r0/build/libdecnumber'<br />| make[1]: Not=
hing to be done for 'all'.<br />| make[1]: Leaving directory '/media/owen/y=
octo/meritechYocto/meta-raspberrypi/build/tmp/work/x86_64-linux/gcc-crosssd=
k-x86_64-pokysdk-linux/9.5.0-r0/build/libdecnumber'<br />| make[1]: Leaving=
 directory '/media/owen/yocto/meritechYocto/meta-raspberrypi/build/tmp/work=
/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r0/build/build-x86_64=
-linux/libiberty'<br />| make[1]: Entering directory '/media/owen/yocto/mer=
itechYocto/meta-raspberrypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64=
-pokysdk-linux/9.5.0-r0/build/lto-plugin'<br />| make&nbsp; all-am<br />| m=
ake[2]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspberryp=
i/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r0/bu=
ild/lto-plugin'<br />| make[1]: Entering directory '/media/owen/yocto/merit=
echYocto/meta-raspberrypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-p=
okysdk-linux/9.5.0-r0/build/build-x86_64-linux/fixincludes'<br />| make[1]:=
 Nothing to be done for 'all'.<br />| make[1]: Leaving directory '/media/ow=
en/yocto/meritechYocto/meta-raspberrypi/build/tmp/work/x86_64-linux/gcc-cro=
sssdk-x86_64-pokysdk-linux/9.5.0-r0/build/build-x86_64-linux/fixincludes'<b=
r />| make[2]: Leaving directory '/media/owen/yocto/meritechYocto/meta-rasp=
berrypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0=
-r0/build/lto-plugin'<br />| make[1]: Leaving directory '/media/owen/yocto/=
meritechYocto/meta-raspberrypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86=
_64-pokysdk-linux/9.5.0-r0/build/lto-plugin'<br />| make[1]: Entering direc=
tory '/media/owen/yocto/meritechYocto/meta-raspberrypi/build/tmp/work/x86_6=
4-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r0/build/build-x86_64-linux=
/libcpp'<br />| test -f config.h || (rm -f stamp-h1 &amp;&amp; make stamp-h=
1)<br />| make[1]: Leaving directory '/media/owen/yocto/meritechYocto/meta-=
raspberrypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9=
.5.0-r0/build/build-x86_64-linux/libcpp'<br />| make[1]: Entering directory=
 '/media/owen/yocto/meritechYocto/meta-raspberrypi/build/tmp/work/x86_64-li=
nux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r0/build/libcpp'<br />| test -f=
 config.h || (rm -f stamp-h1 &amp;&amp; make stamp-h1)<br />| make[1]: Leav=
ing directory '/media/owen/yocto/meritechYocto/meta-raspberrypi/build/tmp/w=
ork/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r0/build/libcpp'<b=
r />| make[1]: Entering directory '/media/owen/yocto/meritechYocto/meta-ras=
pberrypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.=
0-r0/build/fixincludes'<br />| make[1]: Nothing to be done for 'all'.<br />=
| make[1]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspberr=
ypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r0/=
build/fixincludes'<br />| make[1]: Entering directory '/media/owen/yocto/me=
ritechYocto/meta-raspberrypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_6=
4-pokysdk-linux/9.5.0-r0/build/gcc'<br />| make[1]: 'checksum-options' is u=
p to date.<br />| make[1]: Leaving directory '/media/owen/yocto/meritechYoc=
to/meta-raspberrypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk=
-linux/9.5.0-r0/build/gcc'<br />| sed: -e expression #1, char 0: no previou=
s regular expression<br />| WARNING: exit code 1 from a shell command.<br /=
>| ERROR: Execution of '/media/owen/yocto/meritechYocto/meta-raspberrypi/bu=
ild/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r0/temp/r=
un.do_compile.3969186' failed with exit code 1<br />ERROR: Task (/media/owe=
n/yocto/meritechYocto/meta-raspberrypi/build/../poky/meta/recipes-devtools/=
gcc/gcc-crosssdk_9.5.bb:do_compile) failed with exit code '1'<br />NOTE: Ta=
sks Summary: Attempted 551 tasks of which 530 didn't need to be rerun and 2=
 failed.<br /><br />Summary: 2 tasks failed:<br />&nbsp; /media/owen/yocto/=
meritechYocto/meta-raspberrypi/build/../poky/meta/recipes-devtools/gcc/gcc-=
cross_9.5.bb:do_compile<br />&nbsp; /media/owen/yocto/meritechYocto/meta-ra=
spberrypi/build/../poky/meta/recipes-devtools/gcc/gcc-crosssdk_9.5.bb:do_co=
mpile<br />Summary: There were 2 WARNING messages shown.<br />Summary: Ther=
e were 2 ERROR messages shown, returning a non-zero exit code.<br />2023-04=
-19 14:40:49 - ERROR&nbsp;&nbsp;&nbsp; - Command returned non-zero exit sta=
tus 1<br />owen@owen-XPS:/media/owen/yocto/meritechYocto/meta-raspberrypi$

--QgZfUQXFBV38U0zrS6cD--

