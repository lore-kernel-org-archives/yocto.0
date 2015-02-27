Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 313A3E008DC; Fri, 27 Feb 2015 03:39:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3007E0077E
	for <yocto@yoctoproject.org>; Fri, 27 Feb 2015 03:39:28 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga102.fm.intel.com with ESMTP; 27 Feb 2015 03:39:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,659,1418112000"; d="scan'208";a="658050529"
Received: from unknown (HELO peggleto-mobl5.ger.corp.intel.com)
	([10.252.23.236])
	by orsmga001.jf.intel.com with ESMTP; 27 Feb 2015 03:39:26 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Parthiban Kandasamy <parthiban@ulivesystems.com>, yocto@yoctoproject.org
Date: Fri, 27 Feb 2015 11:39:25 +0000
Message-ID: <4283425.bOHOnr86fl@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.18.7-100.fc20.x86_64; KDE/4.14.4; x86_64; ; )
In-Reply-To: <CABNKipLTUUde_kUok8tJtz4YLru-UZ6ULsPnY7cy91ajy2t+bw@mail.gmail.com>
References: <CABNKipJm7PKH1r534M1aJ_d8WhvdeFMc-7-5EpWhs+BVAqKd4g@mail.gmail.com>
	<4901065.LHkspso1sB@peggleto-mobl5.ger.corp.intel.com>
	<CABNKipLTUUde_kUok8tJtz4YLru-UZ6ULsPnY7cy91ajy2t+bw@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: Native version conflict with yocto version
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
X-List-Received-Date: Fri, 27 Feb 2015 11:39:30 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

If by "package updating" you mean migrating to a newer release, I would 
suggest you consult the reference manual section on this:

http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#migration

Cheers,
Paul

PS please keep replies on-list, thanks.


On Friday 27 February 2015 17:05:18 you wrote:
> ya thank you, i will switch to new version, but now i almost come to near
> of end. most of the time i confuse with package updating in yocto project,
> so please give you the steps for learning?
> 
> On 27 February 2015 at 16:46, Paul Eggleton <paul.eggleton@linux.intel.com>
> 
> wrote:
> > On Friday 27 February 2015 13:20:28 Parthiban Kandasamy wrote:
> > > i run yocto build on opensuse 12.3 which have version of make is 4.0 but
> > 
> > my
> > 
> > > yocto project has version of 3.82.so it shows "checking version of
> > 
> > make...
> > 
> > > 4.0, bad".
> > > 
> > > and other error logs are:
> > > 
> > > ERROR: Function failed: do_configure (log file is located at
> > 
> > /home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora
> > -1
> > 
> > 0.0.0/BeagleBuild/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/eglibc-initi
> > al> 
> > > /2.18-r0/temp/log.do_configure.9059) ERROR: Logfile of failure stored in:
> > /home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora
> > -1
> > 
> > 0.0.0/BeagleBuild/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/eglibc-initi
> > al> 
> > > /2.18-r0/temp/log.do_configure.9059
> > > 
> > > Log data follows:
> > > | DEBUG: Executing python function sysroot_cleansstate
> > > | DEBUG: Python function sysroot_cleansstate finished
> > > | DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common',
> > > 
> > > 'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi',
> > 
> > 'common']
> > 
> > > | DEBUG: Executing shell function autotools_preconfigure
> > > | DEBUG: Shell function autotools_preconfigure finished
> > > | DEBUG: Executing shell function do_configure
> > > | checking build system type... x86_64-pc-linux-gnu
> > > | checking host system type... arm-poky-linux-gnueabi
> > > | checking for arm-poky-linux-gnueabi-gcc... arm-poky-linux-gnueabi-gcc
> > > 
> > > -march=armv7-a -mthumb-interwork -mfloat-abi=softfp -mfpu=neon
> > 
> > --sysroot=/home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagle
> > bo> 
> > > ard-dora-10.0.0/BeagleBuild/tmp/sysroots/beagleboard
> > > 
> > > | checking for suffix of object files... o
> > > | checking whether we are using the GNU C compiler... yes
> > > | checking whether arm-poky-linux-gnueabi-gcc  -march=armv7-a
> > > 
> > > -mthumb-interwork -mfloat-abi=softfp -mfpu=neon
> > 
> > --sysroot=/home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagle
> > bo> 
> > > ard-dora-10.0.0/BeagleBuild/tmp/sysroots/beagleboard accepts -g... yes
> > > 
> > > | checking for gcc... gcc
> > > | checking whether we are using the GNU C++ compiler... no
> > > | checking whether arm-poky-linux-gnueabi-g++  -march=armv7-a
> > > 
> > > -mthumb-interwork -mfloat-abi=softfp -mfpu=neon
> > 
> > --sysroot=/home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagle
> > bo> 
> > > ard-dora-10.0.0/BeagleBuild/tmp/sysroots/beagleboard accepts -g... no
> > > 
> > > | checking for arm-poky-linux-gnueabi-readelf...
> > > 
> > > arm-poky-linux-gnueabi-readelf
> > > 
> > > | checking for sysdeps preconfigure fragments... x86_64
> > > | configure: running configure fragment for add-on libidn
> > > | configure: running configure fragment for add-on nptl
> > > | checking add-on ports for preconfigure fragments... aarch64 alpha am33
> > > 
> > > arm configure: Found compiler is configured for armv7
> > > 
> > > | hppa ia64 m68k microblaze mips powerpc tile
> > > | checking for assembler and linker STT_GNU_IFUNC support... yes
> > > | checking whether .text pseudo-op must be used... yes
> > > | checking sysdep dirs... ports/sysdeps/unix/sysv/linux/arm/nptl
> > > 
> > > ports/sysdeps/unix/sysv/linux/arm nptl/sysdeps/unix/sysv/linux
> > > nptl/sysdeps/pthread sysdeps/pthread ports/sysdeps/unix/sysv/linux
> > > sysdeps/unix/sysv/linux sysdeps/gnu sysdeps/unix/inet
> > > nptl/sysdeps/unix/sysv ports/sysdeps/unix/sysv sysdeps/unix/sysv
> > > ports/sysdeps/unix/arm nptl/sysdeps/unix ports/sysdeps/unix sysdeps/unix
> > > sysdeps/posix ports/sysdeps/arm/armv7/multiarch ports/sysdeps/arm/armv7
> > > ports/sysdeps/arm/armv6t2 ports/sysdeps/arm/armv6 ports/sysdeps/arm/nptl
> > > ports/sysdeps/arm ports/sysdeps/arm/soft-fp sysdeps/wordsize-32
> > > sysdeps/ieee754/flt-32 sysdeps/ieee754/dbl-64 sysdeps/ieee754
> > > sysdeps/generic
> > > 
> > > | checking for a BSD-compatible install... /usr/bin/install -c
> > > | checking whether ln -s works... yes
> > > | checking whether
> > 
> > /home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora
> > -1
> > 
> > 0.0.0/BeagleBuild/tmp/sysroots/x86_64-linux/usr/libexec/armv7a-vfp-neon-po
> > ky> 
> > > -linux-gnueabi.gcc-cross-initial/gcc/arm-poky-linux-gnueabi/4.8.1/as is
> > 
> > GNU
> > 
> > > as... yes
> > > 
> > > | checking whether
> > 
> > /home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora
> > -1
> > 
> > 0.0.0/BeagleBuild/tmp/sysroots/x86_64-linux/usr/libexec/armv7a-vfp-neon-po
> > ky> 
> > > -linux-gnueabi.gcc-cross-initial/gcc/arm-poky-linux-gnueabi/4.8.1/ld is
> > 
> > GNU
> > 
> > > ld... yes
> > > 
> > > | checking for
> > 
> > /home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora
> > -1
> > 
> > 0.0.0/BeagleBuild/tmp/sysroots/x86_64-linux/usr/libexec/armv7a-vfp-neon-po
> > ky> 
> > > -linux-gnueabi.gcc-cross-initial/gcc/arm-poky-linux-gnueabi/4.8.1/as...
> > 
> > /home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora
> > -
> > 
> > 10.0.0/BeagleBuild/tmp/sysroots/x86_64-linux/usr/libexec/armv7a-vfp-neon-p
> > ok> 
> > > y-linux-gnueabi.gcc-cross-initial/gcc/arm-poky-linux-gnueabi/4.8.1/as
> > > 
> > > | checking version of
> > 
> > /home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora
> > -1
> > 
> > 0.0.0/BeagleBuild/tmp/sysroots/x86_64-linux/usr/libexec/armv7a-vfp-neon-po
> > ky> 
> > > -linux-gnueabi.gcc-cross-initial/gcc/arm-poky-linux-gnueabi/4.8.1/as...
> > > 2.23.2, ok
> > > 
> > > | checking for
> > 
> > /home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora
> > -1
> > 
> > 0.0.0/BeagleBuild/tmp/sysroots/x86_64-linux/usr/libexec/armv7a-vfp-neon-po
> > ky> 
> > > -linux-gnueabi.gcc-cross-initial/gcc/arm-poky-linux-gnueabi/4.8.1/ld...
> > 
> > /home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora
> > -
> > 
> > 10.0.0/BeagleBuild/tmp/sysroots/x86_64-linux/usr/libexec/armv7a-vfp-neon-p
> > ok> 
> > > y-linux-gnueabi.gcc-cross-initial/gcc/arm-poky-linux-gnueabi/4.8.1/ld
> > > 
> > > | checking version of
> > 
> > /home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora
> > -1
> > 
> > 0.0.0/BeagleBuild/tmp/sysroots/x86_64-linux/usr/libexec/armv7a-vfp-neon-po
> > ky> 
> > > -linux-gnueabi.gcc-cross-initial/gcc/arm-poky-linux-gnueabi/4.8.1/ld...
> > > 2.23.2, ok
> > > 
> > > | checking for arm-poky-linux-gnueabi-gcc... (cached)
> > > 
> > > arm-poky-linux-gnueabi-gcc  -march=armv7-a -mthumb-interwork
> > > -mfloat-abi=softfp -mfpu=neon
> > 
> > --sysroot=/home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagle
> > bo> 
> > > ard-dora-10.0.0/BeagleBuild/tmp/sysroots/beagleboard
> > > 
> > > | checking version of arm-poky-linux-gnueabi-gcc  -march=armv7-a
> > > 
> > > -mthumb-interwork -mfloat-abi=softfp -mfpu=neon
> > 
> > --sysroot=/home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagle
> > bo> 
> > > ard-dora-10.0.0/BeagleBuild/tmp/sysroots/beagleboard... 4.8.1, ok
> > > 
> > > | checking for gnumake... make
> > > | checking version of make... 4.0, bad
> > > | checking for gnumsgfmt... no
> > > | checking for gmsgfmt... no
> > > | checking for msgfmt... msgfmt
> > > | checking version of msgfmt... 0.18.3, ok
> > > | checking for makeinfo... makeinfo
> > > | checking version of makeinfo... 4.13, ok
> > > | checking for sed... sed
> > > | checking version of sed... 4.2.2, ok
> > > | checking for gawk... gawk
> > > | checking version of gawk... 4.1.1, ok
> > > | checking for arm-poky-linux-gnueabi-nm... arm-poky-linux-gnueabi-nm
> > > | checking for autoconf... autoconf
> > > | checking whether autoconf works... yes
> > > | configure: error:
> > > | *** These critical programs are missing or too old: make
> > > | *** Check the INSTALL file for required versions.
> > 
> > > | WARNING:
> > /home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora
> > -1
> > 
> > 0.0.0/BeagleBuild/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/eglibc-initi
> > al> 
> > > /2.18-r0/temp/run.do_configure.9059:1 exit 1 from
> > 
> > /home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora
> > -1
> > 
> > 0.0.0/BeagleBuild/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/eglibc-initi
> > al> 
> > > /2.18-r0/eglibc-2.18/libc/configure --host=arm-poky-linux-gnueabi
> > > --build=x86_64-linux --prefix=/usr
> > > --without-cvs --disable-sanity-checks
> > 
> > --with-headers=/home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/b
> > ea> 
> > > gleboard-dora-10.0.0/BeagleBuild/tmp/sysroots/beagleboard/usr/include
> > 
> > --with-kconfig=/home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/b
> > e
> > 
> > > agleboard-dora-10.0.0/BeagleBuild/tmp/sysroots/x86_64-linux/usr/bin
> > > --enable-hacker-mode --enable-addons
> > > 
> > > | ERROR: Function failed: do_configure (log file is located at
> > 
> > /home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora
> > -1
> > 
> > 0.0.0/BeagleBuild/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/eglibc-initi
> > al> 
> > > /2.18-r0/temp/log.do_configure.9059) ERROR: Task 568
> > 
> > (/home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dor
> > a-> 
> > > 10.0.0/meta/recipes-core/eglibc/ eglibc-initial_2.18.bb, do_configure)
> > > failed with exit code '1'
> > > 
> > > how do i configure yocto project to overcome this error?
> > 
> > No configuration will help you fix this. However you can install the
> > buildtools
> > as described in the manual if your host tools aren't compatible.
> > 
> > As always, we strongly recommend a newer release since this one is no
> > longer
> > officially supported.
> > 
> > Cheers,
> > Paul
> > 
> > --
> > 
> > Paul Eggleton
> > Intel Open Source Technology Centre

-- 

Paul Eggleton
Intel Open Source Technology Centre

