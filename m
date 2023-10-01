Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 642BDE78495
	for <webhook@archiver.kernel.org>; Sun,  1 Oct 2023 21:23:28 +0000 (UTC)
Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com [209.85.160.47])
 by mx.groups.io with SMTP id smtpd.web11.68492.1696195407888697906
 for <yocto@lists.yoctoproject.org>;
 Sun, 01 Oct 2023 14:23:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=WXB0rlxz;
 spf=pass (domain: gmail.com, ip: 209.85.160.47, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-1dd4eed487dso5291962fac.3
        for <yocto@lists.yoctoproject.org>; Sun, 01 Oct 2023 14:23:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696195407; x=1696800207; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qt7Zxa5x5Hjsc9X23l1nfX6hIUzEsKjrGMlkD6usBnY=;
        b=WXB0rlxzSKWsKrkF6g2LTlHDyUMCC6/or+Ra19fKp5JDHH6MIVL3AU75H0RCboKP9f
         BbWKP+/uHoVjqE88RGbwLPsmyXqO0kgkPTnULrtXIkx6/HbbEIZWfCOT8STtXSu0HJp/
         tykc0cqvXKBO2Bc8ccLHL57Q3ytG86bJ8EaPKbL8zZ+8yCMxM+0OnQGmslno22os2dvO
         PBm0Jm6aIAKiGyzKNBZ0bLN168HjU3JFe7ELcPjClEmx+LXVd+Z98utiVnpdQD3f7SkR
         lbG1cUfnOOnMhHkEjOeg92aK4lD6MzAdwguF9LtLltk1o6hPQOjjAjdW86VTrc5abYZw
         Hryg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696195407; x=1696800207;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qt7Zxa5x5Hjsc9X23l1nfX6hIUzEsKjrGMlkD6usBnY=;
        b=PTGDevL5e5iCU2SK75hbXaofh1Vx5bDdbTTGRkxBCYXOrix3BMwZg7QNJITbsClbET
         bgHLRP0CKwEV1fdYLUwRc43TCaTxIfZbaV37a8Py4o2//OkMoiW/u+RwNHo49Cn8fi9Z
         Tgaj5YvzDfIEDQ65fCPjRwXL5/EApAqbn5RAfcDCI1oWxXrZzUQ/Gp0bPlQD18Q+OCHB
         lKs6meOuaIvdcHpiNr30+OSGUqdFg0dC0IwxaocnSd2F0naGezP4YaPa0dAdHYkB2+Li
         NFi0rOscAoiZ78zOY8C+O3Hy2EV/p0Yy6pMyZt52OlJUgkBlhR6VjecJqmlSCraqMpS9
         9fsQ==
X-Gm-Message-State: AOJu0YwyibcQb3QFK9gC6gKjf7cpMHd4NaVx32CCjEFMYXcorEXnO782
	whMyGZSQ3gDjXRm0LxS03tl6mkG8+KMTp33wbGs=
X-Google-Smtp-Source: AGHT+IF1JDkDg9OgMYvxDrr9BrsJ5BnCbahkDKZZgQqLUeUt/SaXwNPsMEFg61VHmG6sAOKY0YZFhp7HpjcEdWdMh7Y=
X-Received: by 2002:a05:6870:a109:b0:1ba:ddfb:a5b3 with SMTP id
 m9-20020a056870a10900b001baddfba5b3mr11696227oae.44.1696195407064; Sun, 01
 Oct 2023 14:23:27 -0700 (PDT)
MIME-Version: 1.0
References: <CAPkENw-000rkwb1gBmgVTa1RarUe0yUOwXM_NiXQd7RJ3C53sg@mail.gmail.com>
 <257d2db0bbb4f2b10814f068bfa32e3941ae95b2.camel@linuxfoundation.org>
 <1788EE639287C667.1970@lists.yoctoproject.org> <1789283578AF2335.9230@lists.yoctoproject.org>
 <CAPkENw_7a-tGNs4BYnOrSayMNydvXE_4osdyorbviqYny4oNTg@mail.gmail.com>
In-Reply-To: <CAPkENw_7a-tGNs4BYnOrSayMNydvXE_4osdyorbviqYny4oNTg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 1 Oct 2023 14:23:00 -0700
Message-ID: <CAMKF1sqqLk=RA6iSUfqYkDc2CUT6_xhbVcMa+-=GL9TynMbRxQ@mail.gmail.com>
Subject: Re: [yocto] Trouble enabling vtable-verify for gcc-cross
To: Alex Roberts <arob109@gmail.com>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 01 Oct 2023 21:23:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61184

On Sun, Oct 1, 2023 at 2:05=E2=80=AFPM Alex Roberts <arob109@gmail.com> wro=
te:
>
> I identified the issue. libvtv's Makefile.in and Makefile.am are
> expecting CC_FOR_TARGET to be set
>
> CXXVTV=3D$(CC_FOR_TARGET)
> CXXLD=3D$(CC_FOR_TARGET)
>
> gcc-cross_9.3.inc exports CC_FOR_TARGET, but gcc-runtime_9.3.inc does not=
.
> When libvtv is compiled during gcc-runtime recipe, CXXVTV and CXXLD
> are empty and libtool fails with the error that the -D definitions are
> unrecognized options.
>
> Setting CXXVTV=3D$(CXX) and CXXLD=3D$(CXX) allowed me to build libvtv and
> cross-compile programs with the -fvtable-verify compiler option.
>

meta/recipes-devtools/gcc/gcc-configure-common.inc sets CC_FOR_TARGET
selectively for cross-compiled gcc recipes
so it should be set in do_configure step of gcc-runtime but you can
see that gcc-runtime overrides do_configure function
in meta/recipes-devtools/gcc/gcc-runtime.inc, perhaps we should
replicate the exports in gcc-runtme do_configure as well


> On Thu, Sep 28, 2023 at 2:55=E2=80=AFPM Alex Roberts via
> lists.yoctoproject.org <arob109=3Dgmail.com@lists.yoctoproject.org>
> wrote:
> >
> > Today I revisited cloning gcc-sanitizers.inc and gcc-sanitizers_9.3.bb
> > in an attempt to make a recipe that configures and builds libvtv. This
> > somewhat works, but I get errors with libtool
> >
> >
> > | /bin/sh ./libtool --tag=3DCXX   --mode=3Dcompile  -DPACKAGE_NAME=3D\"=
GNU\
> > Vtable\ Verification\ Runtime\ Library\" -DPACKAGE_TARNAME=3D\"libvtv\"
> > -DPACKAGE_VERSION=3D\"1.0\" -DPACKAGE_STRING=3D\"GNU\ Vtable\
> > Verification\ Runtime\ Library\ 1.0\" -DPACKAGE_BUGREPORT=3D\"\"
> > -DPACKAGE_URL=3D\"http://www.gnu.org/software/libvtv/\" -DSTDC_HEADERS=
=3D1
> > -DHAVE_SYS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1
> > -DHAVE_STRING_H=3D1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1
> > -DHAVE_INTTYPES_H=3D1 -DHAVE_STDINT_H=3D1 -DHAVE_UNISTD_H=3D1
> > -D__EXTENSIONS__=3D1 -D_ALL_SOURCE=3D1 -D_GNU_SOURCE=3D1
> > -D_POSIX_PTHREAD_SEMANTICS=3D1 -D_TANDEM_SOURCE=3D1 -DPACKAGE=3D\"libvt=
v\"
> > -DVERSION=3D\"1.0\" -DHAVE_SECURE_GETENV=3D1 -DHAVE___FORTIFY_FAIL=3D1
> > -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -DHAVE__OBSTACK_BEGIN=3D1 -=
I.
> > -I../../../../../../../../work-shared/gcc-9.3.0-r0/gcc-9.3.0/libvtv
> > -I../../../../../../../../work-shared/gcc-9.3.0-r0/gcc-9.3.0/libvtv/../=
include
> >  -D_GNU_SOURCE -Wall -Wextra -fno-exceptions
> > -I./../libstdc++-v3/include
> > -I./../libstdc++-v3/include/aarch64-oe-linux
> > -I../../../../../../../../work-shared/gcc-9.3.0-r0/gcc-9.3.0/libvtv/../=
libstdc++-v3/libsupc++
> > -Wl,-u_vtable_map_vars_start,-u_vtable_map_vars_end -O2
> > -fomit-frame-pointer    -Wa,--noexecstack -fexpensive-optimizations
> > -frename-registers -ftree-vectorize   -finline-functions
> > -finline-limit=3D64   -Wno-error=3Dmaybe-uninitialized
> > -Wno-error=3Dunused-result     -fvisibility-inlines-hidden -c -o
> > vtv_malloc.lo ../../../../../../../../work-shared/gcc-9.3.0-r0/gcc-9.3.=
0/libvtv/vtv_malloc.cc
> > | /bin/sh ./libtool --tag=3DCXX   --mode=3Dcompile  -DPACKAGE_NAME=3D\"=
GNU\
> > Vtable\ Verification\ Runtime\ Library\" -DPACKAGE_TARNAME=3D\"libvtv\"
> > -DPACKAGE_VERSION=3D\"1.0\" -DPACKAGE_STRING=3D\"GNU\ Vtable\
> > Verification\ Runtime\ Library\ 1.0\" -DPACKAGE_BUGREPORT=3D\"\"
> > -DPACKAGE_URL=3D\"http://www.gnu.org/software/libvtv/\" -DSTDC_HEADERS=
=3D1
> > -DHAVE_SYS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1
> > -DHAVE_STRING_H=3D1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1
> > -DHAVE_INTTYPES_H=3D1 -DHAVE_STDINT_H=3D1 -DHAVE_UNISTD_H=3D1
> > -D__EXTENSIONS__=3D1 -D_ALL_SOURCE=3D1 -D_GNU_SOURCE=3D1
> > -D_POSIX_PTHREAD_SEMANTICS=3D1 -D_TANDEM_SOURCE=3D1 -DPACKAGE=3D\"libvt=
v\"
> > -DVERSION=3D\"1.0\" -DHAVE_SECURE_GETENV=3D1 -DHAVE___FORTIFY_FAIL=3D1
> > -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -DHAVE__OBSTACK_BEGIN=3D1 -=
I.
> > -I../../../../../../../../work-shared/gcc-9.3.0-r0/gcc-9.3.0/libvtv
> > -I../../../../../../../../work-shared/gcc-9.3.0-r0/gcc-9.3.0/libvtv/../=
include
> >  -D_GNU_SOURCE -Wall -Wextra -fno-exceptions
> > -I./../libstdc++-v3/include
> > -I./../libstdc++-v3/include/aarch64-oe-linux
> > -I../../../../../../../../work-shared/gcc-9.3.0-r0/gcc-9.3.0/libvtv/../=
libstdc++-v3/libsupc++
> > -Wl,-u_vtable_map_vars_start,-u_vtable_map_vars_end -O2
> > -fomit-frame-pointer    -Wa,--noexecstack -fexpensive-optimizations
> > -frename-registers -ftree-vectorize   -finline-functions
> > -finline-limit=3D64   -Wno-error=3Dmaybe-uninitialized
> > -Wno-error=3Dunused-result     -fvisibility-inlines-hidden -c -o
> > vtv_rts.lo ../../../../../../../../work-shared/gcc-9.3.0-r0/gcc-9.3.0/l=
ibvtv/vtv_rts.cc
> > | /bin/sh ./libtool --tag=3DCXX   --mode=3Dcompile  -DPACKAGE_NAME=3D\"=
GNU\
> > Vtable\ Verification\ Runtime\ Library\" -DPACKAGE_TARNAME=3D\"libvtv\"
> > -DPACKAGE_VERSION=3D\"1.0\" -DPACKAGE_STRING=3D\"GNU\ Vtable\
> > Verification\ Runtime\ Library\ 1.0\" -DPACKAGE_BUGREPORT=3D\"\"
> > -DPACKAGE_URL=3D\"http://www.gnu.org/software/libvtv/\" -DSTDC_HEADERS=
=3D1
> > -DHAVE_SYS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1
> > -DHAVE_STRING_H=3D1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1
> > -DHAVE_INTTYPES_H=3D1 -DHAVE_STDINT_H=3D1 -DHAVE_UNISTD_H=3D1
> > -D__EXTENSIONS__=3D1 -D_ALL_SOURCE=3D1 -D_GNU_SOURCE=3D1
> > -D_POSIX_PTHREAD_SEMANTICS=3D1 -D_TANDEM_SOURCE=3D1 -DPACKAGE=3D\"libvt=
v\"
> > -DVERSION=3D\"1.0\" -DHAVE_SECURE_GETENV=3D1 -DHAVE___FORTIFY_FAIL=3D1
> > -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -DHAVE__OBSTACK_BEGIN=3D1 -=
I.
> > -I../../../../../../../../work-shared/gcc-9.3.0-r0/gcc-9.3.0/libvtv
> > -I../../../../../../../../work-shared/gcc-9.3.0-r0/gcc-9.3.0/libvtv/../=
include
> >  -D_GNU_SOURCE -Wall -Wextra -fno-exceptions
> > -I./../libstdc++-v3/include
> > -I./../libstdc++-v3/include/aarch64-oe-linux
> > -I../../../../../../../../work-shared/gcc-9.3.0-r0/gcc-9.3.0/libvtv/../=
libstdc++-v3/libsupc++
> > -Wl,-u_vtable_map_vars_start,-u_vtable_map_vars_end -O2
> > -fomit-frame-pointer    -Wa,--noexecstack -fexpensive-optimizations
> > -frename-registers -ftree-vectorize   -finline-functions
> > -finline-limit=3D64   -Wno-error=3Dmaybe-uninitialized
> > -Wno-error=3Dunused-result     -fvisibility-inlines-hidden -c -o
> > vtv_utils.lo ../../../../../../../../work-shared/gcc-9.3.0-r0/gcc-9.3.0=
/libvtv/vtv_utils.cc
> > | libtool: compile: unrecognized option `-DPACKAGE_NAME=3D"GNU Vtable
> > Verification Runtime Library"'
> > | libtool: compile: Try `libtool --help' for more information.
> > | libtool: compile: unrecognized option `-DPACKAGE_NAME=3D"GNU Vtable
> > Verification Runtime Library"'
> > | libtool: compile: Try `libtool --help' for more information.
> > | Makefile:607: recipe for target 'vtv_malloc.lo' failed
> > | libtool: compile: unrecognized option `-DPACKAGE_NAME=3D"GNU Vtable
> > Verification Runtime Library"'
> > | make[2]: *** [vtv_malloc.lo] Error 1
> > | libtool: compile: Try `libtool --help' for more information.
> > | make[2]: *** Waiting for unfinished jobs....
> > | Makefile:607: recipe for target 'vtv_rts.lo' failed
> > | make[2]: *** [vtv_rts.lo] Error 1
> > | Makefile:607: recipe for target 'vtv_utils.lo' failed
> > | make[2]: *** [vtv_utils.lo] Error 1
> >
> > On Wed, Sep 27, 2023 at 9:16=E2=80=AFPM Alex Roberts via
> > lists.yoctoproject.org <arob109=3Dgmail.com@lists.yoctoproject.org>
> > wrote:
> > >
> > > >If libvtv is a separate library (I've not looked)
> > >
> > > It is a separate library whose source is inside the gcc source folder=
. Much of the documentation for enabling vtable verify is for compiling gcc=
 from source outside of Yocto and just references using the flag with ./con=
figure when building gcc from source.
> > >
> > > >  I suspect there are tweaks needed to the gcc-runtime recipe to bui=
ld it
> > >
> > > I put =E2=80=9C=E2=80=94enable-vtable-verify=E2=80=9D in the gcc-comm=
on include so it should have been picked up by gcc.bb, gcc-cross and gcc-ru=
ntime. I also tried adding to just gcc cross and gcc runtime recipes. I als=
o looked at how the sanitizer libraries were being built with gcc-sanitizer=
s, but was unable to get a working solution. I gave up to focus on other pr=
iorities, but figured I=E2=80=99d ask the list in case someone had come acr=
oss this before.
> > >
> > >
> > > On Wednesday, September 27, 2023, Richard Purdie <richard.purdie@linu=
xfoundation.org> wrote:
> > >>
> > >> On Wed, 2023-09-27 at 09:40 -0500, Alex Roberts wrote:
> > >> > Hello All,
> > >> >
> > >> > I'm having trouble getting gcc-cross-9.3.0 recipe to build libvtv.=
 I
> > >> > have added =E2=80=9C=E2=80=94enable-vtable-verify=E2=80=9D to EXTR=
A_OECONF via a .bbappend.
> > >> > The vtable stubs are added to libstdc++ but libvtv itself is not
> > >> > compiled. This causes recipes compiling with -fstandard-verify to =
fail
> > >> > because libvtv doesn=E2=80=99t exist and cannot be linked in.
> > >> >
> > >> > Looking at the autoconf files and the resulting Makefile, libvtv
> > >> > should be getting configured and compiled with the recipe, but I c=
an
> > >> > not determine why it is not.
> > >> >
> > >> > Does anyone have experience enabling vtable-verify to a cross-comp=
iler
> > >> > toolchain?
> > >>
> > >> If libvtv is a separate library (I've not looked), I suspect there a=
re
> > >> tweaks needed to the gcc-runtime recipe to build it?
> > >>
> > >> Cheers,
> > >>
> > >> Richard
> > >
> > >
> > >
> > >
> >
> >
> >
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#61183): https://lists.yoctoproject.org/g/yocto/messag=
e/61183
> Mute This Topic: https://lists.yoctoproject.org/mt/101618304/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

