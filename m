Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97CBDC3DA49
	for <webhook@archiver.kernel.org>; Tue, 30 Jul 2024 15:56:21 +0000 (UTC)
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
 by mx.groups.io with SMTP id smtpd.web11.21087.1722354976421331082
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Jul 2024 08:56:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=WwhRvkb5;
 spf=pass (domain: gmail.com, ip: 209.85.210.48, mailfrom: raj.khem@gmail.com)
Received: by mail-ot1-f48.google.com with SMTP id 46e09a7af769-7093472356dso2709518a34.0
        for <yocto@lists.yoctoproject.org>; Tue, 30 Jul 2024 08:56:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722354975; x=1722959775; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S7EdSrG9wAZRZ1hxc/4CkI/oOslUI5dFABHDljoySQE=;
        b=WwhRvkb5bj1hI2jSI5mBokDik2O/lNYocdWLsacQ1P7cA0HGfrXLL9JvGc6TlYQSpo
         P1t83yvsYnXoeiiCsedexnHQC0oN0fgrvJM1M0GjpTeJS8xXUwrkmmTCg0MkccHm9mU0
         TaRGsUl442kQ7ESYQ1FA1Ae9voau06wTPztmUUjo1cPJZlgLWIYnNdkkp2CBWSOBoU7P
         mBf8EqXU8oheGUieBZr3JrYImKXXM2wCGJwE3OalnFTKz9SuLe4M/Emu6OTJp97/z1FV
         Nzb7FhChdtqkMy/pSEW/xIXbkdxEm5S51T5Yc4Gs1bM9O4aBiN+ahUOsbF1FNDBcuVvy
         clnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722354975; x=1722959775;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S7EdSrG9wAZRZ1hxc/4CkI/oOslUI5dFABHDljoySQE=;
        b=bnZpKdS3JEC7XV9oS+EdUA2K5QPJd/vEbSGeJ03vXsNrzcJAKn0CLyMes/G6HPBnuB
         sQ2zkl2cZ1kUUSz/Cb9pQQis6n6VIOnNXK32LMlkqZJROxjzIMACJe81YE6p5bwTqN/h
         mFa67Wt9Up5yna+Ii9Cyl0HqglEbyc77EY6WT1BViCxHV3rMj9ynEWOTgC+pdFRho9Kb
         aJmlywJQdtClNyA6T+r5C1HVW9iCdGrU066euL3/vToIa9NzI0xotPRPQ71xNtfGZYv5
         qJqcjGICKWikxRDKfDKIRV5mQ57h8H+I4CvZcMlxJINlBloh/FZxJ4qfjqvcb5xsw2c8
         3RnA==
X-Gm-Message-State: AOJu0YzGhG8kYa1imAdqSOivOTXCCWU18WBFNCnW1EqE/XgHXRy4LgRM
	CNjth8WU5bTniLGo0MlV8j1yeL6IITCGSS6GypEhlMzj3ZExmyC+qADEN6aVMQg1BA5E5qfP/AQ
	vUmjqKq6aAsVzVpzExPdRKV14Y9YmCCzpneE=
X-Google-Smtp-Source: AGHT+IE4zTJ/TW7sTDTdBKplP4iG+sBEZ6quuuMM9hvN8kGjGcnNAbi3vRZ47Zla6JKDxlaq65PsnBFhpYQuxmRCR+k=
X-Received: by 2002:a05:6870:e0c6:b0:261:acf:e95b with SMTP id
 586e51a60fabf-267d4f1dfc0mr13549574fac.36.1722354975039; Tue, 30 Jul 2024
 08:56:15 -0700 (PDT)
MIME-Version: 1.0
References: <CAFZh4h_wh01sjAar-QqHsQ=KY4zLjmpmXuJc83OeYue7YyYW3A@mail.gmail.com>
 <CAFZh4h9iaCGdnDhxik9Qtq82f0MGU2eL+8nBa8qoCCJrH-xsGQ@mail.gmail.com>
 <d30f1655-0efa-440a-ac17-fe82342f4556@efficios.com> <CAFZh4h_pOCzpJ6ssdZ7ts3vSdJNfEtS+d+2Foi4qAY6oH0+VKw@mail.gmail.com>
 <33527830-3bf3-4bc3-a53d-55eaefb74902@efficios.com> <CAFZh4h8k+eGuVJLJ_1vA1_P7+3Hi7h+UgUSmoN51Paxyypw-fA@mail.gmail.com>
 <09087915-9e15-4485-b3d3-f48b245690ec@efficios.com> <CAFZh4h-_ixamDD4hMMETXGx8oA6Dr_3R5eFBeQPusFnKHEXKGg@mail.gmail.com>
 <d52b867f-c35c-497a-af92-dfbe4452794c@efficios.com> <CAFZh4h-Sp0HrUZZzfze0zwVcJznD1NeiJTpBt3hAfk=j1JieQw@mail.gmail.com>
 <85e9d8f5-572e-4d3b-87f7-5ad7d21dfb3f@efficios.com> <CAFZh4h9kEvxH0nJw22=dGVA9xTDmshG_z_wv46qo+0cqgsbPRg@mail.gmail.com>
 <CAFZh4h8D71LguVq=QA3KU8thBUjJP8RzKh1DxDiy7V+3VLLAkQ@mail.gmail.com>
In-Reply-To: <CAFZh4h8D71LguVq=QA3KU8thBUjJP8RzKh1DxDiy7V+3VLLAkQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 30 Jul 2024 08:55:48 -0700
Message-ID: <CAMKF1sqkHsNB78vw+b8tQNewYzT7FQNGKv2G-GYNAy37Teb6zw@mail.gmail.com>
Subject: Re: [yocto] [lttng-dev] Using lttng-ust 2.13.6 from Yocto Kirkstone
 and getting weird segfault saying strlen_asimd.S can't be found.
To: yocto@lists.yoctoproject.org, b.hutchman@gmail.com
Cc: Kienan Stewart <kstewart@efficios.com>, lttng-dev@lists.lttng.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 30 Jul 2024 15:56:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63606

check if you have CXXFLAGS +=3D "-fvisibility-inlines-hidden" and try to
toggle it and see if that helps.

On Tue, Jul 30, 2024 at 8:54=E2=80=AFAM Brian Hutchinson via
lists.yoctoproject.org <b.hutchman=3Dgmail.com@lists.yoctoproject.org>
wrote:
>
> Hi Kienan,
>
> I noticed looking thru the 38k line LTTNG_UST_DEBUG session this line:
>
> "       810:     /usr/lib/liblttng-ust.so.1: error: symbol lookup
> error: undefined symbol: ltt_probe_register (fatal)"
>
> ... and it jogged my memory that I did see some abi conflict messages
> in lttng-ust "make check" that I don't know if they are "good" or
> "bad" but could be related???
>
> Anyway, attaching a tar of lttng-ust and lttng-tools "make check" for
> your enjoyment.
>
> Regards,
>
> Brian
>
>
>
>
> On Tue, Jul 30, 2024 at 8:40=E2=80=AFAM Brian Hutchinson <b.hutchman@gmai=
l.com> wrote:
> >
> > On Mon, Jul 29, 2024 at 3:03=E2=80=AFPM Kienan Stewart <kstewart@effici=
os.com> wrote:
> > >
> > > Hi Brian,
> > >
> > > On 7/25/24 3:54 PM, Brian Hutchinson wrote:
> > > > Hi Kienan,
> > > >
> > > > I'll answer your questions below, but I've got questions on what I =
saw
> > > > building and installing lttng-tools (2.13.13) and lttng-ust (2.13.8=
).
> > > >
> > > > Based on the struggles I've had trying to get lttng to work with my
> > > > app over various Yocto versions (Dunfell & Kirkstone) and lttng
> > > > version, I think the problems I'm facing are mostly around C++ and
> > > > weak and hidden symbols in Yocto toolchain.
> > > >
> > > > When I started my app with the options you mentioned previously a
> > > > while back, Id see things like:
> > > >
> > > > # LTTNG_UST_DEBUG=3D1 LTTNG_UST_REGISTER_TIMEOUT=3D-1 /opt/tc/Traff=
icController
> > > > liblttng_ust_tracepoint[4012/4012]: Your compiler treats weak symbo=
ls
> > > > with hidden visibility for integer objects as SAME address between
> > > > compile units part of the same module. (in check_weak_hidden() at
> > > > tracepoint.c:1012)
> > > > liblttng_ust_tracepoint[4012/4012]: Your compiler treats weak symbo=
ls
> > > > with hidden visibility for pointer objects as SAME address between
> > > > compile units part of the same module. (in check_weak_hidden() at
> > > > tracepoint.c:1016)
> > > > liblttng_ust_tracepoint[4012/4012]: Your compiler treats weak symbo=
ls
> > > > with hidden visibility for 24-byte structure objects as SAME addres=
s
> > > > between compile units part of the same module. (in check_weak_hidde=
n()
> > > > at tracepoint.c:1020)
> > > >
> > >
> > > These messages are extra information for debugging and not indicative=
 of
> > > a problem in of itself. C.f.
> > > https://github.com/lttng/lttng-ust/blob/24f7193c9b918bf714a40e9fc908e=
eb4978ada1c/src/lib/lttng-ust-tracepoint/tracepoint.c#L1010
> > >
> > > There is a unit test related to this:
> > > https://github.com/lttng/lttng-ust/blob/24f7193c9b918bf714a40e9fc908e=
eb4978ada1c/tests/unit/gcc-weak-hidden/main.c#L76
> > >
> > >
> > > > I further researched this whole 'weak symbol' and 'hidden visibilit=
y'
> > > > topic in the lttng-dev archives and it smells a lot like what I've
> > > > been seeing.  You should be able to mix both tracef and tracepoint
> > > > calls in souce code ... but I could not.  I could get a tracef call=
 to
> > > > work but if I put a tracepoint call in the same code then nothing
> > > > would work.  This was with Dunfell 3.1.7 and earlier versions of
> > > > lttng.
> > > >
> > > > At one point I could get a tracepoint call to work but I'd have to =
let
> > > > our cmake build system build and link the tpp.c file and then turn
> > > > around and use gcc to recompile it and copy it to where all the
> > > > objects were to create the huge .a library the app was built agains=
t.
> > > > That's when I first learned there are issues with C++.  I think g++=
 is
> > > > used to build even .c files that aren't c++.
> > > >
> > > > Then if I tried to put a tracepoint in another sub project, none of
> > > > the tracepoints would work and I'd get empty traces.  This is a
> > > > symptom of the 'weak symbols with hidden visibility' issue ... and =
I
> > > > finally found others that were having same issue in the archives.  =
I
> > > > don't fully understand the issues here, although I do understand so=
me
> > > > of what's going on ... I just don't know what to do about it.
> > > >
> > >
> > > You said initially said that you're using `lttng_ust_tracepoint` exac=
tly
> > > as the hello world from the documentation; however, you have just
> > > described several attempts at doing different things. Which case are =
we
> > > trying to understand here?
> >
> > lttng_ust_tracepoint.  I only mentioned prior tests for context to
> > similar struggles from a year or more ago.
> >
> >
> > >
> > > > At this point I was being encouraged to keep upgrading to newer
> > > > versions of lttng.  Our app never changed, gcc & lttng etc., kept
> > > > changing.  Now with newer versions nothing runs, all I get is an
> > > > immediate segfault.  Again, I'm building just like I did before a y=
ear
> > > > or so ago with older versions of Yocto and lttng.  I say all of tha=
t
> > > > to give perspective and history of what I've seen and experienced.
> > > > Now this TLS thing has entered the picture too and so far I've only
> > > > changed lttng, I don't know if I should be applying patches to my g=
cc
> > > > for that issue.  Like I said, I'm currently using Yocto Kirkstone
> > > > 4.0.18 and 6.1.38 kernel.
> > > >
> > > > Now I'll move into the area of things I've seen building/installing
> > > > lttng-tools and lttng-ust natively on the target environment I've
> > > > setup where I can run 'make check' etc.  These are in the category =
of
> > > > "hey, is this ok, should I be worried about this":
> > > >
> > > > While building lttng-tools I see things like:
> > > >
> > > > *** Warning: Linking the executable userspace-probe-elf-binary agai=
nst
> > > > the loadable module
> > > > *** libfoo.so is not portable!
> > > >
> > >
> > > The library is for a test program. My understanding is that the libra=
ry
> > > is compiled that way to force a stripped shared object to be produced=
 in
> > > order to validate that symbol lookups in libraries with no symtab
> > > function as expected by using the dynsym table.
> > >
> > > C.f.
> > > https://github.com/lttng/lttng-tools/commit/ef3dfe5d31c88fb548189a644=
1aaf8b2afc0bd4b
> > >
> > > > In file included from ../../../src/common/macros.h:15,
> > > >                  from ../../../include/lttng/health-internal.h:19,
> > > >                  from lttng-ctl-health.c:19:
> > > > In function 'lttng_strnlen',
> > > >     inlined from 'lttng_strncpy' at ../../../src/common/macros.h:12=
8:6,
> > > >     inlined from 'set_health_socket_path' at lttng-ctl-health.c:146=
:9,
> > > >     inlined from 'lttng_health_query' at lttng-ctl-health.c:264:8:
> > > > ../../../src/common/compat/string.h:19:16: warning: 'strnlen'
> > > > specified bound 4096 may exceed source size 37 [-Wstringop-overread=
]
> > > >    19 |         return strnlen(str, max);
> > > >       |                ^~~~~~~~~~~~~~~~~
> > > > lttng-ctl-health.c: At top level:
> > > > cc1: note: unrecognized command-line option
> > > > '-Wno-incomplete-setjmp-declaration' may have been intended to sile=
nce
> > > > earlier diagnostics
> > >
> > > This warning is addressed in
> > > https://github.com/lttng/lttng-tools/commit/b25a59916106e5055be516f61=
f183a48f459b0b3
> > >
> > > > ** Warning: Linking the shared library libbar.la against the loadab=
le module
> > > > *** libzzz.so is not portable!
> > > >
> > > > *** Warning: Linking the shared library libfoo.la against the loada=
ble module
> > > > *** libbar.so is not portable!
> > > >
> > > > While installing lttng-tools I see things like this:
> > > >
> > > > make[4]: Entering directory '/opt/lttng/lttng-tools-2.13.13/src/lib=
/lttng-ctl'
> > > >   CC       lttng-ctl.lo
> > > >   CC       snapshot.lo
> > > >   CC       lttng-ctl-health.lo
> > > > In file included from ../../../src/common/macros.h:15,
> > > >                  from ../../../include/lttng/health-internal.h:19,
> > > >                  from lttng-ctl-health.c:19:
> > > > In function 'lttng_strnlen',
> > > >     inlined from 'lttng_strncpy' at ../../../src/common/macros.h:12=
8:6,
> > > >     inlined from 'set_health_socket_path' at lttng-ctl-health.c:146=
:9,
> > > >     inlined from 'lttng_health_query' at lttng-ctl-health.c:264:8:
> > > > ../../../src/common/compat/string.h:19:16: warning: 'strnlen'
> > > > specified bound 4096 may exceed source size 37 [-Wstringop-overread=
]
> > > >    19 |         return strnlen(str, max);
> > > >       |                ^~~~~~~~~~~~~~~~~
> > > > lttng-ctl-health.c: At top level:
> > > > cc1: note: unrecognized command-line option
> > > > '-Wno-incomplete-setjmp-declaration' may have been intended to sile=
nce
> > > > earlier diagnostics
> > > >
> > > > Making install in trigger-condition-event-matches
> > > > make[2]: Entering directory
> > > > '/opt/lttng/lttng-tools-2.13.13/doc/examples/trigger-condition-even=
t-matches'
> > > >   CC       instrumented-app.o
> > > >   CC       tracepoint-trigger-example.o
> > > >   AR       libtracepoint-trigger-example.a
> > > > ar: `u' modifier ignored since `D' is the default (see `U')
> > > >
> > > > While building lttng-ust I see things like:
> > > >
> > > > Making all in utils
> > > > make[2]: Entering directory
> > > > '/home/iadmin/lttng-ust/lttng-ust-2.13.8/tests/utils'
> > > >   CC       tap.o
> > > >   AR       libtap.a
> > > > ar: `u' modifier ignored since `D' is the default (see `U')
> > > >
> > >
> > > While libtool now uses `cr` by default, automake still defines the
> > > default to `cru` which is what ends up getting used in the example.
> > > Since many distros have changed the configuration of ar such that 'D'=
 is
> > > the default rather than the previous behaviour 'U', 'u' is redundant.
> > >
> > > The behaviour in automake has been changed in automake 1.16.90+.
> > >
> > > C.f.
> > > https://github.com/autotools-mirror/libtool/commit/418129bc63afc31270=
1e84cb8afa5ca413df1ab5
> > >
> > > C.f.
> > > http://git.savannah.gnu.org/cgit/automake.git/commit/?id=3D8cdbdda5ae=
c652c356fe6dbba96810202176ae75
> > >
> > > > *** Warning: Linking the shared library libzero.la against the
> > > > loadable module
> > > > *** libfakeust0.so is not portable!
> > > >   CCLD     app_noust_indirect_abi0
> > > >
> > > > *** Warning: Linking the executable app_noust_indirect_abi0 against
> > > > the loadable module
> > > > *** libzero.so is not portable!
> > > >   CC       app_noust_indirect_abi0_abi1-app_noust.o
> > > >   CC       libone.lo
> > > >   CCLD     libone.la
> > > >   CCLD     app_noust_indirect_abi0_abi1
> > > >
> > > > *** Warning: Linking the executable app_noust_indirect_abi0_abi1
> > > > against the loadable module
> > > > *** libzero.so is not portable!
> > > >
> > > > *** Warning: Linking the executable app_noust_indirect_abi0_abi1
> > > > against the loadable module
> > > > *** libone.so is not portable!
> > > >   CC       app_noust_indirect_abi1-app_noust.o
> > > >   CCLD     app_noust_indirect_abi1
> > > >
> > > > *** Warning: Linking the executable app_noust_indirect_abi0_abi1
> > > > against the loadable module
> > > > *** libone.so is not portable!
> > > >   CC       app_noust_indirect_abi1-app_noust.o
> > > >   CCLD     app_noust_indirect_abi1
> > > >
> > > > *** Warning: Linking the executable app_noust_indirect_abi1 against
> > > > the loadable module
> > > > *** libone.so is not portable!
> > > >   CC       app_ust.o
> > > >   CC       tp.o
> > > >   CCLD     app_ust
> > > >   CC       app_ust_dlopen.o
> > > >   CCLD     app_ust_dlopen
> > > >   CC       app_ust_indirect_abi0-app_ust.o
> > > >   CC       app_ust_indirect_abi0-tp.o
> > > >   CCLD     app_ust_indirect_abi0
> > > >
> > > > *** Warning: Linking the executable app_ust_indirect_abi0 against t=
he
> > > > loadable module
> > > > *** libzero.so is not portable!
> > > >   CC       app_ust_indirect_abi0_abi1-app_ust.o
> > > >   CC       app_ust_indirect_abi0_abi1-tp.o
> > > >   CCLD     app_ust_indirect_abi0_abi1
> > > >
> > > > *** Warning: Linking the executable app_ust_indirect_abi0_abi1 agai=
nst
> > > > the loadable module
> > > > *** libzero.so is not portable!
> > > >
> > > > I don't know if these are ok or if I should be worried about any of=
 that.
> > > >
> > >
> > > These are all for different tests.
> > >
> > > > ... now on to your questions below.
> > > >
> > > >
> > > >
> > > > On Wed, Jul 24, 2024 at 12:04=E2=80=AFPM Kienan Stewart <kstewart@e=
fficios.com> wrote:
> > > >>
> > > >> Hi Brian,
> > > >>
> > > >> On 7/22/24 6:00 PM, Brian Hutchinson wrote:
> > > >>> Hi Kienan,
> > > >>>
> > > >>> Took a while to gather your grocery list but I think I have most =
of it
> > > >>> below ;)
> > > >>
> > > >> thanks for all the extra info. Replies inline below, but I'll cut =
a lot
> > > >> of the long output for readability.
> > > >>
> > > >> tl;dr the environment continues to be weird, but my present suspic=
ion is
> > > >> that something in either compilation, the linking of your app (eg.=
 with
> > > >> ld when producing the executable), or some post linking stripping =
might
> > > >> be causing issues.
> > > >
> > > > I'm not aware of any stripping that's going on.  In fact everything=
 is
> > > > being built with debug symbols at the moment and I even turned off
> > > > optimization ... even used the debug friendly -O flag to see if tha=
t
> > > > made a difference.
> > > >
> > > >>
> > > >> I will stop digging into further hypotheticals on my side as there=
 is no
> > > >> reproducer for both the environment and the application. If you ev=
er end
> > > >> up with a minimal reproducer that you can share, I'd be more than =
happy
> > > >> to examine it.
> > > >
> > > > I'm planning on trying to make a small reproducer I can share but n=
ot there yet.
> > > >
> > >
> > > Great! I appreciate that you're taking the time to do so.
> > >
> > > >>
> > > >>>
> > > >>> I may have not been clear.  Most of the application components ar=
e
> > > >>> statically linked but I think there are some that are built as sh=
ared
> > > >>> objects (.so's) so that's what I was referring to.  I know that
> > > >>> lttng-ust is dynamically linked ... I think the lttng-ust docs sa=
y this
> > > >>> is only option but also makes reference to the fact static linkin=
g was
> > > >>> once possible (in some versions of the documentation) but not sup=
ported
> > > >>> anymore (I probably have the docs memorized by now ha, ha ... I'v=
e
> > > >>> looked at many, many versions of them).
> > > >>>
> > > >>> Just for full disclosure my ldd looks like:
> > > >>>
> > > >>>          linux-vdso.so.1 (0x0000ffffab196000)
> > > >>>          libfcgi.so.0 =3D> /usr/lib/libfcgi.so.0 (0x0000ffffa57f0=
000)
> > > >>>          liblttng-ust.so.1 =3D> /usr/lib/liblttng-ust.so.1
> > > >>> (0x0000ffffa5750000)
> > > >>>          libxml2.so.2 =3D> /usr/lib/libxml2.so.2 (0x0000ffffa55d0=
000)
> > > >>>          librt.so.1 =3D> /lib/librt.so.1 (0x0000ffffa55b0000)
> > > >>>          libm.so.6 =3D> /lib/libm.so.6 (0x0000ffffa5510000)
> > > >>>          libstdc++.so.6 =3D> /usr/lib/libstdc++.so.6 (0x0000ffffa=
52f0000)
> > > >>>          libgcc_s.so.1 =3D> /lib/libgcc_s.so.1 (0x0000ffffa52c000=
0)
> > > >>>          libc.so.6 =3D> /lib/libc.so.6 (0x0000ffffa5110000)
> > > >>>          /lib/ld-linux-aarch64.so.1 (0x0000ffffab15d000)
> > > >>>          liblttng-ust-common.so.1 =3D>
> > > >>> /usr/local/lib/liblttng-ust-common.so.1 (0x0000ffffa50e0000)
> > > >>>          liblttng-ust-tracepoint.so.1 =3D>
> > > >>> /usr/local/lib/liblttng-ust-tracepoint.so.1 (0x0000ffffa50a0000)
> > > >>>          libpthread.so.0 =3D> /lib/libpthread.so.0 (0x0000ffffa50=
80000)
> > > >>>          libz.so.1 =3D> /lib/libz.so.1 (0x0000ffffa5050000)
> > > >>>
> > > >>>
> > > >>
> > > >> I find it very suspicious that `liblttng-ust.so.1` is in `/usr/lib=
`,
> > > >> while the other lttng-ust libraries are being loaded from `/usr/lo=
cal/lib`.
> > > >
> > > > So Yocto puts all of the lttng libs into /usr/lib.  When I sent the
> > > > previous info I was using lttng-tools and modules built by Yocto/OE
> > > > and I setup a native build environment on the target so I could run
> > > > 'make check' etc., and that's why there were things in /usr/local/l=
ib
> > > > because that's where you guys want stuff to be.  So I actually left
> > > > the lttng-ust installables in /usr/local/build but also copied them=
 to
> > > > /usr/lib to overwrite old Yocto versions there.
> > > >
> > >
> > > It's not so much that it's "where we want it to be". The documentatio=
n
> > > uses `/usr/local/lib` because `/usr/local` is meant for software
> > > installed by the sysadmin administrator, as is the case when building=
 a
> > > custom version. `/usr/lib` should be used by packages shipped with th=
e
> > > system.
> > >
> > > C.f. https://refspecs.linuxfoundation.org/FHS_3.0/fhs/ch04s09.html
> > >
> > > You're free to do as you see fit, but when you start mixing and match=
ing
> > > libraries and some are put in /usr/lib by your system packages and so=
me
> > > you move there manually I find it more difficult to follow what is go=
ing on.
> > >
> > > >>
> > > >> This information also matches the statedump and the LD_DEBUG info =
from
> > > >> later on.
> > > >>
> > > >> Could you verify some of the following information:
> > > >>
> > > >> 1. In your build root for lttng-ust, enumerate all the liblttng*so
> > > >> files. For each shared object, run `file $libname` and record the =
value
> > > >> of the BuildID hash.R5jow
> > > >
> > > > Sorry, I'm not following you here.  The only buildID hash I can thi=
nk
> > > > of is with 'eu-unstrip -n' but that's on core files, not individual
> > > > libs.  And looking at the options I have for 'file' on my target, I
> > > > don't see anything that looks like what you are asking.
> > >
> > > Perhaps I wasn't clear, the command to run is really just `file`. As =
a
> > > fuller example:
> > >
> > > ```
> > > $ file ./src/lib/lttng-ust-fork/.libs/liblttng-ust-fork.so.1.0.0
> > > ./src/lib/lttng-ust-fork/.libs/liblttng-ust-fork.so.1.0.0: ELF 64-bit
> > > LSB shared object, x86-64, version 1 (SYSV), dynamically linked,
> > > BuildID[sha1]=3Db2b4a0fc449cf317e32c23e0bb57ea1ad702b702, with debug_=
info,
> > > not stripped
> >
> > Ok, feel stupid now.  When I ran the command before, I used short name
> > and didn't do it on the long name and just got back:
> >
> > # file /usr/lib/liblttng-ust.so
> > /usr/lib/liblttng-ust.so: symbolic link to liblttng-ust.so.1.0.0
> >
> > ... and immediately looked at man page to try to figure out what
> > switch showed BuildID etc., ha, ha.
> >
> > When I do it on long name here is what I see:
> >
> > # file /usr/lib/liblttng-ust-common.so.1.0.0
> > /usr/lib/liblttng-ust-common.so.1.0.0: ELF 64-bit LSB shared object,
> > ARM aarch64, version 1 (SYSV), dynamically linked,
> > BuildID[sha1]=3Da50c9a77163b6b91e1f84e57d167c7b77ae707a3, with
> > debug_info, not stripped
> > # file /usr/lib/liblttng-ust-ctl.so.5.0.0
> > /usr/lib/liblttng-ust-ctl.so.5.0.0: ELF 64-bit LSB shared object, ARM
> > aarch64, version 1 (SYSV), dynamically linked,
> > BuildID[sha1]=3D547cccac08721ed1c9a7f3c7ebf1de84ddba7fba, with
> > debug_info, not stripped
> > # file /usr/lib/liblttng-ust-cyg-profile-fast.so.1.0.0
> > /usr/lib/liblttng-ust-cyg-profile-fast.so.1.0.0: ELF 64-bit LSB shared
> > object, ARM aarch64, version 1 (SYSV), dynamically linked,
> > BuildID[sha1]=3Dad5f71ef5e83ab9a972488976c47db265d3360b9, with
> > debug_info, not stripped
> > # file /usr/lib/liblttng-ust-cyg-profile.so.1.0.0
> > /usr/lib/liblttng-ust-cyg-profile.so.1.0.0: ELF 64-bit LSB shared
> > object, ARM aarch64, version 1 (SYSV), dynamically linked,
> > BuildID[sha1]=3Dc2c246c1973bd3241aa4f7229fcbcb27ebe08e82, with
> > debug_info, not stripped
> > # file /usr/lib/liblttng-ust-dl.so.1.0.0
> > /usr/lib/liblttng-ust-dl.so.1.0.0: ELF 64-bit LSB shared object, ARM
> > aarch64, version 1 (SYSV), dynamically linked,
> > BuildID[sha1]=3D6082ee88c9394319bc3adff16b0b3ea9f8d549ec, with
> > debug_info, not stripped
> > # file /usr/lib/liblttng-ust-fd.so.1.0.0
> > /usr/lib/liblttng-ust-fd.so.1.0.0: ELF 64-bit LSB shared object, ARM
> > aarch64, version 1 (SYSV), dynamically linked,
> > BuildID[sha1]=3Da2813245af91abe98615771dfd7d5f19b033a410, with
> > debug_info, not stripped
> > # file /usr/lib/liblttng-ust-fork.so.1.0.0
> > /usr/lib/liblttng-ust-fork.so.1.0.0: ELF 64-bit LSB shared object, ARM
> > aarch64, version 1 (SYSV), dynamically linked,
> > BuildID[sha1]=3D86afa53808502873830c02290f477d4ff8013afb, with
> > debug_info, not stripped
> > # file /usr/lib/liblttng-ust-libc-wrapper.so.1.0.0
> > /usr/lib/liblttng-ust-libc-wrapper.so.1.0.0: ELF 64-bit LSB shared
> > object, ARM aarch64, version 1 (SYSV), dynamically linked,
> > BuildID[sha1]=3D52f391875a378b5f2c46747a58020b86cb7c9a83, with
> > debug_info, not stripped
> > # file /usr/lib/liblttng-ust-pthread-wrapper.so.1.0.0
> > /usr/lib/liblttng-ust-pthread-wrapper.so.1.0.0: ELF 64-bit LSB shared
> > object, ARM aarch64, version 1 (SYSV), dynamically linked,
> > BuildID[sha1]=3D7127223a7e8ed67c6697b95ae1f8ac107df7e47e, with
> > debug_info, not stripped
> > # file /usr/lib/liblttng-ust-tracepoint.so.1.0.0
> > /usr/lib/liblttng-ust-tracepoint.so.1.0.0: ELF 64-bit LSB shared
> > object, ARM aarch64, version 1 (SYSV), dynamically linked,
> > BuildID[sha1]=3D5971b4d84ec1efe61c6d47c38e92de20569f0f49, with
> > debug_info, not stripped
> > # file /usr/lib/liblttng-ust.so.1.0.0
> > /usr/lib/liblttng-ust.so.1.0.0: ELF 64-bit LSB shared object, ARM
> > aarch64, version 1 (SYSV), dynamically linked,
> > BuildID[sha1]=3Dce7097ae9bbf42a02dccd386fdfbd37e3224858b, with
> > debug_info, not stripped
> >
> >
> > cutting some stuff out cause it's getting long again.
> >
> > >
> > > Sounds like `make check` for lttng-tools passed then?
> >
> > At first no.  But I think this is because I built the new lttng-tools
> > in my on target native environment and ran make check and forgot to do
> > make install first, so it was using the older version of lttng-tools.
> >
> > So then I ran make install of lttng-tools and even did a make clean
> > and rebuild of lttng-ust and re-installed it and ran make check on
> > both (and things looked a lot better) ... that's where those warnings
> > etc., I asked you about came from.
> >
> > >
> > > My understanding at this point is the unit tests are passing for
> > > LTTng-UST on your system, as are the unit and regression tests for
> > > LTTng-tools. The example programs shipped with LTTng-UST work on your
> > > system, as does the example from the documentation. The statedump
> > > tracepoints loaded from LTTng-UST are also working fine, as evinced b=
y
> > > the program logs and the LTTng trace you shared.
> > >
> > > Despite my confusion about how exactly you're using the `hello world`
> > > tracepoint in your application (as you've now described several
> > > variations), the direction this points to for me are details related =
to
> > > how you're using LTTng-UST and/or how are your building and linking y=
our
> > > application. To be clear, I don't mean to say that there is or is not=
 an
> > > issue in LTTng-UST, but to point at where to examine next in detail
> > > including analysis of the produced object files.
> >
> > I compared the doc/examples/hello-static-lib to what I picked out of
> > the LTTng documentation on the web site "Quick start" section and the
> > traceprovider headder file is including stddef.h and mine isn't and
> > the doc/examples/hello-static-lib/hello.c code is doing a sighandler
> > and mine isn't doing any of that either.  I think I've probably posted
> > it before but will do it again.  Here is what I'm calling my "hello".
> > It's from the lttng documentation but I cut it down even further just
> > to make sure I didn't fat finger something.  Like I said before, the
> > full hello example from the documentation works.  But when I call
> > pretty much the same code from my app it seg faults.
> >
> > I don't know if the differences I see between my "hello" and the
> > "hello-static-lib" matter.
> >
> > hello-tp.h:
> >
> > #undef LTTNG_UST_TRACEPOINT_PROVIDER
> > #define LTTNG_UST_TRACEPOINT_PROVIDER hello_world
> >
> > #undef LTTNG_UST_TRACEPOINT_INCLUDE
> > #define LTTNG_UST_TRACEPOINT_INCLUDE "./hello-tp.h"
> >
> > #if !defined(_HELLO_TP_H) || defined(LTTNG_UST_TRACEPOINT_HEADER_MULTI_=
READ)
> > #define _HELLO_TP_H
> >
> > #include <lttng/tracepoint.h>
> >
> > LTTNG_UST_TRACEPOINT_EVENT(
> >    hello_world,
> >    my_first_tracepoint,
> >    LTTNG_UST_TP_ARGS(
> >        int, my_integer_arg
> >    ),
> >    LTTNG_UST_TP_FIELDS(
> >        lttng_ust_field_integer(int, my_integer_field, my_integer_arg)
> >    )
> > )
> >
> > #endif /* _HELLO_TP_H */
> >
> > #include <lttng/tracepoint-event.h>
> >
> > hello-tp.c:
> >
> > #define LTTNG_UST_TRACEPOINT_CREATE_PROBES
> >
> > #include "hello-tp.h"
> >
> > From my_app:
> >
> > #define LTTNG_UST_TRACEPOINT_DEFINE
> > //#define LTTNG_UST_TRACEPOINT_PROBE_DYNAMIC_LINKAGE
> > #include "hello-tp.h"
> >
> > .
> > .
> > .
> > lttng_ust_tracepoint(hello_world, my_first_tracepoint, 23, "hi there!")=
;
> >
> > In the above case the tpp is static but I've tried to make it a shared
> > object too (thus the commented out DYNAMIC_LINKAGE above) but get the
> > same result.
> >
> > Again, I think the issue is probably g++ and weak/hidden symbol
> > related and or TLS but that's based on the totality of what I've
> > experienced over the past year or so and seeing the
> > experiences/problems of others in the lttng-dev archives.
> >
> > Regards,
> >
> > Brian
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#63605): https://lists.yoctoproject.org/g/yocto/messag=
e/63605
> Mute This Topic: https://lists.yoctoproject.org/mt/107264247/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

