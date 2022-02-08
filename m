Return-Path: <hrsourabh011@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4683AC433EF
	for <webhook@archiver.kernel.org>; Tue,  8 Feb 2022 15:43:26 +0000 (UTC)
Subject: run.do_compile error on poky-dunfell release
To: yocto@lists.yoctoproject.org
From: "Sourabh Hegde" <hrsourabh011@gmail.com>
X-Originating-Location: Sesslach, Bavaria, DE (217.24.55.250)
X-Originating-Platform: Windows Firefox 91
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 08 Feb 2022 07:43:25 -0800
Message-ID: <4fRZ.1644335005367342969.RUgu@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="MTcgcryVaMQLERAFsvKw"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Feb 2022 15:43:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56103

--MTcgcryVaMQLERAFsvKw
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello All,

When I am bitbaking my custom image for STM32MP1 based Avenger96 board I am=
 facing some errors related to "analyze.l:466:19: error: format not a strin=
g literal and no format arguments [-Werror=3Dformat-security]". I don't und=
erstand why I am getting this error as this is the first I am facing it. Pl=
ease find the below complete log:

DEBUG: Executing python function autotools_aclocals
DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common', 'arm-32', 'comm=
on-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common']
DEBUG: Python function autotools_aclocals finished
DEBUG: Executing shell function do_compile
NOTE: make -j 8
make=C2=A0 all-recursive
make[1]: Entering directory '/root/build-swu-v2/tmp/work/cortexa7t2hf-neon-=
vfpv4-poky-linux-gnueabi/kbd/2.2.0-r0/build'
Making all in src
make[2]: Entering directory '/root/build-swu-v2/tmp/work/cortexa7t2hf-neon-=
vfpv4-poky-linux-gnueabi/kbd/2.2.0-r0/build/src'
Making all in libcommon
make[3]: Entering directory '/root/build-swu-v2/tmp/work/cortexa7t2hf-neon-=
vfpv4-poky-linux-gnueabi/kbd/2.2.0-r0/build/src/libcommon'
make[3]: Nothing to be done for 'all'.
make[3]: Leaving directory '/root/build-swu-v2/tmp/work/cortexa7t2hf-neon-v=
fpv4-poky-linux-gnueabi/kbd/2.2.0-r0/build/src/libcommon'
Making all in libkbdfile
make[3]: Entering directory '/root/build-swu-v2/tmp/work/cortexa7t2hf-neon-=
vfpv4-poky-linux-gnueabi/kbd/2.2.0-r0/build/src/libkbdfile'
make[3]: Nothing to be done for 'all'.
make[3]: Leaving directory '/root/build-swu-v2/tmp/work/cortexa7t2hf-neon-v=
fpv4-poky-linux-gnueabi/kbd/2.2.0-r0/build/src/libkbdfile'
Making all in libkeymap
make[3]: Entering directory '/root/build-swu-v2/tmp/work/cortexa7t2hf-neon-=
vfpv4-poky-linux-gnueabi/kbd/2.2.0-r0/build/src/libkeymap'
make=C2=A0 all-am
make[4]: Entering directory '/root/build-swu-v2/tmp/work/cortexa7t2hf-neon-=
vfpv4-poky-linux-gnueabi/kbd/2.2.0-r0/build/src/libkeymap'
../../arm-poky-linux-gnueabi-libtool=C2=A0 --tag=3DCC=C2=A0=C2=A0 --mode=3D=
compile arm-poky-linux-gnueabi-gcc=C2=A0 -mthumb -mfpu=3Dneon-vfpv4 -mfloat=
-abi=3Dhard -mcpu=3Dcortex-a7 -fstack-protector-strong=C2=A0 -D_FORTIFY_SOU=
RCE=3D2 -Wformat -Wformat-security -Werror=3Dformat-security --sysroot=3D/r=
oot/build-swu-v2/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/kbd/2.=
2.0-r0/recipe-sysroot -DHAVE_CONFIG_H -I. -I../../../kbd-2.2.0/src/libkeyma=
p -I../..=C2=A0=C2=A0 -I../../../kbd-2.2.0/src/libkeymap -I. -I../../../kbd=
-2.2.0/src/libkeymap/.. -I./.. -I../../../kbd-2.2.0/src/libkeymap/../libcom=
mon -I./../libcommon -I../../../kbd-2.2.0/src/libkeymap/../libkbdfile -I./.=
./libkbdfile -DDATADIR=3D\"/usr/share\" -DLOCALEDIR=3D\"/usr/share/locale\"=
 -U_GNU_SOURCE -funit-at-a-time=C2=A0=C2=A0 -g -O2 -D_FORTIFY_SOURCE=3D2=C2=
=A0 -O2 -pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/root/=
build-swu-v2/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/kbd/2.2.0-=
r0=3D/usr/src/debug/kbd/2.2.0-r0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 -fdebug-prefix-map=3D/root/build-swu-v2/tmp/work/cortexa7t2hf-neo=
n-vfpv4-poky-linux-gnueabi/kbd/2.2.0-r0=3D/usr/src/debug/kbd/2.2.0-r0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -fdebug-prefix-map=3D/root/bu=
ild-swu-v2/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/kbd/2.2.0-r0=
/recipe-sysroot=3D=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -fdeb=
ug-prefix-map=3D/root/build-swu-v2/tmp/work/cortexa7t2hf-neon-vfpv4-poky-li=
nux-gnueabi/kbd/2.2.0-r0/recipe-sysroot-native=3D=C2=A0 -Waggregate-return =
-Wall -Wcast-align -Wconversion -Wdisabled-optimization -Wextra -Wmissing-d=
eclarations -Wmissing-format-attribute -Wmissing-noreturn -Wmissing-prototy=
pes -Wpointer-arith -Wredundant-decls -Wshadow -Wstrict-prototypes -Wwrite-=
strings -c -o analyze.lo ../../../kbd-2.2.0/src/libkeymap/analyze.c
arm-poky-linux-gnueabi-libtool: compile:=C2=A0 arm-poky-linux-gnueabi-gcc -=
mthumb -mfpu=3Dneon-vfpv4 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7 -fstack-prot=
ector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wformat-security -Werror=3Dfor=
mat-security --sysroot=3D/root/build-swu-v2/tmp/work/cortexa7t2hf-neon-vfpv=
4-poky-linux-gnueabi/kbd/2.2.0-r0/recipe-sysroot -DHAVE_CONFIG_H -I. -I../.=
./../kbd-2.2.0/src/libkeymap -I../.. -I../../../kbd-2.2.0/src/libkeymap -I.=
 -I../../../kbd-2.2.0/src/libkeymap/.. -I./.. -I../../../kbd-2.2.0/src/libk=
eymap/../libcommon -I./../libcommon -I../../../kbd-2.2.0/src/libkeymap/../l=
ibkbdfile -I./../libkbdfile -DDATADIR=3D\"/usr/share\" -DLOCALEDIR=3D\"/usr=
/share/locale\" -U_GNU_SOURCE -funit-at-a-time -g -O2 -D_FORTIFY_SOURCE=3D2=
 -O2 -pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/root/bui=
ld-swu-v2/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/kbd/2.2.0-r0=
=3D/usr/src/debug/kbd/2.2.0-r0 -fdebug-prefix-map=3D/root/build-swu-v2/tmp/=
work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/kbd/2.2.0-r0=3D/usr/src/deb=
ug/kbd/2.2.0-r0 -fdebug-prefix-map=3D/root/build-swu-v2/tmp/work/cortexa7t2=
hf-neon-vfpv4-poky-linux-gnueabi/kbd/2.2.0-r0/recipe-sysroot=3D -fdebug-pre=
fix-map=3D/root/build-swu-v2/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gn=
ueabi/kbd/2.2.0-r0/recipe-sysroot-native=3D -Waggregate-return -Wall -Wcast=
-align -Wconversion -Wdisabled-optimization -Wextra -Wmissing-declarations =
-Wmissing-format-attribute -Wmissing-noreturn -Wmissing-prototypes -Wpointe=
r-arith -Wredundant-decls -Wshadow -Wstrict-prototypes -Wwrite-strings -c .=
./../../kbd-2.2.0/src/libkeymap/analyze.c=C2=A0 -fPIC -DPIC -o .libs/analyz=
e.o
analyze.l: In function 'find_incl_file_near_fn':
analyze.l:141:24: warning: passing argument 2 of 'kbdfile_find' from incomp=
atible pointer type [-Wincompatible-pointer-types]
In file included from ../../../kbd-2.2.0/src/libkeymap/keymap/kmap.h:36,
from ../../../kbd-2.2.0/src/libkeymap/keymap.h:8,
from ../../../kbd-2.2.0/src/libkeymap/analyze.c:1:
../../../kbd-2.2.0/src/libkeymap/../libkbdfile/kbdfile.h:40:37: note: expec=
ted 'char **' but argument is of type 'const char **'
40 | int kbdfile_find(char *fnam, char **dirpath, char **suffixes, struct k=
bdfile *fp);
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 ~~~~~~~^~~~~~~
analyze.l:141:42: warning: passing argument 3 of 'kbdfile_find' from incomp=
atible pointer type [-Wincompatible-pointer-types]
In file included from ../../../kbd-2.2.0/src/libkeymap/keymap/kmap.h:36,
from ../../../kbd-2.2.0/src/libkeymap/keymap.h:8,
from ../../../kbd-2.2.0/src/libkeymap/analyze.c:1:
../../../kbd-2.2.0/src/libkeymap/../libkbdfile/kbdfile.h:40:53: note: expec=
ted 'char **' but argument is of type 'const char * const*'
40 | int kbdfile_find(char *fnam, char **dirpath, char **suffixes, struct k=
bdfile *fp);
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ~~~~~~~^~~~~~~~
analyze.l: In function 'find_standard_incl_file':
analyze.l:168:22: warning: passing argument 2 of 'kbdfile_find' from incomp=
atible pointer type [-Wincompatible-pointer-types]
In file included from ../../../kbd-2.2.0/src/libkeymap/keymap/kmap.h:36,
from ../../../kbd-2.2.0/src/libkeymap/keymap.h:8,
from ../../../kbd-2.2.0/src/libkeymap/analyze.c:1:
../../../kbd-2.2.0/src/libkeymap/../libkbdfile/kbdfile.h:40:37: note: expec=
ted 'char **' but argument is of type 'const char * const*'
40 | int kbdfile_find(char *fnam, char **dirpath, char **suffixes, struct k=
bdfile *fp);
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 ~~~~~~~^~~~~~~
analyze.l:168:40: warning: passing argument 3 of 'kbdfile_find' from incomp=
atible pointer type [-Wincompatible-pointer-types]
In file included from ../../../kbd-2.2.0/src/libkeymap/keymap/kmap.h:36,
from ../../../kbd-2.2.0/src/libkeymap/keymap.h:8,
from ../../../kbd-2.2.0/src/libkeymap/analyze.c:1:
../../../kbd-2.2.0/src/libkeymap/../libkbdfile/kbdfile.h:40:53: note: expec=
ted 'char **' but argument is of type 'const char * const*'
40 | int kbdfile_find(char *fnam, char **dirpath, char **suffixes, struct k=
bdfile *fp);
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ~~~~~~~^~~~~~~~
analyze.l:197:24: warning: passing argument 2 of 'kbdfile_find' from incomp=
atible pointer type [-Wincompatible-pointer-types]
In file included from ../../../kbd-2.2.0/src/libkeymap/keymap/kmap.h:36,
from ../../../kbd-2.2.0/src/libkeymap/keymap.h:8,
from ../../../kbd-2.2.0/src/libkeymap/analyze.c:1:
../../../kbd-2.2.0/src/libkeymap/../libkbdfile/kbdfile.h:40:37: note: expec=
ted 'char **' but argument is of type 'const char * const*'
40 | int kbdfile_find(char *fnam, char **dirpath, char **suffixes, struct k=
bdfile *fp);
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 ~~~~~~~^~~~~~~
analyze.l:197:42: warning: passing argument 3 of 'kbdfile_find' from incomp=
atible pointer type [-Wincompatible-pointer-types]
In file included from ../../../kbd-2.2.0/src/libkeymap/keymap/kmap.h:36,
from ../../../kbd-2.2.0/src/libkeymap/keymap.h:8,
from ../../../kbd-2.2.0/src/libkeymap/analyze.c:1:
../../../kbd-2.2.0/src/libkeymap/../libkbdfile/kbdfile.h:40:53: note: expec=
ted 'char **' but argument is of type 'const char * const*'
40 | int kbdfile_find(char *fnam, char **dirpath, char **suffixes, struct k=
bdfile *fp);
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ~~~~~~~^~~~~~~~
analyze.l: In function 'find_incl_file':
analyze.l:210:27: warning: passing argument 2 of 'kbdfile_find' from incomp=
atible pointer type [-Wincompatible-pointer-types]
In file included from ../../../kbd-2.2.0/src/libkeymap/keymap/kmap.h:36,
from ../../../kbd-2.2.0/src/libkeymap/keymap.h:8,
from ../../../kbd-2.2.0/src/libkeymap/analyze.c:1:
../../../kbd-2.2.0/src/libkeymap/../libkbdfile/kbdfile.h:40:37: note: expec=
ted 'char **' but argument is of type 'const char * const*'
40 | int kbdfile_find(char *fnam, char **dirpath, char **suffixes, struct k=
bdfile *fp);
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 ~~~~~~~^~~~~~~
analyze.l:210:45: warning: passing argument 3 of 'kbdfile_find' from incomp=
atible pointer type [-Wincompatible-pointer-types]
In file included from ../../../kbd-2.2.0/src/libkeymap/keymap/kmap.h:36,
from ../../../kbd-2.2.0/src/libkeymap/keymap.h:8,
from ../../../kbd-2.2.0/src/libkeymap/analyze.c:1:
../../../kbd-2.2.0/src/libkeymap/../libkbdfile/kbdfile.h:40:53: note: expec=
ted 'char **' but argument is of type 'const char * const*'
40 | int kbdfile_find(char *fnam, char **dirpath, char **suffixes, struct k=
bdfile *fp);
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ~~~~~~~^~~~~~~~
analyze.l:225:26: warning: passing argument 2 of 'kbdfile_find' from incomp=
atible pointer type [-Wincompatible-pointer-types]
In file included from ../../../kbd-2.2.0/src/libkeymap/keymap/kmap.h:36,
from ../../../kbd-2.2.0/src/libkeymap/keymap.h:8,
from ../../../kbd-2.2.0/src/libkeymap/analyze.c:1:
../../../kbd-2.2.0/src/libkeymap/../libkbdfile/kbdfile.h:40:37: note: expec=
ted 'char **' but argument is of type 'const char **'
40 | int kbdfile_find(char *fnam, char **dirpath, char **suffixes, struct k=
bdfile *fp);
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 ~~~~~~~^~~~~~~
analyze.l:225:36: warning: passing argument 3 of 'kbdfile_find' from incomp=
atible pointer type [-Wincompatible-pointer-types]
In file included from ../../../kbd-2.2.0/src/libkeymap/keymap/kmap.h:36,
from ../../../kbd-2.2.0/src/libkeymap/keymap.h:8,
from ../../../kbd-2.2.0/src/libkeymap/analyze.c:1:
../../../kbd-2.2.0/src/libkeymap/../libkbdfile/kbdfile.h:40:53: note: expec=
ted 'char **' but argument is of type 'const char * const*'
40 | int kbdfile_find(char *fnam, char **dirpath, char **suffixes, struct k=
bdfile *fp);
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ~~~~~~~^~~~~~~~
In file included from analyze.l:10:
analyze.l: In function 'yylex':
analyze.l:466:19: error: format not a string literal and no format argument=
s [-Werror=3Dformat-security]
../../../kbd-2.2.0/src/libkeymap/contextP.h:79:55: note: in definition of m=
acro 'lk_log_cond'
79 |=C2=A0=C2=A0=C2=A0 lk_log(ctx, level, __FILE__, __LINE__, __func__, ##a=
rg); \
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^~~
analyze.l:466:6: note: in expansion of macro 'ERR'
cc1: some warnings being treated as errors
make[4]: *** [Makefile:604: analyze.lo] Error 1
make[4]: Leaving directory '/root/build-swu-v2/tmp/work/cortexa7t2hf-neon-v=
fpv4-poky-linux-gnueabi/kbd/2.2.0-r0/build/src/libkeymap'
make[3]: *** [Makefile:476: all] Error 2
make[3]: Leaving directory '/root/build-swu-v2/tmp/work/cortexa7t2hf-neon-v=
fpv4-poky-linux-gnueabi/kbd/2.2.0-r0/build/src/libkeymap'
make[2]: *** [Makefile:1083: all-recursive] Error 1
make[2]: Leaving directory '/root/build-swu-v2/tmp/work/cortexa7t2hf-neon-v=
fpv4-poky-linux-gnueabi/kbd/2.2.0-r0/build/src'
make[1]: *** [Makefile:471: all-recursive] Error 1
make[1]: Leaving directory '/root/build-swu-v2/tmp/work/cortexa7t2hf-neon-v=
fpv4-poky-linux-gnueabi/kbd/2.2.0-r0/build'
ERROR: oe_runmake failed
make: *** [Makefile:402: all] Error 2
WARNING: exit code 1 from a shell command.
ERROR: Execution of '/root/build-swu-v2/tmp/work/cortexa7t2hf-neon-vfpv4-po=
ky-linux-gnueabi/kbd/2.2.0-r0/temp/run.do_compile.380' failed with exit cod=
e 1

Can anyone please let me know how to fix this issue?

Your help will be much appreciated.

Thanks in advance.

--MTcgcryVaMQLERAFsvKw
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello All,<br /><br />When I am bitbaking my custom image for STM32MP1 base=
d Avenger96 board I am facing some errors related to "analyze.l:466:19: err=
or: format not a string literal and no format arguments [-Werror=3Dformat-s=
ecurity]". I don't understand why I am getting this error as this is the fi=
rst I am facing it. Please find the below complete log:<br /><br />DEBUG: E=
xecuting python function autotools_aclocals<br />DEBUG: SITE files ['endian=
-little', 'bit-32', 'arm-common', 'arm-32', 'common-linux', 'common-glibc',=
 'arm-linux', 'arm-linux-gnueabi', 'common']<br />DEBUG: Python function au=
totools_aclocals finished<br />DEBUG: Executing shell function do_compile<b=
r />NOTE: make -j 8<br />make&nbsp; all-recursive<br />make[1]: Entering di=
rectory '/root/build-swu-v2/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnu=
eabi/kbd/2.2.0-r0/build'<br />Making all in src<br />make[2]: Entering dire=
ctory '/root/build-swu-v2/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnuea=
bi/kbd/2.2.0-r0/build/src'<br />Making all in libcommon<br />make[3]: Enter=
ing directory '/root/build-swu-v2/tmp/work/cortexa7t2hf-neon-vfpv4-poky-lin=
ux-gnueabi/kbd/2.2.0-r0/build/src/libcommon'<br />make[3]: Nothing to be do=
ne for 'all'.<br />make[3]: Leaving directory '/root/build-swu-v2/tmp/work/=
cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/kbd/2.2.0-r0/build/src/libcommon=
'<br />Making all in libkbdfile<br />make[3]: Entering directory '/root/bui=
ld-swu-v2/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/kbd/2.2.0-r0/=
build/src/libkbdfile'<br />make[3]: Nothing to be done for 'all'.<br />make=
[3]: Leaving directory '/root/build-swu-v2/tmp/work/cortexa7t2hf-neon-vfpv4=
-poky-linux-gnueabi/kbd/2.2.0-r0/build/src/libkbdfile'<br />Making all in l=
ibkeymap<br />make[3]: Entering directory '/root/build-swu-v2/tmp/work/cort=
exa7t2hf-neon-vfpv4-poky-linux-gnueabi/kbd/2.2.0-r0/build/src/libkeymap'<br=
 />make&nbsp; all-am<br />make[4]: Entering directory '/root/build-swu-v2/t=
mp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/kbd/2.2.0-r0/build/src/l=
ibkeymap'<br />../../arm-poky-linux-gnueabi-libtool&nbsp; --tag=3DCC&nbsp;&=
nbsp; --mode=3Dcompile arm-poky-linux-gnueabi-gcc&nbsp; -mthumb -mfpu=3Dneo=
n-vfpv4 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7 -fstack-protector-strong&nbsp;=
 -D_FORTIFY_SOURCE=3D2 -Wformat -Wformat-security -Werror=3Dformat-security=
 --sysroot=3D/root/build-swu-v2/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux=
-gnueabi/kbd/2.2.0-r0/recipe-sysroot -DHAVE_CONFIG_H -I. -I../../../kbd-2.2=
.0/src/libkeymap -I../..&nbsp;&nbsp; -I../../../kbd-2.2.0/src/libkeymap -I.=
 -I../../../kbd-2.2.0/src/libkeymap/.. -I./.. -I../../../kbd-2.2.0/src/libk=
eymap/../libcommon -I./../libcommon -I../../../kbd-2.2.0/src/libkeymap/../l=
ibkbdfile -I./../libkbdfile -DDATADIR=3D\"/usr/share\" -DLOCALEDIR=3D\"/usr=
/share/locale\" -U_GNU_SOURCE -funit-at-a-time&nbsp;&nbsp; -g -O2 -D_FORTIF=
Y_SOURCE=3D2&nbsp; -O2 -pipe -g -feliminate-unused-debug-types -fmacro-pref=
ix-map=3D/root/build-swu-v2/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnu=
eabi/kbd/2.2.0-r0=3D/usr/src/debug/kbd/2.2.0-r0&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; -fdebug-prefix-map=3D/root/build-swu-v2/tmp/work/co=
rtexa7t2hf-neon-vfpv4-poky-linux-gnueabi/kbd/2.2.0-r0=3D/usr/src/debug/kbd/=
2.2.0-r0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -fdebug-prefix-=
map=3D/root/build-swu-v2/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueab=
i/kbd/2.2.0-r0/recipe-sysroot=3D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; -fdebug-prefix-map=3D/root/build-swu-v2/tmp/work/cortexa7t2hf-neon=
-vfpv4-poky-linux-gnueabi/kbd/2.2.0-r0/recipe-sysroot-native=3D&nbsp; -Wagg=
regate-return -Wall -Wcast-align -Wconversion -Wdisabled-optimization -Wext=
ra -Wmissing-declarations -Wmissing-format-attribute -Wmissing-noreturn -Wm=
issing-prototypes -Wpointer-arith -Wredundant-decls -Wshadow -Wstrict-proto=
types -Wwrite-strings -c -o analyze.lo ../../../kbd-2.2.0/src/libkeymap/ana=
lyze.c<br />arm-poky-linux-gnueabi-libtool: compile:&nbsp; arm-poky-linux-g=
nueabi-gcc -mthumb -mfpu=3Dneon-vfpv4 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7 =
-fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wformat-security -=
Werror=3Dformat-security --sysroot=3D/root/build-swu-v2/tmp/work/cortexa7t2=
hf-neon-vfpv4-poky-linux-gnueabi/kbd/2.2.0-r0/recipe-sysroot -DHAVE_CONFIG_=
H -I. -I../../../kbd-2.2.0/src/libkeymap -I../.. -I../../../kbd-2.2.0/src/l=
ibkeymap -I. -I../../../kbd-2.2.0/src/libkeymap/.. -I./.. -I../../../kbd-2.=
2.0/src/libkeymap/../libcommon -I./../libcommon -I../../../kbd-2.2.0/src/li=
bkeymap/../libkbdfile -I./../libkbdfile -DDATADIR=3D\"/usr/share\" -DLOCALE=
DIR=3D\"/usr/share/locale\" -U_GNU_SOURCE -funit-at-a-time -g -O2 -D_FORTIF=
Y_SOURCE=3D2 -O2 -pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=
=3D/root/build-swu-v2/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/k=
bd/2.2.0-r0=3D/usr/src/debug/kbd/2.2.0-r0 -fdebug-prefix-map=3D/root/build-=
swu-v2/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/kbd/2.2.0-r0=3D/=
usr/src/debug/kbd/2.2.0-r0 -fdebug-prefix-map=3D/root/build-swu-v2/tmp/work=
/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/kbd/2.2.0-r0/recipe-sysroot=3D =
-fdebug-prefix-map=3D/root/build-swu-v2/tmp/work/cortexa7t2hf-neon-vfpv4-po=
ky-linux-gnueabi/kbd/2.2.0-r0/recipe-sysroot-native=3D -Waggregate-return -=
Wall -Wcast-align -Wconversion -Wdisabled-optimization -Wextra -Wmissing-de=
clarations -Wmissing-format-attribute -Wmissing-noreturn -Wmissing-prototyp=
es -Wpointer-arith -Wredundant-decls -Wshadow -Wstrict-prototypes -Wwrite-s=
trings -c ../../../kbd-2.2.0/src/libkeymap/analyze.c&nbsp; -fPIC -DPIC -o .=
libs/analyze.o<br />analyze.l: In function 'find_incl_file_near_fn':<br />a=
nalyze.l:141:24: warning: passing argument 2 of 'kbdfile_find' from incompa=
tible pointer type [-Wincompatible-pointer-types]<br />In file included fro=
m ../../../kbd-2.2.0/src/libkeymap/keymap/kmap.h:36,<br />&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; from ../../../kbd-2.2.0/src/libkeymap/keymap.h:8,<br />&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; from ../../../kbd-2.2.0/src/libkeymap/analyze.c:1:<br />../../../kbd=
-2.2.0/src/libkeymap/../libkbdfile/kbdfile.h:40:37: note: expected 'char **=
' but argument is of type 'const char **'<br />&nbsp;&nbsp; 40 | int kbdfil=
e_find(char *fnam, char **dirpath, char **suffixes, struct kbdfile *fp);<br=
 />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ~~~~~~~^~~~~~~<=
br />analyze.l:141:42: warning: passing argument 3 of 'kbdfile_find' from i=
ncompatible pointer type [-Wincompatible-pointer-types]<br />In file includ=
ed from ../../../kbd-2.2.0/src/libkeymap/keymap/kmap.h:36,<br />&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; from ../../../kbd-2.2.0/src/libkeymap/keymap.h:8,<br />&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; from ../../../kbd-2.2.0/src/libkeymap/analyze.c:1:<br />../../=
../kbd-2.2.0/src/libkeymap/../libkbdfile/kbdfile.h:40:53: note: expected 'c=
har **' but argument is of type 'const char * const*'<br />&nbsp;&nbsp; 40 =
| int kbdfile_find(char *fnam, char **dirpath, char **suffixes, struct kbdf=
ile *fp);<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; ~~~~~~~^~~~~~~~<br />analyze.l: In function 'find_standar=
d_incl_file':<br />analyze.l:168:22: warning: passing argument 2 of 'kbdfil=
e_find' from incompatible pointer type [-Wincompatible-pointer-types]<br />=
In file included from ../../../kbd-2.2.0/src/libkeymap/keymap/kmap.h:36,<br=
 />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; from ../../../kbd-2.2.0/src/libkeymap/keymap.h:8,<=
br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; from ../../../kbd-2.2.0/src/libkeymap/analyze.c:=
1:<br />../../../kbd-2.2.0/src/libkeymap/../libkbdfile/kbdfile.h:40:37: not=
e: expected 'char **' but argument is of type 'const char * const*'<br />&n=
bsp;&nbsp; 40 | int kbdfile_find(char *fnam, char **dirpath, char **suffixe=
s, struct kbdfile *fp);<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; ~~~~~~~^~~~~~~<br />analyze.l:168:40: warning: passing argument =
3 of 'kbdfile_find' from incompatible pointer type [-Wincompatible-pointer-=
types]<br />In file included from ../../../kbd-2.2.0/src/libkeymap/keymap/k=
map.h:36,<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; from ../../../kbd-2.2.0/src/libkeymap/=
keymap.h:8,<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; from ../../../kbd-2.2.0/src/libkeyma=
p/analyze.c:1:<br />../../../kbd-2.2.0/src/libkeymap/../libkbdfile/kbdfile.=
h:40:53: note: expected 'char **' but argument is of type 'const char * con=
st*'<br />&nbsp;&nbsp; 40 | int kbdfile_find(char *fnam, char **dirpath, ch=
ar **suffixes, struct kbdfile *fp);<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ~~~~~~~^~~~~~~~<br />analyze.l:=
197:24: warning: passing argument 2 of 'kbdfile_find' from incompatible poi=
nter type [-Wincompatible-pointer-types]<br />In file included from ../../.=
./kbd-2.2.0/src/libkeymap/keymap/kmap.h:36,<br />&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; from=
 ../../../kbd-2.2.0/src/libkeymap/keymap.h:8,<br />&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; fr=
om ../../../kbd-2.2.0/src/libkeymap/analyze.c:1:<br />../../../kbd-2.2.0/sr=
c/libkeymap/../libkbdfile/kbdfile.h:40:37: note: expected 'char **' but arg=
ument is of type 'const char * const*'<br />&nbsp;&nbsp; 40 | int kbdfile_f=
ind(char *fnam, char **dirpath, char **suffixes, struct kbdfile *fp);<br />=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ~~~~~~~^~~~~~~<br =
/>analyze.l:197:42: warning: passing argument 3 of 'kbdfile_find' from inco=
mpatible pointer type [-Wincompatible-pointer-types]<br />In file included =
from ../../../kbd-2.2.0/src/libkeymap/keymap/kmap.h:36,<br />&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; from ../../../kbd-2.2.0/src/libkeymap/keymap.h:8,<br />&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; from ../../../kbd-2.2.0/src/libkeymap/analyze.c:1:<br />../../../=
kbd-2.2.0/src/libkeymap/../libkbdfile/kbdfile.h:40:53: note: expected 'char=
 **' but argument is of type 'const char * const*'<br />&nbsp;&nbsp; 40 | i=
nt kbdfile_find(char *fnam, char **dirpath, char **suffixes, struct kbdfile=
 *fp);<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; ~~~~~~~^~~~~~~~<br />analyze.l: In function 'find_incl_file'=
:<br />analyze.l:210:27: warning: passing argument 2 of 'kbdfile_find' from=
 incompatible pointer type [-Wincompatible-pointer-types]<br />In file incl=
uded from ../../../kbd-2.2.0/src/libkeymap/keymap/kmap.h:36,<br />&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; from ../../../kbd-2.2.0/src/libkeymap/keymap.h:8,<br />&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; from ../../../kbd-2.2.0/src/libkeymap/analyze.c:1:<br />../.=
./../kbd-2.2.0/src/libkeymap/../libkbdfile/kbdfile.h:40:37: note: expected =
'char **' but argument is of type 'const char * const*'<br />&nbsp;&nbsp; 4=
0 | int kbdfile_find(char *fnam, char **dirpath, char **suffixes, struct kb=
dfile *fp);<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ~=
~~~~~~^~~~~~~<br />analyze.l:210:45: warning: passing argument 3 of 'kbdfil=
e_find' from incompatible pointer type [-Wincompatible-pointer-types]<br />=
In file included from ../../../kbd-2.2.0/src/libkeymap/keymap/kmap.h:36,<br=
 />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; from ../../../kbd-2.2.0/src/libkeymap/keymap.h:8,<=
br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; from ../../../kbd-2.2.0/src/libkeymap/analyze.c:=
1:<br />../../../kbd-2.2.0/src/libkeymap/../libkbdfile/kbdfile.h:40:53: not=
e: expected 'char **' but argument is of type 'const char * const*'<br />&n=
bsp;&nbsp; 40 | int kbdfile_find(char *fnam, char **dirpath, char **suffixe=
s, struct kbdfile *fp);<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ~~~~~~~^~~~~~~~<br />analyze.l:225:26: warn=
ing: passing argument 2 of 'kbdfile_find' from incompatible pointer type [-=
Wincompatible-pointer-types]<br />In file included from ../../../kbd-2.2.0/=
src/libkeymap/keymap/kmap.h:36,<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; from ../../../kb=
d-2.2.0/src/libkeymap/keymap.h:8,<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; from ../../../=
kbd-2.2.0/src/libkeymap/analyze.c:1:<br />../../../kbd-2.2.0/src/libkeymap/=
../libkbdfile/kbdfile.h:40:37: note: expected 'char **' but argument is of =
type 'const char **'<br />&nbsp;&nbsp; 40 | int kbdfile_find(char *fnam, ch=
ar **dirpath, char **suffixes, struct kbdfile *fp);<br />&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ~~~~~~~^~~~~~~<br />analyze.l:225:36=
: warning: passing argument 3 of 'kbdfile_find' from incompatible pointer t=
ype [-Wincompatible-pointer-types]<br />In file included from ../../../kbd-=
2.2.0/src/libkeymap/keymap/kmap.h:36,<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; from ../..=
/../kbd-2.2.0/src/libkeymap/keymap.h:8,<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; from ../=
../../kbd-2.2.0/src/libkeymap/analyze.c:1:<br />../../../kbd-2.2.0/src/libk=
eymap/../libkbdfile/kbdfile.h:40:53: note: expected 'char **' but argument =
is of type 'const char * const*'<br />&nbsp;&nbsp; 40 | int kbdfile_find(ch=
ar *fnam, char **dirpath, char **suffixes, struct kbdfile *fp);<br />&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ~~~=
~~~~^~~~~~~~<br />In file included from analyze.l:10:<br />analyze.l: In fu=
nction 'yylex':<br />analyze.l:466:19: error: format not a string literal a=
nd no format arguments [-Werror=3Dformat-security]<br />../../../kbd-2.2.0/=
src/libkeymap/contextP.h:79:55: note: in definition of macro 'lk_log_cond'<=
br />&nbsp;&nbsp; 79 |&nbsp;&nbsp;&nbsp; lk_log(ctx, level, __FILE__, __LIN=
E__, __func__, ##arg); \<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; ^~~<br />analyze.l:466:6: note: in expansion of macro 'ERR'<br =
/>cc1: some warnings being treated as errors<br />make[4]: *** [Makefile:60=
4: analyze.lo] Error 1<br />make[4]: Leaving directory '/root/build-swu-v2/=
tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/kbd/2.2.0-r0/build/src/=
libkeymap'<br />make[3]: *** [Makefile:476: all] Error 2<br />make[3]: Leav=
ing directory '/root/build-swu-v2/tmp/work/cortexa7t2hf-neon-vfpv4-poky-lin=
ux-gnueabi/kbd/2.2.0-r0/build/src/libkeymap'<br />make[2]: *** [Makefile:10=
83: all-recursive] Error 1<br />make[2]: Leaving directory '/root/build-swu=
-v2/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/kbd/2.2.0-r0/build/=
src'<br />make[1]: *** [Makefile:471: all-recursive] Error 1<br />make[1]: =
Leaving directory '/root/build-swu-v2/tmp/work/cortexa7t2hf-neon-vfpv4-poky=
-linux-gnueabi/kbd/2.2.0-r0/build'<br />ERROR: oe_runmake failed<br />make:=
 *** [Makefile:402: all] Error 2<br />WARNING: exit code 1 from a shell com=
mand.<br />ERROR: Execution of '/root/build-swu-v2/tmp/work/cortexa7t2hf-ne=
on-vfpv4-poky-linux-gnueabi/kbd/2.2.0-r0/temp/run.do_compile.380' failed wi=
th exit code 1<br /><br />Can anyone please let me know how to fix this iss=
ue?<br /><br />Your help will be much appreciated.<br /><br />Thanks in adv=
ance.

--MTcgcryVaMQLERAFsvKw--

