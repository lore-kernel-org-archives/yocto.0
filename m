Return-Path: <lh_post@yahoo.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2CFA6C4332F
	for <webhook@archiver.kernel.org>; Wed,  1 Nov 2023 14:03:21 +0000 (UTC)
Subject: python3 and libgcc fails when using arm-poky-linux-gnueabi (kirkstone)
To: yocto@lists.yoctoproject.org
From: "Lars Michael" <lh_post@yahoo.com>
X-Originating-Location: Copenhagen, Capital Region, DK (165.225.194.151)
X-Originating-Platform: Linux Chrome 104
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 01 Nov 2023 07:03:20 -0700
Message-ID: <cecA.1698847400327201212.qym0@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="5td9Js8FEQfJWrtaSt6v"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 01 Nov 2023 14:03:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61555

--5td9Js8FEQfJWrtaSt6v
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am trying to build an image for beagleplay using kirkstone branch. I am s=
tuck at issues when using arm-poky-linux-gnueabi, both compile OK when usin=
g=C2=A0arm-poky-eabi.

Are these known issues, or am I missing something?

For libgcc I notice:

| configure: error: cannot compute suffix of object files: cannot compile

| See `config.log' for more details

| Makefile:13501: recipe for target 'configure-target-libgcc' failed

| make: *** [configure-target-libgcc] Error 1

For python3 I notice:

| checking target system type... arm-poky-linux-gnueabi

| checking for multiarch... x86_64-linux-gnu

| configure: error: internal configure error for the platform triplet, plea=
se file a bug report

| NOTE: The following config.log files may provide further information.

| NOTE: /arm/fsl-community-bsp-kirkstone/bbp62x/tmp/work/x86_64-linux/pytho=
n3-native/3.10.13-r0/build/config.log

| ERROR: configure failed

| WARNING: exit code 1 from a shell command.

ERROR: Task (virtual:native:/arm/fsl-community-bsp-kirkstone/sources/poky/m=
eta/recipes-devtools/python/python3_3.10.13.bb:do_configure) failed with ex=
it code '1'

I am not able to get additional from the config.log files.

Full output:

lmh@ea25a4de66c8:/arm/fsl-community-bsp-kirkstone/bbp62x$ bitbake python3

Loading cache: 100% |######################################################=
####################################################| Time: 0:00:00

Loaded 3553 entries from dependency cache.

NOTE: Resolving any missing task queue dependencies

NOTE: Resolving any missing task queue dependencies

NOTE: Resolving any missing task queue dependencies

NOTE: Resolving any missing task queue dependencies

Build Configuration (mc:default):

BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "2.0.0"

BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "x86_64-linux"

NATIVELSBSTRING=C2=A0 =C2=A0 =C2=A0 =3D "universal"

TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "arm-poky-linux-gnue=
abi"

MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "beagleplay"

DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "poky"

DISTRO_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "4.0.13"

TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "aarch64"

TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D ""

meta

meta-poky

meta-yocto-bsp=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "HEAD:59077aa77b17ca6fdcc4e66d=
9d8b0c18dc89ecce"

meta-arm-toolchain

meta-arm=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "kirkstone:b187=
fb9232ca0a6b5f8f90b4715958546fc41d73"

meta-ti-bsp=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "kirkstone:bae3658ac0bc1c=
9adac7a882439cabb385cae720"

Build Configuration:

BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "2.0.0"

BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "x86_64-linux"

NATIVELSBSTRING=C2=A0 =C2=A0 =C2=A0 =3D "universal"

TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "arm-poky-linux-gnue=
abi"

MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "beagleplay-k3r=
5"

DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "poky"

DISTRO_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "4.0.13"

TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "arm armv7a vfp thumb callconv=
ention-hard"

TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "hard"

meta

meta-poky

meta-yocto-bsp=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "HEAD:59077aa77b17ca6fdcc4e66d=
9d8b0c18dc89ecce"

meta-arm-toolchain

meta-arm=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "kirkstone:b187=
fb9232ca0a6b5f8f90b4715958546fc41d73"

meta-ti-bsp=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "kirkstone:bae3658ac0bc1c=
9adac7a882439cabb385cae720"

Initialising tasks: 100% |#################################################=
####################################################| Time: 0:00:02

Sstate summary: Wanted 142 Local 7 Mirrors 0 Missed 135 Current 168 (4% mat=
ch, 56% complete)

NOTE: Executing Tasks

ERROR: gcc-cross-aarch64-11.4.0-r0 do_compile: oe_runmake failed

ERROR: gcc-cross-aarch64-11.4.0-r0 do_compile: ExecutionError('/arm/fsl-com=
munity-bsp-kirkstone/bbp62x/tmp/work/x86_64-linux/gcc-cross-aarch64/11.4.0-=
r0/temp/run.do_compile.1965811', 1, None, None)

ERROR: Logfile of failure stored in: /arm/fsl-community-bsp-kirkstone/bbp62=
x/tmp/work/x86_64-linux/gcc-cross-aarch64/11.4.0-r0/temp/log.do_compile.196=
5811

Log data follows:

| DEBUG: Executing python function autotools_aclocals

| DEBUG: SITE files ['endian-little', 'common-linux', 'common-glibc', 'bit-=
64', 'x86_64-linux', 'common']

| DEBUG: Python function autotools_aclocals finished

| DEBUG: Executing shell function do_compile

| NOTE: make -j 8 configure-gcc

| make[1]: Entering directory '/arm/fsl-community-bsp-kirkstone/bbp62x/tmp/=
work/x86_64-linux/gcc-cross-aarch64/11.4.0-r0/gcc-11.4.0/build.x86_64-linux=
.arm-poky-linux-gnueabi/libiberty'

| make[2]: Entering directory '/arm/fsl-community-bsp-kirkstone/bbp62x/tmp/=
work/x86_64-linux/gcc-cross-aarch64/11.4.0-r0/gcc-11.4.0/build.x86_64-linux=
.arm-poky-linux-gnueabi/libiberty/testsuite'

| make[2]: Nothing to be done for 'all'.

<cut>

| make[2]: Entering directory '/arm/fsl-community-bsp-kirkstone/bbp62x/tmp/=
work/x86_64-linux/gcc-cross-aarch64/11.4.0-r0/gcc-11.4.0/build.x86_64-linux=
.arm-poky-linux-gnueabi/libcc1'

| make[2]: Leaving directory '/arm/fsl-community-bsp-kirkstone/bbp62x/tmp/w=
ork/x86_64-linux/gcc-cross-aarch64/11.4.0-r0/gcc-11.4.0/build.x86_64-linux.=
arm-poky-linux-gnueabi/libcc1'

| make[1]: Leaving directory '/arm/fsl-community-bsp-kirkstone/bbp62x/tmp/w=
ork/x86_64-linux/gcc-cross-aarch64/11.4.0-r0/gcc-11.4.0/build.x86_64-linux.=
arm-poky-linux-gnueabi/libcc1'

| configure: loading cache ./config.cache

| checking build system type... x86_64-pc-linux-gnu

| checking host system type... arm-poky-linux-gnueabi

| checking for --enable-version-specific-runtime-libs... no

| checking for a BSD-compatible install... /arm/fsl-community-bsp-kirkstone=
/bbp62x/tmp/hosttools/install -c

| checking for gawk... gawk

| checking for arm-poky-linux-gnueabi-ar... arm-poky-linux-gnueabi-ar

| checking for arm-poky-linux-gnueabi-lipo... arm-poky-linux-gnueabi-lipo

| checking for arm-poky-linux-gnueabi-nm... /arm/fsl-community-bsp-kirkston=
e/bbp62x/tmp/work/x86_64-linux/gcc-cross-aarch64/11.4.0-r0/gcc-11.4.0/build=
.x86_64-linux.arm-poky-linux-gnueabi/./gcc/nm

| checking for arm-poky-linux-gnueabi-ranlib... arm-poky-linux-gnueabi-ranl=
ib

| checking for arm-poky-linux-gnueabi-strip... arm-poky-linux-gnueabi-strip

| checking whether ln -s works... yes

| checking for arm-poky-linux-gnueabi-gcc...=C2=A0 /arm/fsl-community-bsp-k=
irkstone/bbp62x/tmp/work/x86_64-linux/gcc-cross-aarch64/11.4.0-r0/gcc-11.4.=
0/build.x86_64-linux.arm-poky-linux-gnueabi/./gcc/xgcc -B/arm/fsl-community=
-bsp-kirkstone/bbp62x/tmp/work/x86_64-linux/gcc-cross-aarch64/11.4.0-r0/gcc=
-11.4.0/build.x86_64-linux.arm-poky-linux-gnueabi/./gcc/ -B/arm/fsl-communi=
ty-bsp-kirkstone/bbp62x/tmp/work/x86_64-linux/gcc-cross-aarch64/11.4.0-r0/r=
ecipe-sysroot-native/usr/arm-poky-linux-gnueabi/bin/ -B/arm/fsl-community-b=
sp-kirkstone/bbp62x/tmp/work/x86_64-linux/gcc-cross-aarch64/11.4.0-r0/recip=
e-sysroot-native/usr/arm-poky-linux-gnueabi/lib/ -isystem /arm/fsl-communit=
y-bsp-kirkstone/bbp62x/tmp/work/x86_64-linux/gcc-cross-aarch64/11.4.0-r0/re=
cipe-sysroot-native/usr/arm-poky-linux-gnueabi/include -isystem /arm/fsl-co=
mmunity-bsp-kirkstone/bbp62x/tmp/work/x86_64-linux/gcc-cross-aarch64/11.4.0=
-r0/recipe-sysroot-native/usr/arm-poky-linux-gnueabi/sys-include --sysroot=
=3D/arm/fsl-community-bsp-kirkstone/bbp62x/tmp/work/x86_64-linux/gcc-cross-=
aarch64/11.4.0-r0/recipe-sysroot

| checking for suffix of object files... configure: error: in `/arm/fsl-com=
munity-bsp-kirkstone/bbp62x/tmp/work/x86_64-linux/gcc-cross-aarch64/11.4.0-=
r0/gcc-11.4.0/build.x86_64-linux.arm-poky-linux-gnueabi/arm-poky-linux-gnue=
abi/libgcc':

| configure: error: cannot compute suffix of object files: cannot compile

| See `config.log' for more details

| Makefile:13501: recipe for target 'configure-target-libgcc' failed

| make: *** [configure-target-libgcc] Error 1

| ERROR: oe_runmake failed

| WARNING: exit code 1 from a shell command.

ERROR: Task (/arm/fsl-community-bsp-kirkstone/sources/poky/meta/recipes-dev=
tools/gcc/gcc-cross_11.4.bb:do_compile) failed with exit code '1'

ERROR: python3-native-3.10.13-r0 do_configure: configure failed

ERROR: python3-native-3.10.13-r0 do_configure: ExecutionError('/arm/fsl-com=
munity-bsp-kirkstone/bbp62x/tmp/work/x86_64-linux/python3-native/3.10.13-r0=
/temp/run.do_configure.1965812', 1, None, None)

ERROR: Logfile of failure stored in: /arm/fsl-community-bsp-kirkstone/bbp62=
x/tmp/work/x86_64-linux/python3-native/3.10.13-r0/temp/log.do_configure.196=
5812

Log data follows:

| DEBUG: Executing python function extend_recipe_sysroot

| NOTE: Direct dependencies are ['/arm/fsl-community-bsp-kirkstone/sources/=
poky/meta/recipes-devtools/libtool/libtool-native_2.4.7.bb:do_populate_sysr=
oot', '/arm/fsl-community-bsp-kirkstone/sources/poky/meta/recipes-devtools/=
quilt/quilt-native_0.67.bb:do_populate_sysroot', 'virtual:native:/arm/fsl-c=
ommunity-bsp-kirkstone/sources/poky/meta/recipes-connectivity/openssl/opens=
sl_3.0.11.bb:do_populate_sysroot', 'virtual:native:/arm/fsl-community-bsp-k=
irkstone/sources/poky/meta/recipes-core/ncurses/ncurses_6.3+20220423.bb:do_=
populate_sysroot', 'virtual:native:/arm/fsl-community-bsp-kirkstone/sources=
/poky/meta/recipes-core/readline/readline_8.1.2.bb:do_populate_sysroot', 'v=
irtual:native:/arm/fsl-community-bsp-kirkstone/sources/poky/meta/recipes-co=
re/util-linux/util-linux-libuuid_2.37.4.bb:do_populate_sysroot', 'virtual:n=
ative:/arm/fsl-community-bsp-kirkstone/sources/poky/meta/recipes-core/zlib/=
zlib_1.2.11.bb:do_populate_sysroot', 'virtual:native:/arm/fsl-community-bsp=
-kirkstone/sources/poky/meta/recipes-devtools/autoconf-archive/autoconf-arc=
hive_2022.02.11.bb:do_populate_sysroot', 'virtual:native:/arm/fsl-community=
-bsp-kirkstone/sources/poky/meta/recipes-devtools/autoconf/autoconf_2.71.bb=
:do_populate_sysroot', 'virtual:native:/arm/fsl-community-bsp-kirkstone/sou=
rces/poky/meta/recipes-devtools/automake/automake_1.16.5.bb:do_populate_sys=
root', 'virtual:native:/arm/fsl-community-bsp-kirkstone/sources/poky/meta/r=
ecipes-devtools/pkgconfig/pkgconfig_git.bb:do_populate_sysroot', 'virtual:n=
ative:/arm/fsl-community-bsp-kirkstone/sources/poky/meta/recipes-extended/b=
zip2/bzip2_1.0.8.bb:do_populate_sysroot', 'virtual:native:/arm/fsl-communit=
y-bsp-kirkstone/sources/poky/meta/recipes-extended/libnsl/libnsl2_git.bb:do=
_populate_sysroot', 'virtual:native:/arm/fsl-community-bsp-kirkstone/source=
s/poky/meta/recipes-extended/libtirpc/libtirpc_1.3.2.bb:do_populate_sysroot=
', 'virtual:native:/arm/fsl-community-bsp-kirkstone/sources/poky/meta/recip=
es-extended/xz/xz_5.2.6.bb:do_populate_sysroot', 'virtual:native:/arm/fsl-c=
ommunity-bsp-kirkstone/sources/poky/meta/recipes-support/gdbm/gdbm_1.23.bb:=
do_populate_sysroot', 'virtual:native:/arm/fsl-community-bsp-kirkstone/sour=
ces/poky/meta/recipes-support/libffi/libffi_3.4.4.bb:do_populate_sysroot', =
'virtual:native:/arm/fsl-community-bsp-kirkstone/sources/poky/meta/recipes-=
support/sqlite/sqlite3_3.38.5.bb:do_populate_sysroot']

| NOTE: Installed into sysroot: []

| NOTE: Skipping as already exists in sysroot: ['libtool-native', 'quilt-na=
tive', 'openssl-native', 'ncurses-native', 'readline-native', 'util-linux-l=
ibuuid-native', 'zlib-native', 'autoconf-archive-native', 'autoconf-native'=
, 'automake-native', 'pkgconfig-native', 'bzip2-native', 'libnsl2-native', =
'libtirpc-native', 'xz-native', 'gdbm-native', 'libffi-native', 'sqlite3-na=
tive', 'texinfo-dummy-native', 'gettext-minimal-native', 'm4-native', 'gnu-=
config-native', 'perl-native', 'make-native']

| DEBUG: Python function extend_recipe_sysroot finished

| DEBUG: Executing shell function autotools_preconfigure

| Previously configured separate build directory detected, cleaning /arm/fs=
l-community-bsp-kirkstone/bbp62x/tmp/work/x86_64-linux/python3-native/3.10.=
13-r0/build

| DEBUG: Shell function autotools_preconfigure finished

| DEBUG: Executing python function autotools_aclocals

| DEBUG: SITE files ['endian-little', 'common-linux', 'common-glibc', 'bit-=
64', 'x86_64-linux', 'common']

| DEBUG: Python function autotools_aclocals finished

| DEBUG: Executing shell function do_configure

| automake (GNU automake) 1.16.5

| Copyright (C) 2021 Free Software Foundation, Inc.

| License GPLv2+: GNU GPL version 2 or later <https://gnu.org/licenses/gpl-=
2.0.html>

| This is free software: you are free to change and redistribute it.

| There is NO WARRANTY, to the extent permitted by law.

|

| Written by Tom Tromey <tromey@redhat.com>

|=C2=A0 =C2=A0 =C2=A0 =C2=A0 and Alexandre Duret-Lutz <adl@gnu.org>.

| AUTOV is 1.16

| NOTE: Executing ACLOCAL=3D"aclocal --system-acdir=3D/arm/fsl-community-bs=
p-kirkstone/bbp62x/tmp/work/x86_64-linux/python3-native/3.10.13-r0/recipe-s=
ysroot-native/usr/share/aclocal/ --automake-acdir=3D/arm/fsl-community-bsp-=
kirkstone/bbp62x/tmp/work/x86_64-linux/python3-native/3.10.13-r0/recipe-sys=
root-native/usr/share/aclocal-1.16" autoreconf -Wcross --verbose --install =
--force --exclude=3Dautopoint --exclude=3Dgtkdocize

| autoreconf: export WARNINGS=3Dcross,no-obsolete

| autoreconf: Entering directory '.'

| autoreconf: configure.ac: not using Gettext

| autoreconf: running: aclocal --system-acdir=3D/arm/fsl-community-bsp-kirk=
stone/bbp62x/tmp/work/x86_64-linux/python3-native/3.10.13-r0/recipe-sysroot=
-native/usr/share/aclocal/ --automake-acdir=3D/arm/fsl-community-bsp-kirkst=
one/bbp62x/tmp/work/x86_64-linux/python3-native/3.10.13-r0/recipe-sysroot-n=
ative/usr/share/aclocal-1.16 --force

| autoreconf: configure.ac: tracing

| autoreconf: running: libtoolize --copy --force

| libtoolize: putting auxiliary files in '.'.

| libtoolize: copying file './ltmain.sh'

| libtoolize: Consider adding 'AC_CONFIG_MACRO_DIRS([m4])' to configure.ac,

| libtoolize: and rerunning libtoolize and aclocal.

| libtoolize: Consider adding '-I m4' to ACLOCAL_AMFLAGS in Makefile.am.

| autoreconf: configure.ac: not using Intltool

| autoreconf: configure.ac: not using Gtkdoc

| autoreconf: running: aclocal --system-acdir=3D/arm/fsl-community-bsp-kirk=
stone/bbp62x/tmp/work/x86_64-linux/python3-native/3.10.13-r0/recipe-sysroot=
-native/usr/share/aclocal/ --automake-acdir=3D/arm/fsl-community-bsp-kirkst=
one/bbp62x/tmp/work/x86_64-linux/python3-native/3.10.13-r0/recipe-sysroot-n=
ative/usr/share/aclocal-1.16 --force

| autoreconf: running: /arm/fsl-community-bsp-kirkstone/bbp62x/tmp/work/x86=
_64-linux/python3-native/3.10.13-r0/recipe-sysroot-native/usr/bin/autoconf =
--force

| configure.ac:779: warning: AC_COMPILE_IFELSE was called before AC_USE_SYS=
TEM_EXTENSIONS

| ../autoconf-2.71/lib/autoconf/specific.m4:364: AC_USE_SYSTEM_EXTENSIONS i=
s expanded from...

| configure.ac:779: the top level

| configure.ac:779: warning: AC_LINK_IFELSE was called before AC_USE_SYSTEM=
_EXTENSIONS

| ../autoconf-2.71/lib/autoconf/specific.m4:364: AC_USE_SYSTEM_EXTENSIONS i=
s expanded from...

| configure.ac:779: the top level

| configure.ac:779: warning: AC_CHECK_INCLUDES_DEFAULT was called before AC=
_USE_SYSTEM_EXTENSIONS

| ../autoconf-2.71/lib/autoconf/specific.m4:364: AC_USE_SYSTEM_EXTENSIONS i=
s expanded from...

| configure.ac:779: the top level

| configure.ac:5277: warning: cannot check for file existence when cross co=
mpiling

| ../autoconf-2.71/lib/autoconf/general.m4:3010: AC_CHECK_FILE is expanded =
from...

| configure.ac:5277: the top level

| configure.ac:5282: warning: cannot check for file existence when cross co=
mpiling

| ../autoconf-2.71/lib/autoconf/general.m4:3010: AC_CHECK_FILE is expanded =
from...

| configure.ac:5282: the top level

| autoreconf: running: /arm/fsl-community-bsp-kirkstone/bbp62x/tmp/work/x86=
_64-linux/python3-native/3.10.13-r0/recipe-sysroot-native/usr/bin/autoheade=
r --force

| autoreconf: configure.ac: not using Automake

| autoreconf: Leaving directory '.'

| NOTE: Running ../Python-3.10.13/configure=C2=A0 --build=3Dx86_64-linux --=
host=3Dx86_64-linux --target=3Darm-poky-linux-gnueabi --prefix=3D/arm/fsl-c=
ommunity-bsp-kirkstone/bbp62x/tmp/work/x86_64-linux/python3-native/3.10.13-=
r0/recipe-sysroot-native/usr=C2=A0 =C2=A0--exec_prefix=3D/arm/fsl-community=
-bsp-kirkstone/bbp62x/tmp/work/x86_64-linux/python3-native/3.10.13-r0/recip=
e-sysroot-native/usr --bindir=3D/arm/fsl-community-bsp-kirkstone/bbp62x/tmp=
/work/x86_64-linux/python3-native/3.10.13-r0/recipe-sysroot-native/usr/bin =
--sbindir=3D/arm/fsl-community-bsp-kirkstone/bbp62x/tmp/work/x86_64-linux/p=
ython3-native/3.10.13-r0/recipe-sysroot-native/usr/sbin --libexecdir=3D/arm=
/fsl-community-bsp-kirkstone/bbp62x/tmp/work/x86_64-linux/python3-native/3.=
10.13-r0/recipe-sysroot-native/usr/libexec --datadir=3D/arm/fsl-community-b=
sp-kirkstone/bbp62x/tmp/work/x86_64-linux/python3-native/3.10.13-r0/recipe-=
sysroot-native/usr/share --sysconfdir=3D/arm/fsl-community-bsp-kirkstone/bb=
p62x/tmp/work/x86_64-linux/python3-native/3.10.13-r0/recipe-sysroot-native/=
etc --sharedstatedir=3D/arm/fsl-community-bsp-kirkstone/bbp62x/tmp/work/x86=
_64-linux/python3-native/3.10.13-r0/recipe-sysroot-native/com --localstated=
ir=3D/arm/fsl-community-bsp-kirkstone/bbp62x/tmp/work/x86_64-linux/python3-=
native/3.10.13-r0/recipe-sysroot-native/var --libdir=3D/arm/fsl-community-b=
sp-kirkstone/bbp62x/tmp/work/x86_64-linux/python3-native/3.10.13-r0/recipe-=
sysroot-native/usr/lib --includedir=3D/arm/fsl-community-bsp-kirkstone/bbp6=
2x/tmp/work/x86_64-linux/python3-native/3.10.13-r0/recipe-sysroot-native/us=
r/include --oldincludedir=3D/arm/fsl-community-bsp-kirkstone/bbp62x/tmp/wor=
k/x86_64-linux/python3-native/3.10.13-r0/recipe-sysroot-native/usr/include =
--infodir=3D/arm/fsl-community-bsp-kirkstone/bbp62x/tmp/work/x86_64-linux/p=
ython3-native/3.10.13-r0/recipe-sysroot-native/usr/share/info --mandir=3D/a=
rm/fsl-community-bsp-kirkstone/bbp62x/tmp/work/x86_64-linux/python3-native/=
3.10.13-r0/recipe-sysroot-native/usr/share/man --disable-silent-rules --dis=
able-dependency-tracking --without-ensurepip --enable-shared --with-platlib=
dir=3Dlib --disable-static=C2=A0 --bindir=3D/arm/fsl-community-bsp-kirkston=
e/bbp62x/tmp/work/x86_64-linux/python3-native/3.10.13-r0/recipe-sysroot-nat=
ive/usr/bin/python3-native

| configure: WARNING: unrecognized options: --disable-silent-rules, --disab=
le-dependency-tracking

| configure: loading site script /arm/fsl-community-bsp-kirkstone/sources/p=
oky/meta/site/endian-little

| configure: loading site script /arm/fsl-community-bsp-kirkstone/sources/p=
oky/meta/site/common-linux

| configure: loading site script /arm/fsl-community-bsp-kirkstone/sources/p=
oky/meta/site/common-glibc

| configure: loading site script /arm/fsl-community-bsp-kirkstone/sources/p=
oky/meta/site/x86_64-linux

| configure: loading site script /arm/fsl-community-bsp-kirkstone/sources/p=
oky/meta/site/common

| configure: loading site script /arm/fsl-community-bsp-kirkstone/bbp62x/tm=
p/work/x86_64-linux/python3-native/3.10.13-r0/recipe-sysroot-native/usr/sha=
re/arm-poky-linux-gnueabi_config_site.d/ncurses_config

| checking build system type... x86_64-pc-linux-gnu

| checking host system type... x86_64-pc-linux-gnu

| checking how to print strings... printf

| checking for x86_64-linux-gcc... gcc

| checking whether the C compiler works... yes

| checking for C compiler default output file name... a.out

| checking for suffix of executables...

| checking whether we are cross compiling... no

| checking for suffix of object files... o

| checking whether the compiler supports GNU C... yes

| checking whether gcc=C2=A0 accepts -g... yes

| checking for gcc=C2=A0 option to enable C11 features... none needed

| checking for a sed that does not truncate output... (cached) sed

| checking for grep that handles long lines and -e... /arm/fsl-community-bs=
p-kirkstone/bbp62x/tmp/hosttools/grep

| checking for egrep... /arm/fsl-community-bsp-kirkstone/bbp62x/tmp/hosttoo=
ls/grep -E

| checking for fgrep... /arm/fsl-community-bsp-kirkstone/bbp62x/tmp/hosttoo=
ls/grep -F

| checking for ld used by gcc ... ld

| checking if the linker (ld ) is GNU ld... yes

| checking for BSD- or MS-compatible name lister (nm)... nm

| checking the name lister (nm) interface... BSD nm

| checking whether ln -s works... yes

| checking the maximum length of command line arguments... 1572864

| checking how to convert x86_64-pc-linux-gnu file names to x86_64-pc-linux=
-gnu format... func_convert_file_noop

| checking how to convert x86_64-pc-linux-gnu file names to toolchain forma=
t... func_convert_file_noop

| checking for ld=C2=A0 option to reload object files... -r

| checking for x86_64-linux-file... no

| checking for file... file

| checking for x86_64-linux-objdump... objdump

| checking how to recognize dependent libraries... pass_all

| checking for x86_64-linux-dlltool... no

| checking for dlltool... no

| checking how to associate runtime and link libraries... printf %s\n

| checking for x86_64-linux-ar... ar

| checking for archiver @FILE support... @

| checking for x86_64-linux-strip... strip

| checking for x86_64-linux-ranlib... ranlib -D

| checking for gawk... gawk

| checking command to parse nm output from gcc=C2=A0 object... ok

| checking for sysroot... no

| checking for a working dd... /arm/fsl-community-bsp-kirkstone/bbp62x/tmp/=
hosttools/dd

| checking how to truncate binary pipes... /arm/fsl-community-bsp-kirkstone=
/bbp62x/tmp/hosttools/dd bs=3D4096 count=3D1

| checking for x86_64-linux-mt... no

| checking for mt... no

| checking if : is a manifest tool... no

| checking for stdio.h... (cached) yes

| checking for stdlib.h... (cached) yes

| checking for string.h... (cached) yes

| checking for inttypes.h... (cached) yes

| checking for stdint.h... (cached) yes

| checking for strings.h... (cached) yes

| checking for sys/stat.h... (cached) yes

| checking for sys/types.h... (cached) yes

| checking for unistd.h... (cached) yes

| checking for wchar.h... yes

| checking for minix/config.h... no

| checking for sys/time.h... yes

| checking for dlfcn.h... yes

| checking for objdir... .libs

| checking if gcc=C2=A0 supports -fno-rtti -fno-exceptions... no

| checking for gcc=C2=A0 option to produce PIC... -fPIC -DPIC

| checking if gcc=C2=A0 PIC flag -fPIC -DPIC works... yes

| checking if gcc=C2=A0 static flag -static works... yes

| checking if gcc=C2=A0 supports -c -o file.o... yes

| checking if gcc=C2=A0 supports -c -o file.o... (cached) yes

| checking whether the gcc=C2=A0 linker (ld=C2=A0 -m elf_x86_64) supports s=
hared libraries... yes

| checking whether -lc should be explicitly linked in... no

| checking dynamic linker characteristics... GNU/Linux ld.so

| checking how to hardcode library paths into programs... immediate

| checking whether stripping libraries is possible... yes

| checking if libtool supports shared libraries... yes

| checking whether to build shared libraries... yes

| checking whether to build static libraries... no

| checking for python3.10... no

| checking for python3... python3

| checking for --enable-universalsdk... no

| checking for --with-universal-archs... no

| checking MACHDEP... "linux"

| checking for x86_64-linux-gcc... (cached) gcc

| checking whether the compiler supports GNU C... (cached) yes

| checking whether gcc=C2=A0 accepts -g... (cached) yes

| checking for gcc=C2=A0 option to enable C11 features... (cached) none nee=
ded

| checking how to run the C preprocessor... gcc=C2=A0 -E

| checking for grep that handles long lines and -e... (cached) /arm/fsl-com=
munity-bsp-kirkstone/bbp62x/tmp/hosttools/grep

| checking for a sed that does not truncate output... (cached) sed

| checking for --with-cxx-main=3D<compiler>... no

| checking target system type... arm-poky-linux-gnueabi

| checking for multiarch... x86_64-linux-gnu

| configure: error: internal configure error for the platform triplet, plea=
se file a bug report

| NOTE: The following config.log files may provide further information.

| NOTE: /arm/fsl-community-bsp-kirkstone/bbp62x/tmp/work/x86_64-linux/pytho=
n3-native/3.10.13-r0/build/config.log

| ERROR: configure failed

| WARNING: exit code 1 from a shell command.

ERROR: Task (virtual:native:/arm/fsl-community-bsp-kirkstone/sources/poky/m=
eta/recipes-devtools/python/python3_3.10.13.bb:do_configure) failed with ex=
it code '1'

NOTE: Tasks Summary: Attempted 765 tasks of which 763 didn't need to be rer=
un and 2 failed.

Summary: 2 tasks failed:

/arm/fsl-community-bsp-kirkstone/sources/poky/meta/recipes-devtools/gcc/gcc=
-cross_11.4.bb:do_compile

virtual:native:/arm/fsl-community-bsp-kirkstone/sources/poky/meta/recipes-d=
evtools/python/python3_3.10.13.bb:do_configure

Summary: There were 4 ERROR messages, returning a non-zero exit code.

lmh@ea25a4de66c8:/arm/fsl-community-bsp-kirkstone/bbp62x$

--5td9Js8FEQfJWrtaSt6v
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>I am trying to build an image for beagleplay using kirkstone branch. I a=
m stuck at issues when using arm-poky-linux-gnueabi, both compile OK when u=
sing&nbsp;arm-poky-eabi.<br /><br />Are these known issues, or am I missing=
 something?</p>
<p>For libgcc I notice:</p>
<p>&nbsp; | configure: error: cannot compute suffix of object files: cannot=
 compile</p>
<p>&nbsp; | See `config.log' for more details</p>
<p>&nbsp; | Makefile:13501: recipe for target 'configure-target-libgcc' fai=
led</p>
<p>&nbsp;</p>
<p>&nbsp; | make: *** [configure-target-libgcc] Error 1</p>
<div>&nbsp;</div>
<p>For python3 I notice:</p>
<p>&nbsp; | checking target system type... arm-poky-linux-gnueabi</p>
<p>&nbsp; | checking for multiarch... x86_64-linux-gnu</p>
<p>&nbsp; | configure: error: internal configure error for the platform tri=
plet, please file a bug report</p>
<p>&nbsp; | NOTE: The following config.log files may provide further inform=
ation.</p>
<p>&nbsp; | NOTE: /arm/fsl-community-bsp-kirkstone/bbp62x/tmp/work/x86_64-l=
inux/python3-native/3.10.13-r0/build/config.log</p>
<p>&nbsp; | ERROR: configure failed</p>
<p>&nbsp; | WARNING: exit code 1 from a shell command.</p>
<p>&nbsp; ERROR: Task (virtual:native:/arm/fsl-community-bsp-kirkstone/sour=
ces/poky/meta/recipes-devtools/python/python3_3.10.13.bb:do_configure) fail=
ed with exit code '1'</p>
<div>I am not able to get additional from the config.log files.<br /><br />=
Full output:<br /><br /><br /></div>
<p>lmh@ea25a4de66c8:/arm/fsl-community-bsp-kirkstone/bbp62x$ bitbake python=
3</p>
<p>Loading cache: 100% |###################################################=
#######################################################| Time: 0:00:00</p>
<p>Loaded 3553 entries from dependency cache.</p>
<p>NOTE: Resolving any missing task queue dependencies</p>
<p>NOTE: Resolving any missing task queue dependencies</p>
<p>NOTE: Resolving any missing task queue dependencies</p>
<p>NOTE: Resolving any missing task queue dependencies</p>
<p>&nbsp;</p>
<p>Build Configuration (mc:default):</p>
<p>BB_VERSION&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D "2.0.0"</p>
<p>BUILD_SYS&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D "x86_64-linux"</p=
>
<p>NATIVELSBSTRING&nbsp; &nbsp; &nbsp; =3D "universal"</p>
<p>TARGET_SYS&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D "arm-poky-linux-g=
nueabi"</p>
<p>MACHINE&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D "beagleplay"=
</p>
<p>DISTRO&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D "poky"<=
/p>
<p>DISTRO_VERSION&nbsp; &nbsp; &nbsp; &nbsp;=3D "4.0.13"</p>
<p>TUNE_FEATURES&nbsp; &nbsp; &nbsp; &nbsp; =3D "aarch64"</p>
<p>TARGET_FPU&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D ""</p>
<p>meta&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>
<p>meta-poky&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>
<p>meta-yocto-bsp&nbsp; &nbsp; &nbsp; &nbsp;=3D "HEAD:59077aa77b17ca6fdcc4e=
66d9d8b0c18dc89ecce"</p>
<p>meta-arm-toolchain&nbsp; &nbsp;</p>
<p>meta-arm&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D "kirkstone:b=
187fb9232ca0a6b5f8f90b4715958546fc41d73"</p>
<p>meta-ti-bsp&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D "kirkstone:bae3658ac0b=
c1c9adac7a882439cabb385cae720"</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>Build Configuration:</p>
<p>BB_VERSION&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D "2.0.0"</p>
<p>BUILD_SYS&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D "x86_64-linux"</p=
>
<p>NATIVELSBSTRING&nbsp; &nbsp; &nbsp; =3D "universal"</p>
<p>TARGET_SYS&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D "arm-poky-linux-g=
nueabi"</p>
<p>MACHINE&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D "beagleplay-=
k3r5"</p>
<p>DISTRO&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D "poky"<=
/p>
<p>DISTRO_VERSION&nbsp; &nbsp; &nbsp; &nbsp;=3D "4.0.13"</p>
<p>TUNE_FEATURES&nbsp; &nbsp; &nbsp; &nbsp; =3D "arm armv7a vfp thumb callc=
onvention-hard"</p>
<p>TARGET_FPU&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D "hard"</p>
<p>meta&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>
<p>meta-poky&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>
<p>meta-yocto-bsp&nbsp; &nbsp; &nbsp; &nbsp;=3D "HEAD:59077aa77b17ca6fdcc4e=
66d9d8b0c18dc89ecce"</p>
<p>meta-arm-toolchain&nbsp; &nbsp;</p>
<p>meta-arm&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D "kirkstone:b=
187fb9232ca0a6b5f8f90b4715958546fc41d73"</p>
<p>meta-ti-bsp&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D "kirkstone:bae3658ac0b=
c1c9adac7a882439cabb385cae720"</p>
<p>&nbsp;</p>
<p>Initialising tasks: 100% |##############################################=
#######################################################| Time: 0:00:02</p>
<p>Sstate summary: Wanted 142 Local 7 Mirrors 0 Missed 135 Current 168 (4% =
match, 56% complete)</p>
<p>NOTE: Executing Tasks</p>
<p>ERROR: gcc-cross-aarch64-11.4.0-r0 do_compile: oe_runmake failed</p>
<p>ERROR: gcc-cross-aarch64-11.4.0-r0 do_compile: ExecutionError('/arm/fsl-=
community-bsp-kirkstone/bbp62x/tmp/work/x86_64-linux/gcc-cross-aarch64/11.4=
.0-r0/temp/run.do_compile.1965811', 1, None, None)</p>
<p>ERROR: Logfile of failure stored in: /arm/fsl-community-bsp-kirkstone/bb=
p62x/tmp/work/x86_64-linux/gcc-cross-aarch64/11.4.0-r0/temp/log.do_compile.=
1965811</p>
<p>Log data follows:</p>
<p>| DEBUG: Executing python function autotools_aclocals</p>
<p>| DEBUG: SITE files ['endian-little', 'common-linux', 'common-glibc', 'b=
it-64', 'x86_64-linux', 'common']</p>
<p>| DEBUG: Python function autotools_aclocals finished</p>
<p>| DEBUG: Executing shell function do_compile</p>
<p>| NOTE: make -j 8 configure-gcc</p>
<p>| make[1]: Entering directory '/arm/fsl-community-bsp-kirkstone/bbp62x/t=
mp/work/x86_64-linux/gcc-cross-aarch64/11.4.0-r0/gcc-11.4.0/build.x86_64-li=
nux.arm-poky-linux-gnueabi/libiberty'</p>
<p>| make[2]: Entering directory '/arm/fsl-community-bsp-kirkstone/bbp62x/t=
mp/work/x86_64-linux/gcc-cross-aarch64/11.4.0-r0/gcc-11.4.0/build.x86_64-li=
nux.arm-poky-linux-gnueabi/libiberty/testsuite'</p>
<p>| make[2]: Nothing to be done for 'all'.</p>
<p>&lt;cut&gt;</p>
<p>| make[2]: Entering directory '/arm/fsl-community-bsp-kirkstone/bbp62x/t=
mp/work/x86_64-linux/gcc-cross-aarch64/11.4.0-r0/gcc-11.4.0/build.x86_64-li=
nux.arm-poky-linux-gnueabi/libcc1'</p>
<p>| make[2]: Leaving directory '/arm/fsl-community-bsp-kirkstone/bbp62x/tm=
p/work/x86_64-linux/gcc-cross-aarch64/11.4.0-r0/gcc-11.4.0/build.x86_64-lin=
ux.arm-poky-linux-gnueabi/libcc1'</p>
<p>| make[1]: Leaving directory '/arm/fsl-community-bsp-kirkstone/bbp62x/tm=
p/work/x86_64-linux/gcc-cross-aarch64/11.4.0-r0/gcc-11.4.0/build.x86_64-lin=
ux.arm-poky-linux-gnueabi/libcc1'</p>
<p>| configure: loading cache ./config.cache</p>
<p>| checking build system type... x86_64-pc-linux-gnu</p>
<p>| checking host system type... arm-poky-linux-gnueabi</p>
<p>| checking for --enable-version-specific-runtime-libs... no</p>
<p>| checking for a BSD-compatible install... /arm/fsl-community-bsp-kirkst=
one/bbp62x/tmp/hosttools/install -c</p>
<p>| checking for gawk... gawk</p>
<p>| checking for arm-poky-linux-gnueabi-ar... arm-poky-linux-gnueabi-ar</p=
>
<p>| checking for arm-poky-linux-gnueabi-lipo... arm-poky-linux-gnueabi-lip=
o</p>
<p>| checking for arm-poky-linux-gnueabi-nm... /arm/fsl-community-bsp-kirks=
tone/bbp62x/tmp/work/x86_64-linux/gcc-cross-aarch64/11.4.0-r0/gcc-11.4.0/bu=
ild.x86_64-linux.arm-poky-linux-gnueabi/./gcc/nm</p>
<p>| checking for arm-poky-linux-gnueabi-ranlib... arm-poky-linux-gnueabi-r=
anlib</p>
<p>| checking for arm-poky-linux-gnueabi-strip... arm-poky-linux-gnueabi-st=
rip</p>
<p>| checking whether ln -s works... yes</p>
<p>| checking for arm-poky-linux-gnueabi-gcc...&nbsp; /arm/fsl-community-bs=
p-kirkstone/bbp62x/tmp/work/x86_64-linux/gcc-cross-aarch64/11.4.0-r0/gcc-11=
.4.0/build.x86_64-linux.arm-poky-linux-gnueabi/./gcc/xgcc -B/arm/fsl-commun=
ity-bsp-kirkstone/bbp62x/tmp/work/x86_64-linux/gcc-cross-aarch64/11.4.0-r0/=
gcc-11.4.0/build.x86_64-linux.arm-poky-linux-gnueabi/./gcc/ -B/arm/fsl-comm=
unity-bsp-kirkstone/bbp62x/tmp/work/x86_64-linux/gcc-cross-aarch64/11.4.0-r=
0/recipe-sysroot-native/usr/arm-poky-linux-gnueabi/bin/ -B/arm/fsl-communit=
y-bsp-kirkstone/bbp62x/tmp/work/x86_64-linux/gcc-cross-aarch64/11.4.0-r0/re=
cipe-sysroot-native/usr/arm-poky-linux-gnueabi/lib/ -isystem /arm/fsl-commu=
nity-bsp-kirkstone/bbp62x/tmp/work/x86_64-linux/gcc-cross-aarch64/11.4.0-r0=
/recipe-sysroot-native/usr/arm-poky-linux-gnueabi/include -isystem /arm/fsl=
-community-bsp-kirkstone/bbp62x/tmp/work/x86_64-linux/gcc-cross-aarch64/11.=
4.0-r0/recipe-sysroot-native/usr/arm-poky-linux-gnueabi/sys-include --sysro=
ot=3D/arm/fsl-community-bsp-kirkstone/bbp62x/tmp/work/x86_64-linux/gcc-cros=
s-aarch64/11.4.0-r0/recipe-sysroot</p>
<p>| checking for suffix of object files... configure: error: in `/arm/fsl-=
community-bsp-kirkstone/bbp62x/tmp/work/x86_64-linux/gcc-cross-aarch64/11.4=
.0-r0/gcc-11.4.0/build.x86_64-linux.arm-poky-linux-gnueabi/arm-poky-linux-g=
nueabi/libgcc':</p>
<p>| configure: error: cannot compute suffix of object files: cannot compil=
e</p>
<p>| See `config.log' for more details</p>
<p>| Makefile:13501: recipe for target 'configure-target-libgcc' failed</p>
<p>| make: *** [configure-target-libgcc] Error 1</p>
<p>| ERROR: oe_runmake failed</p>
<p>| WARNING: exit code 1 from a shell command.</p>
<p>ERROR: Task (/arm/fsl-community-bsp-kirkstone/sources/poky/meta/recipes-=
devtools/gcc/gcc-cross_11.4.bb:do_compile) failed with exit code '1'</p>
<p>ERROR: python3-native-3.10.13-r0 do_configure: configure failed</p>
<p>ERROR: python3-native-3.10.13-r0 do_configure: ExecutionError('/arm/fsl-=
community-bsp-kirkstone/bbp62x/tmp/work/x86_64-linux/python3-native/3.10.13=
-r0/temp/run.do_configure.1965812', 1, None, None)</p>
<p>ERROR: Logfile of failure stored in: /arm/fsl-community-bsp-kirkstone/bb=
p62x/tmp/work/x86_64-linux/python3-native/3.10.13-r0/temp/log.do_configure.=
1965812</p>
<p>Log data follows:</p>
<p>| DEBUG: Executing python function extend_recipe_sysroot</p>
<p>| NOTE: Direct dependencies are ['/arm/fsl-community-bsp-kirkstone/sourc=
es/poky/meta/recipes-devtools/libtool/libtool-native_2.4.7.bb:do_populate_s=
ysroot', '/arm/fsl-community-bsp-kirkstone/sources/poky/meta/recipes-devtoo=
ls/quilt/quilt-native_0.67.bb:do_populate_sysroot', 'virtual:native:/arm/fs=
l-community-bsp-kirkstone/sources/poky/meta/recipes-connectivity/openssl/op=
enssl_3.0.11.bb:do_populate_sysroot', 'virtual:native:/arm/fsl-community-bs=
p-kirkstone/sources/poky/meta/recipes-core/ncurses/ncurses_6.3+20220423.bb:=
do_populate_sysroot', 'virtual:native:/arm/fsl-community-bsp-kirkstone/sour=
ces/poky/meta/recipes-core/readline/readline_8.1.2.bb:do_populate_sysroot',=
 'virtual:native:/arm/fsl-community-bsp-kirkstone/sources/poky/meta/recipes=
-core/util-linux/util-linux-libuuid_2.37.4.bb:do_populate_sysroot', 'virtua=
l:native:/arm/fsl-community-bsp-kirkstone/sources/poky/meta/recipes-core/zl=
ib/zlib_1.2.11.bb:do_populate_sysroot', 'virtual:native:/arm/fsl-community-=
bsp-kirkstone/sources/poky/meta/recipes-devtools/autoconf-archive/autoconf-=
archive_2022.02.11.bb:do_populate_sysroot', 'virtual:native:/arm/fsl-commun=
ity-bsp-kirkstone/sources/poky/meta/recipes-devtools/autoconf/autoconf_2.71=
.bb:do_populate_sysroot', 'virtual:native:/arm/fsl-community-bsp-kirkstone/=
sources/poky/meta/recipes-devtools/automake/automake_1.16.5.bb:do_populate_=
sysroot', 'virtual:native:/arm/fsl-community-bsp-kirkstone/sources/poky/met=
a/recipes-devtools/pkgconfig/pkgconfig_git.bb:do_populate_sysroot', 'virtua=
l:native:/arm/fsl-community-bsp-kirkstone/sources/poky/meta/recipes-extende=
d/bzip2/bzip2_1.0.8.bb:do_populate_sysroot', 'virtual:native:/arm/fsl-commu=
nity-bsp-kirkstone/sources/poky/meta/recipes-extended/libnsl/libnsl2_git.bb=
:do_populate_sysroot', 'virtual:native:/arm/fsl-community-bsp-kirkstone/sou=
rces/poky/meta/recipes-extended/libtirpc/libtirpc_1.3.2.bb:do_populate_sysr=
oot', 'virtual:native:/arm/fsl-community-bsp-kirkstone/sources/poky/meta/re=
cipes-extended/xz/xz_5.2.6.bb:do_populate_sysroot', 'virtual:native:/arm/fs=
l-community-bsp-kirkstone/sources/poky/meta/recipes-support/gdbm/gdbm_1.23.=
bb:do_populate_sysroot', 'virtual:native:/arm/fsl-community-bsp-kirkstone/s=
ources/poky/meta/recipes-support/libffi/libffi_3.4.4.bb:do_populate_sysroot=
', 'virtual:native:/arm/fsl-community-bsp-kirkstone/sources/poky/meta/recip=
es-support/sqlite/sqlite3_3.38.5.bb:do_populate_sysroot']</p>
<p>| NOTE: Installed into sysroot: []</p>
<p>| NOTE: Skipping as already exists in sysroot: ['libtool-native', 'quilt=
-native', 'openssl-native', 'ncurses-native', 'readline-native', 'util-linu=
x-libuuid-native', 'zlib-native', 'autoconf-archive-native', 'autoconf-nati=
ve', 'automake-native', 'pkgconfig-native', 'bzip2-native', 'libnsl2-native=
', 'libtirpc-native', 'xz-native', 'gdbm-native', 'libffi-native', 'sqlite3=
-native', 'texinfo-dummy-native', 'gettext-minimal-native', 'm4-native', 'g=
nu-config-native', 'perl-native', 'make-native']</p>
<p>| DEBUG: Python function extend_recipe_sysroot finished</p>
<p>| DEBUG: Executing shell function autotools_preconfigure</p>
<p>| Previously configured separate build directory detected, cleaning /arm=
/fsl-community-bsp-kirkstone/bbp62x/tmp/work/x86_64-linux/python3-native/3.=
10.13-r0/build</p>
<p>| DEBUG: Shell function autotools_preconfigure finished</p>
<p>| DEBUG: Executing python function autotools_aclocals</p>
<p>| DEBUG: SITE files ['endian-little', 'common-linux', 'common-glibc', 'b=
it-64', 'x86_64-linux', 'common']</p>
<p>| DEBUG: Python function autotools_aclocals finished</p>
<p>| DEBUG: Executing shell function do_configure</p>
<p>| automake (GNU automake) 1.16.5</p>
<p>| Copyright (C) 2021 Free Software Foundation, Inc.</p>
<p>| License GPLv2+: GNU GPL version 2 or later &lt;https://gnu.org/license=
s/gpl-2.0.html&gt;</p>
<p>| This is free software: you are free to change and redistribute it.</p>
<p>| There is NO WARRANTY, to the extent permitted by law.</p>
<p>|&nbsp;</p>
<p>| Written by Tom Tromey &lt;tromey@redhat.com&gt;</p>
<p>|&nbsp; &nbsp; &nbsp; &nbsp; and Alexandre Duret-Lutz &lt;adl@gnu.org&gt=
;.</p>
<p>| AUTOV is 1.16</p>
<p>| NOTE: Executing ACLOCAL=3D"aclocal --system-acdir=3D/arm/fsl-community=
-bsp-kirkstone/bbp62x/tmp/work/x86_64-linux/python3-native/3.10.13-r0/recip=
e-sysroot-native/usr/share/aclocal/ --automake-acdir=3D/arm/fsl-community-b=
sp-kirkstone/bbp62x/tmp/work/x86_64-linux/python3-native/3.10.13-r0/recipe-=
sysroot-native/usr/share/aclocal-1.16" autoreconf -Wcross --verbose --insta=
ll --force --exclude=3Dautopoint --exclude=3Dgtkdocize</p>
<p>| autoreconf: export WARNINGS=3Dcross,no-obsolete</p>
<p>| autoreconf: Entering directory '.'</p>
<p>| autoreconf: configure.ac: not using Gettext</p>
<p>| autoreconf: running: aclocal --system-acdir=3D/arm/fsl-community-bsp-k=
irkstone/bbp62x/tmp/work/x86_64-linux/python3-native/3.10.13-r0/recipe-sysr=
oot-native/usr/share/aclocal/ --automake-acdir=3D/arm/fsl-community-bsp-kir=
kstone/bbp62x/tmp/work/x86_64-linux/python3-native/3.10.13-r0/recipe-sysroo=
t-native/usr/share/aclocal-1.16 --force</p>
<p>| autoreconf: configure.ac: tracing</p>
<p>| autoreconf: running: libtoolize --copy --force</p>
<p>| libtoolize: putting auxiliary files in '.'.</p>
<p>| libtoolize: copying file './ltmain.sh'</p>
<p>| libtoolize: Consider adding 'AC_CONFIG_MACRO_DIRS([m4])' to configure.=
ac,</p>
<p>| libtoolize: and rerunning libtoolize and aclocal.</p>
<p>| libtoolize: Consider adding '-I m4' to ACLOCAL_AMFLAGS in Makefile.am.=
</p>
<p>| autoreconf: configure.ac: not using Intltool</p>
<p>| autoreconf: configure.ac: not using Gtkdoc</p>
<p>| autoreconf: running: aclocal --system-acdir=3D/arm/fsl-community-bsp-k=
irkstone/bbp62x/tmp/work/x86_64-linux/python3-native/3.10.13-r0/recipe-sysr=
oot-native/usr/share/aclocal/ --automake-acdir=3D/arm/fsl-community-bsp-kir=
kstone/bbp62x/tmp/work/x86_64-linux/python3-native/3.10.13-r0/recipe-sysroo=
t-native/usr/share/aclocal-1.16 --force</p>
<p>| autoreconf: running: /arm/fsl-community-bsp-kirkstone/bbp62x/tmp/work/=
x86_64-linux/python3-native/3.10.13-r0/recipe-sysroot-native/usr/bin/autoco=
nf --force</p>
<p>| configure.ac:779: warning: AC_COMPILE_IFELSE was called before AC_USE_=
SYSTEM_EXTENSIONS</p>
<p>| ../autoconf-2.71/lib/autoconf/specific.m4:364: AC_USE_SYSTEM_EXTENSION=
S is expanded from...</p>
<p>| configure.ac:779: the top level</p>
<p>| configure.ac:779: warning: AC_LINK_IFELSE was called before AC_USE_SYS=
TEM_EXTENSIONS</p>
<p>| ../autoconf-2.71/lib/autoconf/specific.m4:364: AC_USE_SYSTEM_EXTENSION=
S is expanded from...</p>
<p>| configure.ac:779: the top level</p>
<p>| configure.ac:779: warning: AC_CHECK_INCLUDES_DEFAULT was called before=
 AC_USE_SYSTEM_EXTENSIONS</p>
<p>| ../autoconf-2.71/lib/autoconf/specific.m4:364: AC_USE_SYSTEM_EXTENSION=
S is expanded from...</p>
<p>| configure.ac:779: the top level</p>
<p>| configure.ac:5277: warning: cannot check for file existence when cross=
 compiling</p>
<p>| ../autoconf-2.71/lib/autoconf/general.m4:3010: AC_CHECK_FILE is expand=
ed from...</p>
<p>| configure.ac:5277: the top level</p>
<p>| configure.ac:5282: warning: cannot check for file existence when cross=
 compiling</p>
<p>| ../autoconf-2.71/lib/autoconf/general.m4:3010: AC_CHECK_FILE is expand=
ed from...</p>
<p>| configure.ac:5282: the top level</p>
<p>| autoreconf: running: /arm/fsl-community-bsp-kirkstone/bbp62x/tmp/work/=
x86_64-linux/python3-native/3.10.13-r0/recipe-sysroot-native/usr/bin/autohe=
ader --force</p>
<p>| autoreconf: configure.ac: not using Automake</p>
<p>| autoreconf: Leaving directory '.'</p>
<p>| NOTE: Running ../Python-3.10.13/configure&nbsp; --build=3Dx86_64-linux=
 <span style=3D"white-space: pre;"> </span>&nbsp; --host=3Dx86_64-linux <sp=
an style=3D"white-space: pre;"> </span>&nbsp; --target=3Darm-poky-linux-gnu=
eabi <span style=3D"white-space: pre;"> </span>&nbsp; --prefix=3D/arm/fsl-c=
ommunity-bsp-kirkstone/bbp62x/tmp/work/x86_64-linux/python3-native/3.10.13-=
r0/recipe-sysroot-native/usr&nbsp; &nbsp;--exec_prefix=3D/arm/fsl-community=
-bsp-kirkstone/bbp62x/tmp/work/x86_64-linux/python3-native/3.10.13-r0/recip=
e-sysroot-native/usr <span style=3D"white-space: pre;"> </span>&nbsp; --bin=
dir=3D/arm/fsl-community-bsp-kirkstone/bbp62x/tmp/work/x86_64-linux/python3=
-native/3.10.13-r0/recipe-sysroot-native/usr/bin <span style=3D"white-space=
: pre;"> </span>&nbsp; --sbindir=3D/arm/fsl-community-bsp-kirkstone/bbp62x/=
tmp/work/x86_64-linux/python3-native/3.10.13-r0/recipe-sysroot-native/usr/s=
bin <span style=3D"white-space: pre;"> </span>&nbsp; --libexecdir=3D/arm/fs=
l-community-bsp-kirkstone/bbp62x/tmp/work/x86_64-linux/python3-native/3.10.=
13-r0/recipe-sysroot-native/usr/libexec <span style=3D"white-space: pre;"> =
</span>&nbsp; --datadir=3D/arm/fsl-community-bsp-kirkstone/bbp62x/tmp/work/=
x86_64-linux/python3-native/3.10.13-r0/recipe-sysroot-native/usr/share <spa=
n style=3D"white-space: pre;"> </span>&nbsp; --sysconfdir=3D/arm/fsl-commun=
ity-bsp-kirkstone/bbp62x/tmp/work/x86_64-linux/python3-native/3.10.13-r0/re=
cipe-sysroot-native/etc <span style=3D"white-space: pre;"> </span>&nbsp; --=
sharedstatedir=3D/arm/fsl-community-bsp-kirkstone/bbp62x/tmp/work/x86_64-li=
nux/python3-native/3.10.13-r0/recipe-sysroot-native/com <span style=3D"whit=
e-space: pre;"> </span>&nbsp; --localstatedir=3D/arm/fsl-community-bsp-kirk=
stone/bbp62x/tmp/work/x86_64-linux/python3-native/3.10.13-r0/recipe-sysroot=
-native/var <span style=3D"white-space: pre;"> </span>&nbsp; --libdir=3D/ar=
m/fsl-community-bsp-kirkstone/bbp62x/tmp/work/x86_64-linux/python3-native/3=
.10.13-r0/recipe-sysroot-native/usr/lib <span style=3D"white-space: pre;"> =
</span>&nbsp; --includedir=3D/arm/fsl-community-bsp-kirkstone/bbp62x/tmp/wo=
rk/x86_64-linux/python3-native/3.10.13-r0/recipe-sysroot-native/usr/include=
 <span style=3D"white-space: pre;"> </span>&nbsp; --oldincludedir=3D/arm/fs=
l-community-bsp-kirkstone/bbp62x/tmp/work/x86_64-linux/python3-native/3.10.=
13-r0/recipe-sysroot-native/usr/include <span style=3D"white-space: pre;"> =
</span>&nbsp; --infodir=3D/arm/fsl-community-bsp-kirkstone/bbp62x/tmp/work/=
x86_64-linux/python3-native/3.10.13-r0/recipe-sysroot-native/usr/share/info=
 <span style=3D"white-space: pre;"> </span>&nbsp; --mandir=3D/arm/fsl-commu=
nity-bsp-kirkstone/bbp62x/tmp/work/x86_64-linux/python3-native/3.10.13-r0/r=
ecipe-sysroot-native/usr/share/man <span style=3D"white-space: pre;"> </spa=
n>&nbsp; --disable-silent-rules <span style=3D"white-space: pre;"> </span>&=
nbsp; --disable-dependency-tracking <span style=3D"white-space: pre;"> </sp=
an>&nbsp; &nbsp; --without-ensurepip --enable-shared --with-platlibdir=3Dli=
b --disable-static&nbsp; --bindir=3D/arm/fsl-community-bsp-kirkstone/bbp62x=
/tmp/work/x86_64-linux/python3-native/3.10.13-r0/recipe-sysroot-native/usr/=
bin/python3-native</p>
<p>| configure: WARNING: unrecognized options: --disable-silent-rules, --di=
sable-dependency-tracking</p>
<p>| configure: loading site script /arm/fsl-community-bsp-kirkstone/source=
s/poky/meta/site/endian-little</p>
<p>| configure: loading site script /arm/fsl-community-bsp-kirkstone/source=
s/poky/meta/site/common-linux</p>
<p>| configure: loading site script /arm/fsl-community-bsp-kirkstone/source=
s/poky/meta/site/common-glibc</p>
<p>| configure: loading site script /arm/fsl-community-bsp-kirkstone/source=
s/poky/meta/site/x86_64-linux</p>
<p>| configure: loading site script /arm/fsl-community-bsp-kirkstone/source=
s/poky/meta/site/common</p>
<p>| configure: loading site script /arm/fsl-community-bsp-kirkstone/bbp62x=
/tmp/work/x86_64-linux/python3-native/3.10.13-r0/recipe-sysroot-native/usr/=
share/arm-poky-linux-gnueabi_config_site.d/ncurses_config</p>
<p>| checking build system type... x86_64-pc-linux-gnu</p>
<p>| checking host system type... x86_64-pc-linux-gnu</p>
<p>| checking how to print strings... printf</p>
<p>| checking for x86_64-linux-gcc... gcc</p>
<p>| checking whether the C compiler works... yes</p>
<p>| checking for C compiler default output file name... a.out</p>
<p>| checking for suffix of executables...</p>
<p>| checking whether we are cross compiling... no</p>
<p>| checking for suffix of object files... o</p>
<p>| checking whether the compiler supports GNU C... yes</p>
<p>| checking whether gcc&nbsp; accepts -g... yes</p>
<p>| checking for gcc&nbsp; option to enable C11 features... none needed</p=
>
<p>| checking for a sed that does not truncate output... (cached) sed</p>
<p>| checking for grep that handles long lines and -e... /arm/fsl-community=
-bsp-kirkstone/bbp62x/tmp/hosttools/grep</p>
<p>| checking for egrep... /arm/fsl-community-bsp-kirkstone/bbp62x/tmp/host=
tools/grep -E</p>
<p>| checking for fgrep... /arm/fsl-community-bsp-kirkstone/bbp62x/tmp/host=
tools/grep -F</p>
<p>| checking for ld used by gcc ... ld</p>
<p>| checking if the linker (ld ) is GNU ld... yes</p>
<p>| checking for BSD- or MS-compatible name lister (nm)... nm</p>
<p>| checking the name lister (nm) interface... BSD nm</p>
<p>| checking whether ln -s works... yes</p>
<p>| checking the maximum length of command line arguments... 1572864</p>
<p>| checking how to convert x86_64-pc-linux-gnu file names to x86_64-pc-li=
nux-gnu format... func_convert_file_noop</p>
<p>| checking how to convert x86_64-pc-linux-gnu file names to toolchain fo=
rmat... func_convert_file_noop</p>
<p>| checking for ld&nbsp; option to reload object files... -r</p>
<p>| checking for x86_64-linux-file... no</p>
<p>| checking for file... file</p>
<p>| checking for x86_64-linux-objdump... objdump</p>
<p>| checking how to recognize dependent libraries... pass_all</p>
<p>| checking for x86_64-linux-dlltool... no</p>
<p>| checking for dlltool... no</p>
<p>| checking how to associate runtime and link libraries... printf %s\n</p=
>
<p>| checking for x86_64-linux-ar... ar</p>
<p>| checking for archiver @FILE support... @</p>
<p>| checking for x86_64-linux-strip... strip</p>
<p>| checking for x86_64-linux-ranlib... ranlib -D</p>
<p>| checking for gawk... gawk</p>
<p>| checking command to parse nm output from gcc&nbsp; object... ok</p>
<p>| checking for sysroot... no</p>
<p>| checking for a working dd... /arm/fsl-community-bsp-kirkstone/bbp62x/t=
mp/hosttools/dd</p>
<p>| checking how to truncate binary pipes... /arm/fsl-community-bsp-kirkst=
one/bbp62x/tmp/hosttools/dd bs=3D4096 count=3D1</p>
<p>| checking for x86_64-linux-mt... no</p>
<p>| checking for mt... no</p>
<p>| checking if : is a manifest tool... no</p>
<p>| checking for stdio.h... (cached) yes</p>
<p>| checking for stdlib.h... (cached) yes</p>
<p>| checking for string.h... (cached) yes</p>
<p>| checking for inttypes.h... (cached) yes</p>
<p>| checking for stdint.h... (cached) yes</p>
<p>| checking for strings.h... (cached) yes</p>
<p>| checking for sys/stat.h... (cached) yes</p>
<p>| checking for sys/types.h... (cached) yes</p>
<p>| checking for unistd.h... (cached) yes</p>
<p>| checking for wchar.h... yes</p>
<p>| checking for minix/config.h... no</p>
<p>| checking for sys/time.h... yes</p>
<p>| checking for dlfcn.h... yes</p>
<p>| checking for objdir... .libs</p>
<p>| checking if gcc&nbsp; supports -fno-rtti -fno-exceptions... no</p>
<p>| checking for gcc&nbsp; option to produce PIC... -fPIC -DPIC</p>
<p>| checking if gcc&nbsp; PIC flag -fPIC -DPIC works... yes</p>
<p>| checking if gcc&nbsp; static flag -static works... yes</p>
<p>| checking if gcc&nbsp; supports -c -o file.o... yes</p>
<p>| checking if gcc&nbsp; supports -c -o file.o... (cached) yes</p>
<p>| checking whether the gcc&nbsp; linker (ld&nbsp; -m elf_x86_64) support=
s shared libraries... yes</p>
<p>| checking whether -lc should be explicitly linked in... no</p>
<p>| checking dynamic linker characteristics... GNU/Linux ld.so</p>
<p>| checking how to hardcode library paths into programs... immediate</p>
<p>| checking whether stripping libraries is possible... yes</p>
<p>| checking if libtool supports shared libraries... yes</p>
<p>| checking whether to build shared libraries... yes</p>
<p>| checking whether to build static libraries... no</p>
<p>| checking for python3.10... no</p>
<p>| checking for python3... python3</p>
<p>| checking for --enable-universalsdk... no</p>
<p>| checking for --with-universal-archs... no</p>
<p>| checking MACHDEP... "linux"</p>
<p>| checking for x86_64-linux-gcc... (cached) gcc</p>
<p>| checking whether the compiler supports GNU C... (cached) yes</p>
<p>| checking whether gcc&nbsp; accepts -g... (cached) yes</p>
<p>| checking for gcc&nbsp; option to enable C11 features... (cached) none =
needed</p>
<p>| checking how to run the C preprocessor... gcc&nbsp; -E</p>
<p>| checking for grep that handles long lines and -e... (cached) /arm/fsl-=
community-bsp-kirkstone/bbp62x/tmp/hosttools/grep</p>
<p>| checking for a sed that does not truncate output... (cached) sed</p>
<p>| checking for --with-cxx-main=3D&lt;compiler&gt;... no</p>
<p>| checking target system type... arm-poky-linux-gnueabi</p>
<p>| checking for multiarch... x86_64-linux-gnu</p>
<p>| configure: error: internal configure error for the platform triplet, p=
lease file a bug report</p>
<p>| NOTE: The following config.log files may provide further information.<=
/p>
<p>| NOTE: /arm/fsl-community-bsp-kirkstone/bbp62x/tmp/work/x86_64-linux/py=
thon3-native/3.10.13-r0/build/config.log</p>
<p>| ERROR: configure failed</p>
<p>| WARNING: exit code 1 from a shell command.</p>
<p>ERROR: Task (virtual:native:/arm/fsl-community-bsp-kirkstone/sources/pok=
y/meta/recipes-devtools/python/python3_3.10.13.bb:do_configure) failed with=
 exit code '1'</p>
<p>NOTE: Tasks Summary: Attempted 765 tasks of which 763 didn't need to be =
rerun and 2 failed.</p>
<p>&nbsp;</p>
<p>Summary: 2 tasks failed:</p>
<p>&nbsp; /arm/fsl-community-bsp-kirkstone/sources/poky/meta/recipes-devtoo=
ls/gcc/gcc-cross_11.4.bb:do_compile</p>
<p>&nbsp; virtual:native:/arm/fsl-community-bsp-kirkstone/sources/poky/meta=
/recipes-devtools/python/python3_3.10.13.bb:do_configure</p>
<p>Summary: There were 4 ERROR messages, returning a non-zero exit code.</p=
>
<p>lmh@ea25a4de66c8:/arm/fsl-community-bsp-kirkstone/bbp62x$</p>
<div>&nbsp;</div>

--5td9Js8FEQfJWrtaSt6v--

