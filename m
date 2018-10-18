Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B58FE00994; Thu, 18 Oct 2018 08:49:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
	[209.85.222.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6837E00971
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2018 08:49:36 -0700 (PDT)
Received: by mail-qk1-f195.google.com with SMTP id x8-v6so19077462qka.4
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2018 08:49:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=lzXXqftjfi/e0mBOk6D1kL3zuwyyS2ZRWND06hbq9SA=;
	b=WicYu4n84oBjg2pupwEHieKuXY0qqPJXTzU4CRJHaJwM2MxzUjF7n6X8ExSQ+5Heh+
	uRHSvj6Bo6NjmO8lBIm5MDVHs8dMNlPNTlpQSmC0+Yh1yy3S8uTK7QOrMrKOvxKQwFcn
	DNBDfo82WxT/RdmlnTdBES8FoucI8ccqPbU+AjLObHSvqsKsoaFq4HN+tjg8ZQA3Er2s
	VUbGZFiFRm3Gpsr+cByChxJmQinH4GYfoFn0MeL3ByVPdLXG9ZIONktCfJMW3LrDzNxi
	5RZ6AdLhnhbwEZD7hfWbUAbmxzv3e6PHmdFLrmdjcVI9Fpix413QWL4+T8z0yg8j5ARU
	ldfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=lzXXqftjfi/e0mBOk6D1kL3zuwyyS2ZRWND06hbq9SA=;
	b=cFjWSHcpwwPrxh8g6Ut1OZREHPT4FKtMbrRmkeRYozK+1IcC96cdwSXbhZBirEac6Y
	33/pPx/Nqa7cQ/h1QVjHmRrdkSLpB31tM5t2GBgeTLKbxCqQFKvJxJIkTf7H3jUSjU+G
	OOpGVnwfmweiGpmp530x7BSbV3Ogcc5YXgeBINtCY9FPOSVLCOf+ElxHasDam0+DNK1D
	XI/pSy0s2Mp1ANOuxf0mb2T+dsvE71zWYXBgMJt7LkT7X9w6quifCCX3F4bGBfF4JWuq
	Jvkl4DEkWwtQfZyZodfIaCrLklOPTlpDnutEEOWriOl033IzSXzj57EMivThXiAYB/4A
	Ky7Q==
X-Gm-Message-State: ABuFfoh/POGPWBmyU//kvju3NWX3FO+ylrrYSuBi2E6dl0cDXGyXQtki
	3rQ1S0iAUhVuuxZEsSYhogfFGN9CbPbivlO1v3+1YDBM
X-Google-Smtp-Source: ACcGV61TEctg8q/U/+ecCcVsXbdZcNejrJnC1xGZsMe2RilkzBT0lr/elk9J0FSQi+W6AUrUo2+eXk4bgg4wU73t34U=
X-Received: by 2002:a37:31cf:: with SMTP id
	x198-v6mr28984408qkx.206.1539877775898; 
	Thu, 18 Oct 2018 08:49:35 -0700 (PDT)
MIME-Version: 1.0
References: <CAKPYHZ4VV_+PpwJE_=EVq2HNxfU4PuCjg-2T+AueB+9Jv1eG9A@mail.gmail.com>
In-Reply-To: <CAKPYHZ4VV_+PpwJE_=EVq2HNxfU4PuCjg-2T+AueB+9Jv1eG9A@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 18 Oct 2018 08:49:09 -0700
Message-ID: <CAMKF1soa4UorFpZkwfZhSMe-8V4FkXP+OVGpG-0kZgmUsih5oQ@mail.gmail.com>
To: dhanush.ks@gmail.com
Cc: Yocto Project <yocto@yoctoproject.org>
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
X-List-Received-Date: Thu, 18 Oct 2018 15:49:38 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Always send the Build Configuration that bitbake prints on top of
build. So someone can get some additional information about your build
to help you better.
On Thu, Oct 18, 2018 at 1:03 AM Dhanush K.S <dhanush.ks@gmail.com> wrote:
>
> Hello Yocto,
>
> I'm currently building an image with the busybox_1.23.2.bb recipe include=
d, using Yocto Sumo 2.5 with the Bitbake version 1.37.0. It is running on a=
 CentOS host building images for the target ARM cortexa8. This busybox reci=
pe is placed in another custom layer. Though this recipe compiles without e=
rrors in Poky-Fido, in Poky-Sumo I get compilation errors due to missing he=
ader files. I have pasted a part of the log.do.compile file with the error.
>
> # merged configuration written to .config (needs make)
> #
> NOTE: make -j 2 LD=3Darm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mfpu=
=3Dneon -mfloat-abi=3Dhard -mcpu=3Dcortex-a8 --sysroot=3D/opt/ac500/yocto/b=
ranches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/work/cortexa8hf-neon-=
poky-linux-gnueabi/busybox/1.23.2-r0/recipe-sysroot V=3D1 ARCH=3Darm CROSS_=
COMPILE=3Darm-poky-linux-gnueabi- SKIP_STRIP=3Dy busybox_unstripped
> rm -f .kernelrelease
> echo 1.23.2 > .kernelrelease
> /opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/w=
ork/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0/busybox-1.23.2/scr=
ipts/gen_build_files.sh /opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/bui=
ld_arm-cortex-a8/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2=
-r0/busybox-1.23.2 /opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_ar=
m-cortex-a8/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0/b=
usybox-1.23.2
> make -f /opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_arm-cortex-=
a8/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0/busybox-1.=
23.2/Makefile silentoldconfig
> make -f scripts/Makefile.build obj=3Dscripts/basic
> /opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/w=
ork/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0/busybox-1.23.2/scr=
ipts/gen_build_files.sh /opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/bui=
ld_arm-cortex-a8/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2=
-r0/busybox-1.23.2 /opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_ar=
m-cortex-a8/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0/b=
usybox-1.23.2
> mkdir -p include
> make -f scripts/Makefile.build obj=3Dscripts/kconfig silentoldconfig
> scripts/kconfig/conf -s Config.in
> #
> # using defaults found in .config
> #
> make -C /opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_arm-cortex-=
a8/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0/busybox-1.=
23.2 KBUILD_SRC=3D .kernelrelease
> rm -f .kernelrelease
> echo 1.23.2 > .kernelrelease
> make -f scripts/Makefile.build obj=3Dscripts/basic
> make -f scripts/Makefile.build obj=3Dapplets
>   scripts/basic/split-include include/autoconf.h include/config
>   gcc -Wp,-MD,applets/.usage.d  -Wall -Wstrict-prototypes -O2 -fomit-fram=
e-pointer      -Iinclude -Iinclude -o applets/usage applets/usage.c
>   gcc -Wp,-MD,applets/.applet_tables.d  -Wall -Wstrict-prototypes -O2 -fo=
mit-frame-pointer       -o applets/applet_tables applets/applet_tables.c
>   /opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp=
/work/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0/busybox-1.23.2/s=
cripts/mkconfigs include/bbconfigopts.h include/bbconfigopts_bz2.h
> make -f scripts/Makefile.build obj=3Dscripts
>   applets/usage_compressed include/usage_compressed.h applets
>   applets/applet_tables include/applet_tables.h include/NUM_APPLETS.h
>   gcc -Wp,-MD,applets/.usage_pod.d  -Wall -Wstrict-prototypes -O2 -fomit-=
frame-pointer      -Iinclude -Iinclude -o applets/usage_pod applets/usage_p=
od.c
>   arm-poky-linux-gnueabi-gcc -Wp,-MD,applets/.applets.o.d   -std=3Dgnu99 =
-Iinclude -Ilibbb  -include include/autoconf.h -D_GNU_SOURCE -DNDEBUG -D_LA=
RGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=3D64 -D"BB_VER=3DK=
BUILD_STR(1.23.2)" -DBB_BT=3DAUTOCONF_TIMESTAMP  -Wall -Wshadow -Wwrite-str=
ings -Wundef -Wstrict-prototypes -Wunused -Wunused-parameter -Wunused-funct=
ion -Wunused-value -Wmissing-prototypes -Wmissing-declarations -Wno-format-=
security -Wdeclaration-after-statement -Wold-style-definition -fno-builtin-=
strlen -finline-limit=3D0 -fomit-frame-pointer -ffunction-sections -fdata-s=
ections -fno-guess-branch-probability -funsigned-char -static-libgcc -falig=
n-functions=3D1 -falign-jumps=3D1 -falign-labels=3D1 -falign-loops=3D1 -fno=
-unwind-tables -fno-asynchronous-unwind-tables -Os -O2 -pipe -g -feliminate=
-unused-debug-types -fdebug-prefix-map=3D/opt/ac500/yocto/branches/DEVEL_ne=
xtYocto/yocto/build_arm-cortex-a8/tmp/work/cortexa8hf-neon-poky-linux-gnuea=
bi/busybox/1.23.2-r0=3D/usr/src/debug/busybox/1.23.2-r0 -fdebug-prefix-map=
=3D/opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/=
work/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0/recipe-sysroot=3D=
 -fdebug-prefix-map=3D/opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build=
_arm-cortex-a8/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r=
0/recipe-sysroot-native=3D -mtune=3Dcortex-a8  -O2 -pipe -g -feliminate-unu=
sed-debug-types -fdebug-prefix-map=3D/opt/ac500/yocto/branches/DEVEL_nextYo=
cto/yocto/build_arm-cortex-a8/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/b=
usybox/1.23.2-r0=3D/usr/src/debug/busybox/1.23.2-r0 -fdebug-prefix-map=3D/o=
pt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/work/=
cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0/recipe-sysroot=3D -fde=
bug-prefix-map=3D/opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_arm-=
cortex-a8/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0/rec=
ipe-sysroot-native=3D  -mtune=3Dcortex-a8   -D"KBUILD_STR(s)=3D#s" -D"KBUIL=
D_BASENAME=3DKBUILD_STR(applets)"  -D"KBUILD_MODNAME=3DKBUILD_STR(applets)"=
 -c -o applets/applets.o applets/applets.c
> In file included from /opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/bui=
ld_arm-cortex-a8/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2=
-r0/recipe-sysroot-native/usr/lib/arm-poky-linux-gnueabi/gcc/arm-poky-linux=
-gnueabi/7.3.0/include-fixed/syslimits.h:7:0,
>                  from /opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/bui=
ld_arm-cortex-a8/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2=
-r0/recipe-sysroot-native/usr/lib/arm-poky-linux-gnueabi/gcc/arm-poky-linux=
-gnueabi/7.3.0/include-fixed/limits.h:34,
>                  from include/platform.h:141,
>                  from include/libbb.h:13,
>                  from include/busybox.h:8,
>                  from applets/applets.c:9:
> /opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/w=
ork/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0/recipe-sysroot-nat=
ive/usr/lib/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/7.3.0/include=
-fixed/limits.h:194:61: error: no include path in which to search for limit=
s.h
>  #include_next <limits.h>  /* recurse down to the real one */
>                                                              ^
> In file included from include/libbb.h:13:0,
>                  from include/busybox.h:8,
>                  from applets/applets.c:9:
> include/platform.h:152:11: fatal error: byteswap.h: No such file or direc=
tory
>  # include <byteswap.h>
>            ^~~~~~~~~~~~
> compilation terminated.
> make[1]: *** [scripts/Makefile.build:198: applets/applets.o] Error 1
> make[1]: *** Waiting for unfinished jobs....
> make: *** [Makefile:373: applets_dir] Error 2
> ERROR: oe_runmake failed
> WARNING: /opt/ac500/yocto/branches/DEVEL_nextYocto/yocto/build_arm-cortex=
-a8/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/busybox/1.23.2-r0/temp/run.=
do_compile.26870:1 exit 1 from 'exit 1'
> ERROR: Function failed: do_compile (log file is located at /opt/ac500/yoc=
to/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/work/cortexa8hf-n=
eon-poky-linux-gnueabi/busybox/1.23.2-r0/temp/log.do_compile.26870)
>
> Both limits.h and byteswap.h don't exist in Poky-Fido as well, but compil=
es without problems, unlike on Sumo. Does this have to do with the wrong To=
olchains used or due to glibc (FYI: glibc_2.27 is been used)? If it has to =
do with the Toolchains, which one should I be using and how do I go about i=
t?
>
> Thanks!
> Regards,
>
> Mit freundlichen Gr=C3=BC=C3=9Fen / Best Regards,
> Dhanush
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

