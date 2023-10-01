Return-Path: <arob109@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55597E78493
	for <webhook@archiver.kernel.org>; Sun,  1 Oct 2023 21:05:28 +0000 (UTC)
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
 by mx.groups.io with SMTP id smtpd.web10.68444.1696194319532201317
 for <yocto@lists.yoctoproject.org>;
 Sun, 01 Oct 2023 14:05:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ETH+9oph;
 spf=pass (domain: gmail.com, ip: 209.85.208.178, mailfrom: arob109@gmail.com)
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2c28e35752cso22704981fa.0
        for <yocto@lists.yoctoproject.org>; Sun, 01 Oct 2023 14:05:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696194318; x=1696799118; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DkgyX52zVLDKFVpAOfjpaZzGm9HqngdxfYiv30mPpT4=;
        b=ETH+9ophmAVwN0ixrKFN6FkkfBaVAJ+kz6CgMxTBB0UlrpaJQq8ypmkUKdUyYZet1B
         2IUWGkcIUbO4p1DJRYsshJ9X0BLpsUbTwE6ndeYAhKLaSR/5Zwz7X89aaloqxZLWEkfp
         XyEgInuT9ft8FwMc2RUfByJ+Z4QEVUt8lBOvGTqr49U7WkhLHRmeLKUxOddt3pU05/zy
         +tU/VN80/nWJKdWG9EgJGBW/dmIy2wqV450Hx/YGans4lDNbYzup3fAfcVm2vLaOOns5
         RgRJ3fL8KJ9Ehc5cx92IxnT/CXLZuGmyPaxorfdRCspZ3Z56DA189YH7Ik9oJoj1n2Lu
         PiPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696194318; x=1696799118;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DkgyX52zVLDKFVpAOfjpaZzGm9HqngdxfYiv30mPpT4=;
        b=IgAnTWrsMgQ5oqdSATwsxf92PWLuuJL0oDE+hVIazvTiO5sHoQG8D7lwQNzk3mh5Df
         rdNtalkJZARSH0NWwqJHRzqJvp/7zzMtqsKSrlyecLn2JDQYhw4+wMhTX7Kb9WWRYGlT
         2tpcV0CMLlwlHHL7rETIcw306qezK60QhNvgmBKHPd53HoJ30gE00s+71u3ca4RgcST3
         CE3lFTYwnLbdLdtQPzJZbCLXLCftNf7zuRRL5s+PJitBeuMbAR1PMSmml93a7aUxlQhW
         xrk8qPqi7CtibIzYlj+JyCfUdFaovLvKAOV53CLWTD8otF1uZOjV6B84Yv4WndWu6XRe
         fmXg==
X-Gm-Message-State: AOJu0YyqJlEThAyKxHBc4xujwCJPyPSweJGzhsmRhigZSTBdvFas85KL
	GI7aC+QcSMl1GKpT1yrxF0edQq+pdRuXN1d5gT0=
X-Google-Smtp-Source: AGHT+IFUgefmwgZ+MnagnNnMixC80PSpiURSxZUvZ7XD2W/4IvSG5JW/MIvvfyySdKSZbQeuwxm5kbGeZ23F1l1mlHc=
X-Received: by 2002:a2e:2e03:0:b0:2bc:d464:1a36 with SMTP id
 u3-20020a2e2e03000000b002bcd4641a36mr8247732lju.46.1696194317370; Sun, 01 Oct
 2023 14:05:17 -0700 (PDT)
MIME-Version: 1.0
References: <CAPkENw-000rkwb1gBmgVTa1RarUe0yUOwXM_NiXQd7RJ3C53sg@mail.gmail.com>
 <257d2db0bbb4f2b10814f068bfa32e3941ae95b2.camel@linuxfoundation.org>
 <1788EE639287C667.1970@lists.yoctoproject.org> <1789283578AF2335.9230@lists.yoctoproject.org>
In-Reply-To: <1789283578AF2335.9230@lists.yoctoproject.org>
From: Alex Roberts <arob109@gmail.com>
Date: Sun, 1 Oct 2023 16:05:07 -0500
Message-ID: <CAPkENw_7a-tGNs4BYnOrSayMNydvXE_4osdyorbviqYny4oNTg@mail.gmail.com>
Subject: Re: [yocto] Trouble enabling vtable-verify for gcc-cross
To: xARob109x <arob109@gmail.com>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 01 Oct 2023 21:05:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61183

I identified the issue. libvtv's Makefile.in and Makefile.am are
expecting CC_FOR_TARGET to be set

CXXVTV=3D$(CC_FOR_TARGET)
CXXLD=3D$(CC_FOR_TARGET)

gcc-cross_9.3.inc exports CC_FOR_TARGET, but gcc-runtime_9.3.inc does not.
When libvtv is compiled during gcc-runtime recipe, CXXVTV and CXXLD
are empty and libtool fails with the error that the -D definitions are
unrecognized options.

Setting CXXVTV=3D$(CXX) and CXXLD=3D$(CXX) allowed me to build libvtv and
cross-compile programs with the -fvtable-verify compiler option.

On Thu, Sep 28, 2023 at 2:55=E2=80=AFPM Alex Roberts via
lists.yoctoproject.org <arob109=3Dgmail.com@lists.yoctoproject.org>
wrote:
>
> Today I revisited cloning gcc-sanitizers.inc and gcc-sanitizers_9.3.bb
> in an attempt to make a recipe that configures and builds libvtv. This
> somewhat works, but I get errors with libtool
>
>
> | /bin/sh ./libtool --tag=3DCXX   --mode=3Dcompile  -DPACKAGE_NAME=3D\"GN=
U\
> Vtable\ Verification\ Runtime\ Library\" -DPACKAGE_TARNAME=3D\"libvtv\"
> -DPACKAGE_VERSION=3D\"1.0\" -DPACKAGE_STRING=3D\"GNU\ Vtable\
> Verification\ Runtime\ Library\ 1.0\" -DPACKAGE_BUGREPORT=3D\"\"
> -DPACKAGE_URL=3D\"http://www.gnu.org/software/libvtv/\" -DSTDC_HEADERS=3D=
1
> -DHAVE_SYS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1
> -DHAVE_STRING_H=3D1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1
> -DHAVE_INTTYPES_H=3D1 -DHAVE_STDINT_H=3D1 -DHAVE_UNISTD_H=3D1
> -D__EXTENSIONS__=3D1 -D_ALL_SOURCE=3D1 -D_GNU_SOURCE=3D1
> -D_POSIX_PTHREAD_SEMANTICS=3D1 -D_TANDEM_SOURCE=3D1 -DPACKAGE=3D\"libvtv\=
"
> -DVERSION=3D\"1.0\" -DHAVE_SECURE_GETENV=3D1 -DHAVE___FORTIFY_FAIL=3D1
> -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -DHAVE__OBSTACK_BEGIN=3D1 -I.
> -I../../../../../../../../work-shared/gcc-9.3.0-r0/gcc-9.3.0/libvtv
> -I../../../../../../../../work-shared/gcc-9.3.0-r0/gcc-9.3.0/libvtv/../in=
clude
>  -D_GNU_SOURCE -Wall -Wextra -fno-exceptions
> -I./../libstdc++-v3/include
> -I./../libstdc++-v3/include/aarch64-oe-linux
> -I../../../../../../../../work-shared/gcc-9.3.0-r0/gcc-9.3.0/libvtv/../li=
bstdc++-v3/libsupc++
> -Wl,-u_vtable_map_vars_start,-u_vtable_map_vars_end -O2
> -fomit-frame-pointer    -Wa,--noexecstack -fexpensive-optimizations
> -frename-registers -ftree-vectorize   -finline-functions
> -finline-limit=3D64   -Wno-error=3Dmaybe-uninitialized
> -Wno-error=3Dunused-result     -fvisibility-inlines-hidden -c -o
> vtv_malloc.lo ../../../../../../../../work-shared/gcc-9.3.0-r0/gcc-9.3.0/=
libvtv/vtv_malloc.cc
> | /bin/sh ./libtool --tag=3DCXX   --mode=3Dcompile  -DPACKAGE_NAME=3D\"GN=
U\
> Vtable\ Verification\ Runtime\ Library\" -DPACKAGE_TARNAME=3D\"libvtv\"
> -DPACKAGE_VERSION=3D\"1.0\" -DPACKAGE_STRING=3D\"GNU\ Vtable\
> Verification\ Runtime\ Library\ 1.0\" -DPACKAGE_BUGREPORT=3D\"\"
> -DPACKAGE_URL=3D\"http://www.gnu.org/software/libvtv/\" -DSTDC_HEADERS=3D=
1
> -DHAVE_SYS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1
> -DHAVE_STRING_H=3D1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1
> -DHAVE_INTTYPES_H=3D1 -DHAVE_STDINT_H=3D1 -DHAVE_UNISTD_H=3D1
> -D__EXTENSIONS__=3D1 -D_ALL_SOURCE=3D1 -D_GNU_SOURCE=3D1
> -D_POSIX_PTHREAD_SEMANTICS=3D1 -D_TANDEM_SOURCE=3D1 -DPACKAGE=3D\"libvtv\=
"
> -DVERSION=3D\"1.0\" -DHAVE_SECURE_GETENV=3D1 -DHAVE___FORTIFY_FAIL=3D1
> -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -DHAVE__OBSTACK_BEGIN=3D1 -I.
> -I../../../../../../../../work-shared/gcc-9.3.0-r0/gcc-9.3.0/libvtv
> -I../../../../../../../../work-shared/gcc-9.3.0-r0/gcc-9.3.0/libvtv/../in=
clude
>  -D_GNU_SOURCE -Wall -Wextra -fno-exceptions
> -I./../libstdc++-v3/include
> -I./../libstdc++-v3/include/aarch64-oe-linux
> -I../../../../../../../../work-shared/gcc-9.3.0-r0/gcc-9.3.0/libvtv/../li=
bstdc++-v3/libsupc++
> -Wl,-u_vtable_map_vars_start,-u_vtable_map_vars_end -O2
> -fomit-frame-pointer    -Wa,--noexecstack -fexpensive-optimizations
> -frename-registers -ftree-vectorize   -finline-functions
> -finline-limit=3D64   -Wno-error=3Dmaybe-uninitialized
> -Wno-error=3Dunused-result     -fvisibility-inlines-hidden -c -o
> vtv_rts.lo ../../../../../../../../work-shared/gcc-9.3.0-r0/gcc-9.3.0/lib=
vtv/vtv_rts.cc
> | /bin/sh ./libtool --tag=3DCXX   --mode=3Dcompile  -DPACKAGE_NAME=3D\"GN=
U\
> Vtable\ Verification\ Runtime\ Library\" -DPACKAGE_TARNAME=3D\"libvtv\"
> -DPACKAGE_VERSION=3D\"1.0\" -DPACKAGE_STRING=3D\"GNU\ Vtable\
> Verification\ Runtime\ Library\ 1.0\" -DPACKAGE_BUGREPORT=3D\"\"
> -DPACKAGE_URL=3D\"http://www.gnu.org/software/libvtv/\" -DSTDC_HEADERS=3D=
1
> -DHAVE_SYS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1
> -DHAVE_STRING_H=3D1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1
> -DHAVE_INTTYPES_H=3D1 -DHAVE_STDINT_H=3D1 -DHAVE_UNISTD_H=3D1
> -D__EXTENSIONS__=3D1 -D_ALL_SOURCE=3D1 -D_GNU_SOURCE=3D1
> -D_POSIX_PTHREAD_SEMANTICS=3D1 -D_TANDEM_SOURCE=3D1 -DPACKAGE=3D\"libvtv\=
"
> -DVERSION=3D\"1.0\" -DHAVE_SECURE_GETENV=3D1 -DHAVE___FORTIFY_FAIL=3D1
> -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -DHAVE__OBSTACK_BEGIN=3D1 -I.
> -I../../../../../../../../work-shared/gcc-9.3.0-r0/gcc-9.3.0/libvtv
> -I../../../../../../../../work-shared/gcc-9.3.0-r0/gcc-9.3.0/libvtv/../in=
clude
>  -D_GNU_SOURCE -Wall -Wextra -fno-exceptions
> -I./../libstdc++-v3/include
> -I./../libstdc++-v3/include/aarch64-oe-linux
> -I../../../../../../../../work-shared/gcc-9.3.0-r0/gcc-9.3.0/libvtv/../li=
bstdc++-v3/libsupc++
> -Wl,-u_vtable_map_vars_start,-u_vtable_map_vars_end -O2
> -fomit-frame-pointer    -Wa,--noexecstack -fexpensive-optimizations
> -frename-registers -ftree-vectorize   -finline-functions
> -finline-limit=3D64   -Wno-error=3Dmaybe-uninitialized
> -Wno-error=3Dunused-result     -fvisibility-inlines-hidden -c -o
> vtv_utils.lo ../../../../../../../../work-shared/gcc-9.3.0-r0/gcc-9.3.0/l=
ibvtv/vtv_utils.cc
> | libtool: compile: unrecognized option `-DPACKAGE_NAME=3D"GNU Vtable
> Verification Runtime Library"'
> | libtool: compile: Try `libtool --help' for more information.
> | libtool: compile: unrecognized option `-DPACKAGE_NAME=3D"GNU Vtable
> Verification Runtime Library"'
> | libtool: compile: Try `libtool --help' for more information.
> | Makefile:607: recipe for target 'vtv_malloc.lo' failed
> | libtool: compile: unrecognized option `-DPACKAGE_NAME=3D"GNU Vtable
> Verification Runtime Library"'
> | make[2]: *** [vtv_malloc.lo] Error 1
> | libtool: compile: Try `libtool --help' for more information.
> | make[2]: *** Waiting for unfinished jobs....
> | Makefile:607: recipe for target 'vtv_rts.lo' failed
> | make[2]: *** [vtv_rts.lo] Error 1
> | Makefile:607: recipe for target 'vtv_utils.lo' failed
> | make[2]: *** [vtv_utils.lo] Error 1
>
> On Wed, Sep 27, 2023 at 9:16=E2=80=AFPM Alex Roberts via
> lists.yoctoproject.org <arob109=3Dgmail.com@lists.yoctoproject.org>
> wrote:
> >
> > >If libvtv is a separate library (I've not looked)
> >
> > It is a separate library whose source is inside the gcc source folder. =
Much of the documentation for enabling vtable verify is for compiling gcc f=
rom source outside of Yocto and just references using the flag with ./confi=
gure when building gcc from source.
> >
> > >  I suspect there are tweaks needed to the gcc-runtime recipe to build=
 it
> >
> > I put =E2=80=9C=E2=80=94enable-vtable-verify=E2=80=9D in the gcc-common=
 include so it should have been picked up by gcc.bb, gcc-cross and gcc-runt=
ime. I also tried adding to just gcc cross and gcc runtime recipes. I also =
looked at how the sanitizer libraries were being built with gcc-sanitizers,=
 but was unable to get a working solution. I gave up to focus on other prio=
rities, but figured I=E2=80=99d ask the list in case someone had come acros=
s this before.
> >
> >
> > On Wednesday, September 27, 2023, Richard Purdie <richard.purdie@linuxf=
oundation.org> wrote:
> >>
> >> On Wed, 2023-09-27 at 09:40 -0500, Alex Roberts wrote:
> >> > Hello All,
> >> >
> >> > I'm having trouble getting gcc-cross-9.3.0 recipe to build libvtv. I
> >> > have added =E2=80=9C=E2=80=94enable-vtable-verify=E2=80=9D to EXTRA_=
OECONF via a .bbappend.
> >> > The vtable stubs are added to libstdc++ but libvtv itself is not
> >> > compiled. This causes recipes compiling with -fstandard-verify to fa=
il
> >> > because libvtv doesn=E2=80=99t exist and cannot be linked in.
> >> >
> >> > Looking at the autoconf files and the resulting Makefile, libvtv
> >> > should be getting configured and compiled with the recipe, but I can
> >> > not determine why it is not.
> >> >
> >> > Does anyone have experience enabling vtable-verify to a cross-compil=
er
> >> > toolchain?
> >>
> >> If libvtv is a separate library (I've not looked), I suspect there are
> >> tweaks needed to the gcc-runtime recipe to build it?
> >>
> >> Cheers,
> >>
> >> Richard
> >
> >
> >
> >
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61161): https://lists.yoctoproject.org/g/yocto/messag=
e/61161
> Mute This Topic: https://lists.yoctoproject.org/mt/101618304/7886438
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [arob109@gmail.=
com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

