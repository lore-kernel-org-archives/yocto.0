Return-Path: <parthiban@ulivesystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6F09E008DC; Thu, 26 Feb 2015 23:50:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-ob0-f177.google.com (mail-ob0-f177.google.com
	[209.85.214.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D031E0077E
	for <yocto@yoctoproject.org>; Thu, 26 Feb 2015 23:50:28 -0800 (PST)
Received: by mail-ob0-f177.google.com with SMTP id wp18so16199783obc.8
	for <yocto@yoctoproject.org>; Thu, 26 Feb 2015 23:50:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=CaRFtz9O6qXNqXoNcZJxX2G06O9bxsL6ne9xfWhIxCA=;
	b=gXJpYRViThcon1RHmGeoxIygus/Tzr6Aq11BGiDK1uWx/O/7v2D65zmRf12aU9OBFZ
	UVC46NJ8E3WoQVk7aaPNgDst2tDm3CRkz9q5k6WPYYkO1Iy23qxYF/mM4fdJ3XeYpIRX
	267e2kP8BjlqhYnDiVBSjmvg+0qtkHuKle8IKGE4kgX13wMTXvjWUr+Oww5rqWoA+q8m
	jwB6qmzGSlOPBeOaIAufpAYDaQqwf+Npo4uiwTn6fCnpwD2XW9R9bgXLaKupOhU+Zp+O
	C/njBT4LqBKwc3BPnLPAQAQNUwAGFNkNQskwLumQS00UHbkBlQ9oDISs6n3wHjKyuofj
	krJA==
X-Gm-Message-State: ALoCoQlyXZc/HClGV39gQ/lS4aSJxzcq6HQcm4nO2ximwwoRB2odqx/xZyg2NjG9ueoB8IzAn1/K
MIME-Version: 1.0
X-Received: by 10.60.56.19 with SMTP id w19mr9154761oep.20.1425023428051; Thu,
	26 Feb 2015 23:50:28 -0800 (PST)
Received: by 10.60.102.106 with HTTP; Thu, 26 Feb 2015 23:50:28 -0800 (PST)
Date: Fri, 27 Feb 2015 13:20:28 +0530
Message-ID: <CABNKipJm7PKH1r534M1aJ_d8WhvdeFMc-7-5EpWhs+BVAqKd4g@mail.gmail.com>
From: Parthiban Kandasamy <parthiban@ulivesystems.com>
To: yocto@yoctoproject.org
Subject: Native version conflict with yocto version
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
X-List-Received-Date: Fri, 27 Feb 2015 07:50:33 -0000
Content-Type: multipart/alternative; boundary=001a11c20c9e39d66d05100d1fee

--001a11c20c9e39d66d05100d1fee
Content-Type: text/plain; charset=UTF-8

i run yocto build on opensuse 12.3 which have version of make is 4.0 but my
yocto project has version of 3.82.so it shows "checking version of make...
4.0, bad".

and other error logs are:

ERROR: Function failed: do_configure (log file is located at
/home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/BeagleBuild/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/eglibc-initial/2.18-r0/temp/log.do_configure.9059)
ERROR: Logfile of failure stored in:
/home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/BeagleBuild/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/eglibc-initial/2.18-r0/temp/log.do_configure.9059
Log data follows:
| DEBUG: Executing python function sysroot_cleansstate
| DEBUG: Python function sysroot_cleansstate finished
| DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common',
'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common']
| DEBUG: Executing shell function autotools_preconfigure
| DEBUG: Shell function autotools_preconfigure finished
| DEBUG: Executing shell function do_configure
| checking build system type... x86_64-pc-linux-gnu
| checking host system type... arm-poky-linux-gnueabi
| checking for arm-poky-linux-gnueabi-gcc... arm-poky-linux-gnueabi-gcc
-march=armv7-a -mthumb-interwork -mfloat-abi=softfp -mfpu=neon
--sysroot=/home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/BeagleBuild/tmp/sysroots/beagleboard
| checking for suffix of object files... o
| checking whether we are using the GNU C compiler... yes
| checking whether arm-poky-linux-gnueabi-gcc  -march=armv7-a
-mthumb-interwork -mfloat-abi=softfp -mfpu=neon
--sysroot=/home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/BeagleBuild/tmp/sysroots/beagleboard
accepts -g... yes
| checking for gcc... gcc
| checking whether we are using the GNU C++ compiler... no
| checking whether arm-poky-linux-gnueabi-g++  -march=armv7-a
-mthumb-interwork -mfloat-abi=softfp -mfpu=neon
--sysroot=/home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/BeagleBuild/tmp/sysroots/beagleboard
accepts -g... no
| checking for arm-poky-linux-gnueabi-readelf...
arm-poky-linux-gnueabi-readelf
| checking for sysdeps preconfigure fragments... x86_64
| configure: running configure fragment for add-on libidn
| configure: running configure fragment for add-on nptl
| checking add-on ports for preconfigure fragments... aarch64 alpha am33
arm configure: Found compiler is configured for armv7
| hppa ia64 m68k microblaze mips powerpc tile
| checking for assembler and linker STT_GNU_IFUNC support... yes
| checking whether .text pseudo-op must be used... yes
| checking sysdep dirs... ports/sysdeps/unix/sysv/linux/arm/nptl
ports/sysdeps/unix/sysv/linux/arm nptl/sysdeps/unix/sysv/linux
nptl/sysdeps/pthread sysdeps/pthread ports/sysdeps/unix/sysv/linux
sysdeps/unix/sysv/linux sysdeps/gnu sysdeps/unix/inet
nptl/sysdeps/unix/sysv ports/sysdeps/unix/sysv sysdeps/unix/sysv
ports/sysdeps/unix/arm nptl/sysdeps/unix ports/sysdeps/unix sysdeps/unix
sysdeps/posix ports/sysdeps/arm/armv7/multiarch ports/sysdeps/arm/armv7
ports/sysdeps/arm/armv6t2 ports/sysdeps/arm/armv6 ports/sysdeps/arm/nptl
ports/sysdeps/arm ports/sysdeps/arm/soft-fp sysdeps/wordsize-32
sysdeps/ieee754/flt-32 sysdeps/ieee754/dbl-64 sysdeps/ieee754
sysdeps/generic
| checking for a BSD-compatible install... /usr/bin/install -c
| checking whether ln -s works... yes
| checking whether
/home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/BeagleBuild/tmp/sysroots/x86_64-linux/usr/libexec/armv7a-vfp-neon-poky-linux-gnueabi.gcc-cross-initial/gcc/arm-poky-linux-gnueabi/4.8.1/as
is GNU as... yes
| checking whether
/home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/BeagleBuild/tmp/sysroots/x86_64-linux/usr/libexec/armv7a-vfp-neon-poky-linux-gnueabi.gcc-cross-initial/gcc/arm-poky-linux-gnueabi/4.8.1/ld
is GNU ld... yes
| checking for
/home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/BeagleBuild/tmp/sysroots/x86_64-linux/usr/libexec/armv7a-vfp-neon-poky-linux-gnueabi.gcc-cross-initial/gcc/arm-poky-linux-gnueabi/4.8.1/as...
/home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/BeagleBuild/tmp/sysroots/x86_64-linux/usr/libexec/armv7a-vfp-neon-poky-linux-gnueabi.gcc-cross-initial/gcc/arm-poky-linux-gnueabi/4.8.1/as
| checking version of
/home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/BeagleBuild/tmp/sysroots/x86_64-linux/usr/libexec/armv7a-vfp-neon-poky-linux-gnueabi.gcc-cross-initial/gcc/arm-poky-linux-gnueabi/4.8.1/as...
2.23.2, ok
| checking for
/home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/BeagleBuild/tmp/sysroots/x86_64-linux/usr/libexec/armv7a-vfp-neon-poky-linux-gnueabi.gcc-cross-initial/gcc/arm-poky-linux-gnueabi/4.8.1/ld...
/home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/BeagleBuild/tmp/sysroots/x86_64-linux/usr/libexec/armv7a-vfp-neon-poky-linux-gnueabi.gcc-cross-initial/gcc/arm-poky-linux-gnueabi/4.8.1/ld
| checking version of
/home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/BeagleBuild/tmp/sysroots/x86_64-linux/usr/libexec/armv7a-vfp-neon-poky-linux-gnueabi.gcc-cross-initial/gcc/arm-poky-linux-gnueabi/4.8.1/ld...
2.23.2, ok
| checking for arm-poky-linux-gnueabi-gcc... (cached)
arm-poky-linux-gnueabi-gcc  -march=armv7-a -mthumb-interwork
-mfloat-abi=softfp -mfpu=neon
--sysroot=/home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/BeagleBuild/tmp/sysroots/beagleboard
| checking version of arm-poky-linux-gnueabi-gcc  -march=armv7-a
-mthumb-interwork -mfloat-abi=softfp -mfpu=neon
--sysroot=/home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/BeagleBuild/tmp/sysroots/beagleboard...
4.8.1, ok
| checking for gnumake... make
| checking version of make... 4.0, bad
| checking for gnumsgfmt... no
| checking for gmsgfmt... no
| checking for msgfmt... msgfmt
| checking version of msgfmt... 0.18.3, ok
| checking for makeinfo... makeinfo
| checking version of makeinfo... 4.13, ok
| checking for sed... sed
| checking version of sed... 4.2.2, ok
| checking for gawk... gawk
| checking version of gawk... 4.1.1, ok
| checking for arm-poky-linux-gnueabi-nm... arm-poky-linux-gnueabi-nm
| checking for autoconf... autoconf
| checking whether autoconf works... yes
| configure: error:
| *** These critical programs are missing or too old: make
| *** Check the INSTALL file for required versions.
| WARNING:
/home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/BeagleBuild/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/eglibc-initial/2.18-r0/temp/run.do_configure.9059:1
exit 1 from
|
/home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/BeagleBuild/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/eglibc-initial/2.18-r0/eglibc-2.18/libc/configure
--host=arm-poky-linux-gnueabi --build=x86_64-linux --prefix=/usr
--without-cvs --disable-sanity-checks
--with-headers=/home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/BeagleBuild/tmp/sysroots/beagleboard/usr/include
--with-kconfig=/home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/BeagleBuild/tmp/sysroots/x86_64-linux/usr/bin
--enable-hacker-mode --enable-addons
| ERROR: Function failed: do_configure (log file is located at
/home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/BeagleBuild/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/eglibc-initial/2.18-r0/temp/log.do_configure.9059)
ERROR: Task 568
(/home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/meta/recipes-core/eglibc/
eglibc-initial_2.18.bb, do_configure) failed with exit code '1'

how do i configure yocto project to overcome this error?

-- 
thanks and regards,
parthiban
      +919790329795

--001a11c20c9e39d66d05100d1fee
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>i run yocto build on opensuse 12.3 which have ve=
rsion of make is 4.0 but my yocto project has version of <a href=3D"http://=
3.82.so">3.82.so</a> it shows &quot;checking version of make... 4.0, bad&qu=
ot;.<br><br></div>and other error logs are:<br><br>ERROR: Function failed: =
do_configure (log file is located at /home/parthiban/UliveSytems/Parthiban/=
CODE/OpenSource/BSP/beagleboard-dora-10.0.0/BeagleBuild/tmp/work/armv7a-vfp=
-neon-poky-linux-gnueabi/eglibc-initial/2.18-r0/temp/log.do_configure.9059)=
<br>ERROR: Logfile of failure stored in: /home/parthiban/UliveSytems/Parthi=
ban/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/BeagleBuild/tmp/work/armv7a=
-vfp-neon-poky-linux-gnueabi/eglibc-initial/2.18-r0/temp/log.do_configure.9=
059<br>Log data follows:<br>| DEBUG: Executing python function sysroot_clea=
nsstate<br>| DEBUG: Python function sysroot_cleansstate finished<br>| DEBUG=
: SITE files [&#39;endian-little&#39;, &#39;bit-32&#39;, &#39;arm-common&#3=
9;, &#39;common-linux&#39;, &#39;common-glibc&#39;, &#39;arm-linux&#39;, &#=
39;arm-linux-gnueabi&#39;, &#39;common&#39;]<br>| DEBUG: Executing shell fu=
nction autotools_preconfigure<br>| DEBUG: Shell function autotools_preconfi=
gure finished<br>| DEBUG: Executing shell function do_configure<br>| checki=
ng build system type... x86_64-pc-linux-gnu<br>| checking host system type.=
.. arm-poky-linux-gnueabi<br>| checking for arm-poky-linux-gnueabi-gcc... a=
rm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7-a -mthumb-interwork -mfloat-=
abi=3Dsoftfp -mfpu=3Dneon --sysroot=3D/home/parthiban/UliveSytems/Parthiban=
/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/BeagleBuild/tmp/sysroots/beagl=
eboard<br>| checking for suffix of object files... o<br>| checking whether =
we are using the GNU C compiler... yes<br>| checking whether arm-poky-linux=
-gnueabi-gcc=C2=A0 -march=3Darmv7-a -mthumb-interwork -mfloat-abi=3Dsoftfp =
-mfpu=3Dneon --sysroot=3D/home/parthiban/UliveSytems/Parthiban/CODE/OpenSou=
rce/BSP/beagleboard-dora-10.0.0/BeagleBuild/tmp/sysroots/beagleboard accept=
s -g... yes<br>| checking for gcc... gcc<br>| checking whether we are using=
 the GNU C++ compiler... no<br>| checking whether arm-poky-linux-gnueabi-g+=
+=C2=A0 -march=3Darmv7-a -mthumb-interwork -mfloat-abi=3Dsoftfp -mfpu=3Dneo=
n --sysroot=3D/home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/bea=
gleboard-dora-10.0.0/BeagleBuild/tmp/sysroots/beagleboard accepts -g... no<=
br>| checking for arm-poky-linux-gnueabi-readelf... arm-poky-linux-gnueabi-=
readelf<br>| checking for sysdeps preconfigure fragments... x86_64<br>| con=
figure: running configure fragment for add-on libidn<br>| configure: runnin=
g configure fragment for add-on nptl<br>| checking add-on ports for preconf=
igure fragments... aarch64 alpha am33 arm configure: Found compiler is conf=
igured for armv7<br>| hppa ia64 m68k microblaze mips powerpc tile<br>| chec=
king for assembler and linker STT_GNU_IFUNC support... yes<br>| checking wh=
ether .text pseudo-op must be used... yes<br>| checking sysdep dirs... port=
s/sysdeps/unix/sysv/linux/arm/nptl ports/sysdeps/unix/sysv/linux/arm nptl/s=
ysdeps/unix/sysv/linux nptl/sysdeps/pthread sysdeps/pthread ports/sysdeps/u=
nix/sysv/linux sysdeps/unix/sysv/linux sysdeps/gnu sysdeps/unix/inet nptl/s=
ysdeps/unix/sysv ports/sysdeps/unix/sysv sysdeps/unix/sysv ports/sysdeps/un=
ix/arm nptl/sysdeps/unix ports/sysdeps/unix sysdeps/unix sysdeps/posix port=
s/sysdeps/arm/armv7/multiarch ports/sysdeps/arm/armv7 ports/sysdeps/arm/arm=
v6t2 ports/sysdeps/arm/armv6 ports/sysdeps/arm/nptl ports/sysdeps/arm ports=
/sysdeps/arm/soft-fp sysdeps/wordsize-32 sysdeps/ieee754/flt-32 sysdeps/iee=
e754/dbl-64 sysdeps/ieee754 sysdeps/generic<br>| checking for a BSD-compati=
ble install... /usr/bin/install -c<br>| checking whether ln -s works... yes=
<br>| checking whether /home/parthiban/UliveSytems/Parthiban/CODE/OpenSourc=
e/BSP/beagleboard-dora-10.0.0/BeagleBuild/tmp/sysroots/x86_64-linux/usr/lib=
exec/armv7a-vfp-neon-poky-linux-gnueabi.gcc-cross-initial/gcc/arm-poky-linu=
x-gnueabi/4.8.1/as is GNU as... yes<br>| checking whether /home/parthiban/U=
liveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/BeagleBuil=
d/tmp/sysroots/x86_64-linux/usr/libexec/armv7a-vfp-neon-poky-linux-gnueabi.=
gcc-cross-initial/gcc/arm-poky-linux-gnueabi/4.8.1/ld is GNU ld... yes<br>|=
 checking for /home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/bea=
gleboard-dora-10.0.0/BeagleBuild/tmp/sysroots/x86_64-linux/usr/libexec/armv=
7a-vfp-neon-poky-linux-gnueabi.gcc-cross-initial/gcc/arm-poky-linux-gnueabi=
/4.8.1/as... /home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beag=
leboard-dora-10.0.0/BeagleBuild/tmp/sysroots/x86_64-linux/usr/libexec/armv7=
a-vfp-neon-poky-linux-gnueabi.gcc-cross-initial/gcc/arm-poky-linux-gnueabi/=
4.8.1/as<br>| checking version of /home/parthiban/UliveSytems/Parthiban/COD=
E/OpenSource/BSP/beagleboard-dora-10.0.0/BeagleBuild/tmp/sysroots/x86_64-li=
nux/usr/libexec/armv7a-vfp-neon-poky-linux-gnueabi.gcc-cross-initial/gcc/ar=
m-poky-linux-gnueabi/4.8.1/as... 2.23.2, ok<br>| checking for /home/parthib=
an/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/Beagle=
Build/tmp/sysroots/x86_64-linux/usr/libexec/armv7a-vfp-neon-poky-linux-gnue=
abi.gcc-cross-initial/gcc/arm-poky-linux-gnueabi/4.8.1/ld... /home/parthiba=
n/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/BeagleB=
uild/tmp/sysroots/x86_64-linux/usr/libexec/armv7a-vfp-neon-poky-linux-gnuea=
bi.gcc-cross-initial/gcc/arm-poky-linux-gnueabi/4.8.1/ld<br>| checking vers=
ion of /home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboar=
d-dora-10.0.0/BeagleBuild/tmp/sysroots/x86_64-linux/usr/libexec/armv7a-vfp-=
neon-poky-linux-gnueabi.gcc-cross-initial/gcc/arm-poky-linux-gnueabi/4.8.1/=
ld... 2.23.2, ok<br>| checking for arm-poky-linux-gnueabi-gcc... (cached) a=
rm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7-a -mthumb-interwork -mfloat-=
abi=3Dsoftfp -mfpu=3Dneon --sysroot=3D/home/parthiban/UliveSytems/Parthiban=
/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/BeagleBuild/tmp/sysroots/beagl=
eboard<br>| checking version of arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Da=
rmv7-a -mthumb-interwork -mfloat-abi=3Dsoftfp -mfpu=3Dneon --sysroot=3D/hom=
e/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0=
.0/BeagleBuild/tmp/sysroots/beagleboard... 4.8.1, ok<br>| checking for gnum=
ake... make<br>| checking version of make... 4.0, bad<br>| checking for gnu=
msgfmt... no<br>| checking for gmsgfmt... no<br>| checking for msgfmt... ms=
gfmt<br>| checking version of msgfmt... 0.18.3, ok<br>| checking for makein=
fo... makeinfo<br>| checking version of makeinfo... 4.13, ok<br>| checking =
for sed... sed<br>| checking version of sed... 4.2.2, ok<br>| checking for =
gawk... gawk<br>| checking version of gawk... 4.1.1, ok<br>| checking for a=
rm-poky-linux-gnueabi-nm... arm-poky-linux-gnueabi-nm<br>| checking for aut=
oconf... autoconf<br>| checking whether autoconf works... yes<br>| configur=
e: error:<br>| *** These critical programs are missing or too old: make<br>=
| *** Check the INSTALL file for required versions.<br>| WARNING: /home/par=
thiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/Be=
agleBuild/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/eglibc-initial/2.18-r=
0/temp/run.do_configure.9059:1 exit 1 from<br>|=C2=A0=C2=A0 /home/parthiban=
/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/BeagleBu=
ild/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/eglibc-initial/2.18-r0/egli=
bc-2.18/libc/configure --host=3Darm-poky-linux-gnueabi --build=3Dx86_64-lin=
ux --prefix=3D/usr --without-cvs --disable-sanity-checks --with-headers=3D/=
home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-1=
0.0.0/BeagleBuild/tmp/sysroots/beagleboard/usr/include --with-kconfig=3D/ho=
me/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.=
0.0/BeagleBuild/tmp/sysroots/x86_64-linux/usr/bin --enable-hacker-mode --en=
able-addons<br>| ERROR: Function failed: do_configure (log file is located =
at /home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-do=
ra-10.0.0/BeagleBuild/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/eglibc-in=
itial/2.18-r0/temp/log.do_configure.9059)<br>ERROR: Task 568 (/home/parthib=
an/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/meta/r=
ecipes-core/eglibc/<a href=3D"http://eglibc-initial_2.18.bb">eglibc-initial=
_2.18.bb</a>, do_configure) failed with exit code &#39;1&#39;<br><br></div>=
how do i configure yocto project to overcome this error?<br clear=3D"all"><=
div><div><div><br>-- <br><div class=3D"gmail_signature"><div style=3D"text-=
align:right">thanks and regards,<br>parthiban =C2=A0 =C2=A0 =C2=A0 <br><div=
 style=3D"text-align:right">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 +919790329795=C2=
=A0=C2=A0 <br></div></div></div>
</div></div></div></div>

--001a11c20c9e39d66d05100d1fee--
