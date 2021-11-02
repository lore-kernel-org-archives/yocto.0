Return-Path: <vishal.rana118@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4469BC433EF
	for <webhook@archiver.kernel.org>; Tue,  2 Nov 2021 07:35:32 +0000 (UTC)
Subject: #swupdate integration error.
To: yocto@lists.yoctoproject.org
From: vishal.rana118@gmail.com
X-Originating-Location: Bengaluru, Karnataka, IN (49.207.223.193)
X-Originating-Platform: Windows Chrome 94
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 02 Nov 2021 00:35:31 -0700
Message-ID: <uHSc.1635838531127813783.MEhK@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Vgng33HeUK3t3WFmC05O"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 02 Nov 2021 07:35:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55208

--Vgng33HeUK3t3WFmC05O
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Team,

I am trying to integrated meta-Swupdate layer in my existing yocto code. Ge=
tting below ERROR.
I am very new to yocto and swupdate. So unable to debug it.

Loading cache: 100% |######################################################=
###########################################################################=
#######################################| Time: 0:00:01
Loaded 3352 entries from dependency cache.
Parsing recipes: 100% |####################################################=
###########################################################################=
#######################################| Time: 0:00:02
Parsing of 2455 .bb files complete (2450 cached, 5 parsed). 3357 targets, 4=
53 skipped, 6 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies
NOTE: Multiple providers are available for u-boot-fw-utils (u-boot-fw-utils=
, u-boot-fslc-fw-utils, u-boot-fslc-fw-utils-cross)
Consider defining a PREFERRED_PROVIDER entry to match u-boot-fw-utils

Build Configuration:
BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "1.38.0"
BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "x86_64-linux"
NATIVELSBSTRING=C2=A0 =C2=A0 =C2=A0 =3D "ubuntu-16.04"
TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "arm-poky-linux-gnue=
abi"
MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "imx6s-ccomgx-m=
otec"
DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "fsl-imx-f=
b"
DISTRO_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "4.14-sumo"
TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "arm armv7a vfp neon callconve=
ntion-hard cortexa9"
TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "hard"
meta
meta-poky
meta-oe
meta-multimedia
meta-freescale
meta-freescale-3rdparty
meta-freescale-distro
meta-ametek=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "<unknown>:<unknown>"
*meta-swupdate=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "sumo:f2d65d87485ada5a2d3a744=
fd7b9e46ec7e6b9f2"*
meta-bsp
meta-sdk
meta-browser
meta-networking
meta-python
meta-filesystems=C2=A0 =C2=A0 =C2=A0=3D "<unknown>:<unknown>"

Initialising tasks: 100% |#################################################=
###########################################################################=
#######################################| Time: 0:00:01
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: u-boot-fw-utils-1_2018.01-r0 do_compile: oe_runmake failed
ERROR: u-boot-fw-utils-1_2018.01-r0 do_compile: Function failed: do_compile=
 (log file is located at /home/motec/Graphics_Gx_Motec/Graphics_GX_MOTEC/BS=
P/yocto/build-motec/tmp/work/imx6s_ccomgx_motec-poky-linux-gnueabi/u-boot-f=
w-utils/1_2018.01-r0/temp/log.do_compile.3671)
ERROR: Logfile of failure stored in: /home/motec/Graphics_Gx_Motec/Graphics=
_GX_MOTEC/BSP/yocto/build-motec/tmp/work/imx6s_ccomgx_motec-poky-linux-gnue=
abi/u-boot-fw-utils/1_2018.01-r0/temp/log.do_compile.3671
Log data follows:
| DEBUG: Executing shell function do_compile
| NOTE: make -j 4 CROSS_COMPILE=3Darm-poky-linux-gnueabi- CC=3Darm-poky-lin=
ux-gnueabi-gcc=C2=A0 -march=3Darmv7-a -mfpu=3Dneon -mfloat-abi=3Dhard -mcpu=
=3Dcortex-a9 --sysroot=3D/home/motec/Graphics_Gx_Motec/Graphics_GX_MOTEC/BS=
P/yocto/build-motec/tmp/work/imx6s_ccomgx_motec-poky-linux-gnueabi/u-boot-f=
w-utils/1_2018.01-r0/recipe-sysroot=C2=A0 -O2 -pipe -g -feliminate-unused-d=
ebug-types -fdebug-prefix-map=3D/home/motec/Graphics_Gx_Motec/Graphics_GX_M=
OTEC/BSP/yocto/build-motec/tmp/work/imx6s_ccomgx_motec-poky-linux-gnueabi/u=
-boot-fw-utils/1_2018.01-r0=3D/usr/src/debug/u-boot-fw-utils/1_2018.01-r0 -=
fdebug-prefix-map=3D/home/motec/Graphics_Gx_Motec/Graphics_GX_MOTEC/BSP/yoc=
to/build-motec/tmp/work/imx6s_ccomgx_motec-poky-linux-gnueabi/u-boot-fw-uti=
ls/1_2018.01-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/home/motec/Graphics=
_Gx_Motec/Graphics_GX_MOTEC/BSP/yocto/build-motec/tmp/work/imx6s_ccomgx_mot=
ec-poky-linux-gnueabi/u-boot-fw-utils/1_2018.01-r0/recipe-sysroot-native=3D=
=C2=A0 -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed HOSTCC=3Dgcc=C2=A0 -i=
system/home/motec/Graphics_Gx_Motec/Graphics_GX_MOTEC/BSP/yocto/build-motec=
/tmp/work/imx6s_ccomgx_motec-poky-linux-gnueabi/u-boot-fw-utils/1_2018.01-r=
0/recipe-sysroot-native/usr/include -O2 -pipe -L/home/motec/Graphics_Gx_Mot=
ec/Graphics_GX_MOTEC/BSP/yocto/build-motec/tmp/work/imx6s_ccomgx_motec-poky=
-linux-gnueabi/u-boot-fw-utils/1_2018.01-r0/recipe-sysroot-native/usr/lib -=
L/home/motec/Graphics_Gx_Motec/Graphics_GX_MOTEC/BSP/yocto/build-motec/tmp/=
work/imx6s_ccomgx_motec-poky-linux-gnueabi/u-boot-fw-utils/1_2018.01-r0/rec=
ipe-sysroot-native/lib -Wl,-rpath-link,/home/motec/Graphics_Gx_Motec/Graphi=
cs_GX_MOTEC/BSP/yocto/build-motec/tmp/work/imx6s_ccomgx_motec-poky-linux-gn=
ueabi/u-boot-fw-utils/1_2018.01-r0/recipe-sysroot-native/usr/lib -Wl,-rpath=
-link,/home/motec/Graphics_Gx_Motec/Graphics_GX_MOTEC/BSP/yocto/build-motec=
/tmp/work/imx6s_ccomgx_motec-poky-linux-gnueabi/u-boot-fw-utils/1_2018.01-r=
0/recipe-sysroot-native/lib -Wl,-rpath,/home/motec/Graphics_Gx_Motec/Graphi=
cs_GX_MOTEC/BSP/yocto/build-motec/tmp/work/imx6s_ccomgx_motec-poky-linux-gn=
ueabi/u-boot-fw-utils/1_2018.01-r0/recipe-sysroot-native/usr/lib -Wl,-rpath=
,/home/motec/Graphics_Gx_Motec/Graphics_GX_MOTEC/BSP/yocto/build-motec/tmp/=
work/imx6s_ccomgx_motec-poky-linux-gnueabi/u-boot-fw-utils/1_2018.01-r0/rec=
ipe-sysroot-native/lib -Wl,-O1 V=3D1 ccomgx_config
| make -f ./scripts/Makefile.build obj=3Dscripts/basic
| rm -f .tmp_quiet_recordmcount
| make -f ./scripts/Makefile.build obj=3Dscripts/kconfig ccomgx_config
| scripts/kconfig/conf=C2=A0 --defconfig=3Darch/../configs/ccomgx_defconfig=
 Kconfig
| ***
| *** Can't find default configuration "arch/../configs/ccomgx_defconfig"!
| ***
| scripts/kconfig/Makefile:121: recipe for target 'ccomgx_defconfig' failed
| make[1]: *** [ccomgx_defconfig] Error 1
| Makefile:479: recipe for target 'ccomgx_config' failed
| make: *** [ccomgx_config] Error 2
| ERROR: oe_runmake failed
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_compile (log file is located at /home/motec/Gr=
aphics_Gx_Motec/Graphics_GX_MOTEC/BSP/yocto/build-motec/tmp/work/imx6s_ccom=
gx_motec-poky-linux-gnueabi/u-boot-fw-utils/1_2018.01-r0/temp/log.do_compil=
e.3671)
ERROR: Task (/home/motec/Graphics_Gx_Motec/Graphics_GX_MOTEC/BSP/yocto/sour=
ces/poky/meta/recipes-bsp/u-boot/u-boot-fw-utils_2018.01.bb:do_compile) fai=
led with exit code '1'
NOTE: Tasks Summary: Attempted 1460 tasks of which 1459 didn't need to be r=
erun and 1 failed.

Summary: 1 task failed:
/home/motec/Graphics_Gx_Motec/Graphics_GX_MOTEC/BSP/yocto/sources/poky/meta=
/recipes-bsp/u-boot/u-boot-fw-utils_2018.01.bb:do_compile
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.

--Vgng33HeUK3t3WFmC05O
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi Team,<br /><br />I am trying to integrated meta-Swupdate layer in m=
y existing yocto code. Getting below ERROR.<br />I am very new to yocto and=
 swupdate. So unable to debug it.<br /><br /><br />Loading cache: 100% |###=
###########################################################################=
###########################################################################=
###############| Time: 0:00:01</div>
<div>Loaded 3352 entries from dependency cache.</div>
<div>Parsing recipes: 100% |###############################################=
###########################################################################=
############################################| Time: 0:00:02</div>
<div>Parsing of 2455 .bb files complete (2450 cached, 5 parsed). 3357 targe=
ts, 453 skipped, 6 masked, 0 errors.</div>
<div>NOTE: Resolving any missing task queue dependencies</div>
<div>NOTE: Multiple providers are available for u-boot-fw-utils (u-boot-fw-=
utils, u-boot-fslc-fw-utils, u-boot-fslc-fw-utils-cross)</div>
<div>Consider defining a PREFERRED_PROVIDER entry to match u-boot-fw-utils<=
/div>
<div>&nbsp;</div>
<div>Build Configuration:</div>
<div>BB_VERSION&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D "1.38.0"</div>
<div>BUILD_SYS&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D "x86_64-linux"<=
/div>
<div>NATIVELSBSTRING&nbsp; &nbsp; &nbsp; =3D "ubuntu-16.04"</div>
<div>TARGET_SYS&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D "arm-poky-linux=
-gnueabi"</div>
<div>MACHINE&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D "imx6s-cco=
mgx-motec"</div>
<div>DISTRO&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D "fsl-=
imx-fb"</div>
<div>DISTRO_VERSION&nbsp; &nbsp; &nbsp; &nbsp;=3D "4.14-sumo"</div>
<div>TUNE_FEATURES&nbsp; &nbsp; &nbsp; &nbsp; =3D "arm armv7a vfp neon call=
convention-hard cortexa9"</div>
<div>TARGET_FPU&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D "hard"</div>
<div>meta&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</di=
v>
<div>meta-poky&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</div>
<div>meta-oe&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</div>
<div>meta-multimedia&nbsp; &nbsp; &nbsp;&nbsp;</div>
<div>meta-freescale&nbsp; &nbsp; &nbsp; &nbsp;</div>
<div>meta-freescale-3rdparty&nbsp;</div>
<div>meta-freescale-distro&nbsp;</div>
<div>meta-ametek&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D "&lt;unknown&gt;:&lt=
;unknown&gt;"</div>
<div><strong>meta-swupdate&nbsp; &nbsp; &nbsp; &nbsp; =3D "sumo:f2d65d87485=
ada5a2d3a744fd7b9e46ec7e6b9f2"</strong></div>
<div>meta-bsp&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</div>
<div>meta-sdk&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</div>
<div>meta-browser&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</div>
<div>meta-networking&nbsp; &nbsp; &nbsp;&nbsp;</div>
<div>meta-python&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</div>
<div>meta-filesystems&nbsp; &nbsp; &nbsp;=3D "&lt;unknown&gt;:&lt;unknown&g=
t;"</div>
<div>&nbsp;</div>
<div>Initialising tasks: 100% |############################################=
###########################################################################=
############################################| Time: 0:00:01</div>
<div>NOTE: Executing SetScene Tasks</div>
<div>NOTE: Executing RunQueue Tasks</div>
<div>ERROR: u-boot-fw-utils-1_2018.01-r0 do_compile: oe_runmake failed</div=
>
<div>ERROR: u-boot-fw-utils-1_2018.01-r0 do_compile: Function failed: do_co=
mpile (log file is located at /home/motec/Graphics_Gx_Motec/Graphics_GX_MOT=
EC/BSP/yocto/build-motec/tmp/work/imx6s_ccomgx_motec-poky-linux-gnueabi/u-b=
oot-fw-utils/1_2018.01-r0/temp/log.do_compile.3671)</div>
<div>ERROR: Logfile of failure stored in: /home/motec/Graphics_Gx_Motec/Gra=
phics_GX_MOTEC/BSP/yocto/build-motec/tmp/work/imx6s_ccomgx_motec-poky-linux=
-gnueabi/u-boot-fw-utils/1_2018.01-r0/temp/log.do_compile.3671</div>
<div>Log data follows:</div>
<div>| DEBUG: Executing shell function do_compile</div>
<div>| NOTE: make -j 4 CROSS_COMPILE=3Darm-poky-linux-gnueabi- CC=3Darm-pok=
y-linux-gnueabi-gcc&nbsp; -march=3Darmv7-a -mfpu=3Dneon -mfloat-abi=3Dhard =
-mcpu=3Dcortex-a9 --sysroot=3D/home/motec/Graphics_Gx_Motec/Graphics_GX_MOT=
EC/BSP/yocto/build-motec/tmp/work/imx6s_ccomgx_motec-poky-linux-gnueabi/u-b=
oot-fw-utils/1_2018.01-r0/recipe-sysroot&nbsp; -O2 -pipe -g -feliminate-unu=
sed-debug-types -fdebug-prefix-map=3D/home/motec/Graphics_Gx_Motec/Graphics=
_GX_MOTEC/BSP/yocto/build-motec/tmp/work/imx6s_ccomgx_motec-poky-linux-gnue=
abi/u-boot-fw-utils/1_2018.01-r0=3D/usr/src/debug/u-boot-fw-utils/1_2018.01=
-r0 -fdebug-prefix-map=3D/home/motec/Graphics_Gx_Motec/Graphics_GX_MOTEC/BS=
P/yocto/build-motec/tmp/work/imx6s_ccomgx_motec-poky-linux-gnueabi/u-boot-f=
w-utils/1_2018.01-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/home/motec/Gra=
phics_Gx_Motec/Graphics_GX_MOTEC/BSP/yocto/build-motec/tmp/work/imx6s_ccomg=
x_motec-poky-linux-gnueabi/u-boot-fw-utils/1_2018.01-r0/recipe-sysroot-nati=
ve=3D&nbsp; -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed HOSTCC=3Dgcc&nbs=
p; -isystem/home/motec/Graphics_Gx_Motec/Graphics_GX_MOTEC/BSP/yocto/build-=
motec/tmp/work/imx6s_ccomgx_motec-poky-linux-gnueabi/u-boot-fw-utils/1_2018=
.01-r0/recipe-sysroot-native/usr/include -O2 -pipe -L/home/motec/Graphics_G=
x_Motec/Graphics_GX_MOTEC/BSP/yocto/build-motec/tmp/work/imx6s_ccomgx_motec=
-poky-linux-gnueabi/u-boot-fw-utils/1_2018.01-r0/recipe-sysroot-native/usr/=
lib -L/home/motec/Graphics_Gx_Motec/Graphics_GX_MOTEC/BSP/yocto/build-motec=
/tmp/work/imx6s_ccomgx_motec-poky-linux-gnueabi/u-boot-fw-utils/1_2018.01-r=
0/recipe-sysroot-native/lib -Wl,-rpath-link,/home/motec/Graphics_Gx_Motec/G=
raphics_GX_MOTEC/BSP/yocto/build-motec/tmp/work/imx6s_ccomgx_motec-poky-lin=
ux-gnueabi/u-boot-fw-utils/1_2018.01-r0/recipe-sysroot-native/usr/lib -Wl,-=
rpath-link,/home/motec/Graphics_Gx_Motec/Graphics_GX_MOTEC/BSP/yocto/build-=
motec/tmp/work/imx6s_ccomgx_motec-poky-linux-gnueabi/u-boot-fw-utils/1_2018=
.01-r0/recipe-sysroot-native/lib -Wl,-rpath,/home/motec/Graphics_Gx_Motec/G=
raphics_GX_MOTEC/BSP/yocto/build-motec/tmp/work/imx6s_ccomgx_motec-poky-lin=
ux-gnueabi/u-boot-fw-utils/1_2018.01-r0/recipe-sysroot-native/usr/lib -Wl,-=
rpath,/home/motec/Graphics_Gx_Motec/Graphics_GX_MOTEC/BSP/yocto/build-motec=
/tmp/work/imx6s_ccomgx_motec-poky-linux-gnueabi/u-boot-fw-utils/1_2018.01-r=
0/recipe-sysroot-native/lib -Wl,-O1 V=3D1 ccomgx_config</div>
<div>| make -f ./scripts/Makefile.build obj=3Dscripts/basic</div>
<div>| rm -f .tmp_quiet_recordmcount</div>
<div>| make -f ./scripts/Makefile.build obj=3Dscripts/kconfig ccomgx_config=
</div>
<div>| scripts/kconfig/conf&nbsp; --defconfig=3Darch/../configs/ccomgx_defc=
onfig Kconfig</div>
<div>| ***</div>
<div>| *** Can't find default configuration "arch/../configs/ccomgx_defconf=
ig"!</div>
<div>| ***</div>
<div>| scripts/kconfig/Makefile:121: recipe for target 'ccomgx_defconfig' f=
ailed</div>
<div>| make[1]: *** [ccomgx_defconfig] Error 1</div>
<div>| Makefile:479: recipe for target 'ccomgx_config' failed</div>
<div>| make: *** [ccomgx_config] Error 2</div>
<div>| ERROR: oe_runmake failed</div>
<div>| WARNING: exit code 1 from a shell command.</div>
<div>| ERROR: Function failed: do_compile (log file is located at /home/mot=
ec/Graphics_Gx_Motec/Graphics_GX_MOTEC/BSP/yocto/build-motec/tmp/work/imx6s=
_ccomgx_motec-poky-linux-gnueabi/u-boot-fw-utils/1_2018.01-r0/temp/log.do_c=
ompile.3671)</div>
<div>ERROR: Task (/home/motec/Graphics_Gx_Motec/Graphics_GX_MOTEC/BSP/yocto=
/sources/poky/meta/recipes-bsp/u-boot/u-boot-fw-utils_2018.01.bb:do_compile=
) failed with exit code '1'</div>
<div>NOTE: Tasks Summary: Attempted 1460 tasks of which 1459 didn't need to=
 be rerun and 1 failed.</div>
<div>&nbsp;</div>
<div>Summary: 1 task failed:</div>
<div>&nbsp; /home/motec/Graphics_Gx_Motec/Graphics_GX_MOTEC/BSP/yocto/sourc=
es/poky/meta/recipes-bsp/u-boot/u-boot-fw-utils_2018.01.bb:do_compile</div>
<div>Summary: There were 2 ERROR messages shown, returning a non-zero exit =
code.<br /><br /><br /><br /></div>
<div>&nbsp;</div>

--Vgng33HeUK3t3WFmC05O--

