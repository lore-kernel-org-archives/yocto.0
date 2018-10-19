Return-Path: <dhanush.ks@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A693E00A0A; Fri, 19 Oct 2018 06:58:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (dhanush.ks[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.41 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
	[209.85.221.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 008C6E00971
	for <yocto@yoctoproject.org>; Fri, 19 Oct 2018 06:58:54 -0700 (PDT)
Received: by mail-wr1-f41.google.com with SMTP id r17-v6so5193053wrt.9
	for <yocto@yoctoproject.org>; Fri, 19 Oct 2018 06:58:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=SBugAlBhV2wi3AT5Ch+ucafTI18ah9aYNItC42O1f3I=;
	b=JvKSfHVgSiNBPrs+UtcFLqlSkcbamYWzklnzpJBmU05AIbR9YJVGIzSgpHpEmYqlYz
	3zcxlnJNWd43GMFSBQ4Faf6vEB/tjnTOD9CkmGX/AhJ3wm8jkRSveY+kJn4tzXyTWm8l
	Xx3vLBMxBCX2ldKn9DM/XN5ihFJBry9LVpMCz88oTXMFHHNnvLZ1DXgSwYVyho0EhUk9
	LnDuDsM/nlhQFilgbyXgJpZ/Q0kdZP/qzlkzpKNKKX5b/9x7tNraQm/duZC8TCbrLsk0
	x1qiGUR/+/imN5D1BJBAYV64N+LJq9nwF9QUimtajxl0OSeLntMPk5g2quusuSm7wiuF
	3R4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=SBugAlBhV2wi3AT5Ch+ucafTI18ah9aYNItC42O1f3I=;
	b=IbLmS5cABTHQ37xU0bC/3FPCpgAKGB10FItnqvGkz/x2osIAOHxPoVOkRZUZ1Twrkr
	DEE84djr+Q9tlA8sh+mb0LTRQ4mIuoC7M5YU2SPXHwbhEW9/OpFiqfHXK5IWZ6kyemHJ
	mqL9FT46bBvrOwqssrhm+vLMUu2HngvBzW30S35CJNwQqTS+FSvOxOgnVzudocuItb5g
	pESJAWwiOhfboDtPIqdiVJmU6Sk/CLtaPABmsM/6ZcEBOVWhLrqbPXQdHx9bFB74uJ2r
	LwxdYL88TB+1OyhqUSsN6UysD20X1Ycr1kUZWisbJ42kAG4JDv8lYqvfra2B1Wy6my5y
	lfEQ==
X-Gm-Message-State: ABuFfoiqSatKW97G7EaTLV5jweCNgCbSacKHb2+KRbmwjYcMKG3Ky8dR
	1Jv+PmhLC+O3/H/XhpSWyYBIsQDCS6hh/6JqGPyVAH2nePk=
X-Google-Smtp-Source: ACcGV60F7pVDp2g4GFqpUO/cOWcL6uFiEVc+xg+XpZ3xkb6fFtTC/9lCwLiUoMmGLlBA4HOzNL1ATFR8SVtibZl/TDU=
X-Received: by 2002:adf:f1ce:: with SMTP id
	z14-v6mr33368097wro.214.1539957533456; 
	Fri, 19 Oct 2018 06:58:53 -0700 (PDT)
MIME-Version: 1.0
From: "Dhanush K.S" <dhanush.ks@gmail.com>
Date: Fri, 19 Oct 2018 15:58:41 +0200
Message-ID: <CAKPYHZ63TLXDSps8JRt2EFJxBAM_-aOf1jqb7Fc-9D93JFwTdw@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Busybox_1.23.2 fails at do_compile on Poky-Sumo
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 19 Oct 2018 13:58:56 -0000
Content-Type: multipart/alternative; boundary="000000000000c03e520578954d03"

--000000000000c03e520578954d03
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Yocto,

I'm currently building an image with the busybox_1.23.2.bb recipe included,
using Yocto Sumo 2.5 with the Bitbake version 1.37.0. It is running on a
CentOS host building images for the target ARM cortexa8. This busybox
recipe is placed in another custom layer. Though this recipe compiles
without errors in Poky-Fido, in Poky-Sumo I get compilation errors due to
missing header files. I have pasted a part of the log.do.compile file with
the error.

*# merged configuration written to .config (needs make)*
*#*
*NOTE: make -j 2 LD=3Darm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mfpu=3D=
neon
-mfloat-abi=3Dhard -mcpu=3Dcortex-a8
--sysroot=3D/opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_arm-corte=
x-a8/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0/recipe-s=
ysroot
V=3D1 ARCH=3Darm CROSS_COMPILE=3Darm-poky-linux-gnueabi- SKIP_STRIP=3Dy
busybox_unstripped*
*rm -f .kernelrelease*
*echo 1.23.2 > .kernelrelease*
*/opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/wo=
rk/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0/busybox-1.23.2/scri=
pts/gen_build_files.sh
/opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/wor=
k/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0/busybox-1.23.2
/opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/wor=
k/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0/busybox-1.23.2*
*make -f
/opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/wor=
k/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0/busybox-1.23.2/Makef=
ile
silentoldconfig*
*make -f scripts/Makefile.build obj=3Dscripts/basic*
*/opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/wo=
rk/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0/busybox-1.23.2/scri=
pts/gen_build_files.sh
/opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/wor=
k/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0/busybox-1.23.2
/opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/wor=
k/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0/busybox-1.23.2*
*mkdir -p include*
*make -f scripts/Makefile.build obj=3Dscripts/kconfig silentoldconfig*
*scripts/kconfig/conf -s Config.in*
*#*
*# using defaults found in .config*
*#*
*make -C
/opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/wor=
k/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0/busybox-1.23.2
KBUILD_SRC=3D .kernelrelease*
*rm -f .kernelrelease*
*echo 1.23.2 > .kernelrelease*
*make -f scripts/Makefile.build obj=3Dscripts/basic*
*make -f scripts/Makefile.build obj=3Dapplets*
*  scripts/basic/split-include include/autoconf.h include/config*
*  gcc -Wp,-MD,applets/.usage.d  -Wall -Wstrict-prototypes -O2
-fomit-frame-pointer      -Iinclude -Iinclude -o applets/usage
applets/usage.c  *
*  gcc -Wp,-MD,applets/.applet_tables.d  -Wall -Wstrict-prototypes -O2
-fomit-frame-pointer       -o applets/applet_tables
applets/applet_tables.c  *
*
/opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/wor=
k/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0/busybox-1.23.2/scrip=
ts/mkconfigs
include/bbconfigopts.h include/bbconfigopts_bz2.h*
*make -f scripts/Makefile.build obj=3Dscripts*
*  applets/usage_compressed include/usage_compressed.h applets*
*  applets/applet_tables include/applet_tables.h include/NUM_APPLETS.h*
*  gcc -Wp,-MD,applets/.usage_pod.d  -Wall -Wstrict-prototypes -O2
-fomit-frame-pointer      -Iinclude -Iinclude -o applets/usage_pod
applets/usage_pod.c  *
*  arm-poky-linux-gnueabi-gcc -Wp,-MD,applets/.applets.o.d   -std=3Dgnu99
-Iinclude -Ilibbb  -include include/autoconf.h -D_GNU_SOURCE -DNDEBUG
-D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=3D64
-D"BB_VER=3DKBUILD_STR(1.23.2)" -DBB_BT=3DAUTOCONF_TIMESTAMP  -Wall -Wshado=
w
-Wwrite-strings -Wundef -Wstrict-prototypes -Wunused -Wunused-parameter
-Wunused-function -Wunused-value -Wmissing-prototypes
-Wmissing-declarations -Wno-format-security -Wdeclaration-after-statement
-Wold-style-definition -fno-builtin-strlen -finline-limit=3D0
-fomit-frame-pointer -ffunction-sections -fdata-sections
-fno-guess-branch-probability -funsigned-char -static-libgcc
-falign-functions=3D1 -falign-jumps=3D1 -falign-labels=3D1 -falign-loops=3D=
1
-fno-unwind-tables -fno-asynchronous-unwind-tables -Os -O2 -pipe -g
-feliminate-unused-debug-types
-fdebug-prefix-map=3D/opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_=
arm-cortex-a8/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0=
=3D/usr/src/debug/busybox/1.23.2-r0
-fdebug-prefix-map=3D/opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_=
arm-cortex-a8/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0=
/recipe-sysroot=3D
-fdebug-prefix-map=3D/opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_=
arm-cortex-a8/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0=
/recipe-sysroot-native=3D
-mtune=3Dcortex-a8  -O2 -pipe -g -feliminate-unused-debug-types
-fdebug-prefix-map=3D/opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_=
arm-cortex-a8/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0=
=3D/usr/src/debug/busybox/1.23.2-r0
-fdebug-prefix-map=3D/opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_=
arm-cortex-a8/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0=
/recipe-sysroot=3D
-fdebug-prefix-map=3D/opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_=
arm-cortex-a8/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0=
/recipe-sysroot-native=3D
-mtune=3Dcortex-a8   -D"KBUILD_STR(s)=3D#s"
-D"KBUILD_BASENAME=3DKBUILD_STR(applets)"
-D"KBUILD_MODNAME=3DKBUILD_STR(applets)" -c -o applets/applets.o
applets/applets.c*
*In file included from
/opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/wor=
k/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0/recipe-sysroot-nativ=
e/usr/lib/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/7.3.0/include-f=
ixed/syslimits.h:7:0,*
*                 from
/opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/wor=
k/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0/recipe-sysroot-nativ=
e/usr/lib/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/7.3.0/include-f=
ixed/limits.h:34,*
*                 from include/platform.h:141,*
*                 from include/libbb.h:13,*
*                 from include/busybox.h:8,*
*                 from applets/applets.c:9:*
*/opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/wo=
rk/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0/recipe-sysroot-nati=
ve/usr/lib/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/7.3.0/include-=
fixed/limits.h:194:61:
error: no include path in which to search for limits.h*
* #include_next <limits.h>  /* recurse down to the real one */*
*                                                             ^*
*In file included from include/libbb.h:13:0,*
*                 from include/busybox.h:8,*
*                 from applets/applets.c:9:*
*include/platform.h:152:11: fatal error: byteswap.h: No such file or
directory*
* # include <byteswap.h>*
*           ^~~~~~~~~~~~*
*compilation terminated.*
*make[1]: *** [scripts/Makefile.build:198: applets/applets.o] Error 1*
*make[1]: *** Waiting for unfinished jobs....*
*make: *** [Makefile:373: applets_dir] Error 2*
*ERROR: oe_runmake failed*
*WARNING:
/opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/wor=
k/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0/temp/run.do_compile.=
26870:1
exit 1 from 'exit 1'*
*ERROR: Function failed: do_compile (log file is located at
/opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/wor=
k/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0/temp/log.do_compile.=
26870)*

Both limits.h and byteswap.h don't exist in Poky-Fido as well, but compiles
without problems, unlike on Sumo. Does this have to do with the wrong
Toolchains used or due to glibc (FYI: glibc_2.27 is been used)? If it has
to do with the Toolchains, which one should I be using and how do I go
about it?

Here is the Build Config:

Build Configuration:
BB_VERSION           =3D "1.37.0"
BUILD_SYS            =3D "x86_64-linux"
NATIVELSBSTRING      =3D "universal-4.8"
TARGET_SYS           =3D "arm-poky-linux-gnueabi"
MACHINE              =3D "arm-cortex-a8"
DISTRO               =3D "poky"
DISTRO_VERSION       =3D "2.5"
TUNE_FEATURES        =3D "arm armv7a vfp neon callconvention-hard cortexa8"
TARGET_FPU           =3D "hard"
meta-networking
meta-python          =3D "master:45ee3c0e98bd3ed81419aaeae1e7324e486161a2"
meta-userbsp-ti
meta
meta-poky
meta-yocto-bsp
meta-user-common      =3D "<unknown>:<unknown>"
meta-oe              =3D "master:45ee3c0e98bd3ed81419aaeae1e7324e486161a2"
workspace            =3D "<unknown>:<unknown>"

Thanks!
Regards,

Mit freundlichen Gr=C3=BC=C3=9Fen / Best Regards,
Dhanush

--000000000000c03e520578954d03
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:georgia,=
serif"><div class=3D"gmail_default">Hello Yocto,</div><div class=3D"gmail_d=
efault"><br></div><div class=3D"gmail_default">I&#39;m currently building a=
n image with the=C2=A0<a href=3D"http://busybox_1.23.2.bb/" target=3D"_blan=
k">busybox_1.23.2.bb</a>=C2=A0recipe included, using Yocto Sumo 2.5 with th=
e Bitbake version 1.37.0. It is running on a CentOS host building images fo=
r the target ARM cortexa8. This busybox recipe is placed in another custom =
layer. Though this recipe compiles without errors in Poky-Fido, in Poky-Sum=
o I get compilation errors due to missing header files. I have pasted a par=
t of the log.do.compile file with the error.</div><div class=3D"gmail_defau=
lt"><br></div><div class=3D"gmail_default" style=3D"font-family:Arial,Helve=
tica,sans-serif"><div class=3D"gmail_default"><font face=3D"times new roman=
, serif"><i># merged configuration written to .config (needs make)</i></fon=
t></div><div class=3D"gmail_default"><font face=3D"times new roman, serif">=
<i>#</i></font></div><div class=3D"gmail_default"><font face=3D"times new r=
oman, serif"><i>NOTE: make -j 2 LD=3Darm-poky-linux-gnueabi-gcc=C2=A0 -marc=
h=3Darmv7-a -mfpu=3Dneon -mfloat-abi=3Dhard -mcpu=3Dcortex-a8 --sysroot=3D/=
opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/work=
/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0/recipe-sysroot V=3D1 =
ARCH=3Darm CROSS_COMPILE=3Darm-poky-linux-gnueabi- SKIP_STRIP=3Dy busybox_u=
nstripped</i></font></div><div class=3D"gmail_default"><font face=3D"times =
new roman, serif"><i>rm -f .kernelrelease</i></font></div><div class=3D"gma=
il_default"><font face=3D"times new roman, serif"><i>echo 1.23.2 &gt; .kern=
elrelease</i></font></div><div class=3D"gmail_default"><font face=3D"times =
new roman, serif"><i>/opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_=
arm-cortex-a8/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0=
/busybox-1.23.2/scripts/gen_build_files.sh /opt/ac500/yocto/branches/DEVEL_=
nextYocto/yocto/build_arm-cortex-a8/tmp/work/cortexa8hf-neon-poky-linux-gnu=
eabi/busybox/1.23.2-r0/busybox-1.23.2 /opt/ac500/yocto/branches/DEVEL_nextY=
octo/yocto/build_arm-cortex-a8/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/=
busybox/1.23.2-r0/busybox-1.23.2</i></font></div><div class=3D"gmail_defaul=
t"><font face=3D"times new roman, serif"><i>make -f /opt/ac500/yocto/branch=
es/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/work/cortexa8hf-neon-poky-=
linux-gnueabi/busybox/1.23.2-r0/busybox-1.23.2/Makefile silentoldconfig</i>=
</font></div><div class=3D"gmail_default"><font face=3D"times new roman, se=
rif"><i>make -f scripts/Makefile.build obj=3Dscripts/basic</i></font></div>=
<div class=3D"gmail_default"><font face=3D"times new roman, serif"><i>/opt/=
ac500/yocto/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/work/cor=
texa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0/busybox-1.23.2/scripts/ge=
n_build_files.sh /opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_arm-=
cortex-a8/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0/bus=
ybox-1.23.2 /opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_arm-corte=
x-a8/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0/busybox-=
1.23.2</i></font></div><div class=3D"gmail_default"><font face=3D"times new=
 roman, serif"><i>mkdir -p include</i></font></div><div class=3D"gmail_defa=
ult"><font face=3D"times new roman, serif"><i>make -f scripts/Makefile.buil=
d obj=3Dscripts/kconfig silentoldconfig</i></font></div><div class=3D"gmail=
_default"><font face=3D"times new roman, serif"><i>scripts/kconfig/conf -s =
Config.in</i></font></div><div class=3D"gmail_default"><font face=3D"times =
new roman, serif"><i>#</i></font></div><div class=3D"gmail_default"><font f=
ace=3D"times new roman, serif"><i># using defaults found in .config</i></fo=
nt></div><div class=3D"gmail_default"><font face=3D"times new roman, serif"=
><i>#</i></font></div><div class=3D"gmail_default"><font face=3D"times new =
roman, serif"><i>make -C /opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/bu=
ild_arm-cortex-a8/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.=
2-r0/busybox-1.23.2 KBUILD_SRC=3D .kernelrelease</i></font></div><div class=
=3D"gmail_default"><font face=3D"times new roman, serif"><i>rm -f .kernelre=
lease</i></font></div><div class=3D"gmail_default"><font face=3D"times new =
roman, serif"><i>echo 1.23.2 &gt; .kernelrelease</i></font></div><div class=
=3D"gmail_default"><font face=3D"times new roman, serif"><i>make -f scripts=
/Makefile.build obj=3Dscripts/basic</i></font></div><div class=3D"gmail_def=
ault"><font face=3D"times new roman, serif"><i>make -f scripts/Makefile.bui=
ld obj=3Dapplets</i></font></div><div class=3D"gmail_default"><font face=3D=
"times new roman, serif"><i>=C2=A0 scripts/basic/split-include include/auto=
conf.h include/config</i></font></div><div class=3D"gmail_default"><font fa=
ce=3D"times new roman, serif"><i>=C2=A0 gcc -Wp,-MD,applets/.usage.d=C2=A0 =
-Wall -Wstrict-prototypes -O2 -fomit-frame-pointer=C2=A0 =C2=A0 =C2=A0 -Iin=
clude -Iinclude -o applets/usage applets/usage.c=C2=A0=C2=A0</i></font></di=
v><div class=3D"gmail_default"><font face=3D"times new roman, serif"><i>=C2=
=A0 gcc -Wp,-MD,applets/.applet_tables.d=C2=A0 -Wall -Wstrict-prototypes -O=
2 -fomit-frame-pointer=C2=A0 =C2=A0 =C2=A0 =C2=A0-o applets/applet_tables a=
pplets/applet_tables.c=C2=A0=C2=A0</i></font></div><div class=3D"gmail_defa=
ult"><font face=3D"times new roman, serif"><i>=C2=A0 /opt/ac500/yocto/branc=
hes/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/work/cortexa8hf-neon-poky=
-linux-gnueabi/busybox/1.23.2-r0/busybox-1.23.2/scripts/mkconfigs include/b=
bconfigopts.h include/bbconfigopts_bz2.h</i></font></div><div class=3D"gmai=
l_default"><font face=3D"times new roman, serif"><i>make -f scripts/Makefil=
e.build obj=3Dscripts</i></font></div><div class=3D"gmail_default"><font fa=
ce=3D"times new roman, serif"><i>=C2=A0 applets/usage_compressed include/us=
age_compressed.h applets</i></font></div><div class=3D"gmail_default"><font=
 face=3D"times new roman, serif"><i>=C2=A0 applets/applet_tables include/ap=
plet_tables.h include/NUM_APPLETS.h</i></font></div><div class=3D"gmail_def=
ault"><font face=3D"times new roman, serif"><i>=C2=A0 gcc -Wp,-MD,applets/.=
usage_pod.d=C2=A0 -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer=C2=A0 =
=C2=A0 =C2=A0 -Iinclude -Iinclude -o applets/usage_pod applets/usage_pod.c=
=C2=A0=C2=A0</i></font></div><div class=3D"gmail_default"><font face=3D"tim=
es new roman, serif"><i>=C2=A0 arm-poky-linux-gnueabi-gcc -Wp,-MD,applets/.=
applets.o.d=C2=A0 =C2=A0-std=3Dgnu99 -Iinclude -Ilibbb=C2=A0 -include inclu=
de/autoconf.h -D_GNU_SOURCE -DNDEBUG -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOU=
RCE -D_FILE_OFFSET_BITS=3D64 -D&quot;BB_VER=3DKBUILD_STR(1.23.2)&quot; -DBB=
_BT=3DAUTOCONF_TIMESTAMP=C2=A0 -Wall -Wshadow -Wwrite-strings -Wundef -Wstr=
ict-prototypes -Wunused -Wunused-parameter -Wunused-function -Wunused-value=
 -Wmissing-prototypes -Wmissing-declarations -Wno-format-security -Wdeclara=
tion-after-statement -Wold-style-definition -fno-builtin-strlen -finline-li=
mit=3D0 -fomit-frame-pointer -ffunction-sections -fdata-sections -fno-guess=
-branch-probability -funsigned-char -static-libgcc -falign-functions=3D1 -f=
align-jumps=3D1 -falign-labels=3D1 -falign-loops=3D1 -fno-unwind-tables -fn=
o-asynchronous-unwind-tables -Os -O2 -pipe -g -feliminate-unused-debug-type=
s -fdebug-prefix-map=3D/opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/buil=
d_arm-cortex-a8/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-=
r0=3D/usr/src/debug/busybox/1.23.2-r0 -fdebug-prefix-map=3D/opt/ac500/yocto=
/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/work/cortexa8hf-neo=
n-poky-linux-gnueabi/busybox/1.23.2-r0/recipe-sysroot=3D -fdebug-prefix-map=
=3D/opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/=
work/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0/recipe-sysroot-na=
tive=3D -mtune=3Dcortex-a8=C2=A0 -O2 -pipe -g -feliminate-unused-debug-type=
s -fdebug-prefix-map=3D/opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/buil=
d_arm-cortex-a8/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-=
r0=3D/usr/src/debug/busybox/1.23.2-r0 -fdebug-prefix-map=3D/opt/ac500/yocto=
/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/work/cortexa8hf-neo=
n-poky-linux-gnueabi/busybox/1.23.2-r0/recipe-sysroot=3D -fdebug-prefix-map=
=3D/opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/=
work/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0/recipe-sysroot-na=
tive=3D=C2=A0 -mtune=3Dcortex-a8=C2=A0 =C2=A0-D&quot;KBUILD_STR(s)=3D#s&quo=
t; -D&quot;KBUILD_BASENAME=3DKBUILD_STR(applets)&quot;=C2=A0 -D&quot;KBUILD=
_MODNAME=3DKBUILD_STR(applets)&quot; -c -o applets/applets.o applets/applet=
s.c</i></font></div><div class=3D"gmail_default"><font face=3D"times new ro=
man, serif"><i>In file included from /opt/ac500/yocto/branches/DEVEL_nextYo=
cto/yocto/build_arm-cortex-a8/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/b=
usybox/1.23.2-r0/recipe-sysroot-native/usr/lib/arm-poky-linux-gnueabi/gcc/a=
rm-poky-linux-gnueabi/7.3.0/include-fixed/syslimits.h:7:0,</i></font></div>=
<div class=3D"gmail_default"><font face=3D"times new roman, serif"><i>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /opt/ac500/=
yocto/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/work/cortexa8h=
f-neon-poky-linux-gnueabi/busybox/1.23.2-r0/recipe-sysroot-native/usr/lib/a=
rm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/7.3.0/include-fixed/limits=
.h:34,</i></font></div><div class=3D"gmail_default"><font face=3D"times new=
 roman, serif"><i>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0from include/platform.h:141,</i></font></div><div class=3D"gmail_defa=
ult"><font face=3D"times new roman, serif"><i>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from include/libbb.h:13,</i></font></div>=
<div class=3D"gmail_default"><font face=3D"times new roman, serif"><i>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from include/bus=
ybox.h:8,</i></font></div><div class=3D"gmail_default"><font face=3D"times =
new roman, serif"><i>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0from applets/applets.c:9:</i></font></div><div class=3D"gmail_def=
ault"><font face=3D"times new roman, serif"><i>/opt/ac500/yocto/branches/DE=
VEL_nextYocto/yocto/build_arm-cortex-a8/tmp/work/cortexa8hf-neon-poky-linux=
-gnueabi/busybox/1.23.2-r0/recipe-sysroot-native/usr/lib/arm-poky-linux-gnu=
eabi/gcc/arm-poky-linux-gnueabi/7.3.0/include-fixed/limits.h:194:61: error:=
 no include path in which to search for limits.h</i></font></div><div class=
=3D"gmail_default"><font face=3D"times new roman, serif"><i>=C2=A0#include_=
next &lt;limits.h&gt;=C2=A0 /* recurse down to the real one */</i></font></=
div><div class=3D"gmail_default"><font face=3D"times new roman, serif"><i>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^</i><=
/font></div><div class=3D"gmail_default"><font face=3D"times new roman, ser=
if"><i>In file included from include/libbb.h:13:0,</i></font></div><div cla=
ss=3D"gmail_default"><font face=3D"times new roman, serif"><i>=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from include/busybox.h:8,<=
/i></font></div><div class=3D"gmail_default"><font face=3D"times new roman,=
 serif"><i>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fr=
om applets/applets.c:9:</i></font></div><div class=3D"gmail_default"><font =
face=3D"times new roman, serif"><i>include/platform.h:152:11: fatal error: =
byteswap.h: No such file or directory</i></font></div><div class=3D"gmail_d=
efault"><font face=3D"times new roman, serif"><i>=C2=A0# include &lt;bytesw=
ap.h&gt;</i></font></div><div class=3D"gmail_default"><font face=3D"times n=
ew roman, serif"><i>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~~~~~~~~~~~</=
i></font></div><div class=3D"gmail_default"><font face=3D"times new roman, =
serif"><i>compilation terminated.</i></font></div><div class=3D"gmail_defau=
lt"><font face=3D"times new roman, serif"><i>make[1]: *** [scripts/Makefile=
.build:198: applets/applets.o] Error 1</i></font></div><div class=3D"gmail_=
default"><font face=3D"times new roman, serif"><i>make[1]: *** Waiting for =
unfinished jobs....</i></font></div><div class=3D"gmail_default"><font face=
=3D"times new roman, serif"><i>make: *** [Makefile:373: applets_dir] Error =
2</i></font></div><div class=3D"gmail_default"><font face=3D"times new roma=
n, serif"><i>ERROR: oe_runmake failed</i></font></div><div class=3D"gmail_d=
efault"><font face=3D"times new roman, serif"><i>WARNING: /opt/ac500/yocto/=
branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/work/cortexa8hf-neon=
-poky-linux-gnueabi/busybox/1.23.2-r0/temp/run.do_compile.26870:1 exit 1 fr=
om &#39;exit 1&#39;</i></font></div><div class=3D"gmail_default"><font face=
=3D"times new roman, serif"><i>ERROR: Function failed: do_compile (log file=
 is located at /opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_arm-co=
rtex-a8/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0/temp/=
log.do_compile.26870)</i></font></div><div class=3D"gmail_default" style=3D=
"font-family:georgia,serif"><br></div><div class=3D"gmail_default" style=3D=
"font-family:georgia,serif">Both limits.h and byteswap.h don&#39;t exist in=
 Poky-Fido as well, but compiles without problems, unlike on Sumo. Does thi=
s have to do with the wrong Toolchains used or due to glibc (FYI: glibc_2.2=
7 is been used)? If it has to do with the Toolchains, which one should I be=
 using and how do I go about it?</div><div class=3D"gmail_default" style=3D=
"font-family:georgia,serif"><br></div><div class=3D"gmail_default" style=3D=
"font-family:georgia,serif">Here is the Build Config:</div><div class=3D"gm=
ail_default" style=3D"font-family:georgia,serif"><br></div><div class=3D"gm=
ail_default" style=3D"font-family:georgia,serif"><div class=3D"gmail_defaul=
t">Build Configuration:</div><div class=3D"gmail_default">BB_VERSION=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;1.37.0&quot;</div><div class=3D=
"gmail_default">BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quo=
t;x86_64-linux&quot;</div><div class=3D"gmail_default">NATIVELSBSTRING=C2=
=A0 =C2=A0 =C2=A0 =3D &quot;universal-4.8&quot;</div><div class=3D"gmail_de=
fault">TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;arm-pok=
y-linux-gnueabi&quot;</div><div class=3D"gmail_default">MACHINE=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;arm-cortex-a8&quot;</div><=
div class=3D"gmail_default">DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0=3D &quot;poky&quot;</div><div class=3D"gmail_default">DISTRO=
_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;2.5&quot;</div><div class=3D"g=
mail_default">TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;arm armv7a=
 vfp neon callconvention-hard cortexa8&quot;</div><div class=3D"gmail_defau=
lt">TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;hard&quot;=
</div><div class=3D"gmail_default">meta-networking=C2=A0 =C2=A0 =C2=A0=C2=
=A0</div><div class=3D"gmail_default">meta-python=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =3D &quot;master:45ee3c0e98bd3ed81419aaeae1e7324e486161a2&quot;<=
/div><div class=3D"gmail_default">meta-userbsp-ti=C2=A0 =C2=A0 =C2=A0 =C2=
=A0=C2=A0</div><div class=3D"gmail_default">meta=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</div><div class=3D"gmail_default">meta-=
poky=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</div><div class=3D"gmai=
l_default">meta-yocto-bsp=C2=A0 =C2=A0 =C2=A0 =C2=A0</div><div class=3D"gma=
il_default">meta-user-common=C2=A0 =C2=A0 =C2=A0 =3D &quot;&lt;unknown&gt;:=
&lt;unknown&gt;&quot;</div><div class=3D"gmail_default">meta-oe=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;master:45ee3c0e98bd3ed8141=
9aaeae1e7324e486161a2&quot;</div><div class=3D"gmail_default">workspace=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;&lt;unknown&gt;:&lt;unknow=
n&gt;&quot;</div></div><div class=3D"gmail_default" style=3D"font-family:ge=
orgia,serif"><br></div><div class=3D"gmail_default" style=3D"font-family:ge=
orgia,serif">Thanks!</div><div class=3D"gmail_default" style=3D"font-family=
:georgia,serif">Regards,</div><div class=3D"gmail_default" style=3D"font-fa=
mily:georgia,serif"><br></div></div></div><div><div dir=3D"ltr" class=3D"gm=
ail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=
=3D"ltr"><div dir=3D"ltr"><font face=3D"georgia, serif" color=3D"#666666">M=
it=C2=A0freundlichen=C2=A0Gr=C3=BC=C3=9Fen / Best Regards,</font><div><font=
 face=3D"georgia, serif" color=3D"#666666">Dhanush<br></font></div></div></=
div></div></div></div></div>

--000000000000c03e520578954d03--
