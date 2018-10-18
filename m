Return-Path: <dhanush.ks@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BECF0E00B5E; Thu, 18 Oct 2018 01:02:41 -0700 (PDT)
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
	*      [209.85.221.49 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
	[209.85.221.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD730E00A0C
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2018 01:02:39 -0700 (PDT)
Received: by mail-wr1-f49.google.com with SMTP id n11-v6so32451416wru.13
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2018 01:02:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=O3nHeZM7U6PtEnbVqz09TxQRj/Go8ysvRgiILMeGJFw=;
	b=PnurtPgV/vKhKuQshNmJyQH2GJHsK5spIuBAJUWcntJNhYLbA3ABAxBAJv4YYh3IbJ
	ZMPYFpRTxzJRyYEJ06sHCUZY5TcrWE3pI7nLCewDCm2/UQB8/jOf8g1lEJuLPAxf/bic
	KxSlYc/PfKy6EIJ55VIqyZuvArtjrFb7fpQYMJM1AqMC/lk4l14iAWtiwIKm2A1NyGwg
	t+LqaLNFookSCObHNzR2Y0hDX5l+l9C9bDYV89OY1fghTLVIUK7/3ZtuF8tRXs+JhNWh
	apD99Dz9GA0o4zSk7HTOw6yNjS4WIDvgzfYIAofE614KMSGMU8NthTLv15/zRFw+28vq
	mPmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=O3nHeZM7U6PtEnbVqz09TxQRj/Go8ysvRgiILMeGJFw=;
	b=P6CqEObb0GFhREgafD4ehibtq6dAAWsiJ+LsORuHV5sNbf4wb9FFIjkpoYr4u9Mj7V
	DIGWzPePNEL+jBJ2cNzajSEbXgqWC13DUt6gafJ+LcXNz9GZZVoY64pV3WzPWv3r3Q9Z
	ugLk6TG7ZAOtt2jHwImKZQ/iiJalRsphkNOotoffU+WVJcLDeIIGPlqYsMS8d8ZoXUXD
	po+2sxv6bIV8N8LOzq6Hb0yNER2/cvVNUMsepmfVGk0eypo9B4K0sYpgb4SMfHt7TLUx
	qCeRu+KlX2wTSoorMoLegPVeSGvhnJwWxYHxWuJUXHVgDE4MbIGT+nYe3pWZTdSJ6Xvb
	vfoQ==
X-Gm-Message-State: ABuFfohPDlxaHUXoVxmeLbph5sw8CmlhkUgQnBfilDLzFbrOzUlrkPyT
	N4TTDkSsAXoNatLExO20yI+lRqNisBVNRp7vDFiYMqpyMiU=
X-Google-Smtp-Source: ACcGV62RVJ/Dex7JCgHw81j8/K6bUaa8GxiGX9J2hbzjKh2oYDDXZv9d8uBgpFlsyygWfUA/20EUyAyuMaGIz11cVew=
X-Received: by 2002:a5d:6b4f:: with SMTP id
	x15-v6mr26484505wrw.304.1539849758295; 
	Thu, 18 Oct 2018 01:02:38 -0700 (PDT)
MIME-Version: 1.0
From: "Dhanush K.S" <dhanush.ks@gmail.com>
Date: Thu, 18 Oct 2018 10:02:28 +0200
Message-ID: <CAKPYHZ4VV_+PpwJE_=EVq2HNxfU4PuCjg-2T+AueB+9Jv1eG9A@mail.gmail.com>
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
X-List-Received-Date: Thu, 18 Oct 2018 08:02:41 -0000
Content-Type: multipart/alternative; boundary="000000000000d9cff705787c351e"

--000000000000d9cff705787c351e
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

Thanks!
Regards,

Mit freundlichen Gr=C3=BC=C3=9Fen / Best Regards,
Dhanush

--000000000000d9cff705787c351e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-family:georgia,serif">Hello Yocto,</div><div class=3D"gmail_default" styl=
e=3D"font-family:georgia,serif"><br></div><div class=3D"gmail_default" styl=
e=3D"font-family:georgia,serif">I&#39;m currently building an image with th=
e <a href=3D"http://busybox_1.23.2.bb">busybox_1.23.2.bb</a> recipe include=
d, using Yocto Sumo 2.5 with the Bitbake version 1.37.0. It is running on a=
 CentOS host building images for the target ARM cortexa8. This busybox reci=
pe is placed in another custom layer. Though this recipe compiles without e=
rrors in Poky-Fido, in Poky-Sumo I get compilation errors due to missing he=
ader files. I have pasted a part of the log.do.compile file with the error.=
</div><div class=3D"gmail_default" style=3D"font-family:georgia,serif"><br>=
</div><div class=3D"gmail_default" style=3D""><div class=3D"gmail_default" =
style=3D""><font face=3D"times new roman, serif"><i># merged configuration =
written to .config (needs make)</i></font></div><div class=3D"gmail_default=
" style=3D""><font face=3D"times new roman, serif"><i>#</i></font></div><di=
v class=3D"gmail_default" style=3D""><font face=3D"times new roman, serif">=
<i>NOTE: make -j 2 LD=3Darm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7-a -=
mfpu=3Dneon -mfloat-abi=3Dhard -mcpu=3Dcortex-a8 --sysroot=3D/opt/ac500/yoc=
to/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/work/cortexa8hf-n=
eon-poky-linux-gnueabi/busybox/1.23.2-r0/recipe-sysroot V=3D1 ARCH=3Darm CR=
OSS_COMPILE=3Darm-poky-linux-gnueabi- SKIP_STRIP=3Dy busybox_unstripped</i>=
</font></div><div class=3D"gmail_default" style=3D""><font face=3D"times ne=
w roman, serif"><i>rm -f .kernelrelease</i></font></div><div class=3D"gmail=
_default" style=3D""><font face=3D"times new roman, serif"><i>echo 1.23.2 &=
gt; .kernelrelease</i></font></div><div class=3D"gmail_default" style=3D"">=
<font face=3D"times new roman, serif"><i>/opt/ac500/yocto/branches/DEVEL_ne=
xtYocto/yocto/build_arm-cortex-a8/tmp/work/cortexa8hf-neon-poky-linux-gnuea=
bi/busybox/1.23.2-r0/busybox-1.23.2/scripts/gen_build_files.sh /opt/ac500/y=
octo/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/work/cortexa8hf=
-neon-poky-linux-gnueabi/busybox/1.23.2-r0/busybox-1.23.2 /opt/ac500/yocto/=
branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/work/cortexa8hf-neon=
-poky-linux-gnueabi/busybox/1.23.2-r0/busybox-1.23.2</i></font></div><div c=
lass=3D"gmail_default" style=3D""><font face=3D"times new roman, serif"><i>=
make -f /opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8=
/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0/busybox-1.23=
.2/Makefile silentoldconfig</i></font></div><div class=3D"gmail_default" st=
yle=3D""><font face=3D"times new roman, serif"><i>make -f scripts/Makefile.=
build obj=3Dscripts/basic</i></font></div><div class=3D"gmail_default" styl=
e=3D""><font face=3D"times new roman, serif"><i>/opt/ac500/yocto/branches/D=
EVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/work/cortexa8hf-neon-poky-linu=
x-gnueabi/busybox/1.23.2-r0/busybox-1.23.2/scripts/gen_build_files.sh /opt/=
ac500/yocto/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/work/cor=
texa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0/busybox-1.23.2 /opt/ac500=
/yocto/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/work/cortexa8=
hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0/busybox-1.23.2</i></font></div=
><div class=3D"gmail_default" style=3D""><font face=3D"times new roman, ser=
if"><i>mkdir -p include</i></font></div><div class=3D"gmail_default" style=
=3D""><font face=3D"times new roman, serif"><i>make -f scripts/Makefile.bui=
ld obj=3Dscripts/kconfig silentoldconfig</i></font></div><div class=3D"gmai=
l_default" style=3D""><font face=3D"times new roman, serif"><i>scripts/kcon=
fig/conf -s Config.in</i></font></div><div class=3D"gmail_default" style=3D=
""><font face=3D"times new roman, serif"><i>#</i></font></div><div class=3D=
"gmail_default" style=3D""><font face=3D"times new roman, serif"><i># using=
 defaults found in .config</i></font></div><div class=3D"gmail_default" sty=
le=3D""><font face=3D"times new roman, serif"><i>#</i></font></div><div cla=
ss=3D"gmail_default" style=3D""><font face=3D"times new roman, serif"><i>ma=
ke -C /opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/t=
mp/work/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0/busybox-1.23.2=
 KBUILD_SRC=3D .kernelrelease</i></font></div><div class=3D"gmail_default" =
style=3D""><font face=3D"times new roman, serif"><i>rm -f .kernelrelease</i=
></font></div><div class=3D"gmail_default" style=3D""><font face=3D"times n=
ew roman, serif"><i>echo 1.23.2 &gt; .kernelrelease</i></font></div><div cl=
ass=3D"gmail_default" style=3D""><font face=3D"times new roman, serif"><i>m=
ake -f scripts/Makefile.build obj=3Dscripts/basic</i></font></div><div clas=
s=3D"gmail_default" style=3D""><font face=3D"times new roman, serif"><i>mak=
e -f scripts/Makefile.build obj=3Dapplets</i></font></div><div class=3D"gma=
il_default" style=3D""><font face=3D"times new roman, serif"><i>=C2=A0 scri=
pts/basic/split-include include/autoconf.h include/config</i></font></div><=
div class=3D"gmail_default" style=3D""><font face=3D"times new roman, serif=
"><i>=C2=A0 gcc -Wp,-MD,applets/.usage.d=C2=A0 -Wall -Wstrict-prototypes -O=
2 -fomit-frame-pointer=C2=A0 =C2=A0 =C2=A0 -Iinclude -Iinclude -o applets/u=
sage applets/usage.c=C2=A0=C2=A0</i></font></div><div class=3D"gmail_defaul=
t" style=3D""><font face=3D"times new roman, serif"><i>=C2=A0 gcc -Wp,-MD,a=
pplets/.applet_tables.d=C2=A0 -Wall -Wstrict-prototypes -O2 -fomit-frame-po=
inter=C2=A0 =C2=A0 =C2=A0 =C2=A0-o applets/applet_tables applets/applet_tab=
les.c=C2=A0=C2=A0</i></font></div><div class=3D"gmail_default" style=3D""><=
font face=3D"times new roman, serif"><i>=C2=A0 /opt/ac500/yocto/branches/DE=
VEL_nextYocto/yocto/build_arm-cortex-a8/tmp/work/cortexa8hf-neon-poky-linux=
-gnueabi/busybox/1.23.2-r0/busybox-1.23.2/scripts/mkconfigs include/bbconfi=
gopts.h include/bbconfigopts_bz2.h</i></font></div><div class=3D"gmail_defa=
ult" style=3D""><font face=3D"times new roman, serif"><i>make -f scripts/Ma=
kefile.build obj=3Dscripts</i></font></div><div class=3D"gmail_default" sty=
le=3D""><font face=3D"times new roman, serif"><i>=C2=A0 applets/usage_compr=
essed include/usage_compressed.h applets</i></font></div><div class=3D"gmai=
l_default" style=3D""><font face=3D"times new roman, serif"><i>=C2=A0 apple=
ts/applet_tables include/applet_tables.h include/NUM_APPLETS.h</i></font></=
div><div class=3D"gmail_default" style=3D""><font face=3D"times new roman, =
serif"><i>=C2=A0 gcc -Wp,-MD,applets/.usage_pod.d=C2=A0 -Wall -Wstrict-prot=
otypes -O2 -fomit-frame-pointer=C2=A0 =C2=A0 =C2=A0 -Iinclude -Iinclude -o =
applets/usage_pod applets/usage_pod.c=C2=A0=C2=A0</i></font></div><div clas=
s=3D"gmail_default" style=3D""><font face=3D"times new roman, serif"><i>=C2=
=A0 arm-poky-linux-gnueabi-gcc -Wp,-MD,applets/.applets.o.d=C2=A0 =C2=A0-st=
d=3Dgnu99 -Iinclude -Ilibbb=C2=A0 -include include/autoconf.h -D_GNU_SOURCE=
 -DNDEBUG -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=3D6=
4 -D&quot;BB_VER=3DKBUILD_STR(1.23.2)&quot; -DBB_BT=3DAUTOCONF_TIMESTAMP=C2=
=A0 -Wall -Wshadow -Wwrite-strings -Wundef -Wstrict-prototypes -Wunused -Wu=
nused-parameter -Wunused-function -Wunused-value -Wmissing-prototypes -Wmis=
sing-declarations -Wno-format-security -Wdeclaration-after-statement -Wold-=
style-definition -fno-builtin-strlen -finline-limit=3D0 -fomit-frame-pointe=
r -ffunction-sections -fdata-sections -fno-guess-branch-probability -funsig=
ned-char -static-libgcc -falign-functions=3D1 -falign-jumps=3D1 -falign-lab=
els=3D1 -falign-loops=3D1 -fno-unwind-tables -fno-asynchronous-unwind-table=
s -Os -O2 -pipe -g -feliminate-unused-debug-types -fdebug-prefix-map=3D/opt=
/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/work/co=
rtexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0=3D/usr/src/debug/busybox=
/1.23.2-r0 -fdebug-prefix-map=3D/opt/ac500/yocto/branches/DEVEL_nextYocto/y=
octo/build_arm-cortex-a8/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/busybo=
x/1.23.2-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/opt/ac500/yocto/branche=
s/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/work/cortexa8hf-neon-poky-l=
inux-gnueabi/busybox/1.23.2-r0/recipe-sysroot-native=3D -mtune=3Dcortex-a8=
=C2=A0 -O2 -pipe -g -feliminate-unused-debug-types -fdebug-prefix-map=3D/op=
t/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/work/c=
ortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0=3D/usr/src/debug/busybo=
x/1.23.2-r0 -fdebug-prefix-map=3D/opt/ac500/yocto/branches/DEVEL_nextYocto/=
yocto/build_arm-cortex-a8/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/busyb=
ox/1.23.2-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/opt/ac500/yocto/branch=
es/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/work/cortexa8hf-neon-poky-=
linux-gnueabi/busybox/1.23.2-r0/recipe-sysroot-native=3D=C2=A0 -mtune=3Dcor=
tex-a8=C2=A0 =C2=A0-D&quot;KBUILD_STR(s)=3D#s&quot; -D&quot;KBUILD_BASENAME=
=3DKBUILD_STR(applets)&quot;=C2=A0 -D&quot;KBUILD_MODNAME=3DKBUILD_STR(appl=
ets)&quot; -c -o applets/applets.o applets/applets.c</i></font></div><div c=
lass=3D"gmail_default" style=3D""><font face=3D"times new roman, serif"><i>=
In file included from /opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build=
_arm-cortex-a8/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r=
0/recipe-sysroot-native/usr/lib/arm-poky-linux-gnueabi/gcc/arm-poky-linux-g=
nueabi/7.3.0/include-fixed/syslimits.h:7:0,</i></font></div><div class=3D"g=
mail_default" style=3D""><font face=3D"times new roman, serif"><i>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /opt/ac500/yoct=
o/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/work/cortexa8hf-ne=
on-poky-linux-gnueabi/busybox/1.23.2-r0/recipe-sysroot-native/usr/lib/arm-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/7.3.0/include-fixed/limits.h:3=
4,</i></font></div><div class=3D"gmail_default" style=3D""><font face=3D"ti=
mes new roman, serif"><i>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0from include/platform.h:141,</i></font></div><div class=3D"gma=
il_default" style=3D""><font face=3D"times new roman, serif"><i>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from include/libbb.h:13=
,</i></font></div><div class=3D"gmail_default" style=3D""><font face=3D"tim=
es new roman, serif"><i>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0from include/busybox.h:8,</i></font></div><div class=3D"gmail_=
default" style=3D""><font face=3D"times new roman, serif"><i>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from applets/applets.c:9:</=
i></font></div><div class=3D"gmail_default" style=3D""><font face=3D"times =
new roman, serif"><i>/opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_=
arm-cortex-a8/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0=
/recipe-sysroot-native/usr/lib/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gn=
ueabi/7.3.0/include-fixed/limits.h:194:61: error: no include path in which =
to search for limits.h</i></font></div><div class=3D"gmail_default" style=
=3D""><font face=3D"times new roman, serif"><i>=C2=A0#include_next &lt;limi=
ts.h&gt;=C2=A0 /* recurse down to the real one */</i></font></div><div clas=
s=3D"gmail_default" style=3D""><font face=3D"times new roman, serif"><i>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^</i></fo=
nt></div><div class=3D"gmail_default" style=3D""><font face=3D"times new ro=
man, serif"><i>In file included from include/libbb.h:13:0,</i></font></div>=
<div class=3D"gmail_default" style=3D""><font face=3D"times new roman, seri=
f"><i>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from in=
clude/busybox.h:8,</i></font></div><div class=3D"gmail_default" style=3D"">=
<font face=3D"times new roman, serif"><i>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0from applets/applets.c:9:</i></font></div><div =
class=3D"gmail_default" style=3D""><font face=3D"times new roman, serif"><i=
>include/platform.h:152:11: fatal error: byteswap.h: No such file or direct=
ory</i></font></div><div class=3D"gmail_default" style=3D""><font face=3D"t=
imes new roman, serif"><i>=C2=A0# include &lt;byteswap.h&gt;</i></font></di=
v><div class=3D"gmail_default" style=3D""><font face=3D"times new roman, se=
rif"><i>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~~~~~~~~~~~</i></font></d=
iv><div class=3D"gmail_default" style=3D""><font face=3D"times new roman, s=
erif"><i>compilation terminated.</i></font></div><div class=3D"gmail_defaul=
t" style=3D""><font face=3D"times new roman, serif"><i>make[1]: *** [script=
s/Makefile.build:198: applets/applets.o] Error 1</i></font></div><div class=
=3D"gmail_default" style=3D""><font face=3D"times new roman, serif"><i>make=
[1]: *** Waiting for unfinished jobs....</i></font></div><div class=3D"gmai=
l_default" style=3D""><font face=3D"times new roman, serif"><i>make: *** [M=
akefile:373: applets_dir] Error 2</i></font></div><div class=3D"gmail_defau=
lt" style=3D""><font face=3D"times new roman, serif"><i>ERROR: oe_runmake f=
ailed</i></font></div><div class=3D"gmail_default" style=3D""><font face=3D=
"times new roman, serif"><i>WARNING: /opt/ac500/yocto/branches/DEVEL_nextYo=
cto/yocto/build_arm-cortex-a8/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/b=
usybox/1.23.2-r0/temp/run.do_compile.26870:1 exit 1 from &#39;exit 1&#39;</=
i></font></div><div class=3D"gmail_default" style=3D""><font face=3D"times =
new roman, serif"><i>ERROR: Function failed: do_compile (log file is locate=
d at /opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tm=
p/work/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0/temp/log.do_com=
pile.26870)</i></font></div><div class=3D"gmail_default" style=3D"font-fami=
ly:georgia,serif"><br></div><div class=3D"gmail_default" style=3D"font-fami=
ly:georgia,serif">Both limits.h and byteswap.h don&#39;t exist in Poky-Fido=
 as well, but compiles without problems, unlike on Sumo. Does this have to =
do with the wrong Toolchains used or due to glibc (FYI: glibc_2.27 is been =
used)? If it has to do with the Toolchains, which one should I be using and=
 how do I go about it?</div><div class=3D"gmail_default" style=3D"font-fami=
ly:georgia,serif"><br></div><div class=3D"gmail_default" style=3D"font-fami=
ly:georgia,serif">Thanks!</div><div class=3D"gmail_default" style=3D"font-f=
amily:georgia,serif">Regards,</div><div class=3D"gmail_default" style=3D"fo=
nt-family:georgia,serif"><br></div></div><div><div dir=3D"ltr" class=3D"gma=
il_signature"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><font face=
=3D"georgia, serif" color=3D"#666666">Mit=C2=A0freundlichen=C2=A0Gr=C3=BC=
=C3=9Fen / Best Regards,</font><div><font face=3D"georgia, serif" color=3D"=
#666666">Dhanush=C2=A0<br></font></div></div></div></div></div></div></div>=
</div>

--000000000000d9cff705787c351e--
