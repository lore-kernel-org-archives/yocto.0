Return-Path: <twoerner@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03891E0141D
	for <yocto@yoctoproject.org>; Sat,  8 Sep 2012 10:04:25 -0700 (PDT)
Received: by lagr15 with SMTP id r15so412700lag.35
	for <yocto@yoctoproject.org>; Sat, 08 Sep 2012 10:04:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=RQu2/IAX1txqqEJEKXxksuYRpXwsTxNzg1Zg6S8mgx0=;
	b=fWRdNkmstpaIbCJWyURACyefIirWm+27isv9wLyhm0pgK0omTHYAJSZJ0xZxciuKIs
	ULkOn1ZSNX31XimcLvoFXqxq2HD+VSPGVatN/Qru4stuJUeGRzlkq2mjOVzep2rk9yNI
	8TB/eq4BUnUkv2thkTuXnjjF9NtyHSpQkx5ftiHPNyMmEmE61eO0Z66DljVYN7qYFMa3
	PWyDnPV8rF8AgMW6ivN6N8b5HxQzcFL6/ohfBh66CbPPolFE0KylaNpAIa5zmqcI+zG1
	UQWUGmMpn5mnWYQxznONGZKkmA1fSVvRBvu0BNuShDb1euXfiM8RtqI8jlQ25xu4TJ/R
	LZXw==
MIME-Version: 1.0
Received: by 10.112.9.133 with SMTP id z5mr3292936lba.69.1347123850438; Sat,
	08 Sep 2012 10:04:10 -0700 (PDT)
Received: by 10.112.37.2 with HTTP; Sat, 8 Sep 2012 10:04:10 -0700 (PDT)
In-Reply-To: <AA2F4F97-00C8-48C3-90E8-5AF084D508B8@gmail.com>
References: <CAHUNapQUS19axgi+i=wAr0r_ogFj+UsSBpsBY_mhd+ac=5w8-g@mail.gmail.com>
	<12E1ABCF-B181-4763-88A6-5B7E51758231@gmail.com>
	<AA2F4F97-00C8-48C3-90E8-5AF084D508B8@gmail.com>
Date: Sat, 8 Sep 2012 13:04:10 -0400
Message-ID: <CAHUNapStNAw21FiO6vFgBPLPfeqnoFjAtuuUuzun+6FuzLfspg@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: any success with spartan6-lx9mb?
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
X-List-Received-Date: Sat, 08 Sep 2012 17:04:26 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi Elvis,

Wow! Thanks so much for the help. I have not yet had the time to dig
into the guts of yocto/oe so I appreciate the opportunity :-)

On Thu, Sep 6, 2012 at 11:21 PM, Elvis Dowson <elvis.dowson@gmail.com> wrote:
> 01. Remove the TARGET_FPU = "soft" specification
>
> 02. Quickly test the machine/spartan6-lx9mb.conf by temporarily changing the
> tune file to include/tune-microblaze.inc, and see if the toolchain gets
> built using gcc-4.7 recipes.

Using the information you provided, my investigations have centered
around 3 files from meta-xilinx:
    conf/machine/spartan6-lx9mb.conf
    conf/machine/include/tune-microblaze.inc
    conf/machine/include/microblaze/arch-microblaze.inc

First off: I'm curious why, when you refer to your meta-xilinx files,
you seem to have additional directories:
    meta-xilinx/tree/conf/machine/spartan6-lx9mb.conf [tree?]
    meta-xilinx/conf.machine/include/tune-microblazeel.inc [conf.machine?]

Secondly: usually when a bake needs to be restarted there's usually
some sort of "bitbake -f" or "bitbake -c clean -f <recipe>" that needs
to be issued. While performing my tests I never issued any such
cleanups and the new configurations seemed to be picked up correctly.
It is reasonable to believe my procedure is okay when modifying these
"machine" files?

I started by editing conf/machine/spartan-lx9mb.conf to "require
conf/machine/include/tune-microblaze.inc" from "tune-microblazeel.inc"
and removing 'TARGET_FPU = "soft"' from the "tune-microblaze.inc"
file. This, unfortunately failed:

    Build Configuration:
    BB_VERSION        = "1.15.3"
    TARGET_ARCH       = "microblaze"
    TARGET_OS         = "linux"
    MACHINE           = "spartan6-lx9mb"
    DISTRO            = "poky"
    DISTRO_VERSION    = "1.2+snapshot-20120908"
    TUNE_FEATURES     = "m32 fpu-soft"
    TARGET_FPU        = "soft"
    meta
    meta-yocto        = "master:5343cdb20ee56a8b507733c637dcc2466ae13288"
    meta-xilinx       = "mywork:d196fa93c7ff5e080d4c44e2b83aed472f32b2c7"

because of the following line in
conf/machine/include/microblaze/arch-microblaze.inc:

    TARGET_FPU .= "${@bb.utils.contains("TUNE_FEATURES", "fpu-soft",
"soft", "", d)}"

If I delete the line I get:
    Build Configuration:
    BB_VERSION        = "1.15.3"
    TARGET_ARCH       = "microblaze"
    TARGET_OS         = "linux"
    MACHINE           = "spartan6-lx9mb"
    DISTRO            = "poky"
    DISTRO_VERSION    = "1.2+snapshot-20120908"
    TUNE_FEATURES     = "m32 fpu-soft"
    meta
    meta-yocto        = "master:5343cdb20ee56a8b507733c637dcc2466ae13288"
    meta-xilinx       = "mywork:d196fa93c7ff5e080d4c44e2b83aed472f32b2c7"

Or if I modify the line to be:

    TARGET_FPU .= "${@bb.utils.contains("TUNE_FEATURES", "fpu-soft",
"", "", d)}"

I get:
    Build Configuration:
    BB_VERSION        = "1.15.3"
    TARGET_ARCH       = "microblaze"
    TARGET_OS         = "linux"
    MACHINE           = "spartan6-lx9mb"
    DISTRO            = "poky"
    DISTRO_VERSION    = "1.2+snapshot-20120908"
    TUNE_FEATURES     = "m32 fpu-soft"
    TARGET_FPU        = ""
    meta
    meta-yocto        = "master:5343cdb20ee56a8b507733c637dcc2466ae13288"
    meta-xilinx       = "mywork:d196fa93c7ff5e080d4c44e2b83aed472f32b2c7"

I don't know if one is better than the other, but in either case the
build of gcc-cross-initial_4.7.bb fails with:

    opening microblaze-c.o: No such file or directory

which is ironic since this is the same error message that originally
led you to suggest I try without the "el".

It appears as though gcc-cross-initial_4.7 is being configured with
the following options:

/home/trevor/devel/yocto/git-method/spartan6-lx9/tmp/work-shared/gcc-4.7.1.0+git1+d07e24f4ab59f264d68d21838795349faab5dede-r11/git/configure
    --build=x86_64-linux
    --host=x86_64-linux
    --target=microblaze-poky-linux
    --prefix=/home/trevor/devel/yocto/git-method/spartan6-lx9/tmp/sysroots/x86_64-linux/usr
    --exec_prefix=/home/trevor/devel/yocto/git-method/spartan6-lx9/tmp/sysroots/x86_64-linux/usr
    --bindir=/home/trevor/devel/yocto/git-method/spartan6-lx9/tmp/sysroots/x86_64-linux/usr/bin/microblaze-poky-linux.gcc-cross-initial
    --sbindir=/home/trevor/devel/yocto/git-method/spartan6-lx9/tmp/sysroots/x86_64-linux/usr/bin/microblaze-poky-linux.gcc-cross-initial
    --libexecdir=/home/trevor/devel/yocto/git-method/spartan6-lx9/tmp/sysroots/x86_64-linux/usr/libexec/microblaze-poky-linux.gcc-cross-initial
    --datadir=/home/trevor/devel/yocto/git-method/spartan6-lx9/tmp/sysroots/x86_64-linux/usr/share
    --sysconfdir=/home/trevor/devel/yocto/git-method/spartan6-lx9/tmp/sysroots/x86_64-linux/etc
    --sharedstatedir=/home/trevor/devel/yocto/git-method/spartan6-lx9/tmp/sysroots/x86_64-linux/com
    --localstatedir=/home/trevor/devel/yocto/git-method/spartan6-lx9/tmp/sysroots/x86_64-linux/var
    --libdir=/home/trevor/devel/yocto/git-method/spartan6-lx9/tmp/sysroots/x86_64-linux/usr/lib/microblaze-poky-linux.gcc-cross-initial
    --includedir=/home/trevor/devel/yocto/git-method/spartan6-lx9/tmp/sysroots/x86_64-linux/usr/include
    --oldincludedir=/home/trevor/devel/yocto/git-method/spartan6-lx9/tmp/sysroots/x86_64-linux/usr/include
    --infodir=/home/trevor/devel/yocto/git-method/spartan6-lx9/tmp/sysroots/x86_64-linux/usr/share/info
    --mandir=/home/trevor/devel/yocto/git-method/spartan6-lx9/tmp/sysroots/x86_64-linux/usr/share/man
    --disable-silent-rules
    --disable-dependency-tracking
    --with-libtool-sysroot=/home/trevor/devel/yocto/git-method/spartan6-lx9/tmp/sysroots/x86_64-linux
    --with-newlib
    --without-headers
    --disable-shared
    --disable-threads
    --disable-multilib
    --disable-__cxa_atexit
    --enable-languages=c
    --enable-target-optspace
    --program-prefix=microblaze-poky-linux-
    --with-sysroot=/home/trevor/devel/yocto/git-method/spartan6-lx9/tmp/sysroots/spartan6-lx9mb
    --with-build-sysroot=/home/trevor/devel/yocto/git-method/spartan6-lx9/tmp/work/microblaze-poky-linux/gcc-cross-initial-4.7.1.0+git1+d07e24f4ab59f264d68d21838795349faab5dede-r11/gcc-4_7-branch/build.x86_64-linux.microblaze-poky-linux/tmpsysroot
    --disable-libmudflap
    --disable-libgomp
    --disable-libssp
    --disable-libquadmath
    --with-system-zlib
    --disable-lto
    --disable-plugin
    --enable-decimal-float=no
    --disable-nls
    --enable-__cxa_atexit

I'll continue digging at the compiler, but all and any suggested
gladly welcomed. Two (or more things) are obviously fighting each
other since __cxa_atexit is both --disabled and --enabled. Is the
--with-newlib strange? Shouldn't there be a "-mcpu=" option in there
somewhere?

Does Xilinx have/use/suggest a particular version of gcc?

If I did have a filesystem ready to test and a board containing an
appropriate Xilinx part, do the free ISE tools allow me to work with
any soft cores, or do I need a paid license? (I also wonder how this
works for the Zynq board too).

Best regards,
    Trevor

