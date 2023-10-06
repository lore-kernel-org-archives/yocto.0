Return-Path: <electronicconsult1@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 36361E81E1A
	for <webhook@archiver.kernel.org>; Fri,  6 Oct 2023 16:44:23 +0000 (UTC)
Subject: Modify target 'march' for RISCV VisionFive 2
To: yocto@lists.yoctoproject.org
From: "Electronic Consult" <electronicconsult1@gmail.com>
X-Originating-Location: Dublin, Leinster, IE (188.141.96.236)
X-Originating-Platform: Linux Firefox 118
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 06 Oct 2023 09:44:20 -0700
Message-ID: <Z40I.1696610660851534749.RoAt@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ziFRS6e6XXQR7XSRIGEb"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 06 Oct 2023 16:44:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61262

--ziFRS6e6XXQR7XSRIGEb
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello all,

I'd like to try building Qt6 for the RISCV VisionFive 2 board. My first att=
empt returns the error (full error at the bottom):

Error: unrecognized opcode `pause', extension ` *zihintpause* ' required

It seems I need to append _zihintpause to the target march. Currently 'risc=
v64-poky-linux-g++ -dumpspecs' returns:

march=3Drv64imafdc_zicsr_zifencei mabi=3Dlp64d

I tried using BUILD_AS_ARCH & TUNE_FEATURES without success. Is there a way=
 to modify 'march' on a recipe basis?

Thanks,

Owen

[26/1146] /home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linu=
x/qtbase/6.7.0/recipe-sysroot-native/usr/bin/riscv64-poky-linux/riscv64-pok=
y-linux-g++ --sysroot=3D/home/projects/yocto/build-riscv/build/tmp/work/ris=
cv64-poky-linux/qtbase/6.7.0/recipe-sysroot -DBACKTRACE_HEADER=3D\"execinfo=
.h\" -DCore_EXPORTS -DQT_ASCII_CAST_WARNINGS -DQT_BUILDING_QT -DQT_BUILD_CO=
RE_LIB -DQT_DEPRECATED_WARNINGS -DQT_DISABLE_DEPRECATED_UP_TO=3D0x050000 -D=
QT_EXPLICIT_QFILE_CONSTRUCTION_FROM_PATH -DQT_LEAN_HEADERS=3D1 -DQT_MOC_COM=
PAT -DQT_NO_AS_CONST -DQT_NO_CAST_TO_ASCII -DQT_NO_CONTEXTLESS_CONNECT -DQT=
_NO_DEBUG -DQT_NO_FOREACH -DQT_NO_JAVA_STYLE_ITERATORS -DQT_NO_NARROWING_CO=
NVERSIONS_IN_CONNECT -DQT_NO_QEXCHANGE -DQT_NO_USING_NAMESPACE -DQT_TYPESAF=
E_FLAGS -DQT_USE_QSTRINGBUILDER -DQT_WARN_DEPRECATED_UP_TO=3D0x070000 -D_LA=
RGEFILE64_SOURCE -D_LARGEFILE_SOURCE -I/home/projects/yocto/build-riscv/bui=
ld/tmp/work/riscv64-poky-linux/qtbase/6.7.0/build/src/corelib/Core_autogen/=
include -I/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linu=
x/qtbase/6.7.0/build/include -I/home/projects/yocto/build-riscv/build/tmp/w=
ork/riscv64-poky-linux/qtbase/6.7.0/build/include/QtCore -I/home/projects/y=
octo/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/git/src/cor=
elib -I/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/q=
tbase/6.7.0/build/src/corelib -I/home/projects/yocto/build-riscv/build/tmp/=
work/riscv64-poky-linux/qtbase/6.7.0/build/src/corelib/global -I/home/proje=
cts/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/build/=
src/corelib/kernel -I/home/projects/yocto/build-riscv/build/tmp/work/riscv6=
4-poky-linux/qtbase/6.7.0/git/src/corelib/../3rdparty/tinycbor/src -I/home/=
projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/b=
uild/include/QtCore/6.7.0 -I/home/projects/yocto/build-riscv/build/tmp/work=
/riscv64-poky-linux/qtbase/6.7.0/build/include/QtCore/6.7.0/QtCore -I/home/=
projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/g=
it/src/corelib/../3rdparty/double-conversion/double-conversion -I/home/proj=
ects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/git/s=
rc/corelib/../3rdparty/double-conversion -I/home/projects/yocto/build-riscv=
/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/git/src/corelib/../3rdparty=
/forkfd -I/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linu=
x/qtbase/6.7.0/build/src/corelib/.rcc -I/home/projects/yocto/build-riscv/bu=
ild/tmp/work/riscv64-poky-linux/qtbase/6.7.0/git/mkspecs/linux-g++ -I/home/=
projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/r=
ecipe-sysroot/usr/include/glib-2.0 -I/home/projects/yocto/build-riscv/build=
/tmp/work/riscv64-poky-linux/qtbase/6.7.0/recipe-sysroot/usr/lib/glib-2.0/i=
nclude -fstack-protector-strong=C2=A0 -O2 -D_FORTIFY_SOURCE=3D2 -Wformat -W=
format-security -Werror=3Dformat-security=C2=A0 --sysroot=3D/home/projects/=
yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/recipe-sys=
root=C2=A0 -O2 -pipe -g -feliminate-unused-debug-types -fcanon-prefix-map=
=C2=A0 -fmacro-prefix-map=3D/home/projects/yocto/build-riscv/build/tmp/work=
/riscv64-poky-linux/qtbase/6.7.0/git=3D/usr/src/debug/qtbase/6.7.0-r0=C2=A0=
 -fdebug-prefix-map=3D/home/projects/yocto/build-riscv/build/tmp/work/riscv=
64-poky-linux/qtbase/6.7.0/git=3D/usr/src/debug/qtbase/6.7.0-r0=C2=A0 -fmac=
ro-prefix-map=3D/home/projects/yocto/build-riscv/build/tmp/work/riscv64-pok=
y-linux/qtbase/6.7.0/build=3D/usr/src/debug/qtbase/6.7.0-r0=C2=A0 -fdebug-p=
refix-map=3D/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-li=
nux/qtbase/6.7.0/build=3D/usr/src/debug/qtbase/6.7.0-r0=C2=A0 -fdebug-prefi=
x-map=3D/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/=
qtbase/6.7.0/recipe-sysroot=3D=C2=A0 -fmacro-prefix-map=3D/home/projects/yo=
cto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/recipe-sysro=
ot=3D=C2=A0 -fdebug-prefix-map=3D/home/projects/yocto/build-riscv/build/tmp=
/work/riscv64-poky-linux/qtbase/6.7.0/recipe-sysroot-native=3D=C2=A0=C2=A0 =
-fmacro-prefix-map=3D/home/projects/yocto/build-riscv/build/tmp/work/riscv6=
4-poky-linux/qtbase/6.7.0/image=3D=C2=A0 -fvisibility-inlines-hidden -DNDEB=
UG -O3 -std=3Dc++17 -fPIC -fvisibility=3Dhidden -fvisibility-inlines-hidden=
 -Wall -Wextra -Wsuggest-override -Winvalid-pch -include /home/projects/yoc=
to/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/build/src/cor=
elib/CMakeFiles/Core.dir/cmake_pch.hxx -MD -MT src/corelib/CMakeFiles/Core.=
dir/global/qlogging.cpp.o -MF src/corelib/CMakeFiles/Core.dir/global/qloggi=
ng.cpp.o.d -o src/corelib/CMakeFiles/Core.dir/global/qlogging.cpp.o -c /hom=
e/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0=
/git/src/corelib/global/qlogging.cpp
FAILED: src/corelib/CMakeFiles/Core.dir/global/qlogging.cpp.o
/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6=
.7.0/recipe-sysroot-native/usr/bin/riscv64-poky-linux/riscv64-poky-linux-g+=
+ --sysroot=3D/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-=
linux/qtbase/6.7.0/recipe-sysroot -DBACKTRACE_HEADER=3D\"execinfo.h\" -DCor=
e_EXPORTS -DQT_ASCII_CAST_WARNINGS -DQT_BUILDING_QT -DQT_BUILD_CORE_LIB -DQ=
T_DEPRECATED_WARNINGS -DQT_DISABLE_DEPRECATED_UP_TO=3D0x050000 -DQT_EXPLICI=
T_QFILE_CONSTRUCTION_FROM_PATH -DQT_LEAN_HEADERS=3D1 -DQT_MOC_COMPAT -DQT_N=
O_AS_CONST -DQT_NO_CAST_TO_ASCII -DQT_NO_CONTEXTLESS_CONNECT -DQT_NO_DEBUG =
-DQT_NO_FOREACH -DQT_NO_JAVA_STYLE_ITERATORS -DQT_NO_NARROWING_CONVERSIONS_=
IN_CONNECT -DQT_NO_QEXCHANGE -DQT_NO_USING_NAMESPACE -DQT_TYPESAFE_FLAGS -D=
QT_USE_QSTRINGBUILDER -DQT_WARN_DEPRECATED_UP_TO=3D0x070000 -D_LARGEFILE64_=
SOURCE -D_LARGEFILE_SOURCE -I/home/projects/yocto/build-riscv/build/tmp/wor=
k/riscv64-poky-linux/qtbase/6.7.0/build/src/corelib/Core_autogen/include -I=
/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6=
.7.0/build/include -I/home/projects/yocto/build-riscv/build/tmp/work/riscv6=
4-poky-linux/qtbase/6.7.0/build/include/QtCore -I/home/projects/yocto/build=
-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/git/src/corelib -I/ho=
me/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.=
0/build/src/corelib -I/home/projects/yocto/build-riscv/build/tmp/work/riscv=
64-poky-linux/qtbase/6.7.0/build/src/corelib/global -I/home/projects/yocto/=
build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/build/src/coreli=
b/kernel -I/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-lin=
ux/qtbase/6.7.0/git/src/corelib/../3rdparty/tinycbor/src -I/home/projects/y=
octo/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/build/inclu=
de/QtCore/6.7.0 -I/home/projects/yocto/build-riscv/build/tmp/work/riscv64-p=
oky-linux/qtbase/6.7.0/build/include/QtCore/6.7.0/QtCore -I/home/projects/y=
octo/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/git/src/cor=
elib/../3rdparty/double-conversion/double-conversion -I/home/projects/yocto=
/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/git/src/corelib=
/../3rdparty/double-conversion -I/home/projects/yocto/build-riscv/build/tmp=
/work/riscv64-poky-linux/qtbase/6.7.0/git/src/corelib/../3rdparty/forkfd -I=
/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6=
.7.0/build/src/corelib/.rcc -I/home/projects/yocto/build-riscv/build/tmp/wo=
rk/riscv64-poky-linux/qtbase/6.7.0/git/mkspecs/linux-g++ -I/home/projects/y=
octo/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/recipe-sysr=
oot/usr/include/glib-2.0 -I/home/projects/yocto/build-riscv/build/tmp/work/=
riscv64-poky-linux/qtbase/6.7.0/recipe-sysroot/usr/lib/glib-2.0/include -fs=
tack-protector-strong=C2=A0 -O2 -D_FORTIFY_SOURCE=3D2 -Wformat -Wformat-sec=
urity -Werror=3Dformat-security=C2=A0 --sysroot=3D/home/projects/yocto/buil=
d-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/recipe-sysroot=C2=A0=
 -O2 -pipe -g -feliminate-unused-debug-types -fcanon-prefix-map=C2=A0 -fmac=
ro-prefix-map=3D/home/projects/yocto/build-riscv/build/tmp/work/riscv64-pok=
y-linux/qtbase/6.7.0/git=3D/usr/src/debug/qtbase/6.7.0-r0=C2=A0 -fdebug-pre=
fix-map=3D/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linu=
x/qtbase/6.7.0/git=3D/usr/src/debug/qtbase/6.7.0-r0=C2=A0 -fmacro-prefix-ma=
p=3D/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtba=
se/6.7.0/build=3D/usr/src/debug/qtbase/6.7.0-r0=C2=A0 -fdebug-prefix-map=3D=
/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6=
.7.0/build=3D/usr/src/debug/qtbase/6.7.0-r0=C2=A0 -fdebug-prefix-map=3D/hom=
e/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0=
/recipe-sysroot=3D=C2=A0 -fmacro-prefix-map=3D/home/projects/yocto/build-ri=
scv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/recipe-sysroot=3D=C2=A0 =
-fdebug-prefix-map=3D/home/projects/yocto/build-riscv/build/tmp/work/riscv6=
4-poky-linux/qtbase/6.7.0/recipe-sysroot-native=3D=C2=A0=C2=A0 -fmacro-pref=
ix-map=3D/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux=
/qtbase/6.7.0/image=3D=C2=A0 -fvisibility-inlines-hidden -DNDEBUG -O3 -std=
=3Dc++17 -fPIC -fvisibility=3Dhidden -fvisibility-inlines-hidden -Wall -Wex=
tra -Wsuggest-override -Winvalid-pch -include /home/projects/yocto/build-ri=
scv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/build/src/corelib/CMakeF=
iles/Core.dir/cmake_pch.hxx -MD -MT src/corelib/CMakeFiles/Core.dir/global/=
qlogging.cpp.o -MF src/corelib/CMakeFiles/Core.dir/global/qlogging.cpp.o.d =
-o src/corelib/CMakeFiles/Core.dir/global/qlogging.cpp.o -c /home/projects/=
yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/git/src/co=
relib/global/qlogging.cpp
{standard input}: Assembler messages:
{standard input}:6292: Error: unrecognized opcode `pause', extension `zihin=
tpause' required
{standard input}:6606: Error: unrecognized opcode `pause', extension `zihin=
tpause' required
{standard input}:7425: Error: unrecognized opcode `pause', extension `zihin=
tpause' required
{standard input}:7747: Error: unrecognized opcode `pause', extension `zihin=
tpause' required

--ziFRS6e6XXQR7XSRIGEb
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello all,<br /><br />I'd like to try building Qt6 for the RISCV VisionFive=
 2 board. My first attempt returns the error (full error at the bottom):<br=
 /><br />Error: unrecognized opcode `pause', extension `<strong>zihintpause=
</strong>' required<br /><br />It seems I need to append _zihintpause to th=
e target march. Currently 'riscv64-poky-linux-g++ -dumpspecs' returns:<br /=
><br />march=3Drv64imafdc_zicsr_zifencei mabi=3Dlp64d<br /><br />I tried us=
ing BUILD_AS_ARCH &amp; TUNE_FEATURES without success. Is there a way to mo=
dify 'march' on a recipe basis?<br /><br />Thanks,<br /><br />Owen<br /><br=
 />[26/1146] /home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-l=
inux/qtbase/6.7.0/recipe-sysroot-native/usr/bin/riscv64-poky-linux/riscv64-=
poky-linux-g++ --sysroot=3D/home/projects/yocto/build-riscv/build/tmp/work/=
riscv64-poky-linux/qtbase/6.7.0/recipe-sysroot -DBACKTRACE_HEADER=3D\"execi=
nfo.h\" -DCore_EXPORTS -DQT_ASCII_CAST_WARNINGS -DQT_BUILDING_QT -DQT_BUILD=
_CORE_LIB -DQT_DEPRECATED_WARNINGS -DQT_DISABLE_DEPRECATED_UP_TO=3D0x050000=
 -DQT_EXPLICIT_QFILE_CONSTRUCTION_FROM_PATH -DQT_LEAN_HEADERS=3D1 -DQT_MOC_=
COMPAT -DQT_NO_AS_CONST -DQT_NO_CAST_TO_ASCII -DQT_NO_CONTEXTLESS_CONNECT -=
DQT_NO_DEBUG -DQT_NO_FOREACH -DQT_NO_JAVA_STYLE_ITERATORS -DQT_NO_NARROWING=
_CONVERSIONS_IN_CONNECT -DQT_NO_QEXCHANGE -DQT_NO_USING_NAMESPACE -DQT_TYPE=
SAFE_FLAGS -DQT_USE_QSTRINGBUILDER -DQT_WARN_DEPRECATED_UP_TO=3D0x070000 -D=
_LARGEFILE64_SOURCE -D_LARGEFILE_SOURCE -I/home/projects/yocto/build-riscv/=
build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/build/src/corelib/Core_autog=
en/include -I/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-l=
inux/qtbase/6.7.0/build/include -I/home/projects/yocto/build-riscv/build/tm=
p/work/riscv64-poky-linux/qtbase/6.7.0/build/include/QtCore -I/home/project=
s/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/git/src/=
corelib -I/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linu=
x/qtbase/6.7.0/build/src/corelib -I/home/projects/yocto/build-riscv/build/t=
mp/work/riscv64-poky-linux/qtbase/6.7.0/build/src/corelib/global -I/home/pr=
ojects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/bui=
ld/src/corelib/kernel -I/home/projects/yocto/build-riscv/build/tmp/work/ris=
cv64-poky-linux/qtbase/6.7.0/git/src/corelib/../3rdparty/tinycbor/src -I/ho=
me/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.=
0/build/include/QtCore/6.7.0 -I/home/projects/yocto/build-riscv/build/tmp/w=
ork/riscv64-poky-linux/qtbase/6.7.0/build/include/QtCore/6.7.0/QtCore -I/ho=
me/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.=
0/git/src/corelib/../3rdparty/double-conversion/double-conversion -I/home/p=
rojects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/gi=
t/src/corelib/../3rdparty/double-conversion -I/home/projects/yocto/build-ri=
scv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/git/src/corelib/../3rdpa=
rty/forkfd -I/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-l=
inux/qtbase/6.7.0/build/src/corelib/.rcc -I/home/projects/yocto/build-riscv=
/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/git/mkspecs/linux-g++ -I/ho=
me/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.=
0/recipe-sysroot/usr/include/glib-2.0 -I/home/projects/yocto/build-riscv/bu=
ild/tmp/work/riscv64-poky-linux/qtbase/6.7.0/recipe-sysroot/usr/lib/glib-2.=
0/include -fstack-protector-strong&nbsp; -O2 -D_FORTIFY_SOURCE=3D2 -Wformat=
 -Wformat-security -Werror=3Dformat-security&nbsp; --sysroot=3D/home/projec=
ts/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/recipe-=
sysroot&nbsp; -O2 -pipe -g -feliminate-unused-debug-types -fcanon-prefix-ma=
p&nbsp; -fmacro-prefix-map=3D/home/projects/yocto/build-riscv/build/tmp/wor=
k/riscv64-poky-linux/qtbase/6.7.0/git=3D/usr/src/debug/qtbase/6.7.0-r0&nbsp=
; -fdebug-prefix-map=3D/home/projects/yocto/build-riscv/build/tmp/work/risc=
v64-poky-linux/qtbase/6.7.0/git=3D/usr/src/debug/qtbase/6.7.0-r0&nbsp; -fma=
cro-prefix-map=3D/home/projects/yocto/build-riscv/build/tmp/work/riscv64-po=
ky-linux/qtbase/6.7.0/build=3D/usr/src/debug/qtbase/6.7.0-r0&nbsp; -fdebug-=
prefix-map=3D/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-l=
inux/qtbase/6.7.0/build=3D/usr/src/debug/qtbase/6.7.0-r0&nbsp; -fdebug-pref=
ix-map=3D/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux=
/qtbase/6.7.0/recipe-sysroot=3D&nbsp; -fmacro-prefix-map=3D/home/projects/y=
octo/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/recipe-sysr=
oot=3D&nbsp; -fdebug-prefix-map=3D/home/projects/yocto/build-riscv/build/tm=
p/work/riscv64-poky-linux/qtbase/6.7.0/recipe-sysroot-native=3D&nbsp;&nbsp;=
 -fmacro-prefix-map=3D/home/projects/yocto/build-riscv/build/tmp/work/riscv=
64-poky-linux/qtbase/6.7.0/image=3D&nbsp; -fvisibility-inlines-hidden -DNDE=
BUG -O3 -std=3Dc++17 -fPIC -fvisibility=3Dhidden -fvisibility-inlines-hidde=
n -Wall -Wextra -Wsuggest-override -Winvalid-pch -include /home/projects/yo=
cto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/build/src/co=
relib/CMakeFiles/Core.dir/cmake_pch.hxx -MD -MT src/corelib/CMakeFiles/Core=
.dir/global/qlogging.cpp.o -MF src/corelib/CMakeFiles/Core.dir/global/qlogg=
ing.cpp.o.d -o src/corelib/CMakeFiles/Core.dir/global/qlogging.cpp.o -c /ho=
me/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.=
0/git/src/corelib/global/qlogging.cpp<br />FAILED: src/corelib/CMakeFiles/C=
ore.dir/global/qlogging.cpp.o <br />/home/projects/yocto/build-riscv/build/=
tmp/work/riscv64-poky-linux/qtbase/6.7.0/recipe-sysroot-native/usr/bin/risc=
v64-poky-linux/riscv64-poky-linux-g++ --sysroot=3D/home/projects/yocto/buil=
d-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/recipe-sysroot -DBAC=
KTRACE_HEADER=3D\"execinfo.h\" -DCore_EXPORTS -DQT_ASCII_CAST_WARNINGS -DQT=
_BUILDING_QT -DQT_BUILD_CORE_LIB -DQT_DEPRECATED_WARNINGS -DQT_DISABLE_DEPR=
ECATED_UP_TO=3D0x050000 -DQT_EXPLICIT_QFILE_CONSTRUCTION_FROM_PATH -DQT_LEA=
N_HEADERS=3D1 -DQT_MOC_COMPAT -DQT_NO_AS_CONST -DQT_NO_CAST_TO_ASCII -DQT_N=
O_CONTEXTLESS_CONNECT -DQT_NO_DEBUG -DQT_NO_FOREACH -DQT_NO_JAVA_STYLE_ITER=
ATORS -DQT_NO_NARROWING_CONVERSIONS_IN_CONNECT -DQT_NO_QEXCHANGE -DQT_NO_US=
ING_NAMESPACE -DQT_TYPESAFE_FLAGS -DQT_USE_QSTRINGBUILDER -DQT_WARN_DEPRECA=
TED_UP_TO=3D0x070000 -D_LARGEFILE64_SOURCE -D_LARGEFILE_SOURCE -I/home/proj=
ects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/build=
/src/corelib/Core_autogen/include -I/home/projects/yocto/build-riscv/build/=
tmp/work/riscv64-poky-linux/qtbase/6.7.0/build/include -I/home/projects/yoc=
to/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/build/include=
/QtCore -I/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linu=
x/qtbase/6.7.0/git/src/corelib -I/home/projects/yocto/build-riscv/build/tmp=
/work/riscv64-poky-linux/qtbase/6.7.0/build/src/corelib -I/home/projects/yo=
cto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/build/src/co=
relib/global -I/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky=
-linux/qtbase/6.7.0/build/src/corelib/kernel -I/home/projects/yocto/build-r=
iscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/git/src/corelib/../3rdp=
arty/tinycbor/src -I/home/projects/yocto/build-riscv/build/tmp/work/riscv64=
-poky-linux/qtbase/6.7.0/build/include/QtCore/6.7.0 -I/home/projects/yocto/=
build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/build/include/Qt=
Core/6.7.0/QtCore -I/home/projects/yocto/build-riscv/build/tmp/work/riscv64=
-poky-linux/qtbase/6.7.0/git/src/corelib/../3rdparty/double-conversion/doub=
le-conversion -I/home/projects/yocto/build-riscv/build/tmp/work/riscv64-pok=
y-linux/qtbase/6.7.0/git/src/corelib/../3rdparty/double-conversion -I/home/=
projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/g=
it/src/corelib/../3rdparty/forkfd -I/home/projects/yocto/build-riscv/build/=
tmp/work/riscv64-poky-linux/qtbase/6.7.0/build/src/corelib/.rcc -I/home/pro=
jects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/git/=
mkspecs/linux-g++ -I/home/projects/yocto/build-riscv/build/tmp/work/riscv64=
-poky-linux/qtbase/6.7.0/recipe-sysroot/usr/include/glib-2.0 -I/home/projec=
ts/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/recipe-=
sysroot/usr/lib/glib-2.0/include -fstack-protector-strong&nbsp; -O2 -D_FORT=
IFY_SOURCE=3D2 -Wformat -Wformat-security -Werror=3Dformat-security&nbsp; -=
-sysroot=3D/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-lin=
ux/qtbase/6.7.0/recipe-sysroot&nbsp; -O2 -pipe -g -feliminate-unused-debug-=
types -fcanon-prefix-map&nbsp; -fmacro-prefix-map=3D/home/projects/yocto/bu=
ild-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/git=3D/usr/src/deb=
ug/qtbase/6.7.0-r0&nbsp; -fdebug-prefix-map=3D/home/projects/yocto/build-ri=
scv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/git=3D/usr/src/debug/qtb=
ase/6.7.0-r0&nbsp; -fmacro-prefix-map=3D/home/projects/yocto/build-riscv/bu=
ild/tmp/work/riscv64-poky-linux/qtbase/6.7.0/build=3D/usr/src/debug/qtbase/=
6.7.0-r0&nbsp; -fdebug-prefix-map=3D/home/projects/yocto/build-riscv/build/=
tmp/work/riscv64-poky-linux/qtbase/6.7.0/build=3D/usr/src/debug/qtbase/6.7.=
0-r0&nbsp; -fdebug-prefix-map=3D/home/projects/yocto/build-riscv/build/tmp/=
work/riscv64-poky-linux/qtbase/6.7.0/recipe-sysroot=3D&nbsp; -fmacro-prefix=
-map=3D/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/q=
tbase/6.7.0/recipe-sysroot=3D&nbsp; -fdebug-prefix-map=3D/home/projects/yoc=
to/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/recipe-sysroo=
t-native=3D&nbsp;&nbsp; -fmacro-prefix-map=3D/home/projects/yocto/build-ris=
cv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/image=3D&nbsp; -fvisibili=
ty-inlines-hidden -DNDEBUG -O3 -std=3Dc++17 -fPIC -fvisibility=3Dhidden -fv=
isibility-inlines-hidden -Wall -Wextra -Wsuggest-override -Winvalid-pch -in=
clude /home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qt=
base/6.7.0/build/src/corelib/CMakeFiles/Core.dir/cmake_pch.hxx -MD -MT src/=
corelib/CMakeFiles/Core.dir/global/qlogging.cpp.o -MF src/corelib/CMakeFile=
s/Core.dir/global/qlogging.cpp.o.d -o src/corelib/CMakeFiles/Core.dir/globa=
l/qlogging.cpp.o -c /home/projects/yocto/build-riscv/build/tmp/work/riscv64=
-poky-linux/qtbase/6.7.0/git/src/corelib/global/qlogging.cpp<br />{standard=
 input}: Assembler messages:<br />{standard input}:6292: Error: unrecognize=
d opcode `pause', extension `zihintpause' required<br />{standard input}:66=
06: Error: unrecognized opcode `pause', extension `zihintpause' required<br=
 />{standard input}:7425: Error: unrecognized opcode `pause', extension `zi=
hintpause' required<br />{standard input}:7747: Error: unrecognized opcode =
`pause', extension `zihintpause' required

--ziFRS6e6XXQR7XSRIGEb--

