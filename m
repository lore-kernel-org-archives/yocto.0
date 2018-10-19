Return-Path: <dhanush.ks@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5AA92E00BC2; Fri, 19 Oct 2018 02:31:42 -0700 (PDT)
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
	*      [209.85.221.65 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
	[209.85.221.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D796AE00994
	for <yocto@yoctoproject.org>; Fri, 19 Oct 2018 02:31:40 -0700 (PDT)
Received: by mail-wr1-f65.google.com with SMTP id 61-v6so36672716wrb.6
	for <yocto@yoctoproject.org>; Fri, 19 Oct 2018 02:31:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=O6WliGa1dRc2SS+l+vPx0QyiUlYmTxA1/wYS48YoosQ=;
	b=s0JFCrAUok3+proPL0ZSOTjg4zsHEDo5FSvg1OKiuKkLz3shX2QRodcPESxHYbAMUX
	IiNW8YoQmAjZ5dUkYbllIyYW0sOiFvfl2fRBu6HAbrN7/jrvAZGGQDWl0xg4FPwap3NZ
	dhYef4JK57jIMy9Fcx7Epv7DmqW1yZrxTry3s1P+QU5oz4r8V+I5mKzH3HzKOwxY0/GZ
	PEFDTYFC0rabNwWPzKRPX1zeIHxfX/TqekIr9Iib+w0y5dOU54CRvkup1495gbpUD5dc
	bsOkYN9K6Q7jxdGF1a+H+FcnUJaF/NAz9MVuM8Fvzv9ihkVLxEwKVjteRpBXkDpIQL0l
	9z4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=O6WliGa1dRc2SS+l+vPx0QyiUlYmTxA1/wYS48YoosQ=;
	b=eC2tkBHpGbrFs27fTHtsk1j6Gh8lUvDD9j5iX/23rExRJ3KjHCQ5+p0XLzO2itJojE
	9mrAqePzEfr7vVjVvXfzx6mrV3xj38zZQsxhnuw7C40JduyOL7EmZ7LCK8EerNlEaQqe
	u7wIjmSXLGCSV3P0fswkxEJhVaj65Y71NiWX2WgRu7IIjnJ/ksiPDLmmxVzAQA+a+q9s
	2ovO3ArIu0JtBN/2PZWaIBfNaooHxWAnUUJtgwtTJ5/ThfuqX8oh+9zrsrYkRXGShsIw
	x9u0ss9cTPajZbJT7lZFKKFa+f8IO+0f5CO/UfaJu2ol7+0hcGYbqoUuc/975BD+aekU
	K+YQ==
X-Gm-Message-State: ABuFfoin9tUzwzH9hc8GlngIUBSNAIaQa64ocyBR/lHvfqi6jG3V2TBp
	57aWrMQYUBwyuCOe3ah3DyRx7Qb/xpx3fAkdEeQHnH5ebt0=
X-Google-Smtp-Source: ACcGV614GaRpqwk87DGEEP8WjSWsqJOSCrAd5pcviuqSVORrh3Aeu50a5e5WZP/cbDpNPZzDyal/4xPGwHj2b70W/Cw=
X-Received: by 2002:adf:f1ce:: with SMTP id
	z14-v6mr32323060wro.214.1539941499500; 
	Fri, 19 Oct 2018 02:31:39 -0700 (PDT)
MIME-Version: 1.0
References: <CAKPYHZ4VV_+PpwJE_=EVq2HNxfU4PuCjg-2T+AueB+9Jv1eG9A@mail.gmail.com>
	<CAMKF1soa4UorFpZkwfZhSMe-8V4FkXP+OVGpG-0kZgmUsih5oQ@mail.gmail.com>
In-Reply-To: <CAMKF1soa4UorFpZkwfZhSMe-8V4FkXP+OVGpG-0kZgmUsih5oQ@mail.gmail.com>
From: "Dhanush K.S" <dhanush.ks@gmail.com>
Date: Fri, 19 Oct 2018 11:31:27 +0200
Message-ID: <CAKPYHZ5OwSNouRHEmZE_WgR1jzzwJ8vNO5Gn=+5kCd12fB_REQ@mail.gmail.com>
To: raj.khem@gmail.com
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Busybox_1.23.2 fails at do_compile on Poky-Sumo
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
X-List-Received-Date: Fri, 19 Oct 2018 09:31:42 -0000
Content-Type: multipart/alternative; boundary="0000000000000d7e7d0578919231"

--0000000000000d7e7d0578919231
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for the the tip Raj. Here is the Build Config.

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

Mit freundlichen Gr=C3=BC=C3=9Fen / Best Regards,
Dhanush


On Thu, 18 Oct 2018 at 17:49, Khem Raj <raj.khem@gmail.com> wrote:

> Always send the Build Configuration that bitbake prints on top of
> build. So someone can get some additional information about your build
> to help you better.
> On Thu, Oct 18, 2018 at 1:03 AM Dhanush K.S <dhanush.ks@gmail.com> wrote:
> >
> > Hello Yocto,
> >
> > I'm currently building an image with the busybox_1.23.2.bb recipe
> included, using Yocto Sumo 2.5 with the Bitbake version 1.37.0. It is
> running on a CentOS host building images for the target ARM cortexa8. Thi=
s
> busybox recipe is placed in another custom layer. Though this recipe
> compiles without errors in Poky-Fido, in Poky-Sumo I get compilation erro=
rs
> due to missing header files. I have pasted a part of the log.do.compile
> file with the error.
> >
> > # merged configuration written to .config (needs make)
> > #
> > NOTE: make -j 2 LD=3Darm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mfpu=
=3Dneon
> -mfloat-abi=3Dhard -mcpu=3Dcortex-a8
> --sysroot=3D/opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_arm-cor=
tex-a8/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0/recipe=
-sysroot
> V=3D1 ARCH=3Darm CROSS_COMPILE=3Darm-poky-linux-gnueabi- SKIP_STRIP=3Dy
> busybox_unstripped
> > rm -f .kernelrelease
> > echo 1.23.2 > .kernelrelease
> >
> /opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/w=
ork/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0/busybox-1.23.2/scr=
ipts/gen_build_files.sh
> /opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/w=
ork/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0/busybox-1.23.2
> /opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/w=
ork/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0/busybox-1.23.2
> > make -f
> /opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/w=
ork/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0/busybox-1.23.2/Mak=
efile
> silentoldconfig
> > make -f scripts/Makefile.build obj=3Dscripts/basic
> >
> /opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/w=
ork/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0/busybox-1.23.2/scr=
ipts/gen_build_files.sh
> /opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/w=
ork/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0/busybox-1.23.2
> /opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/w=
ork/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0/busybox-1.23.2
> > mkdir -p include
> > make -f scripts/Makefile.build obj=3Dscripts/kconfig silentoldconfig
> > scripts/kconfig/conf -s Config.in
> > #
> > # using defaults found in .config
> > #
> > make -C
> /opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/w=
ork/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0/busybox-1.23.2
> KBUILD_SRC=3D .kernelrelease
> > rm -f .kernelrelease
> > echo 1.23.2 > .kernelrelease
> > make -f scripts/Makefile.build obj=3Dscripts/basic
> > make -f scripts/Makefile.build obj=3Dapplets
> >   scripts/basic/split-include include/autoconf.h include/config
> >   gcc -Wp,-MD,applets/.usage.d  -Wall -Wstrict-prototypes -O2
> -fomit-frame-pointer      -Iinclude -Iinclude -o applets/usage
> applets/usage.c
> >   gcc -Wp,-MD,applets/.applet_tables.d  -Wall -Wstrict-prototypes -O2
> -fomit-frame-pointer       -o applets/applet_tables applets/applet_tables=
.c
> >
>  /opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/=
work/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0/busybox-1.23.2/sc=
ripts/mkconfigs
> include/bbconfigopts.h include/bbconfigopts_bz2.h
> > make -f scripts/Makefile.build obj=3Dscripts
> >   applets/usage_compressed include/usage_compressed.h applets
> >   applets/applet_tables include/applet_tables.h include/NUM_APPLETS.h
> >   gcc -Wp,-MD,applets/.usage_pod.d  -Wall -Wstrict-prototypes -O2
> -fomit-frame-pointer      -Iinclude -Iinclude -o applets/usage_pod
> applets/usage_pod.c
> >   arm-poky-linux-gnueabi-gcc -Wp,-MD,applets/.applets.o.d   -std=3Dgnu9=
9
> -Iinclude -Ilibbb  -include include/autoconf.h -D_GNU_SOURCE -DNDEBUG
> -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=3D64
> -D"BB_VER=3DKBUILD_STR(1.23.2)" -DBB_BT=3DAUTOCONF_TIMESTAMP  -Wall -Wsha=
dow
> -Wwrite-strings -Wundef -Wstrict-prototypes -Wunused -Wunused-parameter
> -Wunused-function -Wunused-value -Wmissing-prototypes
> -Wmissing-declarations -Wno-format-security -Wdeclaration-after-statement
> -Wold-style-definition -fno-builtin-strlen -finline-limit=3D0
> -fomit-frame-pointer -ffunction-sections -fdata-sections
> -fno-guess-branch-probability -funsigned-char -static-libgcc
> -falign-functions=3D1 -falign-jumps=3D1 -falign-labels=3D1 -falign-loops=
=3D1
> -fno-unwind-tables -fno-asynchronous-unwind-tables -Os -O2 -pipe -g
> -feliminate-unused-debug-types
> -fdebug-prefix-map=3D/opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/buil=
d_arm-cortex-a8/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-=
r0=3D/usr/src/debug/busybox/1.23.2-r0
> -fdebug-prefix-map=3D/opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/buil=
d_arm-cortex-a8/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-=
r0/recipe-sysroot=3D
> -fdebug-prefix-map=3D/opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/buil=
d_arm-cortex-a8/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-=
r0/recipe-sysroot-native=3D
> -mtune=3Dcortex-a8  -O2 -pipe -g -feliminate-unused-debug-types
> -fdebug-prefix-map=3D/opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/buil=
d_arm-cortex-a8/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-=
r0=3D/usr/src/debug/busybox/1.23.2-r0
> -fdebug-prefix-map=3D/opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/buil=
d_arm-cortex-a8/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-=
r0/recipe-sysroot=3D
> -fdebug-prefix-map=3D/opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/buil=
d_arm-cortex-a8/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-=
r0/recipe-sysroot-native=3D
> -mtune=3Dcortex-a8   -D"KBUILD_STR(s)=3D#s"
> -D"KBUILD_BASENAME=3DKBUILD_STR(applets)"
> -D"KBUILD_MODNAME=3DKBUILD_STR(applets)" -c -o applets/applets.o
> applets/applets.c
> > In file included from
> /opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/w=
ork/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0/recipe-sysroot-nat=
ive/usr/lib/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/7.3.0/include=
-fixed/syslimits.h:7:0,
> >                  from
> /opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/w=
ork/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0/recipe-sysroot-nat=
ive/usr/lib/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/7.3.0/include=
-fixed/limits.h:34,
> >                  from include/platform.h:141,
> >                  from include/libbb.h:13,
> >                  from include/busybox.h:8,
> >                  from applets/applets.c:9:
> >
> /opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/w=
ork/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0/recipe-sysroot-nat=
ive/usr/lib/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/7.3.0/include=
-fixed/limits.h:194:61:
> error: no include path in which to search for limits.h
> >  #include_next <limits.h>  /* recurse down to the real one */
> >                                                              ^
> > In file included from include/libbb.h:13:0,
> >                  from include/busybox.h:8,
> >                  from applets/applets.c:9:
> > include/platform.h:152:11: fatal error: byteswap.h: No such file or
> directory
> >  # include <byteswap.h>
> >            ^~~~~~~~~~~~
> > compilation terminated.
> > make[1]: *** [scripts/Makefile.build:198: applets/applets.o] Error 1
> > make[1]: *** Waiting for unfinished jobs....
> > make: *** [Makefile:373: applets_dir] Error 2
> > ERROR: oe_runmake failed
> > WARNING:
> /opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/w=
ork/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0/temp/run.do_compil=
e.26870:1
> exit 1 from 'exit 1'
> > ERROR: Function failed: do_compile (log file is located at
> /opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/w=
ork/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0/temp/log.do_compil=
e.26870)
> >
> > Both limits.h and byteswap.h don't exist in Poky-Fido as well, but
> compiles without problems, unlike on Sumo. Does this have to do with the
> wrong Toolchains used or due to glibc (FYI: glibc_2.27 is been used)? If =
it
> has to do with the Toolchains, which one should I be using and how do I g=
o
> about it?
> >
> > Thanks!
> > Regards,
> >
> > Mit freundlichen Gr=C3=BC=C3=9Fen / Best Regards,
> > Dhanush
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>

--0000000000000d7e7d0578919231
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-family:georgia,serif">Thanks for the the tip Raj. Here is the Build Confi=
g.</div><div class=3D"gmail_default" style=3D"font-family:georgia,serif"><b=
r></div><div class=3D"gmail_default" style=3D"font-family:georgia,serif"><d=
iv class=3D"gmail_default">Build Configuration:</div><div class=3D"gmail_de=
fault">BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;1.37.0&=
quot;</div><div class=3D"gmail_default">BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =3D &quot;x86_64-linux&quot;</div><div class=3D"gmail_def=
ault">NATIVELSBSTRING=C2=A0 =C2=A0 =C2=A0 =3D &quot;universal-4.8&quot;</di=
v><div class=3D"gmail_default">TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0=3D &quot;arm-poky-linux-gnueabi&quot;</div><div class=3D"gmail_defa=
ult">MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;arm-=
cortex-a8&quot;</div><div class=3D"gmail_default">DISTRO=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;poky&quot;</div><div class=
=3D"gmail_default">DISTRO_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;2.5&q=
uot;</div><div class=3D"gmail_default">TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =3D &quot;arm armv7a vfp neon callconvention-hard cortexa8&quot;</di=
v><div class=3D"gmail_default">TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0=3D &quot;hard&quot;</div><div class=3D"gmail_default">meta-networki=
ng=C2=A0 =C2=A0 =C2=A0=C2=A0</div><div class=3D"gmail_default">meta-python=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;master:45ee3c0e98bd3ed81419aae=
ae1e7324e486161a2&quot;</div><div class=3D"gmail_default">meta-userbsp-ti=
=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</div><div class=3D"gmail_default">meta=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</div><div class=
=3D"gmail_default">meta-poky=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=
</div><div class=3D"gmail_default">meta-yocto-bsp=C2=A0 =C2=A0 =C2=A0 =C2=
=A0</div><div class=3D"gmail_default">meta-user-common=C2=A0 =C2=A0 =C2=A0 =
=3D &quot;&lt;unknown&gt;:&lt;unknown&gt;&quot;</div><div class=3D"gmail_de=
fault">meta-oe=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;ma=
ster:45ee3c0e98bd3ed81419aaeae1e7324e486161a2&quot;</div><div class=3D"gmai=
l_default">workspace=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;&lt=
;unknown&gt;:&lt;unknown&gt;&quot;</div><div class=3D"gmail_default"><br></=
div><div class=3D"gmail_default">Thanks!</div><div class=3D"gmail_default">=
<br></div></div><div><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D=
"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><font face=3D"georgia, serif" color=
=3D"#666666">Mit=C2=A0freundlichen=C2=A0Gr=C3=BC=C3=9Fen / Best Regards,</f=
ont><div><font face=3D"georgia, serif" color=3D"#666666">Dhanush=C2=A0<br><=
/font></div></div></div></div></div></div><br></div></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr">On Thu, 18 Oct 2018 at 17:49, Khem Raj &lt;<=
a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex">Always send the Build Configuration tha=
t bitbake prints on top of<br>
build. So someone can get some additional information about your build<br>
to help you better.<br>
On Thu, Oct 18, 2018 at 1:03 AM Dhanush K.S &lt;<a href=3D"mailto:dhanush.k=
s@gmail.com" target=3D"_blank">dhanush.ks@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hello Yocto,<br>
&gt;<br>
&gt; I&#39;m currently building an image with the <a href=3D"http://busybox=
_1.23.2.bb" rel=3D"noreferrer" target=3D"_blank">busybox_1.23.2.bb</a> reci=
pe included, using Yocto Sumo 2.5 with the Bitbake version 1.37.0. It is ru=
nning on a CentOS host building images for the target ARM cortexa8. This bu=
sybox recipe is placed in another custom layer. Though this recipe compiles=
 without errors in Poky-Fido, in Poky-Sumo I get compilation errors due to =
missing header files. I have pasted a part of the log.do.compile file with =
the error.<br>
&gt;<br>
&gt; # merged configuration written to .config (needs make)<br>
&gt; #<br>
&gt; NOTE: make -j 2 LD=3Darm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7-a=
 -mfpu=3Dneon -mfloat-abi=3Dhard -mcpu=3Dcortex-a8 --sysroot=3D/opt/ac500/y=
octo/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/work/cortexa8hf=
-neon-poky-linux-gnueabi/busybox/1.23.2-r0/recipe-sysroot V=3D1 ARCH=3Darm =
CROSS_COMPILE=3Darm-poky-linux-gnueabi- SKIP_STRIP=3Dy busybox_unstripped<b=
r>
&gt; rm -f .kernelrelease<br>
&gt; echo 1.23.2 &gt; .kernelrelease<br>
&gt; /opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tm=
p/work/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0/busybox-1.23.2/=
scripts/gen_build_files.sh /opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/=
build_arm-cortex-a8/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.2=
3.2-r0/busybox-1.23.2 /opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build=
_arm-cortex-a8/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r=
0/busybox-1.23.2<br>
&gt; make -f /opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_arm-cort=
ex-a8/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0/busybox=
-1.23.2/Makefile silentoldconfig<br>
&gt; make -f scripts/Makefile.build obj=3Dscripts/basic<br>
&gt; /opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tm=
p/work/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0/busybox-1.23.2/=
scripts/gen_build_files.sh /opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/=
build_arm-cortex-a8/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.2=
3.2-r0/busybox-1.23.2 /opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build=
_arm-cortex-a8/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r=
0/busybox-1.23.2<br>
&gt; mkdir -p include<br>
&gt; make -f scripts/Makefile.build obj=3Dscripts/kconfig silentoldconfig<b=
r>
&gt; scripts/kconfig/conf -s Config.in<br>
&gt; #<br>
&gt; # using defaults found in .config<br>
&gt; #<br>
&gt; make -C /opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_arm-cort=
ex-a8/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0/busybox=
-1.23.2 KBUILD_SRC=3D .kernelrelease<br>
&gt; rm -f .kernelrelease<br>
&gt; echo 1.23.2 &gt; .kernelrelease<br>
&gt; make -f scripts/Makefile.build obj=3Dscripts/basic<br>
&gt; make -f scripts/Makefile.build obj=3Dapplets<br>
&gt;=C2=A0 =C2=A0scripts/basic/split-include include/autoconf.h include/con=
fig<br>
&gt;=C2=A0 =C2=A0gcc -Wp,-MD,applets/.usage.d=C2=A0 -Wall -Wstrict-prototyp=
es -O2 -fomit-frame-pointer=C2=A0 =C2=A0 =C2=A0 -Iinclude -Iinclude -o appl=
ets/usage applets/usage.c<br>
&gt;=C2=A0 =C2=A0gcc -Wp,-MD,applets/.applet_tables.d=C2=A0 -Wall -Wstrict-=
prototypes -O2 -fomit-frame-pointer=C2=A0 =C2=A0 =C2=A0 =C2=A0-o applets/ap=
plet_tables applets/applet_tables.c<br>
&gt;=C2=A0 =C2=A0/opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_arm-=
cortex-a8/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0/bus=
ybox-1.23.2/scripts/mkconfigs include/bbconfigopts.h include/bbconfigopts_b=
z2.h<br>
&gt; make -f scripts/Makefile.build obj=3Dscripts<br>
&gt;=C2=A0 =C2=A0applets/usage_compressed include/usage_compressed.h applet=
s<br>
&gt;=C2=A0 =C2=A0applets/applet_tables include/applet_tables.h include/NUM_=
APPLETS.h<br>
&gt;=C2=A0 =C2=A0gcc -Wp,-MD,applets/.usage_pod.d=C2=A0 -Wall -Wstrict-prot=
otypes -O2 -fomit-frame-pointer=C2=A0 =C2=A0 =C2=A0 -Iinclude -Iinclude -o =
applets/usage_pod applets/usage_pod.c<br>
&gt;=C2=A0 =C2=A0arm-poky-linux-gnueabi-gcc -Wp,-MD,applets/.applets.o.d=C2=
=A0 =C2=A0-std=3Dgnu99 -Iinclude -Ilibbb=C2=A0 -include include/autoconf.h =
-D_GNU_SOURCE -DNDEBUG -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OF=
FSET_BITS=3D64 -D&quot;BB_VER=3DKBUILD_STR(1.23.2)&quot; -DBB_BT=3DAUTOCONF=
_TIMESTAMP=C2=A0 -Wall -Wshadow -Wwrite-strings -Wundef -Wstrict-prototypes=
 -Wunused -Wunused-parameter -Wunused-function -Wunused-value -Wmissing-pro=
totypes -Wmissing-declarations -Wno-format-security -Wdeclaration-after-sta=
tement -Wold-style-definition -fno-builtin-strlen -finline-limit=3D0 -fomit=
-frame-pointer -ffunction-sections -fdata-sections -fno-guess-branch-probab=
ility -funsigned-char -static-libgcc -falign-functions=3D1 -falign-jumps=3D=
1 -falign-labels=3D1 -falign-loops=3D1 -fno-unwind-tables -fno-asynchronous=
-unwind-tables -Os -O2 -pipe -g -feliminate-unused-debug-types -fdebug-pref=
ix-map=3D/opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a=
8/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0=3D/usr/src/=
debug/busybox/1.23.2-r0 -fdebug-prefix-map=3D/opt/ac500/yocto/branches/DEVE=
L_nextYocto/yocto/build_arm-cortex-a8/tmp/work/cortexa8hf-neon-poky-linux-g=
nueabi/busybox/1.23.2-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/opt/ac500/=
yocto/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/work/cortexa8h=
f-neon-poky-linux-gnueabi/busybox/1.23.2-r0/recipe-sysroot-native=3D -mtune=
=3Dcortex-a8=C2=A0 -O2 -pipe -g -feliminate-unused-debug-types -fdebug-pref=
ix-map=3D/opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a=
8/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0=3D/usr/src/=
debug/busybox/1.23.2-r0 -fdebug-prefix-map=3D/opt/ac500/yocto/branches/DEVE=
L_nextYocto/yocto/build_arm-cortex-a8/tmp/work/cortexa8hf-neon-poky-linux-g=
nueabi/busybox/1.23.2-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/opt/ac500/=
yocto/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/work/cortexa8h=
f-neon-poky-linux-gnueabi/busybox/1.23.2-r0/recipe-sysroot-native=3D=C2=A0 =
-mtune=3Dcortex-a8=C2=A0 =C2=A0-D&quot;KBUILD_STR(s)=3D#s&quot; -D&quot;KBU=
ILD_BASENAME=3DKBUILD_STR(applets)&quot;=C2=A0 -D&quot;KBUILD_MODNAME=3DKBU=
ILD_STR(applets)&quot; -c -o applets/applets.o applets/applets.c<br>
&gt; In file included from /opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/=
build_arm-cortex-a8/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.2=
3.2-r0/recipe-sysroot-native/usr/lib/arm-poky-linux-gnueabi/gcc/arm-poky-li=
nux-gnueabi/7.3.0/include-fixed/syslimits.h:7:0,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 from /op=
t/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/work/c=
ortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0/recipe-sysroot-native/u=
sr/lib/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/7.3.0/include-fixe=
d/limits.h:34,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 from inc=
lude/platform.h:141,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 from inc=
lude/libbb.h:13,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 from inc=
lude/busybox.h:8,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 from app=
lets/applets.c:9:<br>
&gt; /opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tm=
p/work/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0/recipe-sysroot-=
native/usr/lib/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/7.3.0/incl=
ude-fixed/limits.h:194:61: error: no include path in which to search for li=
mits.h<br>
&gt;=C2=A0 #include_next &lt;limits.h&gt;=C2=A0 /* recurse down to the real=
 one */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^=
<br>
&gt; In file included from include/libbb.h:13:0,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 from inc=
lude/busybox.h:8,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 from app=
lets/applets.c:9:<br>
&gt; include/platform.h:152:11: fatal error: byteswap.h: No such file or di=
rectory<br>
&gt;=C2=A0 # include &lt;byteswap.h&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^~~~~~~~~~~~<br>
&gt; compilation terminated.<br>
&gt; make[1]: *** [scripts/Makefile.build:198: applets/applets.o] Error 1<b=
r>
&gt; make[1]: *** Waiting for unfinished jobs....<br>
&gt; make: *** [Makefile:373: applets_dir] Error 2<br>
&gt; ERROR: oe_runmake failed<br>
&gt; WARNING: /opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_arm-cor=
tex-a8/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0/temp/r=
un.do_compile.26870:1 exit 1 from &#39;exit 1&#39;<br>
&gt; ERROR: Function failed: do_compile (log file is located at /opt/ac500/=
yocto/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/work/cortexa8h=
f-neon-poky-linux-gnueabi/busybox/1.23.2-r0/temp/log.do_compile.26870)<br>
&gt;<br>
&gt; Both limits.h and byteswap.h don&#39;t exist in Poky-Fido as well, but=
 compiles without problems, unlike on Sumo. Does this have to do with the w=
rong Toolchains used or due to glibc (FYI: glibc_2.27 is been used)? If it =
has to do with the Toolchains, which one should I be using and how do I go =
about it?<br>
&gt;<br>
&gt; Thanks!<br>
&gt; Regards,<br>
&gt;<br>
&gt; Mit freundlichen Gr=C3=BC=C3=9Fen / Best Regards,<br>
&gt; Dhanush<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
</blockquote></div>

--0000000000000d7e7d0578919231--
