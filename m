Return-Path: <bartiszosti@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC95C3DA59
	for <webhook@archiver.kernel.org>; Fri, 19 Jul 2024 07:46:13 +0000 (UTC)
Subject: file in wrong format #bitbake #cmake #gcc #qt #raspberrypi #scarthgap #sdk #yocto
To: yocto@lists.yoctoproject.org
From: bartiszosti@gmail.com
X-Originating-Location: Gorzyce, Lesser Poland, PL (109.196.245.39)
X-Originating-Platform: Linux Firefox 115
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 19 Jul 2024 00:46:08 -0700
Message-ID: <sAnC.1721375168210154927.Hbi6@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="35SlOaarQfht1etwnjiJ"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 19 Jul 2024 07:46:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63533

--35SlOaarQfht1etwnjiJ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I'd like to add a simple "Hello World" application ( https://github.com/bar=
tiszosti/qt6-example ) based on Qt6 and CMake to my image .
I wrote a receipt listed below to do so, but the building fails because the=
 compiler tries to link the libQt6Core.so which is for other architecture, =
but when I build same application through the populated SDK everything work=
s correctly.

local.conf

>=20
> MACHINE =3D "raspberrypi4-64"
> ENABLE_UART =3D "1"
> RPI_USE_U_BOOT =3D "1"
> INIT_MANAGER =3D "systemd"
>=20

part of the bblayers.conf

>=20
> BBLAYERS ?=3D " \
> ${TOPDIR}/../poky/meta \
> ${TOPDIR}/../poky/meta-poky \
> ${TOPDIR}/../poky/meta-yocto-bsp \
> ${TOPDIR}/../meta-openembedded/meta-oe \
> ${TOPDIR}/../meta-openembedded/meta-python \
> ${TOPDIR}/../meta-qt6 \
> ${TOPDIR}/../meta-xware \
> ${TOPDIR}/../meta-raspberrypi \
> "
>=20

myimage.bb

>=20
> IMAGE_FEATURES =3D "\
> ssh-server-openssh \
> ${EXTRA_IMAGE_FEATURES} \
> "
> IMAGE_INSTALL =3D "\
> packagegroup-core-boot \
> ${CORE_IMAGE_EXTRA_INSTALL} \
> qt6-example \
> "
> inherit core-image
> qt6-example_qit.bb
>=20
>> LICENSE =3D "CLOSED"
>> SRC_URI =3D
>> "git://github.com/bartiszosti/qt6-example.git;branch=3Dmaster;protocol=
=3Dhttps"
>>=20
>> SRCREV =3D "${AUTOREV}"
>> S =3D "${WORKDIR}/git"
>> inherit qt6-cmake populate_sdk_qt6
>>=20
>=20
> bitbake qt6-example
> NOTE: Reconnecting to bitbake server...
> NOTE: Retrying server connection (#1)... (09:43:44.480895)
> NOTE: Reconnecting to bitbake server...
> NOTE: Previous bitbake instance shutting down?, waiting to retry...
> (09:43:44.482284)
> NOTE: Directory listing: ['cache', 'sstate-cache', 'downloads', 'tmp',
> 'bitbake-cookerdaemon.log', 'conf']
> NOTE: Retrying server connection (#2)... (09:43:44.629027)
> Loading cache: 100%
> |########################################################################=
###########################################################################=
####|
> Time: 0:00:01
> Loaded 4444 entries from dependency cache.
> Parsing recipes: 100%
> |########################################################################=
###########################################################################=
##|
> Time: 0:00:01
> Parsing of 2581 .bb files complete (2575 cached, 6 parsed). 4450 targets,
> 132 skipped, 0 masked, 0 errors.
> NOTE: Resolving any missing task queue dependencies
>=20

>=20
> Build Configuration:
> BB_VERSION =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "2.8.0"
> BUILD_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "x86_64-linux"
> NATIVELSBSTRING =C2=A0 =C2=A0 =C2=A0=3D "universal"
> TARGET_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "aarch64-poky-linux"
> MACHINE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "raspberrypi4=
-64"
> DISTRO =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "poky"
> DISTRO_VERSION =C2=A0 =C2=A0 =C2=A0 =3D "5.0.2"
> TUNE_FEATURES =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "aarch64 crc cortexa72"
> TARGET_FPU =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D ""
> meta
> meta-poky
> meta-yocto-bsp =C2=A0 =C2=A0 =C2=A0 =3D
> "scarthgap:a725df1839a23b11ae1bace531d242bfc1ab98e0"
> meta-oe
> meta-python =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D
> "scarthgap:78a14731cf0cf38a19ff8bd0e9255b319afaf3a7"
> meta-qt6 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "6.8:b7dd88b6283cb=
9f8d48c951ec6fc085736e28f1b"
> meta-xware =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "master:6c5685c3007b60b=
224d50cd68db5e26aaf0042b4"
> meta-raspberrypi =C2=A0 =C2=A0 =3D
> "scarthgap:1918a27419dcd5e79954c0dc0edddcde91057a7e"
> Sstate summary: Wanted 9 Local 1 Mirrors 0 Missed 8 Current 358 (11%
> match, 97%
> complete)################################################################=
####
> | ETA: =C2=A00:00:00
> Removing 1 stale sstate objects for arch cortexa72: 100%
> |########################################################################=
##########################################|
> Time: 0:00:00
> NOTE: Executing Tasks
> ERROR: qt6-example-git-r0 do_compile:
> ExecutionError('/mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/=
qt6-example/git/temp/run.do_compile.3592057',
> 1, None, None)
> ERROR: Logfile of failure stored in:
> /mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-example/git/=
temp/log.do_compile.3592057
>=20
> Log data follows:
> | DEBUG: Executing shell function do_compile
> | NOTE: VERBOSE=3D1 cmake --build
> /mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-example/git/=
build
> --target all --
> | Change Dir:
> '/mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-example/git=
/build'
>=20
> |
> | Run Build Command(s): ninja -v -j 64 all
> | [1/4] cd
> /mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-example/git/=
build
> &&
> /mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-example/git/=
recipe-sysroot-native/usr/bin/cmake
> -E cmake_autogen
> /mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-example/git/=
build/CMakeFiles/qt6_example_autogen.dir/AutogenInfo.json
> "" &&
> /mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-example/git/=
recipe-sysroot-native/usr/bin/cmake
> -E touch
> /mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-example/git/=
build/qt6_example_autogen/timestamp
> &&
> /mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-example/git/=
recipe-sysroot-native/usr/bin/cmake
> -E cmake_transform_depfile Ninja gccdepfile
> /mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-example/git/=
git
> /mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-example/git/=
git
> /mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-example/git/=
build
> /mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-example/git/=
build
> /mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-example/git/=
build/qt6_example_autogen/deps
> /mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-example/git/=
build/CMakeFiles/d/f5ba9415f9a09417c93efc6d2af7f1b4467b21b42eac981bba83ca2c=
89f8e3b5.d
>=20
> | AutoGen: Refreshing parse cache because it doesn't exist.
> | AutoMoc: Generating "BIN:/qt6_example_autogen/moc_predefs.h", because i=
t
> doesn't exist.
> |
> /mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-example/git/=
recipe-sysroot-native/usr/bin/aarch64-poky-linux/aarch64-poky-linux-g++
> -dM -E -c
> /mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-example/git/=
recipe-sysroot-native/usr/share/cmake-3.28/Modules/CMakeCXXCompilerABI.cpp
> -DQT_CORE_LIB -DQT_NO_DEBUG
> -I/mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-example/gi=
t/recipe-sysroot-native/usr/include/QtCore
> -I/mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-example/gi=
t/recipe-sysroot-native/usr/include
> -I/mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-example/gi=
t/recipe-sysroot-native/usr/lib/mkspecs/linux-g++
> -I/mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-example/gi=
t/recipe-sysroot-native/usr/lib/aarch64-poky-linux/gcc/aarch64-poky-linux/1=
3.3.0/include
> -I/mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-example/gi=
t/recipe-sysroot-native/usr/lib/aarch64-poky-linux/gcc/aarch64-poky-linux/1=
3.3.0/include-fixed
> -I/mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-example/gi=
t/recipe-sysroot/usr/include/c++/13.3.0
> -I/mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-example/gi=
t/recipe-sysroot/usr/include/c++/13.3.0/aarch64-poky-linux
> -I/mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-example/gi=
t/recipe-sysroot/usr/include/c++/13.3.0/backward
> -I/mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-example/gi=
t/recipe-sysroot/usr/lib/aarch64-poky-linux/13.3.0/include
> -I/mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-example/gi=
t/recipe-sysroot/usr/include
>=20
> | AutoGen: Parsing "SRC:/main.cpp"
> | AutoMoc: Generating MOC compilation
> "BIN:/qt6_example_autogen/mocs_compilation.cpp"
> | AutoMoc: Merging MOC dependencies into "BIN:/qt6_example_autogen/deps"
> | AutoGen: Writing the parse cache file
> "BIN:/CMakeFiles/qt6_example_autogen.dir/ParseCache.txt"
> | AutoGen: Writing the settings file
> "BIN:/CMakeFiles/qt6_example_autogen.dir/AutogenUsed.txt"
> | [2/4]
> /mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-example/git/=
recipe-sysroot-native/usr/bin/aarch64-poky-linux/aarch64-poky-linux-g++
> --sysroot=3D/mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-=
example/git/recipe-sysroot
> -DQT_CORE_LIB -DQT_NO_DEBUG
> -I/mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-example/gi=
t/recipe-sysroot-native/usr/include/QtCore
> -I/mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-example/gi=
t/recipe-sysroot-native/usr/include
> -I/mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-example/gi=
t/recipe-sysroot-native/usr/lib/mkspecs/linux-g++
> -isystem
> /mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-example/git/=
build/qt6_example_autogen/include
> -mcpu=3Dcortex-a72+crc -mbranch-protection=3Dstandard -fstack-protector-s=
trong
> -Wformat -Wformat-security -Werror=3Dformat-security=20
> --sysroot=3D/mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-=
example/git/recipe-sysroot
> -O2 -pipe -g -feliminate-unused-debug-types =C2=A0-fvisibility-inlines-hi=
dden
> -fPIC -MD -MT
> CMakeFiles/qt6_example.dir/qt6_example_autogen/mocs_compilation.cpp.o -MF
> CMakeFiles/qt6_example.dir/qt6_example_autogen/mocs_compilation.cpp.o.d -=
o
> CMakeFiles/qt6_example.dir/qt6_example_autogen/mocs_compilation.cpp.o -c
> /mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-example/git/=
build/qt6_example_autogen/mocs_compilation.cpp
>=20
> | [3/4]
> /mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-example/git/=
recipe-sysroot-native/usr/bin/aarch64-poky-linux/aarch64-poky-linux-g++
> --sysroot=3D/mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-=
example/git/recipe-sysroot
> -DQT_CORE_LIB -DQT_NO_DEBUG
> -I/mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-example/gi=
t/recipe-sysroot-native/usr/include/QtCore
> -I/mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-example/gi=
t/recipe-sysroot-native/usr/include
> -I/mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-example/gi=
t/recipe-sysroot-native/usr/lib/mkspecs/linux-g++
> -isystem
> /mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-example/git/=
build/qt6_example_autogen/include
> -mcpu=3Dcortex-a72+crc -mbranch-protection=3Dstandard -fstack-protector-s=
trong
> -Wformat -Wformat-security -Werror=3Dformat-security=20
> --sysroot=3D/mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-=
example/git/recipe-sysroot
> -O2 -pipe -g -feliminate-unused-debug-types =C2=A0-fvisibility-inlines-hi=
dden
> -fPIC -MD -MT CMakeFiles/qt6_example.dir/main.cpp.o -MF
> CMakeFiles/qt6_example.dir/main.cpp.o.d -o
> CMakeFiles/qt6_example.dir/main.cpp.o -c
> /mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-example/git/=
git/main.cpp
>=20
> | [4/4] : &&
> /mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-example/git/=
recipe-sysroot-native/usr/bin/aarch64-poky-linux/aarch64-poky-linux-g++
> --sysroot=3D/mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-=
example/git/recipe-sysroot
> -mcpu=3Dcortex-a72+crc -mbranch-protection=3Dstandard -fstack-protector-s=
trong
> -Wformat -Wformat-security -Werror=3Dformat-security=20
> --sysroot=3D/mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-=
example/git/recipe-sysroot
> -O2 -pipe -g -feliminate-unused-debug-types =C2=A0-fvisibility-inlines-hi=
dden=20
> -mcpu=3Dcortex-a72+crc -mbranch-protection=3Dstandard -fstack-protector-s=
trong
> -Wformat -Wformat-security -Werror=3Dformat-security=20
> --sysroot=3D/mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-=
example/git/recipe-sysroot
> -O2 -pipe -g -feliminate-unused-debug-types =C2=A0-fvisibility-inlines-hi=
dden
> -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed =C2=A0-Wl,-z,relro,-z,now =
-Wl,-O1
> -Wl,--hash-style=3Dgnu -Wl,--as-needed =C2=A0-Wl,-z,relro,-z,now
> CMakeFiles/qt6_example.dir/qt6_example_autogen/mocs_compilation.cpp.o
> CMakeFiles/qt6_example.dir/main.cpp.o -o qt6_example=20
> -Wl,-rpath,-native/usr/lib=20
> /mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-example/git/=
recipe-sysroot-native/usr/lib/libQt6Core.so.6.8.0
> && :
> | FAILED: qt6_example
> | : &&
> /mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-example/git/=
recipe-sysroot-native/usr/bin/aarch64-poky-linux/aarch64-poky-linux-g++
> --sysroot=3D/mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-=
example/git/recipe-sysroot
> -mcpu=3Dcortex-a72+crc -mbranch-protection=3Dstandard -fstack-protector-s=
trong
> -Wformat -Wformat-security -Werror=3Dformat-security=20
> --sysroot=3D/mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-=
example/git/recipe-sysroot
> -O2 -pipe -g -feliminate-unused-debug-types =C2=A0-fvisibility-inlines-hi=
dden=20
> -mcpu=3Dcortex-a72+crc -mbranch-protection=3Dstandard -fstack-protector-s=
trong
> -Wformat -Wformat-security -Werror=3Dformat-security=20
> --sysroot=3D/mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-=
example/git/recipe-sysroot
> -O2 -pipe -g -feliminate-unused-debug-types =C2=A0-fvisibility-inlines-hi=
dden
> -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed =C2=A0-Wl,-z,relro,-z,now =
-Wl,-O1
> -Wl,--hash-style=3Dgnu -Wl,--as-needed =C2=A0-Wl,-z,relro,-z,now
> CMakeFiles/qt6_example.dir/qt6_example_autogen/mocs_compilation.cpp.o
> CMakeFiles/qt6_example.dir/main.cpp.o -o qt6_example=20
> -Wl,-rpath,-native/usr/lib=20
> /mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-example/git/=
recipe-sysroot-native/usr/lib/libQt6Core.so.6.8.0
> && :
> |
> /mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-example/git/=
recipe-sysroot-native/usr/bin/aarch64-poky-linux/../../libexec/aarch64-poky=
-linux/gcc/aarch64-poky-linux/13.3.0/ld:
> /mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-example/git/=
recipe-sysroot-native/usr/lib/libQt6Core.so.6.8.0:
> error adding symbols: file in wrong format
> | collect2: error: ld returned 1 exit status
> | ninja: build stopped: subcommand failed.
> |
> | WARNING: exit code 1 from a shell command.
> ERROR: Task
> (/mnt/yocto_drive/rpi/build/../meta-xware/recipes-example/qt6-example/qt6=
-example_git.bb:do_compile)
> failed with exit code '1'
> NOTE: Tasks Summary: Attempted 1086 tasks of which 1082 didn't need to be
> rerun and 1 failed.
> Summary: 1 task failed:
> /mnt/yocto_drive/rpi/build/../meta-xware/recipes-example/qt6-example/qt6-=
example_git.bb:do_compile
>=20
> Summary: There was 1 ERROR message, returning a non-zero exit code.
>=20

file /mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-example/g=
it/recipe-sysroot-native/usr/lib/libQt6Core.so.6.8.0

>=20
> /mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-example/git/=
recipe-sysroot-native/usr/lib/libQt6Core.so.6.8.0:
> ELF 64-bit LSB shared object, x86-64, version 1 (GNU/Linux), dynamically
> linked, interpreter /lib64/ld-linux-x86-64.so.2,
> BuildID[sha1]=3D934a77551cc57b04260e0d854158e8929f68b086, for GNU/Linux
> 4.11.0, stripped
>=20

Additional information:

* when I use the Qt6 instead the Qt6 it works,
* when I compile application without the Qt6 but with the libfmt instead it=
 works,
* when I build the nats.c it fails with same issue trying to link libssl.so=
 for different architecture,
* I use the Scarthgap release.

--35SlOaarQfht1etwnjiJ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>
<div>Hello,</div>
<div><br />I'd like to add <a href=3D"https://github.com/bartiszosti/qt6-ex=
ample" target=3D"_blank" rel=3D"noopener">a simple "Hello World" applicatio=
n</a> based on Qt6 and CMake to my image .<br />I wrote a receipt listed be=
low to do so, but the building fails because the compiler tries to link the=
 libQt6Core.so which is for other architecture, but when I build same appli=
cation through the populated SDK everything works correctly.</div>
<div>&nbsp;</div>
<div>local.conf</div>
<blockquote>
<div>MACHINE =3D "raspberrypi4-64"<br />ENABLE_UART =3D "1"<br />RPI_USE_U_=
BOOT =3D "1"<br />INIT_MANAGER =3D "systemd"</div>
</blockquote>
part of the bblayers.conf<br />
<blockquote>
<div>BBLAYERS ?=3D " \<br />&nbsp; ${TOPDIR}/../poky/meta \<br />&nbsp; ${T=
OPDIR}/../poky/meta-poky \<br />&nbsp; ${TOPDIR}/../poky/meta-yocto-bsp \<b=
r />&nbsp; ${TOPDIR}/../meta-openembedded/meta-oe \<br />&nbsp; ${TOPDIR}/.=
./meta-openembedded/meta-python \<br />&nbsp; ${TOPDIR}/../meta-qt6 \<br />=
&nbsp; ${TOPDIR}/../meta-xware \<br />&nbsp; ${TOPDIR}/../meta-raspberrypi =
\<br />&nbsp; "</div>
</blockquote>
</div>
<div>myimage.bb<br />
<blockquote>
<div>
<div>IMAGE_FEATURES =3D "\<br />&nbsp; &nbsp; ssh-server-openssh \<br />&nb=
sp; &nbsp; ${EXTRA_IMAGE_FEATURES} \<br />&nbsp; &nbsp; "</div>
<div>IMAGE_INSTALL =3D "\<br />&nbsp; &nbsp; packagegroup-core-boot \<br />=
&nbsp; &nbsp; ${CORE_IMAGE_EXTRA_INSTALL} \<br />&nbsp; &nbsp; qt6-example =
\<br />&nbsp; &nbsp; "</div>
<div>inherit core-image</div>
</div>
<div>qt6-example_qit.bb<br />
<blockquote>
<div>LICENSE =3D "CLOSED"</div>
<div>SRC_URI =3D "git://github.com/bartiszosti/qt6-example.git;branch=3Dmas=
ter;protocol=3Dhttps"<br />SRCREV =3D "${AUTOREV}"</div>
<div>S =3D "${WORKDIR}/git"</div>
<div>inherit qt6-cmake populate_sdk_qt6&nbsp;</div>
</blockquote>
bitbake qt6-example<br />NOTE: Reconnecting to bitbake server...<br />NOTE:=
 Retrying server connection (#1)... (09:43:44.480895)<br />NOTE: Reconnecti=
ng to bitbake server...<br />NOTE: Previous bitbake instance shutting down?=
, waiting to retry... (09:43:44.482284)<br />NOTE: Directory listing: ['cac=
he', 'sstate-cache', 'downloads', 'tmp', 'bitbake-cookerdaemon.log', 'conf'=
]<br />NOTE: Retrying server connection (#2)... (09:43:44.629027)<br />Load=
ing cache: 100% |##########################################################=
###########################################################################=
##################| Time: 0:00:01<br />Loaded 4444 entries from dependency =
cache.<br />Parsing recipes: 100% |########################################=
###########################################################################=
##################################| Time: 0:00:01<br />Parsing of 2581 .bb =
files complete (2575 cached, 6 parsed). 4450 targets, 132 skipped, 0 masked=
, 0 errors.<br />NOTE: Resolving any missing task queue dependencies</div>
</blockquote>
<div>
<blockquote>
<div>Build Configuration:<br />BB_VERSION &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; =3D "2.8.0"<br />BUILD_SYS &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D "=
x86_64-linux"<br />NATIVELSBSTRING &nbsp; &nbsp; &nbsp;=3D "universal"<br /=
>TARGET_SYS &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D "aarch64-poky-linux"<br =
/>MACHINE &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D "raspberrypi4=
-64"<br />DISTRO &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D "poky=
"<br />DISTRO_VERSION &nbsp; &nbsp; &nbsp; =3D "5.0.2"<br />TUNE_FEATURES &=
nbsp; &nbsp; &nbsp; &nbsp;=3D "aarch64 crc cortexa72"<br />TARGET_FPU &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; =3D ""<br />meta &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />meta-poky &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp;<br />meta-yocto-bsp &nbsp; &nbsp; &nbsp; =3D "scarthgap:a72=
5df1839a23b11ae1bace531d242bfc1ab98e0"<br />meta-oe &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp;<br />meta-python &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p;=3D "scarthgap:78a14731cf0cf38a19ff8bd0e9255b319afaf3a7"<br />meta-qt6 &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D "6.8:b7dd88b6283cb9f8d48c951ec6=
fc085736e28f1b"<br />meta-xware &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D "mas=
ter:6c5685c3007b60b224d50cd68db5e26aaf0042b4"<br />meta-raspberrypi &nbsp; =
&nbsp; =3D "scarthgap:1918a27419dcd5e79954c0dc0edddcde91057a7e"</div>
<div>Sstate summary: Wanted 9 Local 1 Mirrors 0 Missed 8 Current 358 (11% m=
atch, 97% complete)########################################################=
############ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | ETA: &nbsp;=
0:00:00<br />Removing 1 stale sstate objects for arch cortexa72: 100% |####=
###########################################################################=
###################################| Time: 0:00:00<br />NOTE: Executing Tas=
ks<br />ERROR: qt6-example-git-r0 do_compile: ExecutionError('/mnt/yocto_dr=
ive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-example/git/temp/run.do_com=
pile.3592057', 1, None, None)<br />ERROR: Logfile of failure stored in: /mn=
t/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-example/git/temp/=
log.do_compile.3592057<br />Log data follows:<br />| DEBUG: Executing shell=
 function do_compile<br />| NOTE: VERBOSE=3D1 cmake --build /mnt/yocto_driv=
e/rpi/build/tmp/work/cortexa72-poky-linux/qt6-example/git/build --target al=
l --<br />| Change Dir: '/mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky=
-linux/qt6-example/git/build'<br />|&nbsp;<br />| Run Build Command(s): nin=
ja -v -j 64 all<br />| [1/4] cd /mnt/yocto_drive/rpi/build/tmp/work/cortexa=
72-poky-linux/qt6-example/git/build &amp;&amp; /mnt/yocto_drive/rpi/build/t=
mp/work/cortexa72-poky-linux/qt6-example/git/recipe-sysroot-native/usr/bin/=
cmake -E cmake_autogen /mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-l=
inux/qt6-example/git/build/CMakeFiles/qt6_example_autogen.dir/AutogenInfo.j=
son "" &amp;&amp; /mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/=
qt6-example/git/recipe-sysroot-native/usr/bin/cmake -E touch /mnt/yocto_dri=
ve/rpi/build/tmp/work/cortexa72-poky-linux/qt6-example/git/build/qt6_exampl=
e_autogen/timestamp &amp;&amp; /mnt/yocto_drive/rpi/build/tmp/work/cortexa7=
2-poky-linux/qt6-example/git/recipe-sysroot-native/usr/bin/cmake -E cmake_t=
ransform_depfile Ninja gccdepfile /mnt/yocto_drive/rpi/build/tmp/work/corte=
xa72-poky-linux/qt6-example/git/git /mnt/yocto_drive/rpi/build/tmp/work/cor=
texa72-poky-linux/qt6-example/git/git /mnt/yocto_drive/rpi/build/tmp/work/c=
ortexa72-poky-linux/qt6-example/git/build /mnt/yocto_drive/rpi/build/tmp/wo=
rk/cortexa72-poky-linux/qt6-example/git/build /mnt/yocto_drive/rpi/build/tm=
p/work/cortexa72-poky-linux/qt6-example/git/build/qt6_example_autogen/deps =
/mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-example/git/bu=
ild/CMakeFiles/d/f5ba9415f9a09417c93efc6d2af7f1b4467b21b42eac981bba83ca2c89=
f8e3b5.d<br />| AutoGen: Refreshing parse cache because it doesn't exist.<b=
r />| AutoMoc: Generating "BIN:/qt6_example_autogen/moc_predefs.h", because=
 it doesn't exist.<br />| /mnt/yocto_drive/rpi/build/tmp/work/cortexa72-pok=
y-linux/qt6-example/git/recipe-sysroot-native/usr/bin/aarch64-poky-linux/aa=
rch64-poky-linux-g++ -dM -E -c /mnt/yocto_drive/rpi/build/tmp/work/cortexa7=
2-poky-linux/qt6-example/git/recipe-sysroot-native/usr/share/cmake-3.28/Mod=
ules/CMakeCXXCompilerABI.cpp -DQT_CORE_LIB -DQT_NO_DEBUG -I/mnt/yocto_drive=
/rpi/build/tmp/work/cortexa72-poky-linux/qt6-example/git/recipe-sysroot-nat=
ive/usr/include/QtCore -I/mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky=
-linux/qt6-example/git/recipe-sysroot-native/usr/include -I/mnt/yocto_drive=
/rpi/build/tmp/work/cortexa72-poky-linux/qt6-example/git/recipe-sysroot-nat=
ive/usr/lib/mkspecs/linux-g++ -I/mnt/yocto_drive/rpi/build/tmp/work/cortexa=
72-poky-linux/qt6-example/git/recipe-sysroot-native/usr/lib/aarch64-poky-li=
nux/gcc/aarch64-poky-linux/13.3.0/include -I/mnt/yocto_drive/rpi/build/tmp/=
work/cortexa72-poky-linux/qt6-example/git/recipe-sysroot-native/usr/lib/aar=
ch64-poky-linux/gcc/aarch64-poky-linux/13.3.0/include-fixed -I/mnt/yocto_dr=
ive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-example/git/recipe-sysroot/=
usr/include/c++/13.3.0 -I/mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky=
-linux/qt6-example/git/recipe-sysroot/usr/include/c++/13.3.0/aarch64-poky-l=
inux -I/mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-example=
/git/recipe-sysroot/usr/include/c++/13.3.0/backward -I/mnt/yocto_drive/rpi/=
build/tmp/work/cortexa72-poky-linux/qt6-example/git/recipe-sysroot/usr/lib/=
aarch64-poky-linux/13.3.0/include -I/mnt/yocto_drive/rpi/build/tmp/work/cor=
texa72-poky-linux/qt6-example/git/recipe-sysroot/usr/include<br />| AutoGen=
: Parsing "SRC:/main.cpp"<br />| AutoMoc: Generating MOC compilation "BIN:/=
qt6_example_autogen/mocs_compilation.cpp"<br />| AutoMoc: Merging MOC depen=
dencies into "BIN:/qt6_example_autogen/deps"<br />| AutoGen: Writing the pa=
rse cache file "BIN:/CMakeFiles/qt6_example_autogen.dir/ParseCache.txt"<br =
/>| AutoGen: Writing the settings file "BIN:/CMakeFiles/qt6_example_autogen=
.dir/AutogenUsed.txt"<br />| [2/4] /mnt/yocto_drive/rpi/build/tmp/work/cort=
exa72-poky-linux/qt6-example/git/recipe-sysroot-native/usr/bin/aarch64-poky=
-linux/aarch64-poky-linux-g++ --sysroot=3D/mnt/yocto_drive/rpi/build/tmp/wo=
rk/cortexa72-poky-linux/qt6-example/git/recipe-sysroot -DQT_CORE_LIB -DQT_N=
O_DEBUG -I/mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-exam=
ple/git/recipe-sysroot-native/usr/include/QtCore -I/mnt/yocto_drive/rpi/bui=
ld/tmp/work/cortexa72-poky-linux/qt6-example/git/recipe-sysroot-native/usr/=
include -I/mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-exam=
ple/git/recipe-sysroot-native/usr/lib/mkspecs/linux-g++ -isystem /mnt/yocto=
_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-example/git/build/qt6_ex=
ample_autogen/include -mcpu=3Dcortex-a72+crc -mbranch-protection=3Dstandard=
 -fstack-protector-strong &nbsp; -Wformat -Wformat-security -Werror=3Dforma=
t-security &nbsp;--sysroot=3D/mnt/yocto_drive/rpi/build/tmp/work/cortexa72-=
poky-linux/qt6-example/git/recipe-sysroot &nbsp;-O2 -pipe -g -feliminate-un=
used-debug-types &nbsp;-fvisibility-inlines-hidden -fPIC -MD -MT CMakeFiles=
/qt6_example.dir/qt6_example_autogen/mocs_compilation.cpp.o -MF CMakeFiles/=
qt6_example.dir/qt6_example_autogen/mocs_compilation.cpp.o.d -o CMakeFiles/=
qt6_example.dir/qt6_example_autogen/mocs_compilation.cpp.o -c /mnt/yocto_dr=
ive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-example/git/build/qt6_examp=
le_autogen/mocs_compilation.cpp<br />| [3/4] /mnt/yocto_drive/rpi/build/tmp=
/work/cortexa72-poky-linux/qt6-example/git/recipe-sysroot-native/usr/bin/aa=
rch64-poky-linux/aarch64-poky-linux-g++ --sysroot=3D/mnt/yocto_drive/rpi/bu=
ild/tmp/work/cortexa72-poky-linux/qt6-example/git/recipe-sysroot -DQT_CORE_=
LIB -DQT_NO_DEBUG -I/mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linu=
x/qt6-example/git/recipe-sysroot-native/usr/include/QtCore -I/mnt/yocto_dri=
ve/rpi/build/tmp/work/cortexa72-poky-linux/qt6-example/git/recipe-sysroot-n=
ative/usr/include -I/mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linu=
x/qt6-example/git/recipe-sysroot-native/usr/lib/mkspecs/linux-g++ -isystem =
/mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-example/git/bu=
ild/qt6_example_autogen/include -mcpu=3Dcortex-a72+crc -mbranch-protection=
=3Dstandard -fstack-protector-strong &nbsp; -Wformat -Wformat-security -Wer=
ror=3Dformat-security &nbsp;--sysroot=3D/mnt/yocto_drive/rpi/build/tmp/work=
/cortexa72-poky-linux/qt6-example/git/recipe-sysroot &nbsp;-O2 -pipe -g -fe=
liminate-unused-debug-types &nbsp;-fvisibility-inlines-hidden -fPIC -MD -MT=
 CMakeFiles/qt6_example.dir/main.cpp.o -MF CMakeFiles/qt6_example.dir/main.=
cpp.o.d -o CMakeFiles/qt6_example.dir/main.cpp.o -c /mnt/yocto_drive/rpi/bu=
ild/tmp/work/cortexa72-poky-linux/qt6-example/git/git/main.cpp<br />| [4/4]=
 : &amp;&amp; /mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-=
example/git/recipe-sysroot-native/usr/bin/aarch64-poky-linux/aarch64-poky-l=
inux-g++ --sysroot=3D/mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-lin=
ux/qt6-example/git/recipe-sysroot -mcpu=3Dcortex-a72+crc -mbranch-protectio=
n=3Dstandard -fstack-protector-strong &nbsp; -Wformat -Wformat-security -We=
rror=3Dformat-security &nbsp;--sysroot=3D/mnt/yocto_drive/rpi/build/tmp/wor=
k/cortexa72-poky-linux/qt6-example/git/recipe-sysroot &nbsp;-O2 -pipe -g -f=
eliminate-unused-debug-types &nbsp;-fvisibility-inlines-hidden &nbsp;-mcpu=
=3Dcortex-a72+crc -mbranch-protection=3Dstandard -fstack-protector-strong &=
nbsp; -Wformat -Wformat-security -Werror=3Dformat-security &nbsp;--sysroot=
=3D/mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-example/git=
/recipe-sysroot &nbsp;-O2 -pipe -g -feliminate-unused-debug-types &nbsp;-fv=
isibility-inlines-hidden -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed &nb=
sp;-Wl,-z,relro,-z,now -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed &nbsp=
;-Wl,-z,relro,-z,now CMakeFiles/qt6_example.dir/qt6_example_autogen/mocs_co=
mpilation.cpp.o CMakeFiles/qt6_example.dir/main.cpp.o -o qt6_example &nbsp;=
-Wl,-rpath,-native/usr/lib &nbsp;/mnt/yocto_drive/rpi/build/tmp/work/cortex=
a72-poky-linux/qt6-example/git/recipe-sysroot-native/usr/lib/libQt6Core.so.=
6.8.0 &amp;&amp; :<br />| FAILED: qt6_example<br />| : &amp;&amp; /mnt/yoct=
o_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-example/git/recipe-sysr=
oot-native/usr/bin/aarch64-poky-linux/aarch64-poky-linux-g++ --sysroot=3D/m=
nt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-example/git/reci=
pe-sysroot -mcpu=3Dcortex-a72+crc -mbranch-protection=3Dstandard -fstack-pr=
otector-strong &nbsp; -Wformat -Wformat-security -Werror=3Dformat-security =
&nbsp;--sysroot=3D/mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/=
qt6-example/git/recipe-sysroot &nbsp;-O2 -pipe -g -feliminate-unused-debug-=
types &nbsp;-fvisibility-inlines-hidden &nbsp;-mcpu=3Dcortex-a72+crc -mbran=
ch-protection=3Dstandard -fstack-protector-strong &nbsp; -Wformat -Wformat-=
security -Werror=3Dformat-security &nbsp;--sysroot=3D/mnt/yocto_drive/rpi/b=
uild/tmp/work/cortexa72-poky-linux/qt6-example/git/recipe-sysroot &nbsp;-O2=
 -pipe -g -feliminate-unused-debug-types &nbsp;-fvisibility-inlines-hidden =
-Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed &nbsp;-Wl,-z,relro,-z,now -W=
l,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed &nbsp;-Wl,-z,relro,-z,now CMak=
eFiles/qt6_example.dir/qt6_example_autogen/mocs_compilation.cpp.o CMakeFile=
s/qt6_example.dir/main.cpp.o -o qt6_example &nbsp;-Wl,-rpath,-native/usr/li=
b &nbsp;/mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-exampl=
e/git/recipe-sysroot-native/usr/lib/libQt6Core.so.6.8.0 &amp;&amp; :<br />|=
 /mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-example/git/r=
ecipe-sysroot-native/usr/bin/aarch64-poky-linux/../../libexec/aarch64-poky-=
linux/gcc/aarch64-poky-linux/13.3.0/ld: /mnt/yocto_drive/rpi/build/tmp/work=
/cortexa72-poky-linux/qt6-example/git/recipe-sysroot-native/usr/lib/libQt6C=
ore.so.6.8.0: error adding symbols: file in wrong format<br />| collect2: e=
rror: ld returned 1 exit status<br />| ninja: build stopped: subcommand fai=
led.<br />|&nbsp;<br />| WARNING: exit code 1 from a shell command.<br />ER=
ROR: Task (/mnt/yocto_drive/rpi/build/../meta-xware/recipes-example/qt6-exa=
mple/qt6-example_git.bb:do_compile) failed with exit code '1'<br />NOTE: Ta=
sks Summary: Attempted 1086 tasks of which 1082 didn't need to be rerun and=
 1 failed.</div>
<div>Summary: 1 task failed:<br />&nbsp; /mnt/yocto_drive/rpi/build/../meta=
-xware/recipes-example/qt6-example/qt6-example_git.bb:do_compile<br />Summa=
ry: There was 1 ERROR message, returning a non-zero exit code.</div>
</blockquote>
file /mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-example/g=
it/recipe-sysroot-native/usr/lib/libQt6Core.so.6.8.0<br />
<blockquote>
<div>/mnt/yocto_drive/rpi/build/tmp/work/cortexa72-poky-linux/qt6-example/g=
it/recipe-sysroot-native/usr/lib/libQt6Core.so.6.8.0: ELF 64-bit LSB shared=
 object, x86-64, version 1 (GNU/Linux), dynamically linked, interpreter /li=
b64/ld-linux-x86-64.so.2, BuildID[sha1]=3D934a77551cc57b04260e0d854158e8929=
f68b086, for GNU/Linux 4.11.0, stripped</div>
</blockquote>
</div>
<div><br />Additional information:</div>
<ul>
<li>when I use the Qt6 instead the Qt6 it works,</li>
<li>when I compile application without the Qt6 but with the libfmt instead =
it works,</li>
<li>when I build the nats.c it fails with same issue trying to link libssl.=
so for different architecture,</li>
<li>I use the Scarthgap release.</li>
</ul>
</div>

--35SlOaarQfht1etwnjiJ--

