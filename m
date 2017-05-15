Return-Path: <me@herrie.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D473E00911; Mon, 15 May 2017 03:22:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [149.210.149.73 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 531 seconds by postgrey-1.32 at yocto-www;
	Mon, 15 May 2017 03:22:52 PDT
Received: from outbound2.mail.transip.nl (outbound2.mail.transip.nl
	[149.210.149.73])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 267C9E003E1
	for <yocto@yoctoproject.org>; Mon, 15 May 2017 03:22:52 -0700 (PDT)
Received: from submission5.mail.transip.nl (submission5.mail.transip.nl
	[149.210.149.125])
	by outbound2.mail.transip.nl (Postfix) with ESMTP id 3wRGdM1skwzhYR1;
	Mon, 15 May 2017 12:13:59 +0200 (CEST)
Received: from webmail.frontend (web0.mail.transip.nl [149.210.149.95])
	by submission5.mail.transip.nl (Postfix) with ESMTPA id 3wRGdH2p32z7tqj;
	Mon, 15 May 2017 12:13:55 +0200 (CEST)
MIME-Version: 1.0
Date: Mon, 15 May 2017 12:13:55 +0200
From: Herman van Hazendonk <me@herrie.org>
To: Paul Roy <pauroy2@gmail.com>
Mail-Reply-To: yoctoproject.org@herrie.org
In-Reply-To: <CAFVox_7=0RXos320Lzr_8vpdJkTpp2UfHrvTf64qYM51S1VZGQ@mail.gmail.com>
References: <CAFVox_7=0RXos320Lzr_8vpdJkTpp2UfHrvTf64qYM51S1VZGQ@mail.gmail.com>
Message-ID: <628cb835f0dfe54ac11a1ceb35245ef0@herrie.org>
X-Sender: me@herrie.org
User-Agent: Webmail
X-Scanned-By: ClueGetter at submission5.mail.transip.nl
X-Report-Abuse-To: abuse@transip.nl
Cc: yocto@yoctoproject.org
Subject: Re: kernel/ libc compatibility problems
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: yoctoproject.org@herrie.org
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 15 May 2017 10:22:57 -0000
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit

Hi Paul,

As per glibc 2.24 you'll need the a 3.2 kernel at least 
(https://abi-laboratory.pro/tracker/changelog/glibc/2.24/log.html):

"The minimum Linux kernel version that this version of the GNU C Library 
can be used with is 3.2, except on i[4567]86 and x86_64, where Linux 
kernel version 2.6.32 or later suffices (on architectures that already   
required kernel versions more recent than 3.2, those requirements remain 
unchanged).  Linux 3.2 or later kernel headers are required on all 
architectures."

You could try --enable-kernel=2.6.32 as per instructions on: 
http://www.linuxfromscratch.org/lfs/view/7.10/chapter05/glibc.html but 
not guaranteed that will work.

We're running into the same issues for our project which uses some 
"older open" ARM based chipsets which only have a 3.0 kernel available 
for example.

Best regards,
Herman


On 2017-05-15 11:52, Paul Roy wrote:
> Hi
> I´m using Yocto to create a new machine definition for a Gedeon-LX
> board. I can compile the kernel and all the rootfs binaries, but
> kernel boot crashes exactly at the /sbin/init load moment. It seems a
> problem with some mismatch among kernel and libc library present in my
> rootfs, because if I copy the /libs directory from my previous
> (old,and working) version, boot process is successful. I think i´ve
> narrowed the problem down to libc.so library not been compatible with
> my kernel, so some problem happens just when the kernel has to prepare
> the right loading enviroment (ld-linux.so / libc etc) for first user
> space program (init).
> Also, I have NO problems creating my Linux system with same Yocto
> enviroment/recipes for other platforms, so I think the problem is I´m
> not correctly telling Yocto with libc version to use for my "new"
> machine. Trying to change from -march=gedeon to -march=i686 for all
> the compilation flags does not change result.
> 
> How can I know where exactly is this mismatch? Where do I set specific
> librart version for my compilations?
> 
> My machine definition:
> 
> DEFAULTTUNE ?= "x86"
> TARGET_FPU ?= "soft"
> 
> TUNE_PKGARCH = "${TUNE_PKGARCH_tune-${DEFAULTTUNE}}"
> 
> # ELF32 ABI
> TUNEVALID[m32] = "IA32 ELF32 standard ABI"
> TUNECONFLICTS[m32] = "m64 mx32"
> TUNE_ARCH .= "${@bb.utils.contains("TUNE_FEATURES", "m32", "i586", ""
> ,d)}"
> #TUNE_CCARGS .= "${@bb.utils.contains("TUNE_FEATURES", "m32", " -m32",
> "", d)}"
> 
> #Add our tunning for this processor
> TUNEVALID[geode] = "Optimizations for Geode LX"
> TUNE_CCARGS .="-Os -pipe -march=geode -mmmx -m3dnow
> -fomit-frame-pointer"
> 
> # Another try with no success
> 
> # TUNE_CCARGS .="-Os -pipe -march=geode -mno-mmx -mno-sse -mno-sse2
> -mno-3dnow -fomit-frame-pointer"
> # TUNE_CCARGS .="-Os -pipe -march=i386 -mtune=pentium3
> -DU_HAVE_GCC_ATOMICS=0"
> # TUNE_CCARGS .="-Os -pipe -march=i686"
> 
> # Add our machine in case we want to override with _geode
> MACHINEOVERRIDES =. "geode"
> 
> # Default Tune configurations
> AVAILTUNES += "x86"
> TUNE_FEATURES_tune-x86 = "m32"
> BASE_LIB_tune-x86 = "lib"
> TUNE_PKGARCH_tune-x86 = "x86"
> PACKAGE_EXTRA_ARCHS_tune-x86 = "${TUNE_PKGARCH_tune-x86}"
> 
> # All this is based on x86-atom-64.conf
> 
> #TARGET_ARCH = "i586"
> TARGET_ARCH = "i686"
> BINARY_LOCALE_ARCHES =. " geode"
> PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
> PREFERRED_PROVIDER_virtual/libgl ?= "mesa"
> 
> KERNEL_IMAGETYPE = "bzImage"
> PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
> 
> GLIBC_ADDONS = "nptl"
> GLIBC_EXTRA_OECONF = "--with-tls"
> # GLIBC_EXTRA_OECONF = "--with-tls --with-cpu=geode"
> 
> IMAGE_FSTYPES ?= "ext2.gz"
> 
> MACHINE_FEATURES = "kernel26 serial screen keyboard pci usbhost acpi
> ext2 x86"
> MACHINE_EXTRA_RRECOMMENDS = " kernel-modules"
> 
> BASE_PACKAGE_ARCH = "i586"
> 
> require conf/toolchain/i585-glibc-linux.conf
> require conf/mvl-lsb.conf  --> It contains DISTROOVERRIDES .=
> ":linuxstdbase"


