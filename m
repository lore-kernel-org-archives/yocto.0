Return-Path: <b.hutchman@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCFDEC3DA70
	for <webhook@archiver.kernel.org>; Tue, 30 Jul 2024 16:31:41 +0000 (UTC)
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
 by mx.groups.io with SMTP id smtpd.web10.21760.1722357096040620276
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Jul 2024 09:31:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=SXXpFQpW;
 spf=pass (domain: gmail.com, ip: 209.85.210.173, mailfrom: b.hutchman@gmail.com)
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-70d316f0060so13650b3a.1
        for <yocto@lists.yoctoproject.org>; Tue, 30 Jul 2024 09:31:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722357095; x=1722961895; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ntT0MruZ3wxxUo6YhVvu6LO08/vhPSFcxR7zJqocowk=;
        b=SXXpFQpWSE/g9hcfQq3ptBt4/wGrknmS5enhTFLnmAV63NrwdvutoIFrhIorzByv5Q
         04Ilo913YZ3SPxm4prWW+f0TzlrsNSC1yoGh86P2vAg+xQ66U1u0HJ5HoP3dHCk706A9
         LEK3q1zwsgGguP61H5e/2bSwVGlj9eHyBv3LgT/Je40yjF6eQHdU0z2y+ysn1FzeDHPm
         f4LOCMUOAQVH2dGEiw73Nk+odQVs0gNDajdxIZ25zKFkCXSUqojOUKdmw2n6QYxUj2cw
         tW2phSO0b7Mw94v3YR7878nkOoebb/87TReTMZTynicNdHIJwYnRPgpy/kYbeiHGx4Bd
         t3Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722357095; x=1722961895;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ntT0MruZ3wxxUo6YhVvu6LO08/vhPSFcxR7zJqocowk=;
        b=F1O68goyoMy17H9/mAsAtTAg7IKjfZaog0iwiwVFruEsWxiXVTw78amnY10ryThvJy
         nneJlOZZhQf0WTfioAySE6snpZtUJQ8Z0TMsRs306oV1kxVkfWHwzn5Z1bj/6K4xNR/o
         soCJgorkGtfXOwZQfTTn8a7qGHyivLgUFPdsYVToB1OpjVeNf8usLFqig/RRMTNtH23c
         01TT9vETvbgJsauYwC3E9XjFq/sjteuxA/+HSw9VjAUQSN9gh9wYzC0b4G3Hr2o04LOB
         eLOUrpU0Q57ZW9H+jBGTkhb7nW12kOSEFNZkiuHyYCLPtBuiu7pEiWT1HNplTxKe4l2n
         a8aQ==
X-Gm-Message-State: AOJu0YzAWGK97mTnRuuOr1/L36PRByljWS5RuXefWgN/FfUmhoOgYjtQ
	2hHNq6TADh8f1jl97u/Itw+mSkJvSgE158KF4nkQOxztzXWf5FJD2alajhtsA/DMRv6cqlCfL99
	bqQ/FZwOjWqip9cyC7RomGJxPQ3M=
X-Google-Smtp-Source: AGHT+IGFbN2ENjP64pdc9XgsujyYhWALkbUyeEXp+yVESrOrHWkGaHhU1kKJMlWFsARFFlhNQEI0a+1DynMiZ0b43Og=
X-Received: by 2002:a17:90b:78b:b0:2cb:4c30:51bd with SMTP id
 98e67ed59e1d1-2cfcab35c67mr4125441a91.19.1722357094795; Tue, 30 Jul 2024
 09:31:34 -0700 (PDT)
MIME-Version: 1.0
References: <CAFZh4h_wh01sjAar-QqHsQ=KY4zLjmpmXuJc83OeYue7YyYW3A@mail.gmail.com>
 <CAFZh4h9iaCGdnDhxik9Qtq82f0MGU2eL+8nBa8qoCCJrH-xsGQ@mail.gmail.com>
 <d30f1655-0efa-440a-ac17-fe82342f4556@efficios.com> <CAFZh4h_pOCzpJ6ssdZ7ts3vSdJNfEtS+d+2Foi4qAY6oH0+VKw@mail.gmail.com>
 <33527830-3bf3-4bc3-a53d-55eaefb74902@efficios.com> <CAFZh4h8k+eGuVJLJ_1vA1_P7+3Hi7h+UgUSmoN51Paxyypw-fA@mail.gmail.com>
 <09087915-9e15-4485-b3d3-f48b245690ec@efficios.com> <CAFZh4h-_ixamDD4hMMETXGx8oA6Dr_3R5eFBeQPusFnKHEXKGg@mail.gmail.com>
 <d52b867f-c35c-497a-af92-dfbe4452794c@efficios.com> <CAFZh4h-Sp0HrUZZzfze0zwVcJznD1NeiJTpBt3hAfk=j1JieQw@mail.gmail.com>
 <85e9d8f5-572e-4d3b-87f7-5ad7d21dfb3f@efficios.com> <CAFZh4h9kEvxH0nJw22=dGVA9xTDmshG_z_wv46qo+0cqgsbPRg@mail.gmail.com>
 <CAFZh4h8D71LguVq=QA3KU8thBUjJP8RzKh1DxDiy7V+3VLLAkQ@mail.gmail.com> <CAMKF1sqkHsNB78vw+b8tQNewYzT7FQNGKv2G-GYNAy37Teb6zw@mail.gmail.com>
In-Reply-To: <CAMKF1sqkHsNB78vw+b8tQNewYzT7FQNGKv2G-GYNAy37Teb6zw@mail.gmail.com>
From: Brian Hutchinson <b.hutchman@gmail.com>
Date: Tue, 30 Jul 2024 12:31:22 -0400
Message-ID: <CAFZh4h-0Sj1P+Oc1j1pQFDkrZWE1So1q5WpD8GPGZL3sy72XbA@mail.gmail.com>
Subject: Re: [yocto] [lttng-dev] Using lttng-ust 2.13.6 from Yocto Kirkstone
 and getting weird segfault saying strlen_asimd.S can't be found.
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org, Kienan Stewart <kstewart@efficios.com>, 
	lttng-dev@lists.lttng.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 30 Jul 2024 16:31:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63607

Hey Khem,

Good to hear from you again.  Hope you're doing well.

No, I don't see anything like that.  The Yocto generated sdk
environment script I use if I'm cross compiling on PC for the target
looks like this:

# Check for LD_LIBRARY_PATH being set, which can break SDK and
generally is a bad practice
# http://tldp.org/HOWTO/Program-Library-HOWTO/shared-libraries.html#AEN80
# http://xahlee.info/UnixResource_dir/_/ldpath.html
# Only disable this check if you are absolutely know what you are doing!
if [ ! -z "${LD_LIBRARY_PATH:-}" ]; then
   echo "Your environment is misconfigured, you probably need to
'unset LD_LIBRARY_PATH'"
   echo "but please check why this was set in the first place and that
it's safe to unset."
   echo "The SDK will not operate correctly in most cases when
LD_LIBRARY_PATH is set."
   echo "For more references see:"
   echo "  http://tldp.org/HOWTO/Program-Library-HOWTO/shared-libraries.htm=
l#AEN80"
   echo "  http://xahlee.info/UnixResource_dir/_/ldpath.html"
   return 1
fi

export SDKTARGETSYSROOT=3D/opt/poky/4.0.18/sysroots/cortexa53-crypto-poky-l=
inux
export PATH=3D/opt/poky/4.0.18/sysroots/x86_64-pokysdk-linux/usr/bin:/opt/p=
oky/4.0.18/sysroots/x86_64-pokysdk-linux/usr/sbin:/opt/poky/4.0.18/sysroots=
/x86_64-pokysdk-linux/bin:/opt/poky/4.0.18/sysroots/x86_64-pokysdk-linux/sb=
in:/opt/poky/4.0.18/sysroots/x86_64-pokysdk-linux/usr/
bin/../x86_64-pokysdk-linux/bin:/opt/poky/4.0.18/sysroots/x86_64-pokysdk-li=
nux/usr/bin/aarch64-poky-linux:/opt/poky/4.0.18/sysroots/x86_64-pokysdk-lin=
ux/usr/bin/aarch64-poky-linux-musl:"$PATH"
export PKG_CONFIG_SYSROOT_DIR=3D$SDKTARGETSYSROOT
export PKG_CONFIG_PATH=3D$SDKTARGETSYSROOT/usr/lib/pkgconfig:$SDKTARGETSYSR=
OOT/usr/share/pkgconfig
export CONFIG_SITE=3D/opt/poky/4.0.18/site-config-cortexa53-crypto-poky-lin=
ux
export OECORE_NATIVE_SYSROOT=3D"/opt/poky/4.0.18/sysroots/x86_64-pokysdk-li=
nux"
export OECORE_TARGET_SYSROOT=3D"$SDKTARGETSYSROOT"
export OECORE_ACLOCAL_OPTS=3D"-I
/opt/poky/4.0.18/sysroots/x86_64-pokysdk-linux/usr/share/aclocal"
export OECORE_BASELIB=3D"lib"
export OECORE_TARGET_ARCH=3D"aarch64"
export OECORE_TARGET_OS=3D"linux"
unset command_not_found_handle
export CC=3D"aarch64-poky-linux-gcc  -mcpu=3Dcortex-a53
-march=3Darmv8-a+crc+crypto -mbranch-protection=3Dstandard
-fstack-protector-strong  -O2 -D_FORTIFY_SOURCE=3D2 -Wformat
-Wformat-security -Werror=3Dformat-security --sysroot=3D$SDKTARGETSYSROOT"
export CXX=3D"aarch64-poky-linux-g++  -mcpu=3Dcortex-a53
-march=3Darmv8-a+crc+crypto -mbranch-protection=3Dstandard
-fstack-protector-strong  -O2 -D_FORTIFY_SOURCE=3D2 -Wformat
-Wformat-security -Werror=3Dformat-security --sysroot=3D$SDKTARGETSYSROOT"
export CPP=3D"aarch64-poky-linux-gcc -E  -mcpu=3Dcortex-a53
-march=3Darmv8-a+crc+crypto -mbranch-protection=3Dstandard
-fstack-protector-strong  -O2 -D_FORTIFY_SOURCE=3D2 -Wformat
-Wformat-security -Werror=3Dformat-security --sysroot=3D$SDKTARGETSYSROOT"
export AS=3D"aarch64-poky-linux-as "
export LD=3D"aarch64-poky-linux-ld  --sysroot=3D$SDKTARGETSYSROOT"
export GDB=3Daarch64-poky-linux-gdb
export STRIP=3Daarch64-poky-linux-strip
export RANLIB=3Daarch64-poky-linux-ranlib
export OBJCOPY=3Daarch64-poky-linux-objcopy
export OBJDUMP=3Daarch64-poky-linux-objdump
export READELF=3Daarch64-poky-linux-readelf
export AR=3Daarch64-poky-linux-ar
export NM=3Daarch64-poky-linux-nm
export M4=3Dm4
export TARGET_PREFIX=3Daarch64-poky-linux-
export CONFIGURE_FLAGS=3D"--target=3Daarch64-poky-linux
--host=3Daarch64-poky-linux --build=3Dx86_64-linux
--with-libtool-sysroot=3D$SDKTARGETSYSROOT"
export CFLAGS=3D" -O2 -pipe -g -feliminate-unused-debug-types "
export CXXFLAGS=3D" -O2 -pipe -g -feliminate-unused-debug-types "
export LDFLAGS=3D"-Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed
-Wl,-z,relro,-z,now"
export CPPFLAGS=3D""
export KCFLAGS=3D"--sysroot=3D$SDKTARGETSYSROOT"
export OECORE_DISTRO_VERSION=3D"4.0.18"
export OECORE_SDK_VERSION=3D"4.0.18"
export ARCH=3Darm64
export CROSS_COMPILE=3Daarch64-poky-linux-
export OECORE_TUNE_CCARGS=3D" -mcpu=3Dcortex-a53 -march=3Darmv8-a+crc+crypt=
o
-mbranch-protection=3Dstandard"

# Append environment subscripts
if [ -d "$OECORE_TARGET_SYSROOT/environment-setup.d" ]; then
   for envfile in $OECORE_TARGET_SYSROOT/environment-setup.d/*.sh; do
           . $envfile
   done
fi
if [ -d "$OECORE_NATIVE_SYSROOT/environment-setup.d" ]; then
   for envfile in $OECORE_NATIVE_SYSROOT/environment-setup.d/*.sh; do
           . $envfile
   done
fi

But I set myself up with a native build environment on the target to
be able to better run some of the lttng tests to verify it's
compatible with the aarch64 platform (NXP imx8mm in this case) I'm on
etc..

Not using the Yocto environment-setup script on the target and relying
on the built-in values.  If I look at some cmake logs, I see these
options:

COLLECT_GCC=3D/usr/bin/cc
Target: aarch64-poky-linux
Configured with:
../../../../../../work-shared/gcc-11.4.0-r0/gcc-11.4.0/configure
--build=3Dx86_64-linux --host=3Daarch64-poky-linux
--target=3Daarch64-poky-linux --prefix=3D/usr --exec_prefix=3D/usr
--bindir=3D/usr/bin --sbindir=3D/usr/sbin --libexecdir=3D/usr/libexec
--datadir=3D/usr/share --
sysconfdir=3D/etc --sharedstatedir=3D/com --localstatedir=3D/var
--libdir=3D/usr/lib --includedir=3D/usr/include
--oldincludedir=3D/usr/include --infodir=3D/usr/share/info
--mandir=3D/usr/share/man --disable-silent-rules
--disable-dependency-tracking --with-libtool-sysroot=3D/ --with-gnu-ld
--e
nable-shared --enable-languages=3Dc,c++ --enable-threads=3Dposix
--enable-multilib --enable-default-pie --enable-c99 --enable-long-long
--enable-symvers=3Dgnu --enable-libstdcxx-pch
--program-prefix=3Daarch64-poky-linux- --without-local-prefix
--disable-install-libiberty --disable-lib
ssp --enable-libitm --enable-lto --disable-bootstrap
--with-system-zlib --with-linker-hash-style=3Dgnu
--enable-linker-build-id --with-ppl=3Dno --with-cloog=3Dno
--enable-checking=3Drelease --enable-cheaders=3Dc_global --without-isl
--with-build-sysroot=3D/ --disable-static --enable-nls -
-with-glibc-version=3D2.28 --enable-initfini-array --enable-__cxa_atexit
Thread model: posix

Regards,

Brian

On Tue, Jul 30, 2024 at 11:56=E2=80=AFAM Khem Raj <raj.khem@gmail.com> wrot=
e:
>
> check if you have CXXFLAGS +=3D "-fvisibility-inlines-hidden" and try to
> toggle it and see if that helps.
>
> On Tue, Jul 30, 2024 at 8:54=E2=80=AFAM Brian Hutchinson via
> lists.yoctoproject.org <b.hutchman=3Dgmail.com@lists.yoctoproject.org>
> wrote:
> >
> > Hi Kienan,
> >
> > I noticed looking thru the 38k line LTTNG_UST_DEBUG session this line:
> >
> > "       810:     /usr/lib/liblttng-ust.so.1: error: symbol lookup
> > error: undefined symbol: ltt_probe_register (fatal)"
> >
> > ... and it jogged my memory that I did see some abi conflict messages
> > in lttng-ust "make check" that I don't know if they are "good" or
> > "bad" but could be related???
> >
> > Anyway, attaching a tar of lttng-ust and lttng-tools "make check" for
> > your enjoyment.
> >
> > Regards,
> >
> > Brian
> >
> >
> >
> >
> > On Tue, Jul 30, 2024 at 8:40=E2=80=AFAM Brian Hutchinson <b.hutchman@gm=
ail.com> wrote:
> > >
> > > On Mon, Jul 29, 2024 at 3:03=E2=80=AFPM Kienan Stewart <kstewart@effi=
cios.com> wrote:
> > > >
> > > > Hi Brian,
> > > >
> > > > On 7/25/24 3:54 PM, Brian Hutchinson wrote:
> > > > > Hi Kienan,
> > > > >
> > > > > I'll answer your questions below, but I've got questions on what =
I saw
> > > > > building and installing lttng-tools (2.13.13) and lttng-ust (2.13=
.8).
> > > > >
> > > > > Based on the struggles I've had trying to get lttng to work with =
my
> > > > > app over various Yocto versions (Dunfell & Kirkstone) and lttng
> > > > > version, I think the problems I'm facing are mostly around C++ an=
d
> > > > > weak and hidden symbols in Yocto toolchain.
> > > > >
> > > > > When I started my app with the options you mentioned previously a
> > > > > while back, Id see things like:
> > > > >
> > > > > # LTTNG_UST_DEBUG=3D1 LTTNG_UST_REGISTER_TIMEOUT=3D-1 /opt/tc/Tra=
fficController
> > > > > liblttng_ust_tracepoint[4012/4012]: Your compiler treats weak sym=
bols
> > > > > with hidden visibility for integer objects as SAME address betwee=
n
> > > > > compile units part of the same module. (in check_weak_hidden() at
> > > > > tracepoint.c:1012)
> > > > > liblttng_ust_tracepoint[4012/4012]: Your compiler treats weak sym=
bols
> > > > > with hidden visibility for pointer objects as SAME address betwee=
n
> > > > > compile units part of the same module. (in check_weak_hidden() at
> > > > > tracepoint.c:1016)
> > > > > liblttng_ust_tracepoint[4012/4012]: Your compiler treats weak sym=
bols
> > > > > with hidden visibility for 24-byte structure objects as SAME addr=
ess
> > > > > between compile units part of the same module. (in check_weak_hid=
den()
> > > > > at tracepoint.c:1020)
> > > > >
> > > >
> > > > These messages are extra information for debugging and not indicati=
ve of
> > > > a problem in of itself. C.f.
> > > > https://github.com/lttng/lttng-ust/blob/24f7193c9b918bf714a40e9fc90=
8eeb4978ada1c/src/lib/lttng-ust-tracepoint/tracepoint.c#L1010
> > > >
> > > > There is a unit test related to this:
> > > > https://github.com/lttng/lttng-ust/blob/24f7193c9b918bf714a40e9fc90=
8eeb4978ada1c/tests/unit/gcc-weak-hidden/main.c#L76
> > > >
> > > >
> > > > > I further researched this whole 'weak symbol' and 'hidden visibil=
ity'
> > > > > topic in the lttng-dev archives and it smells a lot like what I'v=
e
> > > > > been seeing.  You should be able to mix both tracef and tracepoin=
t
> > > > > calls in souce code ... but I could not.  I could get a tracef ca=
ll to
> > > > > work but if I put a tracepoint call in the same code then nothing
> > > > > would work.  This was with Dunfell 3.1.7 and earlier versions of
> > > > > lttng.
> > > > >
> > > > > At one point I could get a tracepoint call to work but I'd have t=
o let
> > > > > our cmake build system build and link the tpp.c file and then tur=
n
> > > > > around and use gcc to recompile it and copy it to where all the
> > > > > objects were to create the huge .a library the app was built agai=
nst.
> > > > > That's when I first learned there are issues with C++.  I think g=
++ is
> > > > > used to build even .c files that aren't c++.
> > > > >
> > > > > Then if I tried to put a tracepoint in another sub project, none =
of
> > > > > the tracepoints would work and I'd get empty traces.  This is a
> > > > > symptom of the 'weak symbols with hidden visibility' issue ... an=
d I
> > > > > finally found others that were having same issue in the archives.=
  I
> > > > > don't fully understand the issues here, although I do understand =
some
> > > > > of what's going on ... I just don't know what to do about it.
> > > > >
> > > >
> > > > You said initially said that you're using `lttng_ust_tracepoint` ex=
actly
> > > > as the hello world from the documentation; however, you have just
> > > > described several attempts at doing different things. Which case ar=
e we
> > > > trying to understand here?
> > >
> > > lttng_ust_tracepoint.  I only mentioned prior tests for context to
> > > similar struggles from a year or more ago.
> > >
> > >
> > > >
> > > > > At this point I was being encouraged to keep upgrading to newer
> > > > > versions of lttng.  Our app never changed, gcc & lttng etc., kept
> > > > > changing.  Now with newer versions nothing runs, all I get is an
> > > > > immediate segfault.  Again, I'm building just like I did before a=
 year
> > > > > or so ago with older versions of Yocto and lttng.  I say all of t=
hat
> > > > > to give perspective and history of what I've seen and experienced=
.
> > > > > Now this TLS thing has entered the picture too and so far I've on=
ly
> > > > > changed lttng, I don't know if I should be applying patches to my=
 gcc
> > > > > for that issue.  Like I said, I'm currently using Yocto Kirkstone
> > > > > 4.0.18 and 6.1.38 kernel.
> > > > >
> > > > > Now I'll move into the area of things I've seen building/installi=
ng
> > > > > lttng-tools and lttng-ust natively on the target environment I've
> > > > > setup where I can run 'make check' etc.  These are in the categor=
y of
> > > > > "hey, is this ok, should I be worried about this":
> > > > >
> > > > > While building lttng-tools I see things like:
> > > > >
> > > > > *** Warning: Linking the executable userspace-probe-elf-binary ag=
ainst
> > > > > the loadable module
> > > > > *** libfoo.so is not portable!
> > > > >
> > > >
> > > > The library is for a test program. My understanding is that the lib=
rary
> > > > is compiled that way to force a stripped shared object to be produc=
ed in
> > > > order to validate that symbol lookups in libraries with no symtab
> > > > function as expected by using the dynsym table.
> > > >
> > > > C.f.
> > > > https://github.com/lttng/lttng-tools/commit/ef3dfe5d31c88fb548189a6=
441aaf8b2afc0bd4b
> > > >
> > > > > In file included from ../../../src/common/macros.h:15,
> > > > >                  from ../../../include/lttng/health-internal.h:19=
,
> > > > >                  from lttng-ctl-health.c:19:
> > > > > In function 'lttng_strnlen',
> > > > >     inlined from 'lttng_strncpy' at ../../../src/common/macros.h:=
128:6,
> > > > >     inlined from 'set_health_socket_path' at lttng-ctl-health.c:1=
46:9,
> > > > >     inlined from 'lttng_health_query' at lttng-ctl-health.c:264:8=
:
> > > > > ../../../src/common/compat/string.h:19:16: warning: 'strnlen'
> > > > > specified bound 4096 may exceed source size 37 [-Wstringop-overre=
ad]
> > > > >    19 |         return strnlen(str, max);
> > > > >       |                ^~~~~~~~~~~~~~~~~
> > > > > lttng-ctl-health.c: At top level:
> > > > > cc1: note: unrecognized command-line option
> > > > > '-Wno-incomplete-setjmp-declaration' may have been intended to si=
lence
> > > > > earlier diagnostics
> > > >
> > > > This warning is addressed in
> > > > https://github.com/lttng/lttng-tools/commit/b25a59916106e5055be516f=
61f183a48f459b0b3
> > > >
> > > > > ** Warning: Linking the shared library libbar.la against the load=
able module
> > > > > *** libzzz.so is not portable!
> > > > >
> > > > > *** Warning: Linking the shared library libfoo.la against the loa=
dable module
> > > > > *** libbar.so is not portable!
> > > > >
> > > > > While installing lttng-tools I see things like this:
> > > > >
> > > > > make[4]: Entering directory '/opt/lttng/lttng-tools-2.13.13/src/l=
ib/lttng-ctl'
> > > > >   CC       lttng-ctl.lo
> > > > >   CC       snapshot.lo
> > > > >   CC       lttng-ctl-health.lo
> > > > > In file included from ../../../src/common/macros.h:15,
> > > > >                  from ../../../include/lttng/health-internal.h:19=
,
> > > > >                  from lttng-ctl-health.c:19:
> > > > > In function 'lttng_strnlen',
> > > > >     inlined from 'lttng_strncpy' at ../../../src/common/macros.h:=
128:6,
> > > > >     inlined from 'set_health_socket_path' at lttng-ctl-health.c:1=
46:9,
> > > > >     inlined from 'lttng_health_query' at lttng-ctl-health.c:264:8=
:
> > > > > ../../../src/common/compat/string.h:19:16: warning: 'strnlen'
> > > > > specified bound 4096 may exceed source size 37 [-Wstringop-overre=
ad]
> > > > >    19 |         return strnlen(str, max);
> > > > >       |                ^~~~~~~~~~~~~~~~~
> > > > > lttng-ctl-health.c: At top level:
> > > > > cc1: note: unrecognized command-line option
> > > > > '-Wno-incomplete-setjmp-declaration' may have been intended to si=
lence
> > > > > earlier diagnostics
> > > > >
> > > > > Making install in trigger-condition-event-matches
> > > > > make[2]: Entering directory
> > > > > '/opt/lttng/lttng-tools-2.13.13/doc/examples/trigger-condition-ev=
ent-matches'
> > > > >   CC       instrumented-app.o
> > > > >   CC       tracepoint-trigger-example.o
> > > > >   AR       libtracepoint-trigger-example.a
> > > > > ar: `u' modifier ignored since `D' is the default (see `U')
> > > > >
> > > > > While building lttng-ust I see things like:
> > > > >
> > > > > Making all in utils
> > > > > make[2]: Entering directory
> > > > > '/home/iadmin/lttng-ust/lttng-ust-2.13.8/tests/utils'
> > > > >   CC       tap.o
> > > > >   AR       libtap.a
> > > > > ar: `u' modifier ignored since `D' is the default (see `U')
> > > > >
> > > >
> > > > While libtool now uses `cr` by default, automake still defines the
> > > > default to `cru` which is what ends up getting used in the example.
> > > > Since many distros have changed the configuration of ar such that '=
D' is
> > > > the default rather than the previous behaviour 'U', 'u' is redundan=
t.
> > > >
> > > > The behaviour in automake has been changed in automake 1.16.90+.
> > > >
> > > > C.f.
> > > > https://github.com/autotools-mirror/libtool/commit/418129bc63afc312=
701e84cb8afa5ca413df1ab5
> > > >
> > > > C.f.
> > > > http://git.savannah.gnu.org/cgit/automake.git/commit/?id=3D8cdbdda5=
aec652c356fe6dbba96810202176ae75
> > > >
> > > > > *** Warning: Linking the shared library libzero.la against the
> > > > > loadable module
> > > > > *** libfakeust0.so is not portable!
> > > > >   CCLD     app_noust_indirect_abi0
> > > > >
> > > > > *** Warning: Linking the executable app_noust_indirect_abi0 again=
st
> > > > > the loadable module
> > > > > *** libzero.so is not portable!
> > > > >   CC       app_noust_indirect_abi0_abi1-app_noust.o
> > > > >   CC       libone.lo
> > > > >   CCLD     libone.la
> > > > >   CCLD     app_noust_indirect_abi0_abi1
> > > > >
> > > > > *** Warning: Linking the executable app_noust_indirect_abi0_abi1
> > > > > against the loadable module
> > > > > *** libzero.so is not portable!
> > > > >
> > > > > *** Warning: Linking the executable app_noust_indirect_abi0_abi1
> > > > > against the loadable module
> > > > > *** libone.so is not portable!
> > > > >   CC       app_noust_indirect_abi1-app_noust.o
> > > > >   CCLD     app_noust_indirect_abi1
> > > > >
> > > > > *** Warning: Linking the executable app_noust_indirect_abi0_abi1
> > > > > against the loadable module
> > > > > *** libone.so is not portable!
> > > > >   CC       app_noust_indirect_abi1-app_noust.o
> > > > >   CCLD     app_noust_indirect_abi1
> > > > >
> > > > > *** Warning: Linking the executable app_noust_indirect_abi1 again=
st
> > > > > the loadable module
> > > > > *** libone.so is not portable!
> > > > >   CC       app_ust.o
> > > > >   CC       tp.o
> > > > >   CCLD     app_ust
> > > > >   CC       app_ust_dlopen.o
> > > > >   CCLD     app_ust_dlopen
> > > > >   CC       app_ust_indirect_abi0-app_ust.o
> > > > >   CC       app_ust_indirect_abi0-tp.o
> > > > >   CCLD     app_ust_indirect_abi0
> > > > >
> > > > > *** Warning: Linking the executable app_ust_indirect_abi0 against=
 the
> > > > > loadable module
> > > > > *** libzero.so is not portable!
> > > > >   CC       app_ust_indirect_abi0_abi1-app_ust.o
> > > > >   CC       app_ust_indirect_abi0_abi1-tp.o
> > > > >   CCLD     app_ust_indirect_abi0_abi1
> > > > >
> > > > > *** Warning: Linking the executable app_ust_indirect_abi0_abi1 ag=
ainst
> > > > > the loadable module
> > > > > *** libzero.so is not portable!
> > > > >
> > > > > I don't know if these are ok or if I should be worried about any =
of that.
> > > > >
> > > >
> > > > These are all for different tests.
> > > >
> > > > > ... now on to your questions below.
> > > > >
> > > > >
> > > > >
> > > > > On Wed, Jul 24, 2024 at 12:04=E2=80=AFPM Kienan Stewart <kstewart=
@efficios.com> wrote:
> > > > >>
> > > > >> Hi Brian,
> > > > >>
> > > > >> On 7/22/24 6:00 PM, Brian Hutchinson wrote:
> > > > >>> Hi Kienan,
> > > > >>>
> > > > >>> Took a while to gather your grocery list but I think I have mos=
t of it
> > > > >>> below ;)
> > > > >>
> > > > >> thanks for all the extra info. Replies inline below, but I'll cu=
t a lot
> > > > >> of the long output for readability.
> > > > >>
> > > > >> tl;dr the environment continues to be weird, but my present susp=
icion is
> > > > >> that something in either compilation, the linking of your app (e=
g. with
> > > > >> ld when producing the executable), or some post linking strippin=
g might
> > > > >> be causing issues.
> > > > >
> > > > > I'm not aware of any stripping that's going on.  In fact everythi=
ng is
> > > > > being built with debug symbols at the moment and I even turned of=
f
> > > > > optimization ... even used the debug friendly -O flag to see if t=
hat
> > > > > made a difference.
> > > > >
> > > > >>
> > > > >> I will stop digging into further hypotheticals on my side as the=
re is no
> > > > >> reproducer for both the environment and the application. If you =
ever end
> > > > >> up with a minimal reproducer that you can share, I'd be more tha=
n happy
> > > > >> to examine it.
> > > > >
> > > > > I'm planning on trying to make a small reproducer I can share but=
 not there yet.
> > > > >
> > > >
> > > > Great! I appreciate that you're taking the time to do so.
> > > >
> > > > >>
> > > > >>>
> > > > >>> I may have not been clear.  Most of the application components =
are
> > > > >>> statically linked but I think there are some that are built as =
shared
> > > > >>> objects (.so's) so that's what I was referring to.  I know that
> > > > >>> lttng-ust is dynamically linked ... I think the lttng-ust docs =
say this
> > > > >>> is only option but also makes reference to the fact static link=
ing was
> > > > >>> once possible (in some versions of the documentation) but not s=
upported
> > > > >>> anymore (I probably have the docs memorized by now ha, ha ... I=
've
> > > > >>> looked at many, many versions of them).
> > > > >>>
> > > > >>> Just for full disclosure my ldd looks like:
> > > > >>>
> > > > >>>          linux-vdso.so.1 (0x0000ffffab196000)
> > > > >>>          libfcgi.so.0 =3D> /usr/lib/libfcgi.so.0 (0x0000ffffa57=
f0000)
> > > > >>>          liblttng-ust.so.1 =3D> /usr/lib/liblttng-ust.so.1
> > > > >>> (0x0000ffffa5750000)
> > > > >>>          libxml2.so.2 =3D> /usr/lib/libxml2.so.2 (0x0000ffffa55=
d0000)
> > > > >>>          librt.so.1 =3D> /lib/librt.so.1 (0x0000ffffa55b0000)
> > > > >>>          libm.so.6 =3D> /lib/libm.so.6 (0x0000ffffa5510000)
> > > > >>>          libstdc++.so.6 =3D> /usr/lib/libstdc++.so.6 (0x0000fff=
fa52f0000)
> > > > >>>          libgcc_s.so.1 =3D> /lib/libgcc_s.so.1 (0x0000ffffa52c0=
000)
> > > > >>>          libc.so.6 =3D> /lib/libc.so.6 (0x0000ffffa5110000)
> > > > >>>          /lib/ld-linux-aarch64.so.1 (0x0000ffffab15d000)
> > > > >>>          liblttng-ust-common.so.1 =3D>
> > > > >>> /usr/local/lib/liblttng-ust-common.so.1 (0x0000ffffa50e0000)
> > > > >>>          liblttng-ust-tracepoint.so.1 =3D>
> > > > >>> /usr/local/lib/liblttng-ust-tracepoint.so.1 (0x0000ffffa50a0000=
)
> > > > >>>          libpthread.so.0 =3D> /lib/libpthread.so.0 (0x0000ffffa=
5080000)
> > > > >>>          libz.so.1 =3D> /lib/libz.so.1 (0x0000ffffa5050000)
> > > > >>>
> > > > >>>
> > > > >>
> > > > >> I find it very suspicious that `liblttng-ust.so.1` is in `/usr/l=
ib`,
> > > > >> while the other lttng-ust libraries are being loaded from `/usr/=
local/lib`.
> > > > >
> > > > > So Yocto puts all of the lttng libs into /usr/lib.  When I sent t=
he
> > > > > previous info I was using lttng-tools and modules built by Yocto/=
OE
> > > > > and I setup a native build environment on the target so I could r=
un
> > > > > 'make check' etc., and that's why there were things in /usr/local=
/lib
> > > > > because that's where you guys want stuff to be.  So I actually le=
ft
> > > > > the lttng-ust installables in /usr/local/build but also copied th=
em to
> > > > > /usr/lib to overwrite old Yocto versions there.
> > > > >
> > > >
> > > > It's not so much that it's "where we want it to be". The documentat=
ion
> > > > uses `/usr/local/lib` because `/usr/local` is meant for software
> > > > installed by the sysadmin administrator, as is the case when buildi=
ng a
> > > > custom version. `/usr/lib` should be used by packages shipped with =
the
> > > > system.
> > > >
> > > > C.f. https://refspecs.linuxfoundation.org/FHS_3.0/fhs/ch04s09.html
> > > >
> > > > You're free to do as you see fit, but when you start mixing and mat=
ching
> > > > libraries and some are put in /usr/lib by your system packages and =
some
> > > > you move there manually I find it more difficult to follow what is =
going on.
> > > >
> > > > >>
> > > > >> This information also matches the statedump and the LD_DEBUG inf=
o from
> > > > >> later on.
> > > > >>
> > > > >> Could you verify some of the following information:
> > > > >>
> > > > >> 1. In your build root for lttng-ust, enumerate all the liblttng*=
so
> > > > >> files. For each shared object, run `file $libname` and record th=
e value
> > > > >> of the BuildID hash.R5jow
> > > > >
> > > > > Sorry, I'm not following you here.  The only buildID hash I can t=
hink
> > > > > of is with 'eu-unstrip -n' but that's on core files, not individu=
al
> > > > > libs.  And looking at the options I have for 'file' on my target,=
 I
> > > > > don't see anything that looks like what you are asking.
> > > >
> > > > Perhaps I wasn't clear, the command to run is really just `file`. A=
s a
> > > > fuller example:
> > > >
> > > > ```
> > > > $ file ./src/lib/lttng-ust-fork/.libs/liblttng-ust-fork.so.1.0.0
> > > > ./src/lib/lttng-ust-fork/.libs/liblttng-ust-fork.so.1.0.0: ELF 64-b=
it
> > > > LSB shared object, x86-64, version 1 (SYSV), dynamically linked,
> > > > BuildID[sha1]=3Db2b4a0fc449cf317e32c23e0bb57ea1ad702b702, with debu=
g_info,
> > > > not stripped
> > >
> > > Ok, feel stupid now.  When I ran the command before, I used short nam=
e
> > > and didn't do it on the long name and just got back:
> > >
> > > # file /usr/lib/liblttng-ust.so
> > > /usr/lib/liblttng-ust.so: symbolic link to liblttng-ust.so.1.0.0
> > >
> > > ... and immediately looked at man page to try to figure out what
> > > switch showed BuildID etc., ha, ha.
> > >
> > > When I do it on long name here is what I see:
> > >
> > > # file /usr/lib/liblttng-ust-common.so.1.0.0
> > > /usr/lib/liblttng-ust-common.so.1.0.0: ELF 64-bit LSB shared object,
> > > ARM aarch64, version 1 (SYSV), dynamically linked,
> > > BuildID[sha1]=3Da50c9a77163b6b91e1f84e57d167c7b77ae707a3, with
> > > debug_info, not stripped
> > > # file /usr/lib/liblttng-ust-ctl.so.5.0.0
> > > /usr/lib/liblttng-ust-ctl.so.5.0.0: ELF 64-bit LSB shared object, ARM
> > > aarch64, version 1 (SYSV), dynamically linked,
> > > BuildID[sha1]=3D547cccac08721ed1c9a7f3c7ebf1de84ddba7fba, with
> > > debug_info, not stripped
> > > # file /usr/lib/liblttng-ust-cyg-profile-fast.so.1.0.0
> > > /usr/lib/liblttng-ust-cyg-profile-fast.so.1.0.0: ELF 64-bit LSB share=
d
> > > object, ARM aarch64, version 1 (SYSV), dynamically linked,
> > > BuildID[sha1]=3Dad5f71ef5e83ab9a972488976c47db265d3360b9, with
> > > debug_info, not stripped
> > > # file /usr/lib/liblttng-ust-cyg-profile.so.1.0.0
> > > /usr/lib/liblttng-ust-cyg-profile.so.1.0.0: ELF 64-bit LSB shared
> > > object, ARM aarch64, version 1 (SYSV), dynamically linked,
> > > BuildID[sha1]=3Dc2c246c1973bd3241aa4f7229fcbcb27ebe08e82, with
> > > debug_info, not stripped
> > > # file /usr/lib/liblttng-ust-dl.so.1.0.0
> > > /usr/lib/liblttng-ust-dl.so.1.0.0: ELF 64-bit LSB shared object, ARM
> > > aarch64, version 1 (SYSV), dynamically linked,
> > > BuildID[sha1]=3D6082ee88c9394319bc3adff16b0b3ea9f8d549ec, with
> > > debug_info, not stripped
> > > # file /usr/lib/liblttng-ust-fd.so.1.0.0
> > > /usr/lib/liblttng-ust-fd.so.1.0.0: ELF 64-bit LSB shared object, ARM
> > > aarch64, version 1 (SYSV), dynamically linked,
> > > BuildID[sha1]=3Da2813245af91abe98615771dfd7d5f19b033a410, with
> > > debug_info, not stripped
> > > # file /usr/lib/liblttng-ust-fork.so.1.0.0
> > > /usr/lib/liblttng-ust-fork.so.1.0.0: ELF 64-bit LSB shared object, AR=
M
> > > aarch64, version 1 (SYSV), dynamically linked,
> > > BuildID[sha1]=3D86afa53808502873830c02290f477d4ff8013afb, with
> > > debug_info, not stripped
> > > # file /usr/lib/liblttng-ust-libc-wrapper.so.1.0.0
> > > /usr/lib/liblttng-ust-libc-wrapper.so.1.0.0: ELF 64-bit LSB shared
> > > object, ARM aarch64, version 1 (SYSV), dynamically linked,
> > > BuildID[sha1]=3D52f391875a378b5f2c46747a58020b86cb7c9a83, with
> > > debug_info, not stripped
> > > # file /usr/lib/liblttng-ust-pthread-wrapper.so.1.0.0
> > > /usr/lib/liblttng-ust-pthread-wrapper.so.1.0.0: ELF 64-bit LSB shared
> > > object, ARM aarch64, version 1 (SYSV), dynamically linked,
> > > BuildID[sha1]=3D7127223a7e8ed67c6697b95ae1f8ac107df7e47e, with
> > > debug_info, not stripped
> > > # file /usr/lib/liblttng-ust-tracepoint.so.1.0.0
> > > /usr/lib/liblttng-ust-tracepoint.so.1.0.0: ELF 64-bit LSB shared
> > > object, ARM aarch64, version 1 (SYSV), dynamically linked,
> > > BuildID[sha1]=3D5971b4d84ec1efe61c6d47c38e92de20569f0f49, with
> > > debug_info, not stripped
> > > # file /usr/lib/liblttng-ust.so.1.0.0
> > > /usr/lib/liblttng-ust.so.1.0.0: ELF 64-bit LSB shared object, ARM
> > > aarch64, version 1 (SYSV), dynamically linked,
> > > BuildID[sha1]=3Dce7097ae9bbf42a02dccd386fdfbd37e3224858b, with
> > > debug_info, not stripped
> > >
> > >
> > > cutting some stuff out cause it's getting long again.
> > >
> > > >
> > > > Sounds like `make check` for lttng-tools passed then?
> > >
> > > At first no.  But I think this is because I built the new lttng-tools
> > > in my on target native environment and ran make check and forgot to d=
o
> > > make install first, so it was using the older version of lttng-tools.
> > >
> > > So then I ran make install of lttng-tools and even did a make clean
> > > and rebuild of lttng-ust and re-installed it and ran make check on
> > > both (and things looked a lot better) ... that's where those warnings
> > > etc., I asked you about came from.
> > >
> > > >
> > > > My understanding at this point is the unit tests are passing for
> > > > LTTng-UST on your system, as are the unit and regression tests for
> > > > LTTng-tools. The example programs shipped with LTTng-UST work on yo=
ur
> > > > system, as does the example from the documentation. The statedump
> > > > tracepoints loaded from LTTng-UST are also working fine, as evinced=
 by
> > > > the program logs and the LTTng trace you shared.
> > > >
> > > > Despite my confusion about how exactly you're using the `hello worl=
d`
> > > > tracepoint in your application (as you've now described several
> > > > variations), the direction this points to for me are details relate=
d to
> > > > how you're using LTTng-UST and/or how are your building and linking=
 your
> > > > application. To be clear, I don't mean to say that there is or is n=
ot an
> > > > issue in LTTng-UST, but to point at where to examine next in detail
> > > > including analysis of the produced object files.
> > >
> > > I compared the doc/examples/hello-static-lib to what I picked out of
> > > the LTTng documentation on the web site "Quick start" section and the
> > > traceprovider headder file is including stddef.h and mine isn't and
> > > the doc/examples/hello-static-lib/hello.c code is doing a sighandler
> > > and mine isn't doing any of that either.  I think I've probably poste=
d
> > > it before but will do it again.  Here is what I'm calling my "hello".
> > > It's from the lttng documentation but I cut it down even further just
> > > to make sure I didn't fat finger something.  Like I said before, the
> > > full hello example from the documentation works.  But when I call
> > > pretty much the same code from my app it seg faults.
> > >
> > > I don't know if the differences I see between my "hello" and the
> > > "hello-static-lib" matter.
> > >
> > > hello-tp.h:
> > >
> > > #undef LTTNG_UST_TRACEPOINT_PROVIDER
> > > #define LTTNG_UST_TRACEPOINT_PROVIDER hello_world
> > >
> > > #undef LTTNG_UST_TRACEPOINT_INCLUDE
> > > #define LTTNG_UST_TRACEPOINT_INCLUDE "./hello-tp.h"
> > >
> > > #if !defined(_HELLO_TP_H) || defined(LTTNG_UST_TRACEPOINT_HEADER_MULT=
I_READ)
> > > #define _HELLO_TP_H
> > >
> > > #include <lttng/tracepoint.h>
> > >
> > > LTTNG_UST_TRACEPOINT_EVENT(
> > >    hello_world,
> > >    my_first_tracepoint,
> > >    LTTNG_UST_TP_ARGS(
> > >        int, my_integer_arg
> > >    ),
> > >    LTTNG_UST_TP_FIELDS(
> > >        lttng_ust_field_integer(int, my_integer_field, my_integer_arg)
> > >    )
> > > )
> > >
> > > #endif /* _HELLO_TP_H */
> > >
> > > #include <lttng/tracepoint-event.h>
> > >
> > > hello-tp.c:
> > >
> > > #define LTTNG_UST_TRACEPOINT_CREATE_PROBES
> > >
> > > #include "hello-tp.h"
> > >
> > > From my_app:
> > >
> > > #define LTTNG_UST_TRACEPOINT_DEFINE
> > > //#define LTTNG_UST_TRACEPOINT_PROBE_DYNAMIC_LINKAGE
> > > #include "hello-tp.h"
> > >
> > > .
> > > .
> > > .
> > > lttng_ust_tracepoint(hello_world, my_first_tracepoint, 23, "hi there!=
");
> > >
> > > In the above case the tpp is static but I've tried to make it a share=
d
> > > object too (thus the commented out DYNAMIC_LINKAGE above) but get the
> > > same result.
> > >
> > > Again, I think the issue is probably g++ and weak/hidden symbol
> > > related and or TLS but that's based on the totality of what I've
> > > experienced over the past year or so and seeing the
> > > experiences/problems of others in the lttng-dev archives.
> > >
> > > Regards,
> > >
> > > Brian
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > You automatically follow any topics you start or reply to.
> > View/Reply Online (#63605): https://lists.yoctoproject.org/g/yocto/mess=
age/63605
> > Mute This Topic: https://lists.yoctoproject.org/mt/107264247/1997914
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gma=
il.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >

