Return-Path: <bartiszosti@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 49669E77188
	for <webhook@archiver.kernel.org>; Sun, 22 Dec 2024 06:39:45 +0000 (UTC)
Subject: meson in SDK doesn't see CMake executable #cmake #sdk
To: yocto@lists.yoctoproject.org
From: bartiszosti@gmail.com
X-Originating-Location: PL (46.112.104.170)
X-Originating-Platform: Linux Chrome 131
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 21 Dec 2024 22:39:40 -0800
Message-ID: <N6lV.1734849580975127244.jvve@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="8rtneJ026TZ5LaQQdPWE"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 22 Dec 2024 06:39:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64475

--8rtneJ026TZ5LaQQdPWE
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,
I'm trying to migrate from CMake to Meson and I have an issue with building=
 via SDK.
From the beginning, I have a working project. It builds via bitbake and SDK=
 then I migrated to Meson.
Currently, my recipe builds via bitbake, but in generated SDK it doesn't se=
e cmake wihout setting CMAKE environment variable and than it doesn't see s=
pdlog.

bzo@WS-5CY5LS3:/media/bzo/a3f9a70c-8792-4790-ba69-b917b7cfaeed/github/xbrts=
zstk/xhello$ meson setup build
meson-wrapper: Running meson with setup options: " --cross-file=3D/media/bz=
o/a3f9a70c-8792-4790-ba69-b917b7cfaeed/yocto/xhello/radxa-zero-3w/sdk/sysro=
ots/x86_64-xwaresdk-linux/usr/share/meson/aarch64-xware-linux-meson.cross -=
-native-file=3D/media/bzo/a3f9a70c-8792-4790-ba69-b917b7cfaeed/yocto/xhello=
/radxa-zero-3w/sdk/sysroots/x86_64-xwaresdk-linux/usr/share/meson/meson.nat=
ive "
The Meson build system
Version: 1.6.0
Source dir: /media/bzo/a3f9a70c-8792-4790-ba69-b917b7cfaeed/github/xbrtszst=
k/xhello
Build dir: /media/bzo/a3f9a70c-8792-4790-ba69-b917b7cfaeed/github/xbrtszstk=
/xhello/build
Build type: cross build
Project name: xhello
Project version: undefined
C++ compiler for the host machine: aarch64-xware-linux-g++ -mcpu=3Dcortex-a=
55+crypto -mbranch-protection=3Dstandard -fstack-protector-strong -O2 -D_FO=
RTIFY_SOURCE=3D2 -Wformat -Wformat-security -Werror=3Dformat-security --sys=
root=3D/media/bzo/a3f9a70c-8792-4790-ba69-b917b7cfaeed/yocto/xhello/radxa-z=
ero-3w/sdk/sysroots/cortexa55-xware-linux (gcc 14.2.0 "aarch64-xware-linux-=
g++ (GCC) 14.2.0")
C++ linker for the host machine: aarch64-xware-linux-g++ -mcpu=3Dcortex-a55=
+crypto -mbranch-protection=3Dstandard -fstack-protector-strong -O2 -D_FORT=
IFY_SOURCE=3D2 -Wformat -Wformat-security -Werror=3Dformat-security --sysro=
ot=3D/media/bzo/a3f9a70c-8792-4790-ba69-b917b7cfaeed/yocto/xhello/radxa-zer=
o-3w/sdk/sysroots/cortexa55-xware-linux ld.bfd 2.43.1.20241111
Compiler for language cpp for the build machine not found.
Build machine cpu family: x86_64
Build machine cpu: x86_64
Host machine cpu family: x86_64
Host machine cpu: x86_64
Target machine cpu family: x86_64
Target machine cpu: x86_64
Found pkg-config: YES (/media/bzo/a3f9a70c-8792-4790-ba69-b917b7cfaeed/yoct=
o/xhello/radxa-zero-3w/sdk/sysroots/x86_64-xwaresdk-linux/usr/bin/pkg-confi=
g) 0.29.2
Found CMake: NO
Run-time dependency spdlog found: NO (tried pkgconfig)
client/meson.build:3:15: ERROR: Dependency "spdlog" not found, tried pkgcon=
fig
A full log can be found at /media/bzo/a3f9a70c-8792-4790-ba69-b917b7cfaeed/=
github/xbrtszstk/xhello/build/meson-logs/meson-log.txt
bzo@WS-5CY5LS3:/media/bzo/a3f9a70c-8792-4790-ba69-b917b7cfaeed/github/xbrts=
zstk/xhello$ cmake --version
cmake version 3.31.0
CMake suite maintained and supported by Kitware (kitware.com/cmake).
bzo@WS-5CY5LS3:/media/bzo/a3f9a70c-8792-4790-ba69-b917b7cfaeed/github/xbrts=
zstk/xhello$ export CMAKE=3D$(which cmake)
bzo@WS-5CY5LS3:/media/bzo/a3f9a70c-8792-4790-ba69-b917b7cfaeed/github/xbrts=
zstk/xhello$ $CMAKE --version
cmake version 3.31.0
CMake suite maintained and supported by Kitware (kitware.com/cmake).
bzo@WS-5CY5LS3:/media/bzo/a3f9a70c-8792-4790-ba69-b917b7cfaeed/github/xbrts=
zstk/xhello$ meson setup build
meson-wrapper: Running meson with setup options: " --cross-file=3D/media/bz=
o/a3f9a70c-8792-4790-ba69-b917b7cfaeed/yocto/xhello/radxa-zero-3w/sdk/sysro=
ots/x86_64-xwaresdk-linux/usr/share/meson/aarch64-xware-linux-meson.cross -=
-native-file=3D/media/bzo/a3f9a70c-8792-4790-ba69-b917b7cfaeed/yocto/xhello=
/radxa-zero-3w/sdk/sysroots/x86_64-xwaresdk-linux/usr/share/meson/meson.nat=
ive "
The Meson build system
Version: 1.6.0
Source dir: /media/bzo/a3f9a70c-8792-4790-ba69-b917b7cfaeed/github/xbrtszst=
k/xhello
Build dir: /media/bzo/a3f9a70c-8792-4790-ba69-b917b7cfaeed/github/xbrtszstk=
/xhello/build
Build type: cross build
Project name: xhello
Project version: undefined
C++ compiler for the host machine: aarch64-xware-linux-g++ -mcpu=3Dcortex-a=
55+crypto -mbranch-protection=3Dstandard -fstack-protector-strong -O2 -D_FO=
RTIFY_SOURCE=3D2 -Wformat -Wformat-security -Werror=3Dformat-security --sys=
root=3D/media/bzo/a3f9a70c-8792-4790-ba69-b917b7cfaeed/yocto/xhello/radxa-z=
ero-3w/sdk/sysroots/cortexa55-xware-linux (gcc 14.2.0 "aarch64-xware-linux-=
g++ (GCC) 14.2.0")
C++ linker for the host machine: aarch64-xware-linux-g++ -mcpu=3Dcortex-a55=
+crypto -mbranch-protection=3Dstandard -fstack-protector-strong -O2 -D_FORT=
IFY_SOURCE=3D2 -Wformat -Wformat-security -Werror=3Dformat-security --sysro=
ot=3D/media/bzo/a3f9a70c-8792-4790-ba69-b917b7cfaeed/yocto/xhello/radxa-zer=
o-3w/sdk/sysroots/cortexa55-xware-linux ld.bfd 2.43.1.20241111
Compiler for language cpp for the build machine not found.
Build machine cpu family: x86_64
Build machine cpu: x86_64
Host machine cpu family: x86_64
Host machine cpu: x86_64
Target machine cpu family: x86_64
Target machine cpu: x86_64
Found pkg-config: YES (/media/bzo/a3f9a70c-8792-4790-ba69-b917b7cfaeed/yoct=
o/xhello/radxa-zero-3w/sdk/sysroots/x86_64-xwaresdk-linux/usr/bin/pkg-confi=
g) 0.29.2
Found CMake: /media/bzo/a3f9a70c-8792-4790-ba69-b917b7cfaeed/yocto/xhello/r=
adxa-zero-3w/sdk/sysroots/x86_64-xwaresdk-linux/usr/bin/cmake (3.31.0)
Run-time dependency spdlog found: NO (tried pkgconfig and cmake)
client/meson.build:3:15: ERROR: Dependency "spdlog" not found, tried pkgcon=
fig and cmake
A full log can be found at /media/bzo/a3f9a70c-8792-4790-ba69-b917b7cfaeed/=
github/xbrtszstk/xhello/build/meson-logs/meson-log.txt

DO you now where the issue can be?

--8rtneJ026TZ5LaQQdPWE
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hello,<br />I'm trying to migrate from CMake to Meson and I have an is=
sue with building via SDK.<br />From the beginning, I have a working projec=
t. It builds via bitbake and SDK then I migrated to Meson.<br />Currently, =
my recipe builds via bitbake, but in generated SDK it doesn't see cmake wih=
out setting CMAKE environment variable and than it doesn't see spdlog.<br /=
><br />
<div>bzo@WS-5CY5LS3:/media/bzo/a3f9a70c-8792-4790-ba69-b917b7cfaeed/github/=
xbrtszstk/xhello$ meson setup build<br />meson-wrapper: Running meson with =
setup options: " --cross-file=3D/media/bzo/a3f9a70c-8792-4790-ba69-b917b7cf=
aeed/yocto/xhello/radxa-zero-3w/sdk/sysroots/x86_64-xwaresdk-linux/usr/shar=
e/meson/aarch64-xware-linux-meson.cross --native-file=3D/media/bzo/a3f9a70c=
-8792-4790-ba69-b917b7cfaeed/yocto/xhello/radxa-zero-3w/sdk/sysroots/x86_64=
-xwaresdk-linux/usr/share/meson/meson.native "<br />The Meson build system<=
br />Version: 1.6.0<br />Source dir: /media/bzo/a3f9a70c-8792-4790-ba69-b91=
7b7cfaeed/github/xbrtszstk/xhello<br />Build dir: /media/bzo/a3f9a70c-8792-=
4790-ba69-b917b7cfaeed/github/xbrtszstk/xhello/build<br />Build type: cross=
 build<br />Project name: xhello<br />Project version: undefined<br />C++ c=
ompiler for the host machine: aarch64-xware-linux-g++ -mcpu=3Dcortex-a55+cr=
ypto -mbranch-protection=3Dstandard -fstack-protector-strong -O2 -D_FORTIFY=
_SOURCE=3D2 -Wformat -Wformat-security -Werror=3Dformat-security --sysroot=
=3D/media/bzo/a3f9a70c-8792-4790-ba69-b917b7cfaeed/yocto/xhello/radxa-zero-=
3w/sdk/sysroots/cortexa55-xware-linux (gcc 14.2.0 "aarch64-xware-linux-g++ =
(GCC) 14.2.0")<br />C++ linker for the host machine: aarch64-xware-linux-g+=
+ -mcpu=3Dcortex-a55+crypto -mbranch-protection=3Dstandard -fstack-protecto=
r-strong -O2 -D_FORTIFY_SOURCE=3D2 -Wformat -Wformat-security -Werror=3Dfor=
mat-security --sysroot=3D/media/bzo/a3f9a70c-8792-4790-ba69-b917b7cfaeed/yo=
cto/xhello/radxa-zero-3w/sdk/sysroots/cortexa55-xware-linux ld.bfd 2.43.1.2=
0241111<br />Compiler for language cpp for the build machine not found.<br =
/>Build machine cpu family: x86_64<br />Build machine cpu: x86_64<br />Host=
 machine cpu family: x86_64<br />Host machine cpu: x86_64<br />Target machi=
ne cpu family: x86_64<br />Target machine cpu: x86_64<br />Found pkg-config=
: YES (/media/bzo/a3f9a70c-8792-4790-ba69-b917b7cfaeed/yocto/xhello/radxa-z=
ero-3w/sdk/sysroots/x86_64-xwaresdk-linux/usr/bin/pkg-config) 0.29.2<br />F=
ound CMake: NO<br />Run-time dependency spdlog found: NO (tried pkgconfig)<=
/div>
<div>client/meson.build:3:15: ERROR: Dependency "spdlog" not found, tried p=
kgconfig</div>
<div>A full log can be found at /media/bzo/a3f9a70c-8792-4790-ba69-b917b7cf=
aeed/github/xbrtszstk/xhello/build/meson-logs/meson-log.txt<br />bzo@WS-5CY=
5LS3:/media/bzo/a3f9a70c-8792-4790-ba69-b917b7cfaeed/github/xbrtszstk/xhell=
o$ cmake --version<br />cmake version 3.31.0</div>
<div>CMake suite maintained and supported by Kitware (kitware.com/cmake).<b=
r />bzo@WS-5CY5LS3:/media/bzo/a3f9a70c-8792-4790-ba69-b917b7cfaeed/github/x=
brtszstk/xhello$ export CMAKE=3D$(which cmake)<br />bzo@WS-5CY5LS3:/media/b=
zo/a3f9a70c-8792-4790-ba69-b917b7cfaeed/github/xbrtszstk/xhello$ $CMAKE --v=
ersion<br />cmake version 3.31.0</div>
<div>CMake suite maintained and supported by Kitware (kitware.com/cmake).<b=
r />bzo@WS-5CY5LS3:/media/bzo/a3f9a70c-8792-4790-ba69-b917b7cfaeed/github/x=
brtszstk/xhello$ meson setup build<br />meson-wrapper: Running meson with s=
etup options: " --cross-file=3D/media/bzo/a3f9a70c-8792-4790-ba69-b917b7cfa=
eed/yocto/xhello/radxa-zero-3w/sdk/sysroots/x86_64-xwaresdk-linux/usr/share=
/meson/aarch64-xware-linux-meson.cross --native-file=3D/media/bzo/a3f9a70c-=
8792-4790-ba69-b917b7cfaeed/yocto/xhello/radxa-zero-3w/sdk/sysroots/x86_64-=
xwaresdk-linux/usr/share/meson/meson.native "<br />The Meson build system<b=
r />Version: 1.6.0<br />Source dir: /media/bzo/a3f9a70c-8792-4790-ba69-b917=
b7cfaeed/github/xbrtszstk/xhello<br />Build dir: /media/bzo/a3f9a70c-8792-4=
790-ba69-b917b7cfaeed/github/xbrtszstk/xhello/build<br />Build type: cross =
build<br />Project name: xhello<br />Project version: undefined<br />C++ co=
mpiler for the host machine: aarch64-xware-linux-g++ -mcpu=3Dcortex-a55+cry=
pto -mbranch-protection=3Dstandard -fstack-protector-strong -O2 -D_FORTIFY_=
SOURCE=3D2 -Wformat -Wformat-security -Werror=3Dformat-security --sysroot=
=3D/media/bzo/a3f9a70c-8792-4790-ba69-b917b7cfaeed/yocto/xhello/radxa-zero-=
3w/sdk/sysroots/cortexa55-xware-linux (gcc 14.2.0 "aarch64-xware-linux-g++ =
(GCC) 14.2.0")<br />C++ linker for the host machine: aarch64-xware-linux-g+=
+ -mcpu=3Dcortex-a55+crypto -mbranch-protection=3Dstandard -fstack-protecto=
r-strong -O2 -D_FORTIFY_SOURCE=3D2 -Wformat -Wformat-security -Werror=3Dfor=
mat-security --sysroot=3D/media/bzo/a3f9a70c-8792-4790-ba69-b917b7cfaeed/yo=
cto/xhello/radxa-zero-3w/sdk/sysroots/cortexa55-xware-linux ld.bfd 2.43.1.2=
0241111<br />Compiler for language cpp for the build machine not found.<br =
/>Build machine cpu family: x86_64<br />Build machine cpu: x86_64<br />Host=
 machine cpu family: x86_64<br />Host machine cpu: x86_64<br />Target machi=
ne cpu family: x86_64<br />Target machine cpu: x86_64<br />Found pkg-config=
: YES (/media/bzo/a3f9a70c-8792-4790-ba69-b917b7cfaeed/yocto/xhello/radxa-z=
ero-3w/sdk/sysroots/x86_64-xwaresdk-linux/usr/bin/pkg-config) 0.29.2<br />F=
ound CMake: /media/bzo/a3f9a70c-8792-4790-ba69-b917b7cfaeed/yocto/xhello/ra=
dxa-zero-3w/sdk/sysroots/x86_64-xwaresdk-linux/usr/bin/cmake (3.31.0)<br />=
Run-time dependency spdlog found: NO (tried pkgconfig and cmake)</div>
<div>client/meson.build:3:15: ERROR: Dependency "spdlog" not found, tried p=
kgconfig and cmake</div>
<div>A full log can be found at /media/bzo/a3f9a70c-8792-4790-ba69-b917b7cf=
aeed/github/xbrtszstk/xhello/build/meson-logs/meson-log.txt<br /><br /><br =
/>DO you now where the issue can be?</div>
</div>

--8rtneJ026TZ5LaQQdPWE--

