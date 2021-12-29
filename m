Return-Path: <prashantsingh@dialtronics.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 242F2C433EF
	for <webhook@archiver.kernel.org>; Wed, 29 Dec 2021 06:16:17 +0000 (UTC)
Subject: /bin/sh: 1: bison: not found  while compiling own kernel module with
 poky-dunfell #bitbake
To: yocto@lists.yoctoproject.org
From: prashantsingh@dialtronics.com
X-Originating-Location: Hyderabad, Telangana, IN (103.248.210.11)
X-Originating-Platform: Linux Firefox 88
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 28 Dec 2021 22:16:16 -0800
Message-ID: <SUq3.1640758576674182643.xC9E@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="bSXbOAAoiCpvnYXOub4T"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 29 Dec 2021 06:16:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55683

--bSXbOAAoiCpvnYXOub4T
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

hello team,
I'm trying to build my own kernel module with yocto for raspberry-pi kernel=
, but it's giving me error that " *bison not found* ", as-

DEBUG: Executing shell function do_compile
NOTE: make -j 12 KERNEL_SRC=3D/home/dialtronics/DIALT_WORK/RPI_YOCTO/PS_RPI=
_BUILD/FXS_BSP/workspace/FXS/tmp/work-shared/raspberrypi3/kernel-source KSR=
C=3D/home/dialtronics/DIALT_WORK/RPI_YOCTO/PS_RPI_BUILD/FXS_BSP/workspace/F=
XS/tmp/work-shared/raspberrypi3/kernel-build-artifacts KERNEL_PATH=3D/home/=
dialtronics/DIALT_WORK/RPI_YOCTO/PS_RPI_BUILD/FXS_BSP/workspace/FXS/tmp/wor=
k-shared/raspberrypi3/kernel-source KERNEL_VERSION=3D5.4.72-v7 CC=3Darm-pok=
y-linux-gnueabi-gcc=C2=A0 -mno-thumb-interwork -marm -fuse-ld=3Dbfd -fmacro=
-prefix-map=3D/home/dialtronics/DIALT_WORK/RPI_YOCTO/PS_RPI_BUILD/FXS_BSP/w=
orkspace/FXS/tmp/work/raspberrypi3-poky-linux-gnueabi/ax88772/1.0-r0=3D/usr=
/src/debug/ax88772/1.0-r0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 -fdebug-prefix-map=3D/home/dialtronics/DIALT_WORK/RPI_YOCTO/PS_RPI_BUIL=
D/FXS_BSP/workspace/FXS/tmp/work/raspberrypi3-poky-linux-gnueabi/ax88772/1.=
0-r0=3D/usr/src/debug/ax88772/1.0-r0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 -fdebug-prefix-map=3D/home/dialtronics/DIALT_WORK/RPI_YOCTO/PS=
_RPI_BUILD/FXS_BSP/workspace/FXS/tmp/work/raspberrypi3-poky-linux-gnueabi/a=
x88772/1.0-r0/recipe-sysroot=3D=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 -fdebug-prefix-map=3D/home/dialtronics/DIALT_WORK/RPI_YOCTO/PS_RP=
I_BUILD/FXS_BSP/workspace/FXS/tmp/work/raspberrypi3-poky-linux-gnueabi/ax88=
772/1.0-r0/recipe-sysroot-native=3D=C2=A0 -fdebug-prefix-map=3D/home/dialtr=
onics/DIALT_WORK/RPI_YOCTO/PS_RPI_BUILD/FXS_BSP/workspace/FXS/tmp/work-shar=
ed/raspberrypi3/kernel-source=3D/usr/src/kernel LD=3Darm-poky-linux-gnueabi=
-ld.bfd=C2=A0=C2=A0 AR=3Darm-poky-linux-gnueabi-ar=C2=A0 O=3D/home/dialtron=
ics/DIALT_WORK/RPI_YOCTO/PS_RPI_BUILD/FXS_BSP/workspace/FXS/tmp/work-shared=
/raspberrypi3/kernel-build-artifacts KBUILD_EXTRA_SYMBOLS=3D
make -C /home/dialtronics/DIALT_WORK/RPI_YOCTO/PS_RPI_BUILD/FXS_BSP/workspa=
ce/FXS/tmp/work-shared/raspberrypi3/kernel-build-artifacts SUBDIRS=3D/home/=
dialtronics/DIALT_WORK/RPI_YOCTO/PS_RPI_BUILD/FXS_BSP/workspace/FXS/tmp/wor=
k/raspberrypi3-poky-linux-gnueabi/ax88772/1.0-r0 modules
make[1]: warning: jobserver unavailable: using -j1.=C2=A0 Add '+' to parent=
 make rule.
make[1]: Entering directory '/home/dialtronics/DIALT_WORK/RPI_YOCTO/PS_RPI_=
BUILD/FXS_BSP/workspace/FXS/tmp/work-shared/raspberrypi3/kernel-build-artif=
acts'
GEN=C2=A0=C2=A0=C2=A0=C2=A0 Makefile
YACC=C2=A0=C2=A0=C2=A0 scripts/kconfig/parser.tab.[ch]
/bin/sh: 1: bison: not found
make[4]: *** [scripts/Makefile.host:17: scripts/kconfig/parser.tab.h] Error=
 127
make[3]: *** [/home/dialtronics/DIALT_WORK/RPI_YOCTO/PS_RPI_BUILD/FXS_BSP/w=
orkspace/FXS/tmp/work-shared/raspberrypi3/kernel-source/Makefile:590: syncc=
onfig] Error 2
make[2]: *** [/home/dialtronics/DIALT_WORK/RPI_YOCTO/PS_RPI_BUILD/FXS_BSP/w=
orkspace/FXS/tmp/work-shared/raspberrypi3/kernel-source/Makefile:696: inclu=
de/config/auto.conf.cmd] Error 2
make[1]: *** [/home/dialtronics/DIALT_WORK/RPI_YOCTO/PS_RPI_BUILD/FXS_BSP/w=
orkspace/FXS/tmp/work-shared/raspberrypi3/kernel-source/Makefile:179: sub-m=
ake] Error 2
make[1]: Leaving directory '/home/dialtronics/DIALT_WORK/RPI_YOCTO/PS_RPI_B=
UILD/FXS_BSP/workspace/FXS/tmp/work-shared/raspberrypi3/kernel-build-artifa=
cts'
make: *** [Makefile:19: default] Error 2
ERROR: oe_runmake failed
WARNING: exit code 1 from a shell command.

*Here is my bb file for the same-*

SUMMARY =3D "WAN IC asix kernel module"
LICENSE =3D "GPLv2"
LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D014e508ee78ef83e5007b9cb3834f0e9=
"

DEPENDS =3D "virtual/kernel bc bison"

inherit module

PR =3D "r0"
PV =3D "1.0"

SRC_URI =3D "file://Makefile \
file://asix.c \
file://asix.h \
file://axusbnet.c \
file://axusbnet.h \
file://command.h \
file://debug.txt \
file://eeprom_data.tar.bz2 \
file://ioctl.c \
file://ioctl.h \
file://ioctl_readme \
file://readme \
file://readme \
file://LICENSE \
"

S =3D "${WORKDIR}"

export TARGET_SYS
EXTRA_OEMAKE +=3D "KSRC=3D${STAGING_KERNEL_BUILDDIR}"

do_compile_append() {
${CC} ioctl.c -o ioctl
}

do_install_prepend() {
export DESTDIR=3D"${D}"
}

# The inherit of module.bbclass will automatically name module packages wit=
h
# "kernel-module-" prefix as required by the oe-core build environment.

Same kernel module with poky zeus and rpi kernel 4.19 got compiled successf=
ully, but here I'm getting issue with poky dunfell with Rpi kernel 5.4

Please help me resolve this issue.

Thanks.

--bSXbOAAoiCpvnYXOub4T
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

hello team,<br />I'm trying to build my own kernel module with yocto for ra=
spberry-pi kernel, but it's giving me error that "<strong>bison not found</=
strong>", as-<br /><br />DEBUG: Executing shell function do_compile<br />NO=
TE: make -j 12 KERNEL_SRC=3D/home/dialtronics/DIALT_WORK/RPI_YOCTO/PS_RPI_B=
UILD/FXS_BSP/workspace/FXS/tmp/work-shared/raspberrypi3/kernel-source KSRC=
=3D/home/dialtronics/DIALT_WORK/RPI_YOCTO/PS_RPI_BUILD/FXS_BSP/workspace/FX=
S/tmp/work-shared/raspberrypi3/kernel-build-artifacts KERNEL_PATH=3D/home/d=
ialtronics/DIALT_WORK/RPI_YOCTO/PS_RPI_BUILD/FXS_BSP/workspace/FXS/tmp/work=
-shared/raspberrypi3/kernel-source KERNEL_VERSION=3D5.4.72-v7 CC=3Darm-poky=
-linux-gnueabi-gcc&nbsp; -mno-thumb-interwork -marm -fuse-ld=3Dbfd -fmacro-=
prefix-map=3D/home/dialtronics/DIALT_WORK/RPI_YOCTO/PS_RPI_BUILD/FXS_BSP/wo=
rkspace/FXS/tmp/work/raspberrypi3-poky-linux-gnueabi/ax88772/1.0-r0=3D/usr/=
src/debug/ax88772/1.0-r0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 -fdebug-prefix-map=3D/home/dialtronics/DIALT_WORK/RPI_YOCTO/PS_RPI_BUILD/F=
XS_BSP/workspace/FXS/tmp/work/raspberrypi3-poky-linux-gnueabi/ax88772/1.0-r=
0=3D/usr/src/debug/ax88772/1.0-r0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; -fdebug-prefix-map=3D/home/dialtronics/DIALT_WORK/RPI_YOCTO/PS_RP=
I_BUILD/FXS_BSP/workspace/FXS/tmp/work/raspberrypi3-poky-linux-gnueabi/ax88=
772/1.0-r0/recipe-sysroot=3D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; -fdebug-prefix-map=3D/home/dialtronics/DIALT_WORK/RPI_YOCTO/PS_RPI_BUI=
LD/FXS_BSP/workspace/FXS/tmp/work/raspberrypi3-poky-linux-gnueabi/ax88772/1=
.0-r0/recipe-sysroot-native=3D&nbsp; -fdebug-prefix-map=3D/home/dialtronics=
/DIALT_WORK/RPI_YOCTO/PS_RPI_BUILD/FXS_BSP/workspace/FXS/tmp/work-shared/ra=
spberrypi3/kernel-source=3D/usr/src/kernel LD=3Darm-poky-linux-gnueabi-ld.b=
fd&nbsp;&nbsp; AR=3Darm-poky-linux-gnueabi-ar&nbsp; O=3D/home/dialtronics/D=
IALT_WORK/RPI_YOCTO/PS_RPI_BUILD/FXS_BSP/workspace/FXS/tmp/work-shared/rasp=
berrypi3/kernel-build-artifacts KBUILD_EXTRA_SYMBOLS=3D<br />make -C /home/=
dialtronics/DIALT_WORK/RPI_YOCTO/PS_RPI_BUILD/FXS_BSP/workspace/FXS/tmp/wor=
k-shared/raspberrypi3/kernel-build-artifacts SUBDIRS=3D/home/dialtronics/DI=
ALT_WORK/RPI_YOCTO/PS_RPI_BUILD/FXS_BSP/workspace/FXS/tmp/work/raspberrypi3=
-poky-linux-gnueabi/ax88772/1.0-r0 modules<br />make[1]: warning: jobserver=
 unavailable: using -j1.&nbsp; Add '+' to parent make rule.<br />make[1]: E=
ntering directory '/home/dialtronics/DIALT_WORK/RPI_YOCTO/PS_RPI_BUILD/FXS_=
BSP/workspace/FXS/tmp/work-shared/raspberrypi3/kernel-build-artifacts'<br /=
>&nbsp; GEN&nbsp;&nbsp;&nbsp;&nbsp; Makefile<br />&nbsp; YACC&nbsp;&nbsp;&n=
bsp; scripts/kconfig/parser.tab.[ch]<br />/bin/sh: 1: bison: not found<br /=
>make[4]: *** [scripts/Makefile.host:17: scripts/kconfig/parser.tab.h] Erro=
r 127<br />make[3]: *** [/home/dialtronics/DIALT_WORK/RPI_YOCTO/PS_RPI_BUIL=
D/FXS_BSP/workspace/FXS/tmp/work-shared/raspberrypi3/kernel-source/Makefile=
:590: syncconfig] Error 2<br />make[2]: *** [/home/dialtronics/DIALT_WORK/R=
PI_YOCTO/PS_RPI_BUILD/FXS_BSP/workspace/FXS/tmp/work-shared/raspberrypi3/ke=
rnel-source/Makefile:696: include/config/auto.conf.cmd] Error 2<br />make[1=
]: *** [/home/dialtronics/DIALT_WORK/RPI_YOCTO/PS_RPI_BUILD/FXS_BSP/workspa=
ce/FXS/tmp/work-shared/raspberrypi3/kernel-source/Makefile:179: sub-make] E=
rror 2<br />make[1]: Leaving directory '/home/dialtronics/DIALT_WORK/RPI_YO=
CTO/PS_RPI_BUILD/FXS_BSP/workspace/FXS/tmp/work-shared/raspberrypi3/kernel-=
build-artifacts'<br />make: *** [Makefile:19: default] Error 2<br />ERROR: =
oe_runmake failed<br />WARNING: exit code 1 from a shell command.<br /><br =
/><br /><strong>Here is my bb file for the same-</strong><br /><br />SUMMAR=
Y =3D "WAN IC asix kernel module"<br />LICENSE =3D "GPLv2"<br />LIC_FILES_C=
HKSUM =3D "file://LICENSE;md5=3D014e508ee78ef83e5007b9cb3834f0e9"<br /><br =
/>DEPENDS =3D "virtual/kernel bc bison"<br /><br />inherit module<br /><br =
/>PR =3D "r0"<br />PV =3D "1.0"<br /><br />SRC_URI =3D "file://Makefile \<b=
r />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; file://asix.c \<=
br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; file://asix.h \=
<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; file://axusbne=
t.c \<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; file://ax=
usbnet.h \<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; file=
://command.h \<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
file://debug.txt \<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; file://eeprom_data.tar.bz2 \<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; file://ioctl.c \<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; file://ioctl.h \<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; file://ioctl_readme \<br />&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; file://readme \<br />&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; file://readme \<br />&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; file://LICENSE \<br />"<br /><br />S =3D "${=
WORKDIR}"<br /><br />export TARGET_SYS<br />EXTRA_OEMAKE +=3D "KSRC=3D${STA=
GING_KERNEL_BUILDDIR}"<br /><br />do_compile_append() {<br />&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; ${CC} ioctl.c -o ioctl<br />}<br /><br />do_in=
stall_prepend() {<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; export DE=
STDIR=3D"${D}"<br />}<br /><br /><br /><br /><br /># The inherit of module.=
bbclass will automatically name module packages with<br /># "kernel-module-=
" prefix as required by the oe-core build environment.<br /><br /><br /><br=
 />Same kernel module with poky zeus and rpi kernel 4.19 got compiled succe=
ssfully, but here I'm getting issue with poky dunfell with Rpi kernel 5.4<b=
r /><br />Please help me resolve this issue.<br /><br />Thanks.

--bSXbOAAoiCpvnYXOub4T--

