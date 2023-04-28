Return-Path: <electronicconsult1@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAB42C77B61
	for <webhook@archiver.kernel.org>; Fri, 28 Apr 2023 15:07:59 +0000 (UTC)
Subject: Autotools build failure #kirkstone #autotools
To: yocto@lists.yoctoproject.org
From: "Electronic Consult" <electronicconsult1@gmail.com>
X-Originating-Location: Dublin, Leinster, IE (188.141.96.236)
X-Originating-Platform: Linux Firefox 112
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 28 Apr 2023 08:07:50 -0700
Message-ID: <U9j3.1682694470277605351.STUE@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="LASS7i3gXWNl6uSrG8AC"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 28 Apr 2023 15:07:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59817

--LASS7i3gXWNl6uSrG8AC
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello all,

I'm moving my build from Dunfell to Kirkstone & an issue with gstreamer1.0-=
plugins-hantro ( https://github.com/linux4sam/meta-atmel/tree/kirkstone/rec=
ipes-multimedia/gstreamer1.0-plugins ) has cropped up. This recipe inherits=
 autotools-brokensep.

During the build I initially got:

autoreconf: running: aclocal --system-acdir=3D/media/owen/yocto/meritechYoc=
to/poky/build-microchip/tmp/work/cortexa5t2hf-neon-vfpv4-poky-linux-gnueabi=
/gstreamer1.0-plugins-hantro/1.8-r0/recipe-sysroot/usr/share/aclocal/ --aut=
omake-acdir=3D/media/owen/yocto/meritechYocto/poky/build-microchip/tmp/work=
/cortexa5t2hf-neon-vfpv4-poky-linux-gnueabi/gstreamer1.0-plugins-hantro/1.8=
-r0/recipe-sysroot-native/usr/share/aclocal-1.16 -I /media/owen/yocto/merit=
echYocto/poky/build-microchip/tmp/work/cortexa5t2hf-neon-vfpv4-poky-linux-g=
nueabi/gstreamer1.0-plugins-hantro/1.8-r0/git/m4/ -I /media/owen/yocto/meri=
techYocto/poky/build-microchip/tmp/work/cortexa5t2hf-neon-vfpv4-poky-linux-=
gnueabi/gstreamer1.0-plugins-hantro/1.8-r0/recipe-sysroot-native/usr/share/=
aclocal/ --force -I m4 -I common/m4
NOTE: elfutils-0.186-r0 do_package_write_ipk: libc6-dbg rprovides glibc-dbg=
, not replacing the latter
NOTE: elfutils-0.186-r0 do_package_write_ipk: libgcc-s-dbg rprovides libgcc=
-dbg, not replacing the latter
NOTE: elfutils-0.186-r0 do_package_write_ipk: libz-dbg rprovides zlib-dbg, =
not replacing the latter
*aclocal: error: couldn't open directory 'common/m4': No such file or direc=
tory*
autoreconf: error: aclocal failed with exit status: 1
ERROR: gstreamer1.0-plugins-hantro-1.8-r0 do_configure: autoreconf executio=
n failed.
WARNING: exit code 1 from a shell command.

I added the directory common/m4 & on the next run I get:

autoreconf: running: /media/owen/yocto/meritechYocto/poky/build-microchip/t=
mp/work/cortexa5t2hf-neon-vfpv4-poky-linux-gnueabi/gstreamer1.0-plugins-han=
tro/1.8-r0/recipe-sysroot-native/usr/bin/autoconf --include=3D/media/owen/y=
octo/meritechYocto/poky/build-microchip/tmp/work/cortexa5t2hf-neon-vfpv4-po=
ky-linux-gnueabi/gstreamer1.0-plugins-hantro/1.8-r0/git/m4/ --include=3D/me=
dia/owen/yocto/meritechYocto/poky/build-microchip/tmp/work/cortexa5t2hf-neo=
n-vfpv4-poky-linux-gnueabi/gstreamer1.0-plugins-hantro/1.8-r0/recipe-sysroo=
t-native/usr/share/aclocal/ --force
configure.ac:16: error: possibly undefined macro: AS_VERSION
If this token and others are legitimate, please use m4_pattern_allow.
See the Autoconf documentation.
configure.ac:19: error: possibly undefined macro: AS_NANO
configure.ac:46: error: possibly undefined macro: AS_LIBTOOL
configure.ac:55: error: possibly undefined macro: AS_AUTOTOOLS_ALTERNATE
configure.ac:127: error: possibly undefined macro: AS_PATH_PYTHON
configure.ac:154: error: possibly undefined macro: PKG_CHECK_MODULES
autoreconf: error: /media/owen/yocto/meritechYocto/poky/build-microchip/tmp=
/work/cortexa5t2hf-neon-vfpv4-poky-linux-gnueabi/gstreamer1.0-plugins-hantr=
o/1.8-r0/recipe-sysroot-native/usr/bin/autoconf failed with exit status: 1
ERROR: gstreamer1.0-plugins-hantro-1.8-r0 do_configure: autoreconf executio=
n failed.
WARNING: exit code 1 from a shell command.
+ die autoreconf execution failed.
+ bbfatal_log autoreconf execution failed.
+ [ -p /media/owen/yocto/meritechYocto/poky/build-microchip/tmp/work/cortex=
a5t2hf-neon-vfpv4-poky-linux-gnueabi/gstreamer1.0-plugins-hantro/1.8-r0/tem=
p/fifo.20217 ]
+ printf %b\0 bbfatal_log autoreconf execution failed.
+ exit 1
+ bb_sh_exit_handler
+ ret=3D1
+ [ 1 !=3D 0 ]
+ echo WARNING: exit code 1 from a shell command.
+ exit 1
ERROR: gstreamer1.0-plugins-hantro-1.8-r0 do_configure: ExecutionError('/me=
dia/owen/yocto/meritechYocto/poky/build-microchip/tmp/work/cortexa5t2hf-neo=
n-vfpv4-poky-linux-gnueabi/gstreamer1.0-plugins-hantro/1.8-r0/temp/run.do_c=
onfigure.20217', 1, None, None)
ERROR: Logfile of failure stored in: /media/owen/yocto/meritechYocto/poky/b=
uild-microchip/tmp/work/cortexa5t2hf-neon-vfpv4-poky-linux-gnueabi/gstreame=
r1.0-plugins-hantro/1.8-r0/temp/log.do_configure.20217
ERROR: Task (/media/owen/yocto/meritechYocto/poky/../meta-atmel/recipes-mul=
timedia/gstreamer1.0-plugins/gstreamer1.0-plugins-hantro_1.8.bb:do_configur=
e) failed with exit code '1'

I suspect there is something not properly configured in autotools & some ch=
ange has occured from Dunfell -> Kirkstone. Can anyone provide any pointers=
 please?

My build configuration is below.

Regards,

Owen

Build Configuration:
BB_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D =
"2.0.0"
BUILD_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 =3D "x86_64-linux"
NATIVELSBSTRING=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "universal"
TARGET_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D =
"arm-poky-linux-gnueabi"
MACHINE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 =3D "sama5d4-trinity-sd"
DISTRO=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 =3D "poky-atmel"
DISTRO_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "4.0.9"
TUNE_FEATURES=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "arm vfp cortex=
a5 neon vfpv4 thumb callconvention-hard"
TARGET_FPU=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D =
"hard"
meta
meta-poky
meta-yocto-bsp=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "kirkstone:4cc0e9438=
b450b43749730e128b6b9adb30f9663"
meta-oe
meta-networking
meta-webserver
meta-python
meta-initramfs=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "kirkstone:571e36e20=
e9d1f27af0eb4545291beeb64f280e2"
meta-atmel=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D =
"kirkstone:cf920cc40b4ff61dfc33410605bc8f94ab9b88dd"
meta-multimedia=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "kirkstone:571e36e20e9d1f=
27af0eb4545291beeb64f280e2"
meta-arm
meta-arm-toolchain=C2=A0=C2=A0 =3D "kirkstone:96aad3b29aa7a5ee4df5cf617a633=
6e5218fa9bd"
meta-swupdate=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "master:4b99b93=
b4225723cf9ff3a29abb4bd7811ce071c"

--LASS7i3gXWNl6uSrG8AC
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello all,<br /><br />I'm moving my build from Dunfell to Kirkstone &amp; a=
n issue with <a href=3D"https://github.com/linux4sam/meta-atmel/tree/kirkst=
one/recipes-multimedia/gstreamer1.0-plugins" target=3D"_blank" rel=3D"noope=
ner">gstreamer1.0-plugins-hantro</a> has cropped up. This recipe inherits a=
utotools-brokensep.<br /><br />During the build I initially got:<br /><br /=
>autoreconf: running: aclocal --system-acdir=3D/media/owen/yocto/meritechYo=
cto/poky/build-microchip/tmp/work/cortexa5t2hf-neon-vfpv4-poky-linux-gnueab=
i/gstreamer1.0-plugins-hantro/1.8-r0/recipe-sysroot/usr/share/aclocal/ --au=
tomake-acdir=3D/media/owen/yocto/meritechYocto/poky/build-microchip/tmp/wor=
k/cortexa5t2hf-neon-vfpv4-poky-linux-gnueabi/gstreamer1.0-plugins-hantro/1.=
8-r0/recipe-sysroot-native/usr/share/aclocal-1.16 -I /media/owen/yocto/meri=
techYocto/poky/build-microchip/tmp/work/cortexa5t2hf-neon-vfpv4-poky-linux-=
gnueabi/gstreamer1.0-plugins-hantro/1.8-r0/git/m4/ -I /media/owen/yocto/mer=
itechYocto/poky/build-microchip/tmp/work/cortexa5t2hf-neon-vfpv4-poky-linux=
-gnueabi/gstreamer1.0-plugins-hantro/1.8-r0/recipe-sysroot-native/usr/share=
/aclocal/ --force -I m4 -I common/m4<br />NOTE: elfutils-0.186-r0 do_packag=
e_write_ipk: libc6-dbg rprovides glibc-dbg, not replacing the latter<br />N=
OTE: elfutils-0.186-r0 do_package_write_ipk: libgcc-s-dbg rprovides libgcc-=
dbg, not replacing the latter<br />NOTE: elfutils-0.186-r0 do_package_write=
_ipk: libz-dbg rprovides zlib-dbg, not replacing the latter<br /><strong>ac=
local: error: couldn't open directory 'common/m4': No such file or director=
y</strong><br />autoreconf: error: aclocal failed with exit status: 1<br />=
ERROR: gstreamer1.0-plugins-hantro-1.8-r0 do_configure: autoreconf executio=
n failed.<br />WARNING: exit code 1 from a shell command.<br /><br />I adde=
d the directory common/m4 &amp; on the next run I get:<br /><br />autorecon=
f: running: /media/owen/yocto/meritechYocto/poky/build-microchip/tmp/work/c=
ortexa5t2hf-neon-vfpv4-poky-linux-gnueabi/gstreamer1.0-plugins-hantro/1.8-r=
0/recipe-sysroot-native/usr/bin/autoconf --include=3D/media/owen/yocto/meri=
techYocto/poky/build-microchip/tmp/work/cortexa5t2hf-neon-vfpv4-poky-linux-=
gnueabi/gstreamer1.0-plugins-hantro/1.8-r0/git/m4/ --include=3D/media/owen/=
yocto/meritechYocto/poky/build-microchip/tmp/work/cortexa5t2hf-neon-vfpv4-p=
oky-linux-gnueabi/gstreamer1.0-plugins-hantro/1.8-r0/recipe-sysroot-native/=
usr/share/aclocal/ --force<br />configure.ac:16: error: possibly undefined =
macro: AS_VERSION<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; If this token and oth=
ers are legitimate, please use m4_pattern_allow.<br />&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; See the Autoconf documentation.<br />configure.ac:19: error: poss=
ibly undefined macro: AS_NANO<br />configure.ac:46: error: possibly undefin=
ed macro: AS_LIBTOOL<br />configure.ac:55: error: possibly undefined macro:=
 AS_AUTOTOOLS_ALTERNATE<br />configure.ac:127: error: possibly undefined ma=
cro: AS_PATH_PYTHON<br />configure.ac:154: error: possibly undefined macro:=
 PKG_CHECK_MODULES<br />autoreconf: error: /media/owen/yocto/meritechYocto/=
poky/build-microchip/tmp/work/cortexa5t2hf-neon-vfpv4-poky-linux-gnueabi/gs=
treamer1.0-plugins-hantro/1.8-r0/recipe-sysroot-native/usr/bin/autoconf fai=
led with exit status: 1<br />ERROR: gstreamer1.0-plugins-hantro-1.8-r0 do_c=
onfigure: autoreconf execution failed.<br />WARNING: exit code 1 from a she=
ll command.<br />+ die autoreconf execution failed.<br />+ bbfatal_log auto=
reconf execution failed.<br />+ [ -p /media/owen/yocto/meritechYocto/poky/b=
uild-microchip/tmp/work/cortexa5t2hf-neon-vfpv4-poky-linux-gnueabi/gstreame=
r1.0-plugins-hantro/1.8-r0/temp/fifo.20217 ]<br />+ printf %b\0 bbfatal_log=
 autoreconf execution failed.<br />+ exit 1<br />+ bb_sh_exit_handler<br />=
+ ret=3D1<br />+ [ 1 !=3D 0 ]<br />+ echo WARNING: exit code 1 from a shell=
 command.<br />+ exit 1<br />ERROR: gstreamer1.0-plugins-hantro-1.8-r0 do_c=
onfigure: ExecutionError('/media/owen/yocto/meritechYocto/poky/build-microc=
hip/tmp/work/cortexa5t2hf-neon-vfpv4-poky-linux-gnueabi/gstreamer1.0-plugin=
s-hantro/1.8-r0/temp/run.do_configure.20217', 1, None, None)<br />ERROR: Lo=
gfile of failure stored in: /media/owen/yocto/meritechYocto/poky/build-micr=
ochip/tmp/work/cortexa5t2hf-neon-vfpv4-poky-linux-gnueabi/gstreamer1.0-plug=
ins-hantro/1.8-r0/temp/log.do_configure.20217<br />ERROR: Task (/media/owen=
/yocto/meritechYocto/poky/../meta-atmel/recipes-multimedia/gstreamer1.0-plu=
gins/gstreamer1.0-plugins-hantro_1.8.bb:do_configure) failed with exit code=
 '1'<br /><br />I suspect there is something not properly configured in aut=
otools &amp; some change has occured from Dunfell -&gt; Kirkstone. Can anyo=
ne provide any pointers please?<br /><br />My build configuration is below.=
<br /><br />Regards,<br /><br />Owen<br /><br /><br />Build Configuration:<=
br />BB_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 =3D "2.0.0"<br />BUILD_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; =3D "x86_64-linux"<br />NATIVELSBSTRING&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; =3D "universal"<br />TARGET_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "arm-poky-linux-gnueabi"<br />MACHINE&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 =3D "sama5d4-trinity-sd"<br />DISTRO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "poky-atmel"<br />DISTRO=
_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "4.0.9"<br />TUNE_FEATURES=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "arm vfp cortexa5 neon vfpv4=
 thumb callconvention-hard"<br />TARGET_FPU&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "hard"<br />meta&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br =
/>meta-poky&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nb=
sp;<br />meta-yocto-bsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "kirkstone:=
4cc0e9438b450b43749730e128b6b9adb30f9663"<br />meta-oe&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br />meta-networ=
king&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br />meta-webserver&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; &nbsp;<br />meta-python&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; &nbsp;<br />meta-initramfs&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D =
"kirkstone:571e36e20e9d1f27af0eb4545291beeb64f280e2"<br />meta-atmel&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "kirkstone:cf920c=
c40b4ff61dfc33410605bc8f94ab9b88dd"<br />meta-multimedia&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; =3D "kirkstone:571e36e20e9d1f27af0eb4545291beeb64f280e2"<br />m=
eta-arm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &=
nbsp;<br />meta-arm-toolchain&nbsp;&nbsp; =3D "kirkstone:96aad3b29aa7a5ee4d=
f5cf617a6336e5218fa9bd"<br />meta-swupdate&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; =3D "master:4b99b93b4225723cf9ff3a29abb4bd7811ce071c"

--LASS7i3gXWNl6uSrG8AC--

