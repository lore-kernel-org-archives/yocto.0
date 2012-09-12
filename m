Return-Path: <twoerner@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2D41E00344
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2012 11:47:37 -0700 (PDT)
Received: by lagr15 with SMTP id r15so1558945lag.35
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2012 11:47:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=3oN0ZrJgio2mTsqeN2aILXPgdcU5uQKFqst73YPWCog=;
	b=ZXMRsar/KxiKk8CfvMCjkVWk59dsy4CB/w6U8EBMICTCPPRyilCgq9K+cIlCvM+UR9
	6l/eCaunr0lxLuv08zGlsDzCNv3Ei9vupZroy0Vuyzno+OoR+/jXSA/wIWLfJOQ9z24N
	imSNxz1IHeiAWPz4gq9FWiId7XeTpkjsKQEPnyd7rdhrch1+WLCban6tdORfw7U/WS4v
	u+R97UUOas0xJDzbBJjL0ClFV31Dijo8O1ST9vZFQlAoMQ0Ek4Xx+3rBXTjepiUr9KnH
	gS1VoY6qGsFI1B9vvhAGW79xR4+LQH1jOJqBTk+5QMJcQbdASzkvqZzDUvmoq7o63gtZ
	uZnQ==
MIME-Version: 1.0
Received: by 10.112.9.133 with SMTP id z5mr11495lba.69.1347475656416; Wed, 12
	Sep 2012 11:47:36 -0700 (PDT)
Received: by 10.112.37.2 with HTTP; Wed, 12 Sep 2012 11:47:36 -0700 (PDT)
In-Reply-To: <CAHUNapStNAw21FiO6vFgBPLPfeqnoFjAtuuUuzun+6FuzLfspg@mail.gmail.com>
References: <CAHUNapQUS19axgi+i=wAr0r_ogFj+UsSBpsBY_mhd+ac=5w8-g@mail.gmail.com>
	<12E1ABCF-B181-4763-88A6-5B7E51758231@gmail.com>
	<AA2F4F97-00C8-48C3-90E8-5AF084D508B8@gmail.com>
	<CAHUNapStNAw21FiO6vFgBPLPfeqnoFjAtuuUuzun+6FuzLfspg@mail.gmail.com>
Date: Wed, 12 Sep 2012 14:47:36 -0400
Message-ID: <CAHUNapT5HfC+dbzjmuYiQ4ic4m71=iBaaJtygfrhht+JsqMyHA@mail.gmail.com>
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
X-List-Received-Date: Wed, 12 Sep 2012 18:47:38 -0000
Content-Type: text/plain; charset=ISO-8859-1

Here's a status update, in case anyone is interested. My goal is to
use the Yocto Project to create an image for the Microblaze soft
processor core.

I started by adding the meta-xilinx layer and specifying:
    MACHINE = "spartan6-lx9mb"

This fails because the microblaze port of the gcc compiler does not
accept the soft FPU compile flag; this one is easy enough to get
around (the details can be found in earlier emails). Later the build
of the cross compiler fails because an object file is not found. Elvis
suggested switching from microblaze EL to "regular" microblaze. No
change; same failure in the same place.

I then started looking at Xilinx's website to see what they provided
in terms of a gcc compiler. Surfing to

    http://www.xilinx.com/guest_resources/gnu/

I find two sets of microblaze compiler tools: one based around
gcc-4.1.2/gdb-6.5/binutils-2.16/newlib-1.14 and another based around
gcc-4.6.2/gdb-7.3.50/binutils-2.21.53/newlib-1.19.

Unpacking any from the first set gives me a README file, 3 scripts to
run (build_binutils.sh,  build_gcc.sh (which calls
build_newlib_variants.sh), and build_gdb.sh). build_binutils.sh builds
binutils and gprof, build_gcc.sh builds a cross-gcc and several
variants of newlib. If I run the build_binutils.sh script binutils
builds okay but gprof fails. I can still run build_gcc.sh and both the
cross-compiler and the newlib variants are built. build_gdb.sh fails.
If I start by replacing my host's gcc-4.7.1 with gcc-4.1.2 gprof will
succeed but gdb will continue to fail.

I am not able to get either of the two packages based around gcc-4.6.2
(etc) to build using either my native gcc-4.7.1 or gcc-4.1.2.

So now that I had a cross-toolchain based around gcc-4.1.2 I started
looking at configuring yocto to use an external toolchain. That's when
I noticed Adrian had already provided recipes for using another,
pre-built, toolchain from Xilinx (awesome!):

    git://git.xilinx.com/xldk/microblaze_v2.0.git

So setup yocto for an external toolchain,

    TCMODE = "external-xilinx"
    XILINX_TOOLCHAIN = "<path to unpacked
toolchain>/microblaze_v2.0/microblaze-unknown-linux-gnu"

retrieved and unpacked this new toolchain (based around gcc-4.1.2),
and attempted a "bitbake core-image-minimal"

This fails too, when trying to configure libtool-cross for a couple of reasons:

| configure:3661: checking for C compiler version
| configure:3670: microblaze-unknown-linux-gnu-gcc  -m32  -mcpu=v8.10a
--sysroot=/home/trevor/devel/microblaze/microblaze_v2.0/microblaze-unknown-linux-gnu/microblaze-unknown-linux-gnu/sys-root
--version >&5
| microblaze-unknown-linux-gnu-gcc (GCC) 4.1.2
| Copyright (C) 2006 Free Software Foundation, Inc.
| This is free software; see the source for copying conditions.  There is NO
| warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
|
| configure:3681: $? = 0
| configure:3670: microblaze-unknown-linux-gnu-gcc  -m32  -mcpu=v8.10a
--sysroot=/home/trevor/devel/microblaze/microblaze_v2.0/microblaze-unknown-linux-gnu/microblaze-unknown-linux-gnu/sys-root
-v >&5
| Using built-in specs.
| Target: microblaze-unknown-linux-gnu
| Configured with:
/home/jwilliams/petalinux/petalinux-v1.00-devel/devel/packager/gnu/toolchains/skeleton/build/crosstool-ng/targets/src/gcc-4.1.2/configure
--build=x86_64-build_pc-linux-gnu --host=x86_64-build_pc-linux-gnu
--target=microblaze-unknown-linux-gnu
--prefix=/home/jwilliams/petalinux/petalinux-v1.00-devel/devel/packager/gnu/toolchains/../toolchains/tool-build/microblaze-unknown-linux-gnu
--with-sysroot=/home/jwilliams/petalinux/petalinux-v1.00-devel/devel/packager/gnu/toolchains/../toolchains/tool-build/microblaze-unknown-linux-gnu/microblaze-unknown-linux-gnu//sys-root
--enable-languages=c,c++ --enable-multilib --enable-__cxa_atexit
--with-local-prefix=/home/jwilliams/petalinux/petalinux-v1.00-devel/devel/packager/gnu/toolchains/../toolchains/tool-build/microblaze-unknown-linux-gnu/microblaze-unknown-linux-gnu//sys-root
--disable-nls --enable-threads=posix --enable-symvers=gnu --enable-c99
--enable-long-long --enable-target-optspace
| Thread model: posix
| gcc version 4.1.2
| configure:3681: $? = 0
| configure:3670: microblaze-unknown-linux-gnu-gcc  -m32  -mcpu=v8.10a
--sysroot=/home/trevor/devel/microblaze/microblaze_v2.0/microblaze-unknown-linux-gnu/microblaze-unknown-linux-gnu/sys-root
-V >&5
| microblaze-unknown-linux-gnu-gcc: '-V' must come at the start of the
command line
| configure:3681: $? = 1
| configure:3670: microblaze-unknown-linux-gnu-gcc  -m32  -mcpu=v8.10a
--sysroot=/home/trevor/devel/microblaze/microblaze_v2.0/microblaze-unknown-linux-gnu/microblaze-unknown-linux-gnu/sys-root
-qversion >&5
| microblaze-unknown-linux-gnu-gcc: unrecognized option '-qversion'
| microblaze-unknown-linux-gnu-gcc: no input files
| configure:3681: $? = 1
| configure:3701: checking whether the C compiler works
| configure:3723: microblaze-unknown-linux-gnu-gcc  -m32  -mcpu=v8.10a
--sysroot=/home/trevor/devel/microblaze/microblaze_v2.0/microblaze-unknown-linux-gnu/microblaze-unknown-linux-gnu/sys-root
-O2 -pipe -g -feliminate-unused-debug-types  -Wl,-O1
-Wl,--hash-style=gnu conftest.c  >&5
| cc1: error: unrecognized command line option "-m32"
| conftest.c:1: error: (v8.10a) is an invalid argument to -mcpu=

It is too bad libtool is required as part of core-image-minimal, that
seems kinda heavy for a minimal image. In any case I also gave
poky-tiny a spin but that didn't work either for the exact same
reason. My next steps are to try creating my own "minimal" images that
can hopefully get around libtool-cross. Another plan of action is to
try using meta-xilinx with one or more of the yocto releases to see if
that doesn't help create a clean build.

I would be interested in knowing if anyone else is interested in
microblaze. It would also be great to know if Xilinx is aware of this
and/or is working on this support.

I also can't help notice that on Aug. 28, 2012 Xilinx acquired
PetaLogix. I hope this helps improve Xilinx's public support for this
architecture :-)

