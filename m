Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 47A8C4C8016A
	for <yocto@yoctoproject.org>; Mon, 23 May 2011 20:17:27 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 23 May 2011 18:17:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,259,1304319600"; 
   d="scan'208";a="222254"
Received: from unknown (HELO [10.255.12.111]) ([10.255.12.111])
	by azsmga001.ch.intel.com with ESMTP; 23 May 2011 18:17:26 -0700
Message-ID: <4DDB0725.8020003@intel.com>
Date: Mon, 23 May 2011 18:17:25 -0700
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Thunderbird/3.1.10
MIME-Version: 1.0
To: Saul Wold <saul.wold@intel.com>, "Xu, Jiajun" <jiajun.xu@intel.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Status of 1.1_M1.rc1
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
X-List-Received-Date: Tue, 24 May 2011 01:17:27 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

This weekend's run of rc1 failed to completely build in a few places. I am running a test buildset from the 1.1_M1 
branch after cherrypicking d5bbbf84 and 0d444bf7fa. This should correct some of this, although we may have a parallel 
make issue in the current test build I'm running:

http://autobuilder.yoctoproject.org:8010/builders/nightly-internal/builds/123/steps/shell_13/logs/stdio

I'll let everyone know the status of the pre-rc2 build when it's complete tomorrow morning:

Here are the known issues on nightly-external from the M1.rc1 build which is located at:

http://autobuilder.yoctoproject.org/nightly/20110520-2

Arch/images: Eclipse Plugin
Summary: build.sh does some git stuff that's wrong.
Notes: I'm working on this right now. Fix tomorrow.

Arch/images: qemuarm/lsb images
Package:  libpgn
Summary: failed to do_configure
Error Abstract:
| aclocal: aclocal: file 
`/srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/sysroots/qemuarm/usr/share/aclocal/libxml.m4' does not 
exist
| autoreconf: aclocal failed with exit status: 1
| ERROR: autoreconf execution failed.
| ERROR: Function 'do_configure' failed (see 
/srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/work/armv5te-poky-linux-gnueabi/libpng-1.2.44-r0/temp/log.do_configure.24513 
for further information)
| ERROR: Function 'do_configure' failed (see 
/srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/work/armv5te-poky-linux-gnueabi/libpng-1.2.44-r0/temp/log.do_configure.24513 
for further information)

Arch/images: qemumips/lsb images
Package:  gnutls
Summary: failed to do_install
Error Abstract:
| mips-poky-linux-libtool: relink: mips-poky-linux-g++ -march=mips32 
--sysroot=/srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/sysroots/qemumips  -fPIC -DPIC -shared 
-nostdlib /srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/sysroots/qemumips/usr/lib/crti.o 
/srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/sysroots/qemumips/usr/lib/mips-poky-linux/4.5.1/crtbeginS.o 
  .libs/libgnutlsxx_la-gnutlsxx.o 
-L/srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/work/mips-poky-linux/gnutls-2.10.4-r0/image/usr/lib 
-L/srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/sysroots/qemumips/usr/lib -lgnutls -L=/usr/lib -ltasn1 
-lz -lgcrypt -lgpg-error -lcap 
-L/srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/sysroots/x86_64-linux/usr/lib/mips-poky-linux/gcc/mips-poky-linux/4.5.1 
-L/srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/sysroots/x86_64-linux/usr/lib/mips-poky-linux/gcc/mips-poky-linux/4.5.1/../../../../../mips-poky-linux/lib 
-L/srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/sysroots/qemumips/lib 
-L/srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/sysroots/qemumips/usr/lib/mips-poky-linux/4.5.1 
-lstdc++ -lm -lc -lgcc_s 
/srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/sysroots/qemumips/usr/lib/mips-poky-linux/4.5.1/crtendS.o /srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/sysroots/qemumips/usr/lib/crtn.o 
  -march=mips32 --sysroot=/srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/sysroots/qemumips -O2 
-Wl,--version-script=./libgnutlsxx.map -Wl,-O1 -Wl,--as-needed   -Wl,-soname -Wl,libgnutlsxx.so.26 -o 
.libs/libgnutlsxx.so.26.16.13
| 
/srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/sysroots/x86_64-linux/usr/libexec/mips-poky-linux/gcc/mips-poky-linux/4.5.1/ld: 
cannot find -lcap
| collect2: ld returned 1 exit status

Arch/images: qemuppc/lsb images
Package: expat
Summary: failed to do_configure
Error Abstract:
| aclocal: aclocal: file 
`/srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/sysroots/qemuppc/usr/share/aclocal/gnome-compiler-flags.m4' 
does not exist
| autoreconf: aclocal failed with exit status: 1
| ERROR: autoreconf execution failed.
| ERROR: Function 'do_configure' failed (see 
/srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/work/ppc603e-poky-linux/expat-2.0.1-r0/temp/log.do_configure.21205 
for further information)
| ERROR: Function 'do_configure' failed (see 
/srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/work/ppc603e-poky-linux/expat-2.0.1-r0/temp/log.do_configure.21205 
for further information)


Arch/images: beagleboard/lsb-sdk
Package: mesa-xlib-1_7.10.2-r0
Summary: failed to do_compile
Error Abstract:
| arm-poky-linux-gnueabi-gcc -march=armv7-a -mtune=cortex-a8 -mfpu=neon -mfloat-abi=softfp -fno-tree-vectorize 
--sysroot=/srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/sysroots/beagleboard -c -I. 
-I../../../../src/gallium/include -I../../../../src/gallium/auxiliary -I../../../../src/gallium/drivers 
-I../../../../src/gallium/drivers/svga/include -O2 -pipe -g -feliminate-unused-debug-types -Wall -Wmissing-prototypes 
-std=c99 -ffast-math -fvisibility=hidden -fno-strict-aliasing -fPIC -D_GNU_SOURCE -DPTHREADS -DHAVE_POSIX_MEMALIGN 
-DUSE_XSHM -std=gnu99 -fvisibility=hidden -DHAVE_STDINT_H -DHAVE_SYS_TYPES_H svga_tgsi_insn.c -o svga_tgsi_insn.o
| svga_tgsi_insn.c: In function 'svga_shader_emit_instructions':
| svga_tgsi_insn.c:2969:1: internal compiler error: in push_minipool_fix, at config/arm/arm.c:12084

Arch/images: mpc8315e-rdb/lsb-sdk
Package: xserver-xf86-lite_1.10.1
Summary: failed to do_compile
Error Abstract:
| /bin/sh ../../powerpc-poky-linux-libtool  --tag=CC   --mode=link powerpc-poky-linux-gcc -mcpu=603e  -mhard-float 
--sysroot=/srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/sysroots/mpc8315e-rdb -std=gnu99 
-DHAVE_DIX_CONFIG_H -Wall -Wpointer-arith -Wstrict-prototypes -Wmissing-prototypes -Wmissing-declarations 
-Wnested-externs -fno-strict-aliasing -Wbad-function-cast -Wformat=2 -Wold-style-definition 
-Wdeclaration-after-statement  -D_BSD_SOURCE -DHAS_FCHOWN -DHAS_STICKY_DIR_BIT 
-I/srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/sysroots/mpc8315e-rdb/usr/include/pixman-1 
-I/srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/sysroots/mpc8315e-rdb/usr/include/freetype2 
-I../../include -I../../include -I../../Xext -I../../composite -I../../damageext -I../../xfixes -I../../Xi -I../../mi 
-I../../miext/sync -I../../miext/shadow  -I../../miext/damage -I../../render -I../../randr -I../../fb 
-fvisibility=hidden  -DHAVE_XORG_CONFIG_H -fvisibility=hidden   -DXF86PM   -O2 -pipe -g -feliminate-unused-debug-types 
-export-dynamic -Wl,-O1  -Wl,--as-needed -o Xorg xorg.o ../../dix/libmain.la libxorg.la -lpciaccess    -lpthread 
-lpixman-1 -lXfont -lXau -lXdmcp    -lm   -lm
| powerpc-poky-linux-libtool: link: powerpc-poky-linux-gcc -mcpu=603e -mhard-float 
--sysroot=/srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/sysroots/mpc8315e-rdb -std=gnu99 
-DHAVE_DIX_CONFIG_H -Wall -Wpointer-arith -Wstrict-prototypes -Wmissing-prototypes -Wmissing-declarations 
-Wnested-externs -fno-strict-aliasing -Wbad-function-cast -Wformat=2 -Wold-style-definition 
-Wdeclaration-after-statement -D_BSD_SOURCE -DHAS_FCHOWN -DHAS_STICKY_DIR_BIT 
-I/srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/sysroots/mpc8315e-rdb/usr/include/pixman-1 
-I/srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/sysroots/mpc8315e-rdb/usr/include/freetype2 
-I../../include -I../../include -I../../Xext -I../../composite -I../../damageext -I../../xfixes -I../../Xi -I../../mi 
-I../../miext/sync -I../../miext/shadow -I../../miext/damage -I../../render -I../../randr -I../../fb -fvisibility=hidden 
-DHAVE_XORG_CONFIG_H -fvisibility=hidden -DXF86PM -O2 -pipe -g -feliminate-unused-debug-types -Wl,-O1 -Wl,--as-needed -o 
Xorg xorg.o -Wl,--export-dynamic  ../../dix/.libs/libmain.a ./.libs/libxorg.a -L=/usr/lib 
/srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/sysroots/mpc8315e-rdb/usr/lib/libudev.so 
/srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/sysroots/mpc8315e-rdb/usr/lib/libgcrypt.so 
/srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/sysroots/mpc8315e-rdb/usr/lib/libgpg-error.so 
/srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/sysroots/mpc8315e-rdb/usr/lib/libpciaccess.so -lpthread 
/srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/sysroots/mpc8315e-rdb/usr/lib/libpixman-1.so 
/srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/sysroots/mpc8315e-rdb/usr/lib/libXfont.so 
/srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/sysroots/mpc8315e-rdb/usr/lib/libfreetype.so 
/srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/sysroots/mpc8315e-rdb/usr/lib/libfontenc.so 
/srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/sysroots/mpc8315e-rdb/usr/lib/libz.so 
/srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/sysroots/mpc8315e-rdb/usr/lib/libXau.so 
/srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/sysroots/mpc8315e-rdb/usr/lib/libXdmcp.so -lm -Wl,-rpath 
-Wl,/usr/lib
| ./.libs/libxorg.a(lt71-backtrace.o): In function `xorg_backtrace':
| 
/srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/work/ppc603e-poky-linux/xserver-xf86-lite-1.10.1-r0/xorg-server-1.10.1/os/backtrace.c:47: 
undefined reference to `dladdr'
| ./.libs/libxorg.a(loader.o): In function `LoaderOpen':
| 
/srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/work/ppc603e-poky-linux/xserver-xf86-lite-1.10.1-r0/xorg-server-1.10.1/hw/xfree86/loader/loader.c:132: 
undefined reference to `dlopen'
| 
/srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/work/ppc603e-poky-linux/xserver-xf86-lite-1.10.1-r0/xorg-server-1.10.1/hw/xfree86/loader/loader.c:133: 
undefined reference to `dlerror'
| ./.libs/libxorg.a(loader.o): In function `LoaderSymbol':
| 
/srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/work/ppc603e-poky-linux/xserver-xf86-lite-1.10.1-r0/xorg-server-1.10.1/hw/xfree86/loader/loader.c:150: 
undefined reference to `dlsym'
| 
/srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/work/ppc603e-poky-linux/xserver-xf86-lite-1.10.1-r0/xorg-server-1.10.1/hw/xfree86/loader/loader.c:158: 
undefined reference to `dlsym'
| 
/srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/work/ppc603e-poky-linux/xserver-xf86-lite-1.10.1-r0/xorg-server-1.10.1/hw/xfree86/loader/loader.c:155: 
undefined reference to `dlopen'
| ./.libs/libxorg.a(loader.o): In function `LoaderUnload':
| 
/srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/work/ppc603e-poky-linux/xserver-xf86-lite-1.10.1-r0/xorg-server-1.10.1/hw/xfree86/loader/loader.c:168: 
undefined reference to `dlclose'
| collect2: ld returned 1 exit status

Arch/images: */meta-toolchain-gmae
Package: eglibc
Summary: failed to do_compile
Error Abstract:
| 
/srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/work/i686-nativesdk-pokysdk-linux/eglibc-nativesdk-2.12-r13/build-i686-pokysdk-linux/nscd/connections.o:connections.c:(.text+0x739): 
more undefined references to `__stack_chk_guard' follow
| collect2: ld returned 1 exit status
| make[2]: *** 
[/srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/work/i686-nativesdk-pokysdk-linux/eglibc-nativesdk-2.12-r13/build-i686-pokysdk-linux/nscd/nscd] 
Error 1
| make[2]: Leaving directory 
`/srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/work/i686-nativesdk-pokysdk-linux/eglibc-nativesdk-2.12-r13/eglibc-2_12/libc/nscd'
| make[1]: *** [nscd/subdir_install] Error 2
| make[1]: Leaving directory 
`/srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/work/i686-nativesdk-pokysdk-linux/eglibc-nativesdk-2.12-r13/eglibc-2_12/libc'
| make: *** [install] Error 2
| ERROR: oe_runmake failed



---------------
Elizabeth Flanagan
Yocto Project
Release Engineer

