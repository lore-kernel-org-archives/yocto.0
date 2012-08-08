Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8F71E002A5
	for <yocto@yoctoproject.org>; Wed,  8 Aug 2012 13:24:18 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so2360322pbb.35
	for <yocto@yoctoproject.org>; Wed, 08 Aug 2012 13:24:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:subject:date:message-id:to:mime-version:x-mailer;
	bh=RNm0nOfkdG2c+fHfHsJ6fz7mtEtVobAXSKlpBthQ6XY=;
	b=zFuGauDvtjE8U20kdYOs1k/rlolLEG6OYLA3uMYyB1cjXv3aiNcwoUdkSjKVMJuu1Z
	i8lEBFHmlM8Nv5ursT/qeurMjx5BFL3pFp7j9qn1cWdm7vNn3xKKbult/kOHgn5xiPrd
	wCdXt0MrO2joW7ykdvfZ9EqOHD8lRPeryaPCy8mVufel4Mg5zaVa+uNYIYRKMGZPr66Q
	/MClju0EyHOTH+pHNDVJzruK1oefhy4rKnelhrYzWfZLCt0cPrtc+RPIgZuaarpMmwuC
	7RK3IdeivnsKf55Q3fm2brNoQ+Tmd6wZ2LjbV8eHwRVJWNbaukFix5AMueAb4nFb1RrP
	eAdg==
Received: by 10.68.129.131 with SMTP id nw3mr21317387pbb.43.1344457458656;
	Wed, 08 Aug 2012 13:24:18 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id pt1sm7709225pbc.4.2012.08.08.13.24.16
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 08 Aug 2012 13:24:17 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Thu, 9 Aug 2012 00:24:11 +0400
Message-Id: <735CD356-A6DB-4939-9C39-EDB0A15D7343@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1278)
X-Mailer: Apple Mail (2.1278)
Subject: poky/bernard: gcc-4.5.1 configure: error: cannot compute suffix of object files: cannot compile
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 08 Aug 2012 20:24:19 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_04D4AD01-2866-41C3-957E-F03747E97BD7"

--Apple-Mail=_04D4AD01-2866-41C3-957E-F03747E97BD7
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,
      I'm trying to get build using the bernard branch, for a PowerPC440 =
target, and I get a build failure for gcc-4.5.1:

NOTE: Running task 500 of 1502 (ID: 590, =
virtual:native:/tool/yocto/poky/meta/recipes-core/readline/readline_6.1.bb=
, do_install)
ERROR: Function 'do_compile' failed (see =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1-=
r4/temp/log.do_compile.9332 for further information)
ERROR: Logfile of failure stored in: =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1-=
r4/temp/log.do_compile.9332
Log data follows:
| NOTE: make -j 6 ARCH_FLAGS_FOR_TARGET=3D-m32 -mcpu=3D440  -mfpu-soft =
-isystem/tool/yocto/poky/build/tmp/sysroots/virtex5/usr/include
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1=
-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux'
| make[2]: Entering directory =
`/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1=
-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/libdecnumber'
| make[2]: Nothing to be done for `all'.
| make[2]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1=
-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/libdecnumber'
| make[2]: Entering directory =
`/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1=
-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/zlib'
| true "AR_FLAGS=3Drc" "CC_FOR_BUILD=3Dgcc" =
"CFLAGS=3D-isystem/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/inc=
lude -O2" =
"CXXFLAGS=3D-isystem/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/i=
nclude -O2" =
"CFLAGS_FOR_BUILD=3D-isystem/tool/yocto/poky/build/tmp/sysroots/x86_64-lin=
ux/usr/include -O2" "CFLAGS_FOR_TARGET=3D-g =
-isystem/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/include =
-O2" "INSTALL=3D/usr/bin/install -c" "INSTALL_DATA=3D/usr/bin/install -c =
-m 644" "INSTALL_PROGRAM=3D/usr/bin/install -c" =
"INSTALL_SCRIPT=3D/usr/bin/install -c" =
"LDFLAGS=3D-L/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib =
-Wl,-rpath-link,/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib =
-Wl,-rpath,/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib =
-Wl,-O1" =
"LIBCFLAGS=3D-isystem/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/=
include -O2" "LIBCFLAGS_FOR_TARGET=3D-g =
-isystem/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/include =
-O2" "MAKE=3Dmake" "MAKEINFO=3Dmakeinfo --split-size=3D5000000 =
--split-size=3D5000000 " "PICFLAG=3D" "PICFLAG_FOR_TARGET=3D" =
"SHELL=3D/bin/sh" "EXPECT=3Dexpect" "RUNTEST=3Druntest" "RUNTESTFLAGS=3D" =
"exec_prefix=3D/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr" =
"infodir=3D/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/share/info=
" =
"libdir=3D/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/ppc440-=
poky-linux.gcc-cross-initial" =
"prefix=3D/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr" =
"tooldir=3D/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/powerpc-po=
ky-linux" "AR=3Dar" "AS=3Das" "CC=3Dgcc" "CXX=3Dg++" "LD=3Dld" =
"LIBCFLAGS=3D-isystem/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/=
include -O2" "NM=3Dnm" "PICFLAG=3D" "RANLIB=3Dranlib" "DESTDIR=3D" =
DO=3Dall multi-do # make
| make[2]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1=
-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/zlib'
| make[2]: Entering directory =
`/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1=
-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/libiberty'
| make[2]: Entering directory =
`/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1=
-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/intl'
| make[2]: Nothing to be done for `all'.
| make[2]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1=
-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/intl'
| make[2]: Entering directory =
`/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1=
-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/build-x86_64-linux/lib=
iberty'
| make[3]: Entering directory =
`/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1=
-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/build-x86_64-linux/lib=
iberty/testsuite'
| make[3]: Nothing to be done for `all'.
| make[3]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1=
-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/build-x86_64-linux/lib=
iberty/testsuite'
| make[2]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1=
-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/build-x86_64-linux/lib=
iberty'
| make[3]: Entering directory =
`/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1=
-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/libiberty/testsuite'
| make[3]: Nothing to be done for `all'.
| make[3]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1=
-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/libiberty/testsuite'
| make[2]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1=
-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/libiberty'
| make[2]: Entering directory =
`/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1=
-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/build-x86_64-linux/fix=
includes'
| make[2]: Nothing to be done for `all'.
| make[2]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1=
-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/build-x86_64-linux/fix=
includes'
| make[2]: Entering directory =
`/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1=
-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/libcpp'
| test -f config.h || (rm -f stamp-h1 && make stamp-h1)
| make[2]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1=
-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/libcpp'
| make[2]: Entering directory =
`/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1=
-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/fixincludes'
| make[2]: Nothing to be done for `all'.
| make[2]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1=
-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/fixincludes'
| make[2]: Entering directory =
`/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1=
-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/gcc'
| make[2]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1=
-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/gcc'
| Checking multilib configuration for libgcc...
| Configuring in powerpc-poky-linux/libgcc
| configure: loading cache ./config.cache
| checking for --enable-version-specific-runtime-libs... no
| checking for a BSD-compatible install... /usr/bin/install -c
| checking for gawk... gawk
| checking build system type... x86_64-pc-linux-gnu
| checking host system type... powerpc-poky-linux-gnu
| checking for powerpc-poky-linux-ar... powerpc-poky-linux-ar
| checking for powerpc-poky-linux-lipo... powerpc-poky-linux-lipo
| checking for powerpc-poky-linux-nm... =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1-=
r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/./gcc/nm
| checking for powerpc-poky-linux-ranlib... powerpc-poky-linux-ranlib
| checking for powerpc-poky-linux-strip... powerpc-poky-linux-strip
| checking whether ln -s works... yes
| checking for powerpc-poky-linux-gcc... =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1-=
r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/./gcc/xgcc =
-B/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.=
1-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/./gcc/ -m32 =
-mcpu=3D440  -mfpu-soft =
-isystem/tool/yocto/poky/build/tmp/sysroots/virtex5/usr/include =
-B/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/powerpc-poky-linux/=
bin/ =
-B/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/powerpc-poky-linux/=
lib/ -isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/powerpc-poky-linux/in=
clude -isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/powerpc-poky-linux/sy=
s-include --sysroot=3D/tool/yocto/poky/build/tmp/sysroots/virtex5
| checking for suffix of object files... configure: error: in =
`/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1=
-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/powerpc-poky-linux/lib=
gcc':
| configure: error: cannot compute suffix of object files: cannot =
compile
| See `config.log' for more details.
| make[1]: *** [configure-target-libgcc] Error 1
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1=
-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux'
| make: *** [all] Error 2
| FATAL: oe_runmake failed
| ERROR: Function 'do_compile' failed (see =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1-=
r4/temp/log.do_compile.9332 for further information)
NOTE: package gcc-cross-initial-4.5.1-r4: task do_compile: Failed
ERROR: Task 1112 =
(/tool/yocto/poky/meta/recipes-devtools/gcc/gcc-cross-initial_4.5.1.bb, =
do_compile) failed with exit code '1'

What should I do to get past this error?

Best regards,

Elvis Dowson=

--Apple-Mail=_04D4AD01-2866-41C3-957E-F03747E97BD7
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
">Hi,<div>&nbsp; &nbsp; &nbsp; I'm trying to get build using the bernard =
branch, for a PowerPC440 target, and I get a build failure for =
gcc-4.5.1:</div><div><br></div><div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">NOTE: Running task 500 of 1502 (ID: 590, =
virtual:native:/tool/yocto/poky/meta/recipes-core/readline/readline_6.1.bb=
, do_install)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">ERROR: Function 'do_compile' failed (see =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1-=
r4/temp/log.do_compile.9332 for further =
information)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">ERROR: Logfile of failure stored in: =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1-=
r4/temp/log.do_compile.9332</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">Log data =
follows:</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">| NOTE: make -j 6 ARCH_FLAGS_FOR_TARGET=3D-m32 -mcpu=3D440 =
&nbsp;-mfpu-soft =
-isystem/tool/yocto/poky/build/tmp/sysroots/virtex5/usr/include</font></di=
v><div><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1=
-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux'</font></div><div><fon=
t class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[2]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1=
-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/libdecnumber'</font></=
div><div><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
make[2]: Nothing to be done for `all'.</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[2]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1=
-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/libdecnumber'</font></=
div><div><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
make[2]: Entering directory =
`/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1=
-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/zlib'</font></div><div=
><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| true =
"AR_FLAGS=3Drc" "CC_FOR_BUILD=3Dgcc" =
"CFLAGS=3D-isystem/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/inc=
lude -O2" =
"CXXFLAGS=3D-isystem/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/i=
nclude -O2" =
"CFLAGS_FOR_BUILD=3D-isystem/tool/yocto/poky/build/tmp/sysroots/x86_64-lin=
ux/usr/include -O2" "CFLAGS_FOR_TARGET=3D-g =
-isystem/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/include =
-O2" "INSTALL=3D/usr/bin/install -c" "INSTALL_DATA=3D/usr/bin/install -c =
-m 644" "INSTALL_PROGRAM=3D/usr/bin/install -c" =
"INSTALL_SCRIPT=3D/usr/bin/install -c" =
"LDFLAGS=3D-L/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib =
-Wl,-rpath-link,/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib =
-Wl,-rpath,/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib =
-Wl,-O1" =
"LIBCFLAGS=3D-isystem/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/=
include -O2" "LIBCFLAGS_FOR_TARGET=3D-g =
-isystem/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/include =
-O2" "MAKE=3Dmake" "MAKEINFO=3Dmakeinfo --split-size=3D5000000 =
--split-size=3D5000000 " "PICFLAG=3D" "PICFLAG_FOR_TARGET=3D" =
"SHELL=3D/bin/sh" "EXPECT=3Dexpect" "RUNTEST=3Druntest" "RUNTESTFLAGS=3D" =
"exec_prefix=3D/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr" =
"infodir=3D/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/share/info=
" =
"libdir=3D/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/ppc440-=
poky-linux.gcc-cross-initial" =
"prefix=3D/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr" =
"tooldir=3D/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/powerpc-po=
ky-linux" "AR=3Dar" "AS=3Das" "CC=3Dgcc" "CXX=3Dg++" "LD=3Dld" =
"LIBCFLAGS=3D-isystem/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/=
include -O2" "NM=3Dnm" "PICFLAG=3D" "RANLIB=3Dranlib" "DESTDIR=3D" =
DO=3Dall multi-do # make</font></div><div><font class=3D"Apple-style-span"=
 face=3D"Monaco" size=3D"2">| make[2]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1=
-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/zlib'</font></div><div=
><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[2]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1=
-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/libiberty'</font></div=
><div><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
make[2]: Entering directory =
`/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1=
-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/intl'</font></div><div=
><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[2]: =
Nothing to be done for `all'.</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[2]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1=
-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/intl'</font></div><div=
><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[2]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1=
-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/build-x86_64-linux/lib=
iberty'</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[3]: Entering directory =
`/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1=
-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/build-x86_64-linux/lib=
iberty/testsuite'</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[3]: Nothing to be done for =
`all'.</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[3]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1=
-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/build-x86_64-linux/lib=
iberty/testsuite'</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[2]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1=
-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/build-x86_64-linux/lib=
iberty'</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[3]: Entering directory =
`/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1=
-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/libiberty/testsuite'</=
font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[3]: Nothing to be done for =
`all'.</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[3]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1=
-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/libiberty/testsuite'</=
font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[2]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1=
-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/libiberty'</font></div=
><div><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
make[2]: Entering directory =
`/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1=
-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/build-x86_64-linux/fix=
includes'</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[2]: Nothing to be done for =
`all'.</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[2]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1=
-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/build-x86_64-linux/fix=
includes'</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[2]: Entering directory =
`/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1=
-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/libcpp'</font></div><d=
iv><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| test -f =
config.h || (rm -f stamp-h1 &amp;&amp; make =
stamp-h1)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[2]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1=
-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/libcpp'</font></div><d=
iv><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
make[2]: Entering directory =
`/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1=
-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/fixincludes'</font></d=
iv><div><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
make[2]: Nothing to be done for `all'.</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[2]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1=
-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/fixincludes'</font></d=
iv><div><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
make[2]: Entering directory =
`/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1=
-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/gcc'</font></div><div>=
<font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[2]: =
Leaving directory =
`/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1=
-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/gcc'</font></div><div>=
<font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| Checking =
multilib configuration for libgcc...</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| Configuring in =
powerpc-poky-linux/libgcc</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| configure: =
loading cache ./config.cache</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| checking for =
--enable-version-specific-runtime-libs... no</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| checking for a =
BSD-compatible install... /usr/bin/install -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| checking for =
gawk... gawk</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| checking build system type... =
x86_64-pc-linux-gnu</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| checking host system type... =
powerpc-poky-linux-gnu</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| checking for powerpc-poky-linux-ar... =
powerpc-poky-linux-ar</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| checking for powerpc-poky-linux-lipo... =
powerpc-poky-linux-lipo</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| checking for powerpc-poky-linux-nm... =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1-=
r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/./gcc/nm</font></div><d=
iv><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
checking for powerpc-poky-linux-ranlib... =
powerpc-poky-linux-ranlib</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| checking for =
powerpc-poky-linux-strip... =
powerpc-poky-linux-strip</font></div><div><font class=3D"Apple-style-span"=
 face=3D"Monaco" size=3D"2">| checking whether ln -s works... =
yes</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| checking for powerpc-poky-linux-gcc... =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1-=
r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/./gcc/xgcc =
-B/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.=
1-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/./gcc/ -m32 =
-mcpu=3D440 &nbsp;-mfpu-soft =
-isystem/tool/yocto/poky/build/tmp/sysroots/virtex5/usr/include =
-B/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/powerpc-poky-linux/=
bin/ =
-B/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/powerpc-poky-linux/=
lib/ -isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/powerpc-poky-linux/in=
clude -isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/powerpc-poky-linux/sy=
s-include =
--sysroot=3D/tool/yocto/poky/build/tmp/sysroots/virtex5</font></div><div><=
font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| checking =
for suffix of object files... configure: error: in =
`/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1=
-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux/powerpc-poky-linux/lib=
gcc':</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| configure: error: cannot compute suffix of object files: =
cannot compile</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| See `config.log' for more =
details.</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">| make[1]: *** [configure-target-libgcc] Error =
1</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1=
-r4/gcc-4.5.1/build.x86_64-linux.powerpc-poky-linux'</font></div><div><fon=
t class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make: *** =
[all] Error 2</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| FATAL: oe_runmake =
failed</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| ERROR: Function 'do_compile' failed (see =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gcc-cross-initial-4.5.1-=
r4/temp/log.do_compile.9332 for further =
information)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">NOTE: package gcc-cross-initial-4.5.1-r4: =
task do_compile: Failed</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">ERROR: Task 1112 =
(/tool/yocto/poky/meta/recipes-devtools/gcc/gcc-cross-initial_4.5.1.bb, =
do_compile) failed with exit code =
'1'</font></div></div><div><br></div><div>What should I do to get past =
this error?</div><div><br></div><div>Best =
regards,</div><div><br></div><div>Elvis Dowson</div></body></html>=

--Apple-Mail=_04D4AD01-2866-41C3-957E-F03747E97BD7--
