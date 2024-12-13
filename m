Return-Path: <rajesh.d@mindteck.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3A4BE7717F
	for <webhook@archiver.kernel.org>; Fri, 13 Dec 2024 11:09:32 +0000 (UTC)
Subject: Re: [yocto] issue while adding spinnaker package to Yocto build for core-image-sato
To: "Gyorgy Sarvari" <skandigraun@gmail.com>, yocto@lists.yoctoproject.org
From: rajesh.d@mindteck.com
X-Originating-Location: Bengaluru, Karnataka, IN (14.142.4.2)
X-Originating-Platform: Linux Chrome 131
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 13 Dec 2024 03:09:30 -0800
References: <2440ad33-31a5-4396-b12c-18852d437704@gmail.com>
In-Reply-To: <2440ad33-31a5-4396-b12c-18852d437704@gmail.com>
Message-ID: <6917.1734088170203071321@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="OQ4WOvfwnRAM69iOBzbE"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 13 Dec 2024 11:09:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64443

--OQ4WOvfwnRAM69iOBzbE
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

hi Gyorgy Sarvari

After following this https://github.com/ros/meta-ros/pull/1269 i encounterd=
 with new error *yaml-cpp-vendor-9.1.0-1-r0 do_compile: ExecutionError*

Loading cache: 100% |######################################################=
###########################################################################=
######################################| Time: 0:00:00
Loaded 6094 entries from dependency cache.
NOTE: Resolving any missing task queue dependencies
Build Configuration:
BB_VERSION =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "2.0.0"
BUILD_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "x86_64-linux"
NATIVELSBSTRING =C2=A0 =C2=A0 =C2=A0=3D "universal"
TARGET_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "x86_64-poky-linux"
MACHINE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "genericx86-64"
DISTRO =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "poky"
DISTRO_VERSION =C2=A0 =C2=A0 =C2=A0 =3D "4.0.23"
TUNE_FEATURES =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "m64 core2"
TARGET_FPU =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D ""
DISTRO_NAME =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "Poky (Yocto Project Refe=
rence Distro)"
ROS_DISTRO =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "rolling"
ROS_VERSION =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "2"
ROS_PYTHON_VERSION =C2=A0 =3D "3"
meta =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "kirkstone=
:13b13b81b91f618c13cf972067c47bd810de852f"
meta-poky
meta-yocto-bsp =C2=A0 =C2=A0 =C2=A0 =3D "HEAD:0bffb5eed1e8c9469b9c6e0d77f95=
9dc9ade9c6a"
meta-intel =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "HEAD:8514c60ac1a9a17ba20=
b17fa176119728a91dcf9"
meta-oe
meta-python
meta-multimedia
meta-networking
meta-filesystems =C2=A0 =C2=A0 =3D "kirkstone:4ad41baed6236d499804cbfc4f174=
042d84fce97"
meta-qt5 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "HEAD:644ebf220245bd=
c06e7696ccc90acc97a0dd2566"
meta-freescale =C2=A0 =C2=A0 =C2=A0 =3D "HEAD:c525e0c19bdc46d45f71873b5f286=
f49abb69418"
meta-freescale-distro =3D "HEAD:d5bbb487b2816dfc74984a78b67f7361ce404253"
meta-ros-common
meta-ros2-rolling
meta-ros2 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "kirkstone:72f70f7c1=
147197bd1e447c03187628b4b62a738"
Initialising tasks: 100% |#################################################=
###########################################################################=
######################################| Time: 0:00:04
Sstate summary: Wanted 649 Local 7 Mirrors 0 Missed 642 Current 3634 (1% ma=
tch, 85% complete)
NOTE: Executing Tasks
ERROR: yaml-cpp-vendor-9.1.0-1-r0 do_compile: ExecutionError('/home/user/Mi=
ndteck_Projects/Irilic/kirkstone_yocto_AIMB288E/build/tmp/work/core2-64-pok=
y-linux/yaml-cpp-vendor/9.1.0-1-r0/temp/run.do_compile.128679', 1, None, No=
ne)
ERROR: Logfile of failure stored in: /home/user/Mindteck_Projects/Irilic/ki=
rkstone_yocto_AIMB288E/build/tmp/work/core2-64-poky-linux/yaml-cpp-vendor/9=
.1.0-1-r0/temp/log.do_compile.128679
Log data follows:
| DEBUG: Executing shell function do_compile
| NOTE: VERBOSE=3D1 cmake --build /home/user/Mindteck_Projects/Irilic/kirks=
tone_yocto_AIMB288E/build/tmp/work/core2-64-poky-linux/yaml-cpp-vendor/9.1.=
0-1-r0/build --target all --
| [1/6] cd /home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/bui=
ld/tmp/work/core2-64-poky-linux/yaml-cpp-vendor/9.1.0-1-r0/build/yaml_cpp_v=
endor-prefix/src && /home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIM=
B288E/build/tmp/work/core2-64-poky-linux/yaml-cpp-vendor/9.1.0-1-r0/recipe-=
sysroot-native/usr/bin/cmake -E rm -rf /home/user/Mindteck_Projects/Irilic/=
kirkstone_yocto_AIMB288E/build/tmp/work/core2-64-poky-linux/yaml-cpp-vendor=
/9.1.0-1-r0/build/yaml_cpp_vendor-prefix/src/yaml_cpp_vendor && /home/user/=
Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/build/tmp/work/core2-64-p=
oky-linux/yaml-cpp-vendor/9.1.0-1-r0/recipe-sysroot-native/usr/bin/cmake -E=
 make_directory /home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288=
E/build/tmp/work/core2-64-poky-linux/yaml-cpp-vendor/9.1.0-1-r0/build/yaml_=
cpp_vendor-prefix/src/yaml_cpp_vendor && /home/user/Mindteck_Projects/Irili=
c/kirkstone_yocto_AIMB288E/build/tmp/work/core2-64-poky-linux/yaml-cpp-vend=
or/9.1.0-1-r0/recipe-sysroot-native/usr/bin/vcs import . --input /home/user=
/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/build/tmp/work/core2-64-=
poky-linux/yaml-cpp-vendor/9.1.0-1-r0/build/yaml_cpp_vendor.repos --shallow=
 --recursive --force && /home/user/Mindteck_Projects/Irilic/kirkstone_yocto=
_AIMB288E/build/tmp/work/core2-64-poky-linux/yaml-cpp-vendor/9.1.0-1-r0/rec=
ipe-sysroot-native/usr/bin/cmake -E touch /home/user/Mindteck_Projects/Iril=
ic/kirkstone_yocto_AIMB288E/build/tmp/work/core2-64-poky-linux/yaml-cpp-ven=
dor/9.1.0-1-r0/build/yaml_cpp_vendor-prefix/src/yaml_cpp_vendor-stamp/yaml_=
cpp_vendor-download
| FAILED: yaml_cpp_vendor-prefix/src/yaml_cpp_vendor-stamp/yaml_cpp_vendor-=
download /home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/build=
/tmp/work/core2-64-poky-linux/yaml-cpp-vendor/9.1.0-1-r0/build/yaml_cpp_ven=
dor-prefix/src/yaml_cpp_vendor-stamp/yaml_cpp_vendor-download
| cd /home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/build/tmp=
/work/core2-64-poky-linux/yaml-cpp-vendor/9.1.0-1-r0/build/yaml_cpp_vendor-=
prefix/src && /home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/=
build/tmp/work/core2-64-poky-linux/yaml-cpp-vendor/9.1.0-1-r0/recipe-sysroo=
t-native/usr/bin/cmake -E rm -rf /home/user/Mindteck_Projects/Irilic/kirkst=
one_yocto_AIMB288E/build/tmp/work/core2-64-poky-linux/yaml-cpp-vendor/9.1.0=
-1-r0/build/yaml_cpp_vendor-prefix/src/yaml_cpp_vendor && /home/user/Mindte=
ck_Projects/Irilic/kirkstone_yocto_AIMB288E/build/tmp/work/core2-64-poky-li=
nux/yaml-cpp-vendor/9.1.0-1-r0/recipe-sysroot-native/usr/bin/cmake -E make_=
directory /home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/buil=
d/tmp/work/core2-64-poky-linux/yaml-cpp-vendor/9.1.0-1-r0/build/yaml_cpp_ve=
ndor-prefix/src/yaml_cpp_vendor && /home/user/Mindteck_Projects/Irilic/kirk=
stone_yocto_AIMB288E/build/tmp/work/core2-64-poky-linux/yaml-cpp-vendor/9.1=
.0-1-r0/recipe-sysroot-native/usr/bin/vcs import . --input /home/user/Mindt=
eck_Projects/Irilic/kirkstone_yocto_AIMB288E/build/tmp/work/core2-64-poky-l=
inux/yaml-cpp-vendor/9.1.0-1-r0/build/yaml_cpp_vendor.repos --shallow --rec=
ursive --force && /home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB2=
88E/build/tmp/work/core2-64-poky-linux/yaml-cpp-vendor/9.1.0-1-r0/recipe-sy=
sroot-native/usr/bin/cmake -E touch /home/user/Mindteck_Projects/Irilic/kir=
kstone_yocto_AIMB288E/build/tmp/work/core2-64-poky-linux/yaml-cpp-vendor/9.=
1.0-1-r0/build/yaml_cpp_vendor-prefix/src/yaml_cpp_vendor-stamp/yaml_cpp_ve=
ndor-download
| =3D=3D=3D ./yaml_cpp_vendor (git) =3D=3D=3D
| Could not determine ref type of version: fatal: unable to access 'http://=
local-mirror/yaml-cpp.git/': Could not resolve host: local-mirror
| ninja: build stopped: subcommand failed.
| WARNING: exit code 1 from a shell command.
ERROR: Task (/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/s=
ources/meta-ros/meta-ros2-rolling/generated-recipes/yaml-cpp-vendor/yaml-cp=
p-vendor_9.1.0-1.bb:do_compile) failed with exit code '1'
NOTE: Tasks Summary: Attempted 5453 tasks of which 5419 didn't need to be r=
erun and 1 failed.
Summary: 1 task failed:
/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/meta-r=
os/meta-ros2-rolling/generated-recipes/yaml-cpp-vendor/yaml-cpp-vendor_9.1.=
0-1.bb:do_compile
Summary: There was 1 ERROR message, returning a non-zero exit code.

Any guidance would be greatly appreciated. Thank you in advance!

--OQ4WOvfwnRAM69iOBzbE
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>hi Gyorgy Sarvari&nbsp;</div>
<div>&nbsp;</div>
<div>After following this&nbsp;<span style=3D"color: #333333; font-family: =
system-ui, 'Segoe UI', Roboto, 'Helvetica Neue', 'Noto Sans', 'Liberation S=
ans', Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI S=
ymbol', 'Noto Color Emoji'; font-size: 16px; font-style: normal; font-varia=
nt-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-s=
pacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-trans=
form: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; w=
hite-space: pre-wrap; background-color: #ffffff; text-decoration-thickness:=
 initial; text-decoration-style: initial; text-decoration-color: initial; d=
isplay: inline !important; float: none;"> </span><a style=3D"box-sizing: bo=
rder-box; background-color: #ffffff; color: #23527c; text-decoration: under=
line; overflow-wrap: break-word !important; outline: 0px; font-family: syst=
em-ui, 'Segoe UI', Roboto, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans'=
, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbo=
l', 'Noto Color Emoji'; font-size: 16px; font-style: normal; font-variant-l=
igatures: normal; font-variant-caps: normal; font-weight: 400; letter-spaci=
ng: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform=
: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white=
-space: pre-wrap;" href=3D"https://github.com/ros/meta-ros/pull/1269" targe=
t=3D"_blank" rel=3D"noopener">https://github.com/ros/meta-ros/pull/1269</a>=
&nbsp; i encounterd with new error<strong> yaml-cpp-vendor-9.1.0-1-r0 do_co=
mpile: ExecutionError</strong></div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>
<div>Loading cache: 100% |#################################################=
###########################################################################=
###########################################| Time: 0:00:00<br />Loaded 6094=
 entries from dependency cache.<br />NOTE: Resolving any missing task queue=
 dependencies</div>
<div>Build Configuration:<br />BB_VERSION &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; =3D "2.0.0"<br />BUILD_SYS &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D "=
x86_64-linux"<br />NATIVELSBSTRING &nbsp; &nbsp; &nbsp;=3D "universal"<br /=
>TARGET_SYS &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D "x86_64-poky-linux"<br /=
>MACHINE &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D "genericx86-64=
"<br />DISTRO &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D "poky"<b=
r />DISTRO_VERSION &nbsp; &nbsp; &nbsp; =3D "4.0.23"<br />TUNE_FEATURES &nb=
sp; &nbsp; &nbsp; &nbsp;=3D "m64 core2"<br />TARGET_FPU &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; =3D ""<br />DISTRO_NAME &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
=3D "Poky (Yocto Project Reference Distro)"<br />ROS_DISTRO &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; =3D "rolling"<br />ROS_VERSION &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp;=3D "2"<br />ROS_PYTHON_VERSION &nbsp; =3D "3"<br />meta &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D "kirkstone:13b13b81b91f=
618c13cf972067c47bd810de852f"<br />meta-poky &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp;<br />meta-yocto-bsp &nbsp; &nbsp; &nbsp; =3D "HEAD:0bffb5eed1e8=
c9469b9c6e0d77f959dc9ade9c6a"<br />meta-intel &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; =3D "HEAD:8514c60ac1a9a17ba20b17fa176119728a91dcf9"<br />meta-oe &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />meta-python &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp;<br />meta-multimedia &nbsp; &nbsp; &nbsp;<br />meta-n=
etworking &nbsp; &nbsp; &nbsp;<br />meta-filesystems &nbsp; &nbsp; =3D "kir=
kstone:4ad41baed6236d499804cbfc4f174042d84fce97"<br />meta-qt5 &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; =3D "HEAD:644ebf220245bdc06e7696ccc90acc97a0d=
d2566"<br />meta-freescale &nbsp; &nbsp; &nbsp; =3D "HEAD:c525e0c19bdc46d45=
f71873b5f286f49abb69418"<br />meta-freescale-distro =3D "HEAD:d5bbb487b2816=
dfc74984a78b67f7361ce404253"<br />meta-ros-common &nbsp; &nbsp; &nbsp;<br /=
>meta-ros2-rolling &nbsp; &nbsp;<br />meta-ros2 &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp;=3D "kirkstone:72f70f7c1147197bd1e447c03187628b4b62a738"</div=
>
<div>Initialising tasks: 100% |############################################=
###########################################################################=
###########################################| Time: 0:00:04<br />Sstate summ=
ary: Wanted 649 Local 7 Mirrors 0 Missed 642 Current 3634 (1% match, 85% co=
mplete)<br />NOTE: Executing Tasks<br />ERROR: yaml-cpp-vendor-9.1.0-1-r0 d=
o_compile: ExecutionError('/home/user/Mindteck_Projects/Irilic/kirkstone_yo=
cto_AIMB288E/build/tmp/work/core2-64-poky-linux/yaml-cpp-vendor/9.1.0-1-r0/=
temp/run.do_compile.128679', 1, None, None)<br />ERROR: Logfile of failure =
stored in: /home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/bui=
ld/tmp/work/core2-64-poky-linux/yaml-cpp-vendor/9.1.0-1-r0/temp/log.do_comp=
ile.128679<br />Log data follows:<br />| DEBUG: Executing shell function do=
_compile<br />| NOTE: VERBOSE=3D1 cmake --build /home/user/Mindteck_Project=
s/Irilic/kirkstone_yocto_AIMB288E/build/tmp/work/core2-64-poky-linux/yaml-c=
pp-vendor/9.1.0-1-r0/build --target all --<br />| [1/6] cd /home/user/Mindt=
eck_Projects/Irilic/kirkstone_yocto_AIMB288E/build/tmp/work/core2-64-poky-l=
inux/yaml-cpp-vendor/9.1.0-1-r0/build/yaml_cpp_vendor-prefix/src &amp;&amp;=
 /home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/build/tmp/wor=
k/core2-64-poky-linux/yaml-cpp-vendor/9.1.0-1-r0/recipe-sysroot-native/usr/=
bin/cmake -E rm -rf /home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIM=
B288E/build/tmp/work/core2-64-poky-linux/yaml-cpp-vendor/9.1.0-1-r0/build/y=
aml_cpp_vendor-prefix/src/yaml_cpp_vendor &amp;&amp; /home/user/Mindteck_Pr=
ojects/Irilic/kirkstone_yocto_AIMB288E/build/tmp/work/core2-64-poky-linux/y=
aml-cpp-vendor/9.1.0-1-r0/recipe-sysroot-native/usr/bin/cmake -E make_direc=
tory /home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/build/tmp=
/work/core2-64-poky-linux/yaml-cpp-vendor/9.1.0-1-r0/build/yaml_cpp_vendor-=
prefix/src/yaml_cpp_vendor &amp;&amp; /home/user/Mindteck_Projects/Irilic/k=
irkstone_yocto_AIMB288E/build/tmp/work/core2-64-poky-linux/yaml-cpp-vendor/=
9.1.0-1-r0/recipe-sysroot-native/usr/bin/vcs import . --input /home/user/Mi=
ndteck_Projects/Irilic/kirkstone_yocto_AIMB288E/build/tmp/work/core2-64-pok=
y-linux/yaml-cpp-vendor/9.1.0-1-r0/build/yaml_cpp_vendor.repos --shallow --=
recursive --force &amp;&amp; /home/user/Mindteck_Projects/Irilic/kirkstone_=
yocto_AIMB288E/build/tmp/work/core2-64-poky-linux/yaml-cpp-vendor/9.1.0-1-r=
0/recipe-sysroot-native/usr/bin/cmake -E touch /home/user/Mindteck_Projects=
/Irilic/kirkstone_yocto_AIMB288E/build/tmp/work/core2-64-poky-linux/yaml-cp=
p-vendor/9.1.0-1-r0/build/yaml_cpp_vendor-prefix/src/yaml_cpp_vendor-stamp/=
yaml_cpp_vendor-download<br />| FAILED: yaml_cpp_vendor-prefix/src/yaml_cpp=
_vendor-stamp/yaml_cpp_vendor-download /home/user/Mindteck_Projects/Irilic/=
kirkstone_yocto_AIMB288E/build/tmp/work/core2-64-poky-linux/yaml-cpp-vendor=
/9.1.0-1-r0/build/yaml_cpp_vendor-prefix/src/yaml_cpp_vendor-stamp/yaml_cpp=
_vendor-download<br />| cd /home/user/Mindteck_Projects/Irilic/kirkstone_yo=
cto_AIMB288E/build/tmp/work/core2-64-poky-linux/yaml-cpp-vendor/9.1.0-1-r0/=
build/yaml_cpp_vendor-prefix/src &amp;&amp; /home/user/Mindteck_Projects/Ir=
ilic/kirkstone_yocto_AIMB288E/build/tmp/work/core2-64-poky-linux/yaml-cpp-v=
endor/9.1.0-1-r0/recipe-sysroot-native/usr/bin/cmake -E rm -rf /home/user/M=
indteck_Projects/Irilic/kirkstone_yocto_AIMB288E/build/tmp/work/core2-64-po=
ky-linux/yaml-cpp-vendor/9.1.0-1-r0/build/yaml_cpp_vendor-prefix/src/yaml_c=
pp_vendor &amp;&amp; /home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AI=
MB288E/build/tmp/work/core2-64-poky-linux/yaml-cpp-vendor/9.1.0-1-r0/recipe=
-sysroot-native/usr/bin/cmake -E make_directory /home/user/Mindteck_Project=
s/Irilic/kirkstone_yocto_AIMB288E/build/tmp/work/core2-64-poky-linux/yaml-c=
pp-vendor/9.1.0-1-r0/build/yaml_cpp_vendor-prefix/src/yaml_cpp_vendor &amp;=
&amp; /home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/build/tm=
p/work/core2-64-poky-linux/yaml-cpp-vendor/9.1.0-1-r0/recipe-sysroot-native=
/usr/bin/vcs import . --input /home/user/Mindteck_Projects/Irilic/kirkstone=
_yocto_AIMB288E/build/tmp/work/core2-64-poky-linux/yaml-cpp-vendor/9.1.0-1-=
r0/build/yaml_cpp_vendor.repos --shallow --recursive --force &amp;&amp; /ho=
me/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/build/tmp/work/co=
re2-64-poky-linux/yaml-cpp-vendor/9.1.0-1-r0/recipe-sysroot-native/usr/bin/=
cmake -E touch /home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E=
/build/tmp/work/core2-64-poky-linux/yaml-cpp-vendor/9.1.0-1-r0/build/yaml_c=
pp_vendor-prefix/src/yaml_cpp_vendor-stamp/yaml_cpp_vendor-download<br />| =
=3D=3D=3D ./yaml_cpp_vendor (git) =3D=3D=3D<br />| Could not determine ref =
type of version: fatal: unable to access 'http://local-mirror/yaml-cpp.git/=
': Could not resolve host: local-mirror<br />| ninja: build stopped: subcom=
mand failed.<br />| WARNING: exit code 1 from a shell command.<br />ERROR: =
Task (/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/=
meta-ros/meta-ros2-rolling/generated-recipes/yaml-cpp-vendor/yaml-cpp-vendo=
r_9.1.0-1.bb:do_compile) failed with exit code '1'<br />NOTE: Tasks Summary=
: Attempted 5453 tasks of which 5419 didn't need to be rerun and 1 failed.<=
/div>
<div>Summary: 1 task failed:<br />&nbsp; /home/user/Mindteck_Projects/Irili=
c/kirkstone_yocto_AIMB288E/sources/meta-ros/meta-ros2-rolling/generated-rec=
ipes/yaml-cpp-vendor/yaml-cpp-vendor_9.1.0-1.bb:do_compile<br />Summary: Th=
ere was 1 ERROR message, returning a non-zero exit code.</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div><span style=3D"color: #0c0d0e; font-family: sans-serif; font-size: 15p=
x; font-style: normal; font-variant-ligatures: normal; font-variant-caps: n=
ormal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: le=
ft; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -=
webkit-text-stroke-width: 0px; white-space: normal; background-color: #ffff=
ff; text-decoration-thickness: initial; text-decoration-style: initial; tex=
t-decoration-color: initial; display: inline !important; float: none;">Any =
guidance would be greatly appreciated. Thank you in advance!</span></div>
</div>

--OQ4WOvfwnRAM69iOBzbE--

