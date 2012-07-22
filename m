Return-Path: <dallas.a.clement@gmail.com>
Received: from mail-vb0-f48.google.com (mail-vb0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14E38E002A5
	for <yocto@yoctoproject.org>; Sat, 21 Jul 2012 18:37:39 -0700 (PDT)
Received: by vbjk17 with SMTP id k17so4940210vbj.35
	for <yocto@yoctoproject.org>; Sat, 21 Jul 2012 18:37:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=aP9Sv7WgzstPS+9sNAvZT/bsf9OSvJprNyOmCBlZo0s=;
	b=G/ybHrj387+L0jv7vR6ZZfR+IOEcxKxNdPZGxnWNcnHMqSqNlPOQe2hlSRWDvh2cJi
	EuanWMmLy9Hafd6hdd0OIKEdEHml6edrA2lsFquYUfzgVsG6FecerWUA4LGGzTfEUOQh
	4l2Ov4njodnzVSl75YpmTOxXvgcpo4P2KvUyJglLzjpb0cyNZTJeN3Ie9OJ+zSolORWM
	OIOlgSNJCc/cqRk/e+QVUmP6NrS79aMn6xYdnhU7uQsGUW5Hzf6BJ+0Tg3Whpxt+9lSb
	Rwdy6FfcYYwXnri4TjAgRJa8jfnc6dppunZh8Lnzn0i46JQhZWDhq+8LnzLGk4oTXBaQ
	vO2A==
MIME-Version: 1.0
Received: by 10.220.153.7 with SMTP id i7mr8045483vcw.34.1342921059113; Sat,
	21 Jul 2012 18:37:39 -0700 (PDT)
Received: by 10.59.8.136 with HTTP; Sat, 21 Jul 2012 18:37:39 -0700 (PDT)
Date: Sat, 21 Jul 2012 20:37:39 -0500
Message-ID: <CAE9DZUS+GYwRGALSeEGgokvXEgccyx5pqhZd9SV40DC0_XJtLw@mail.gmail.com>
From: Dallas Clement <dallas.a.clement@gmail.com>
To: yocto@yoctoproject.org
Subject: cannot compute suffix of object files
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
X-List-Received-Date: Sun, 22 Jul 2012 01:37:40 -0000
Content-Type: text/plain; charset=ISO-8859-1

I'm using a pre-compiled toolchain to build my distro.  When I execute
"bitbake core-image-minimal", things fail in eglibc.


DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common',
'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi',
'common']
ERROR: Function failed: do_configure (see
/home/dallas/git-repos/projects/yocto/poky/build/tmp/work/armv7-vfp-marvell-linux-gnueabi/eglibc-2.15-r7+svnr17386/temp/log.do_configure.14611
for further information)
NOTE: Running /home/dallas/git-repos/projects/yocto/poky/build/tmp/work/armv7-vfp-marvell-linux-gnueabi/eglibc-2.15-r7+svnr17386/eglibc-2_15/libc/configure
 --build=x86_64-linux                 --host=arm-marvell-linux-gnueabi
               --target=arm-marvell-linux-gnueabi
--prefix=/usr                   --exec_prefix=/usr
--bindir=/usr/bin               --sbindir=/usr/sbin
--libexecdir=/usr/libexec               --datadir=/usr/share
 --sysconfdir=/etc               --sharedstatedir=/com
  --localstatedir=/var            --libdir=/usr/lib
--includedir=/usr/include               --oldincludedir=/usr/include
         --infodir=/usr/share/info
--mandir=/usr/share/man                 --disable-silent-rules
         --disable-dependency-tracking
--with-libtool-sysroot=/home/dallas/git-repos/projects/yocto/poky/build/tmp/sysroots/qemuarmada-xp
--enable-kernel=2.6.16                 --without-cvs --disable-profile
--disable-debug --without-gd                 --enable-clocale=gnu
           --enable-add-ons=ports,nptl,libidn,ports
--with-headers=/home/dallas/git-repos/projects/yocto/poky/build/tmp/sysroots/qemuarmada-xp/usr/include
                --without-selinux
checking build system type... x86_64-pc-linux-gnu
checking host system type... arm-marvell-linux-gnueabi
checking for arm-marvell-linux-gnueabi-gcc...
arm-marvell-linux-gnueabi-gcc  -march=armv7 -fno-tree-vectorize
-mthumb-interwork -mfloat-abi=softfp  -mtune=arm7
--sysroot=/home/dallas/git-repos/projects/yocto/poky/build/tmp/sysroots/qemuarmada-xp-tcbootstrap
checking for suffix of object files... configure: error: in
`/home/dallas/git-repos/projects/yocto/poky/build/tmp/work/armv7-vfp-marvell-linux-gnueabi/eglibc-2.15-r7+svnr17386/build-arm-marvell-linux-gnueabi':
configure: error: cannot compute suffix of object files: cannot compile
See `config.log' for more details.
ERROR: oe_runconf failed

I can't tell where this "cannot compute suffix of object files" is
coming from.  Oddly, if I execute the above configure command
interactively, it works just fine.  Any ideas for me?



dallas@bertha:~/git-repos/projects/yocto/poky/build$
/home/dallas/git-repos/projects/yocto/poky/build/tmp/work/armv7-vfp-marvell-linux-gnueabi/eglibc-2.15-r7+svnr17386/eglibc-2_15/libc/configure
 --build=x86_64-linux   --host=arm-marvell-linux-gnueabi
--target=arm-marvell-linux-gnueabi   --prefix=/usr
--exec_prefix=/usr   --bindir=/usr/bin   --sbindir=/usr/sbin
--libexecdir=/usr/libexec   --datadir=/usr/share   --sysconfdir=/etc
--sharedstatedir=/com   --localstatedir=/var   --libdir=/usr/lib
--includedir=/usr/include   --oldincludedir=/usr/include
--infodir=/usr/share/info   --mandir=/usr/share/man
--disable-silent-rules   --disable-dependency-tracking
--with-libtool-sysroot=/home/dallas/git-repos/projects/yocto/poky/build/tmp/sysroots/qemuarmada-xp
--enable-kernel=2.6.16                 --without-cvs --disable-profile
--disable-debug --without-gd                 --enable-clocale=gnu
           --enable-add-ons=ports,nptl,libidn,ports
--with-headers=/home/dallas/git-repos/projects/yocto/poky/build/tmp/sysroots/qemuarmada-xp/usr/include
                --without-selinux
checking build system type... x86_64-pc-linux-gnu
checking host system type... arm-marvell-linux-gnueabi
checking for arm-marvell-linux-gnueabi-gcc... arm-marvell-linux-gnueabi-gcc
checking for suffix of object files... o
checking whether we are using the GNU C compiler... yes
checking whether arm-marvell-linux-gnueabi-gcc accepts -g... yes
checking for arm-marvell-linux-gnueabi-gcc option to accept ISO C89...
none needed
checking for gcc... gcc
checking how to run the C preprocessor... arm-marvell-linux-gnueabi-gcc -E
checking for arm-marvell-linux-gnueabi-g++... arm-marvell-linux-gnueabi-g++
checking whether we are using the GNU C++ compiler... yes
checking whether arm-marvell-linux-gnueabi-g++ accepts -g... yes
checking add-on ports for preconfigure fragments... alpha am33 arm
Found compiler is configured for armv7
hppa m68k mips powerpc tile
configure: running configure fragment for add-on nptl
configure: running configure fragment for add-on libidn
checking add-on ports for preconfigure fragments... alpha am33 arm
Found compiler is configured for armv7
hppa m68k mips powerpc tile
checking for assembler gnu_indirect_function symbol type support... yes
checking whether .text pseudo-op must be used... yes
checking for assembler global-symbol directive... .globl
checking for assembler .type directive prefix... %
checking sysdep dirs... ports/sysdeps/arm/elf
ports/sysdeps/unix/sysv/linux/arm/eabi/nptl
ports/sysdeps/unix/sysv/linux/arm/eabi
ports/sysdeps/unix/sysv/linux/arm/nptl
ports/sysdeps/unix/sysv/linux/arm ports/sysdeps/unix/sysv/linux
nptl/sysdeps/unix/sysv/linux nptl/sysdeps/pthread sysdeps/pthread
sysdeps/unix/sysv/linux sysdeps/gnu sysdeps/unix/common
sysdeps/unix/mman sysdeps/unix/inet ports/sysdeps/unix/sysv
nptl/sysdeps/unix/sysv sysdeps/unix/sysv ports/sysdeps/unix/arm
ports/sysdeps/unix nptl/sysdeps/unix sysdeps/unix sysdeps/posix
ports/sysdeps/arm/eabi/armv7 ports/sysdeps/arm/eabi/armv6t2
ports/sysdeps/arm/eabi ports/sysdeps/arm/fpu ports/sysdeps/arm/nptl
ports/sysdeps/arm sysdeps/wordsize-32 sysdeps/ieee754/flt-32
sysdeps/ieee754/dbl-64 sysdeps/ieee754 sysdeps/generic/elf
sysdeps/generic
checking for a BSD-compatible install... /usr/bin/install -c
checking whether ln -s works... yes
checking whether
/opt/armv7-marvell-linux-gnueabi-softfp/bin/../lib/gcc/arm-marvell-linux-gnueabi/4.4.5/../../../../arm-marvell-linux-gnueabi/bin/as
is GNU as... yes
checking whether
/opt/armv7-marvell-linux-gnueabi-softfp/bin/../lib/gcc/arm-marvell-linux-gnueabi/4.4.5/../../../../arm-marvell-linux-gnueabi/bin/ld
is GNU ld... yes
checking for /opt/armv7-marvell-linux-gnueabi-softfp/bin/../lib/gcc/arm-marvell-linux-gnueabi/4.4.5/../../../../arm-marvell-linux-gnueabi/bin/as...
/opt/armv7-marvell-linux-gnueabi-softfp/bin/../lib/gcc/arm-marvell-linux-gnueabi/4.4.5/../../../../arm-marvell-linux-gnueabi/bin/as
checking version of
/opt/armv7-marvell-linux-gnueabi-softfp/bin/../lib/gcc/arm-marvell-linux-gnueabi/4.4.5/../../../../arm-marvell-linux-gnueabi/bin/as...
2.20.51.0.7.20100318, ok
checking for /opt/armv7-marvell-linux-gnueabi-softfp/bin/../lib/gcc/arm-marvell-linux-gnueabi/4.4.5/../../../../arm-marvell-linux-gnueabi/bin/ld...
/opt/armv7-marvell-linux-gnueabi-softfp/bin/../lib/gcc/arm-marvell-linux-gnueabi/4.4.5/../../../../arm-marvell-linux-gnueabi/bin/ld
checking version of
/opt/armv7-marvell-linux-gnueabi-softfp/bin/../lib/gcc/arm-marvell-linux-gnueabi/4.4.5/../../../../arm-marvell-linux-gnueabi/bin/ld...
2.20.51.0.7.20100318, ok
checking for pwd... /bin/pwd
checking for arm-marvell-linux-gnueabi-gcc... (cached)
arm-marvell-linux-gnueabi-gcc
checking version of arm-marvell-linux-gnueabi-gcc... 4.4.5, ok
checking for gnumake... no
checking for gmake... no
checking for make... make
checking version of make... 3.81, ok
checking for gnumsgfmt... no
checking for gmsgfmt... no
checking for msgfmt... no
checking for makeinfo... makeinfo
checking version of makeinfo... 4.13, ok
checking for sed... sed
checking version of sed... 4.2.1, ok
checking for arm-marvell-linux-gnueabi-readelf...
arm-marvell-linux-gnueabi-readelf
checking for autoconf... no
configure: WARNING:
*** These auxiliary programs are missing or incompatible versions:
msgfmt autoconf
*** some features will be disabled.
*** Check the INSTALL file for required versions.
checking LD_LIBRARY_PATH variable... ok
checking whether GCC supports -static-libgcc... -static-libgcc
checking for bash... /bin/bash
checking for gawk... gawk
checking for perl... /usr/bin/perl
checking for install-info... /usr/bin/install-info
checking for bison... no
checking for signed size_t type... no
checking for libc-friendly stddef.h... yes
checking whether we need to use -P to assemble .S files... no
checking for .set assembler directive... yes
checking for assembler gnu_unique_object symbol type... yes
checking for .symver assembler directive... yes
checking for ld --version-script... yes
checking for .previous assembler directive... yes
checking for .protected and .hidden assembler directive... yes
checking whether __attribute__((visibility())) is supported... yes
checking for broken __attribute__((visibility()))... no
checking for broken __attribute__((alias()))... no
checking whether to put _rtld_local into .sdata section... no
checking for .preinit_array/.init_array/.fini_array support... yes
checking whether to use .ctors/.dtors header and trailer... no
checking for libunwind-support in compiler... no
checking for -z nodelete option... yes
checking for -z nodlopen option... yes
checking for -z initfirst option... yes
configure: WARNING: missing architecture parameter to check for working -z relro
checking for -Bgroup option... yes
checking for libgcc_s suffix...
checking for --as-needed option... yes
checking whether --noexecstack is desirable for .S files... yes
checking for -z combreloc... yes
checking for -z execstack... yes
checking for --hash-style option... yes
checking for sufficient default -shared layout... no
checking linker output format... unknown
checking for -fno-toplevel-reorder -fno-section-anchors... yes
checking for -fstack-protector... no
checking for -fgnu89-inline... yes
checking whether cc puts quotes around section names... no
checking for assembler .weak directive... yes
checking whether CFI directives are supported... yes
checking for ld --no-whole-archive... yes
checking for gcc -fexceptions... yes
checking for __builtin_expect... yes
checking for __builtin_memset... no
checking for redirection of built-in functions... yes
checking for __thread... yes
checking for tls_model attribute... yes
checking for libgd... no
checking for grep that handles long lines and -e... /bin/grep
checking for egrep... /bin/grep -E
checking for ANSI C header files... yes
checking for sys/types.h... yes
checking for sys/stat.h... yes
checking for stdlib.h... yes
checking for string.h... yes
checking for memory.h... yes
checking for strings.h... yes
checking for inttypes.h... yes
checking for stdint.h... yes
checking for unistd.h... yes
checking size of long double... 8
running configure fragment for ports/sysdeps/arm/elf
checking for ARM TLS support... yes
running configure fragment for ports/sysdeps/unix/sysv/linux/arm/eabi/nptl
running configure fragment for ports/sysdeps/unix/sysv/linux/arm/eabi
running configure fragment for nptl/sysdeps/pthread
running configure fragment for sysdeps/pthread
running configure fragment for sysdeps/unix/sysv/linux
checking for grep that handles long lines and -e... (cached) /bin/grep
checking for egrep... (cached) /bin/grep -E
checking installed Linux kernel header files... 2.0.10 or later
checking for kernel header at least 2.6.16... ok
running configure fragment for ports/sysdeps/arm
checking whether the CFI directive .cfi_sections is supported... yes
checking for old glibc 2.0.x headers... no
checking whether -fPIC is default... no
configure: creating ./config.status
config.status: creating config.make
config.status: creating Makefile
config.status: creating config.h
config.status: executing default commands

dallas@bertha:~/git-repos/projects/yocto/poky/build$ echo $?
0

Perhaps the problem has something to do with incompatible versions of
the msgfmt autoconf on my host system which is Debian squeeze.

