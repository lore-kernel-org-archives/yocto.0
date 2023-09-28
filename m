Return-Path: <arob109@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8A5CE7F153
	for <webhook@archiver.kernel.org>; Thu, 28 Sep 2023 19:55:45 +0000 (UTC)
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
 by mx.groups.io with SMTP id smtpd.web11.2377.1695930944357168299
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Sep 2023 12:55:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=eKZ+ilU3;
 spf=pass (domain: gmail.com, ip: 209.85.208.177, mailfrom: arob109@gmail.com)
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2c17de836fbso76360541fa.1
        for <yocto@lists.yoctoproject.org>; Thu, 28 Sep 2023 12:55:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695930942; x=1696535742; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6Y4a+Z8lKSEa5zYtGrt1o5NWK2g7SThubwffqDNWa/k=;
        b=eKZ+ilU3IPt64LJDup4ALMbofJG16pOadjbtFWYs3O/FsdCDR4WCPNLECnBHLzPS+K
         f40jMdeoQJCAa7Wsy/yoKMKHmfNZmrW5/6TEkMdc9Lo6yBsAR3A/DCBkp2+eKqFpCzsp
         oV7r3b26L2QFNwlcV89EHFqLJrku5miXcWcTX2O2ZvsSePYOtPRebJQ1FCV2Y0Mm0Jgw
         KcLoD7r7XzSlVnOC54top4v7MxHUvQ5/F/aY9QtcIi4XRi84EhM/0XHFfOrcO3PPiAZd
         ymbXp8JNbB8THQ8B9lLBXYetAhqtwmEnYxkhbLKRnLa+ZSErLG8N5pkFyKkg0ytrsIXZ
         oEeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695930942; x=1696535742;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6Y4a+Z8lKSEa5zYtGrt1o5NWK2g7SThubwffqDNWa/k=;
        b=aeX/xVvC6jS+l65PAjuHsb15F+/Icsgskt0CRQuNs06VsC5xw5QA2fsLkk7SVk5o4m
         FF4K3OX9g+C+7N1XaqwjaN0DBSn0C6qHc2wLBkpY334Rg2XvNdH+kdsABubR7p7pL4xV
         XO56NS6jPzoyaJvRuqgHW8s0QsiI9GyQupM6qtRlUDhOgNlMr3OFShMh+MiYTzsT/wdx
         YWQcWuVnLFqBOxRHUpru4Fi8c1LNsL3pKGZ8vjH9Pk9E9JI7GH5ogofx/JPxOKhgqDpG
         RNIW8P2qvF1Iv7F6V/Qo3AGbHub2R6XJyfcgAW6S1ItfS39hhSHqEO4D4idh9EWphC19
         qO8w==
X-Gm-Message-State: AOJu0YyoaW1ZNwZ5POB0RPZDs/PkPA06+oYTMt4aK5JZAhrzuVJTf6bt
	gVjhwwCQWCNaVv14OFQkHbFSfCnGJDxjAasUrwk=
X-Google-Smtp-Source: AGHT+IEf/kFmiTSkiFWEfOm8sWUxCZzfaF10ey+br5A6jzckyeKitK4suwhCB1kJP09nCZnqy6Ee9GTBJfQqqcNfVrM=
X-Received: by 2002:a2e:7d0a:0:b0:2b6:a827:164f with SMTP id
 y10-20020a2e7d0a000000b002b6a827164fmr2175281ljc.10.1695930942188; Thu, 28
 Sep 2023 12:55:42 -0700 (PDT)
MIME-Version: 1.0
References: <CAPkENw-000rkwb1gBmgVTa1RarUe0yUOwXM_NiXQd7RJ3C53sg@mail.gmail.com>
 <257d2db0bbb4f2b10814f068bfa32e3941ae95b2.camel@linuxfoundation.org> <1788EE639287C667.1970@lists.yoctoproject.org>
In-Reply-To: <1788EE639287C667.1970@lists.yoctoproject.org>
From: Alex Roberts <arob109@gmail.com>
Date: Thu, 28 Sep 2023 14:55:30 -0500
Message-ID: <CAPkENw-3YqscT_CDySky3K2Vm=j03+M38asSqaf-Mp3HYmaUuA@mail.gmail.com>
Subject: Re: [yocto] Trouble enabling vtable-verify for gcc-cross
To: arob109@gmail.com
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 28 Sep 2023 19:55:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61161

Today I revisited cloning gcc-sanitizers.inc and gcc-sanitizers_9.3.bb
in an attempt to make a recipe that configures and builds libvtv. This
somewhat works, but I get errors with libtool


| /bin/sh ./libtool --tag=3DCXX   --mode=3Dcompile  -DPACKAGE_NAME=3D\"GNU\
Vtable\ Verification\ Runtime\ Library\" -DPACKAGE_TARNAME=3D\"libvtv\"
-DPACKAGE_VERSION=3D\"1.0\" -DPACKAGE_STRING=3D\"GNU\ Vtable\
Verification\ Runtime\ Library\ 1.0\" -DPACKAGE_BUGREPORT=3D\"\"
-DPACKAGE_URL=3D\"http://www.gnu.org/software/libvtv/\" -DSTDC_HEADERS=3D1
-DHAVE_SYS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1
-DHAVE_STRING_H=3D1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1
-DHAVE_INTTYPES_H=3D1 -DHAVE_STDINT_H=3D1 -DHAVE_UNISTD_H=3D1
-D__EXTENSIONS__=3D1 -D_ALL_SOURCE=3D1 -D_GNU_SOURCE=3D1
-D_POSIX_PTHREAD_SEMANTICS=3D1 -D_TANDEM_SOURCE=3D1 -DPACKAGE=3D\"libvtv\"
-DVERSION=3D\"1.0\" -DHAVE_SECURE_GETENV=3D1 -DHAVE___FORTIFY_FAIL=3D1
-DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -DHAVE__OBSTACK_BEGIN=3D1 -I.
-I../../../../../../../../work-shared/gcc-9.3.0-r0/gcc-9.3.0/libvtv
-I../../../../../../../../work-shared/gcc-9.3.0-r0/gcc-9.3.0/libvtv/../incl=
ude
 -D_GNU_SOURCE -Wall -Wextra -fno-exceptions
-I./../libstdc++-v3/include
-I./../libstdc++-v3/include/aarch64-oe-linux
-I../../../../../../../../work-shared/gcc-9.3.0-r0/gcc-9.3.0/libvtv/../libs=
tdc++-v3/libsupc++
-Wl,-u_vtable_map_vars_start,-u_vtable_map_vars_end -O2
-fomit-frame-pointer    -Wa,--noexecstack -fexpensive-optimizations
-frename-registers -ftree-vectorize   -finline-functions
-finline-limit=3D64   -Wno-error=3Dmaybe-uninitialized
-Wno-error=3Dunused-result     -fvisibility-inlines-hidden -c -o
vtv_malloc.lo ../../../../../../../../work-shared/gcc-9.3.0-r0/gcc-9.3.0/li=
bvtv/vtv_malloc.cc
| /bin/sh ./libtool --tag=3DCXX   --mode=3Dcompile  -DPACKAGE_NAME=3D\"GNU\
Vtable\ Verification\ Runtime\ Library\" -DPACKAGE_TARNAME=3D\"libvtv\"
-DPACKAGE_VERSION=3D\"1.0\" -DPACKAGE_STRING=3D\"GNU\ Vtable\
Verification\ Runtime\ Library\ 1.0\" -DPACKAGE_BUGREPORT=3D\"\"
-DPACKAGE_URL=3D\"http://www.gnu.org/software/libvtv/\" -DSTDC_HEADERS=3D1
-DHAVE_SYS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1
-DHAVE_STRING_H=3D1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1
-DHAVE_INTTYPES_H=3D1 -DHAVE_STDINT_H=3D1 -DHAVE_UNISTD_H=3D1
-D__EXTENSIONS__=3D1 -D_ALL_SOURCE=3D1 -D_GNU_SOURCE=3D1
-D_POSIX_PTHREAD_SEMANTICS=3D1 -D_TANDEM_SOURCE=3D1 -DPACKAGE=3D\"libvtv\"
-DVERSION=3D\"1.0\" -DHAVE_SECURE_GETENV=3D1 -DHAVE___FORTIFY_FAIL=3D1
-DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -DHAVE__OBSTACK_BEGIN=3D1 -I.
-I../../../../../../../../work-shared/gcc-9.3.0-r0/gcc-9.3.0/libvtv
-I../../../../../../../../work-shared/gcc-9.3.0-r0/gcc-9.3.0/libvtv/../incl=
ude
 -D_GNU_SOURCE -Wall -Wextra -fno-exceptions
-I./../libstdc++-v3/include
-I./../libstdc++-v3/include/aarch64-oe-linux
-I../../../../../../../../work-shared/gcc-9.3.0-r0/gcc-9.3.0/libvtv/../libs=
tdc++-v3/libsupc++
-Wl,-u_vtable_map_vars_start,-u_vtable_map_vars_end -O2
-fomit-frame-pointer    -Wa,--noexecstack -fexpensive-optimizations
-frename-registers -ftree-vectorize   -finline-functions
-finline-limit=3D64   -Wno-error=3Dmaybe-uninitialized
-Wno-error=3Dunused-result     -fvisibility-inlines-hidden -c -o
vtv_rts.lo ../../../../../../../../work-shared/gcc-9.3.0-r0/gcc-9.3.0/libvt=
v/vtv_rts.cc
| /bin/sh ./libtool --tag=3DCXX   --mode=3Dcompile  -DPACKAGE_NAME=3D\"GNU\
Vtable\ Verification\ Runtime\ Library\" -DPACKAGE_TARNAME=3D\"libvtv\"
-DPACKAGE_VERSION=3D\"1.0\" -DPACKAGE_STRING=3D\"GNU\ Vtable\
Verification\ Runtime\ Library\ 1.0\" -DPACKAGE_BUGREPORT=3D\"\"
-DPACKAGE_URL=3D\"http://www.gnu.org/software/libvtv/\" -DSTDC_HEADERS=3D1
-DHAVE_SYS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1
-DHAVE_STRING_H=3D1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1
-DHAVE_INTTYPES_H=3D1 -DHAVE_STDINT_H=3D1 -DHAVE_UNISTD_H=3D1
-D__EXTENSIONS__=3D1 -D_ALL_SOURCE=3D1 -D_GNU_SOURCE=3D1
-D_POSIX_PTHREAD_SEMANTICS=3D1 -D_TANDEM_SOURCE=3D1 -DPACKAGE=3D\"libvtv\"
-DVERSION=3D\"1.0\" -DHAVE_SECURE_GETENV=3D1 -DHAVE___FORTIFY_FAIL=3D1
-DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -DHAVE__OBSTACK_BEGIN=3D1 -I.
-I../../../../../../../../work-shared/gcc-9.3.0-r0/gcc-9.3.0/libvtv
-I../../../../../../../../work-shared/gcc-9.3.0-r0/gcc-9.3.0/libvtv/../incl=
ude
 -D_GNU_SOURCE -Wall -Wextra -fno-exceptions
-I./../libstdc++-v3/include
-I./../libstdc++-v3/include/aarch64-oe-linux
-I../../../../../../../../work-shared/gcc-9.3.0-r0/gcc-9.3.0/libvtv/../libs=
tdc++-v3/libsupc++
-Wl,-u_vtable_map_vars_start,-u_vtable_map_vars_end -O2
-fomit-frame-pointer    -Wa,--noexecstack -fexpensive-optimizations
-frename-registers -ftree-vectorize   -finline-functions
-finline-limit=3D64   -Wno-error=3Dmaybe-uninitialized
-Wno-error=3Dunused-result     -fvisibility-inlines-hidden -c -o
vtv_utils.lo ../../../../../../../../work-shared/gcc-9.3.0-r0/gcc-9.3.0/lib=
vtv/vtv_utils.cc
| libtool: compile: unrecognized option `-DPACKAGE_NAME=3D"GNU Vtable
Verification Runtime Library"'
| libtool: compile: Try `libtool --help' for more information.
| libtool: compile: unrecognized option `-DPACKAGE_NAME=3D"GNU Vtable
Verification Runtime Library"'
| libtool: compile: Try `libtool --help' for more information.
| Makefile:607: recipe for target 'vtv_malloc.lo' failed
| libtool: compile: unrecognized option `-DPACKAGE_NAME=3D"GNU Vtable
Verification Runtime Library"'
| make[2]: *** [vtv_malloc.lo] Error 1
| libtool: compile: Try `libtool --help' for more information.
| make[2]: *** Waiting for unfinished jobs....
| Makefile:607: recipe for target 'vtv_rts.lo' failed
| make[2]: *** [vtv_rts.lo] Error 1
| Makefile:607: recipe for target 'vtv_utils.lo' failed
| make[2]: *** [vtv_utils.lo] Error 1

On Wed, Sep 27, 2023 at 9:16=E2=80=AFPM Alex Roberts via
lists.yoctoproject.org <arob109=3Dgmail.com@lists.yoctoproject.org>
wrote:
>
> >If libvtv is a separate library (I've not looked)
>
> It is a separate library whose source is inside the gcc source folder. Mu=
ch of the documentation for enabling vtable verify is for compiling gcc fro=
m source outside of Yocto and just references using the flag with ./configu=
re when building gcc from source.
>
> >  I suspect there are tweaks needed to the gcc-runtime recipe to build i=
t
>
> I put =E2=80=9C=E2=80=94enable-vtable-verify=E2=80=9D in the gcc-common i=
nclude so it should have been picked up by gcc.bb, gcc-cross and gcc-runtim=
e. I also tried adding to just gcc cross and gcc runtime recipes. I also lo=
oked at how the sanitizer libraries were being built with gcc-sanitizers, b=
ut was unable to get a working solution. I gave up to focus on other priori=
ties, but figured I=E2=80=99d ask the list in case someone had come across =
this before.
>
>
> On Wednesday, September 27, 2023, Richard Purdie <richard.purdie@linuxfou=
ndation.org> wrote:
>>
>> On Wed, 2023-09-27 at 09:40 -0500, Alex Roberts wrote:
>> > Hello All,
>> >
>> > I'm having trouble getting gcc-cross-9.3.0 recipe to build libvtv. I
>> > have added =E2=80=9C=E2=80=94enable-vtable-verify=E2=80=9D to EXTRA_OE=
CONF via a .bbappend.
>> > The vtable stubs are added to libstdc++ but libvtv itself is not
>> > compiled. This causes recipes compiling with -fstandard-verify to fail
>> > because libvtv doesn=E2=80=99t exist and cannot be linked in.
>> >
>> > Looking at the autoconf files and the resulting Makefile, libvtv
>> > should be getting configured and compiled with the recipe, but I can
>> > not determine why it is not.
>> >
>> > Does anyone have experience enabling vtable-verify to a cross-compiler
>> > toolchain?
>>
>> If libvtv is a separate library (I've not looked), I suspect there are
>> tweaks needed to the gcc-runtime recipe to build it?
>>
>> Cheers,
>>
>> Richard
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61147): https://lists.yoctoproject.org/g/yocto/messag=
e/61147
> Mute This Topic: https://lists.yoctoproject.org/mt/101618304/7886438
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [arob109@gmail.=
com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

