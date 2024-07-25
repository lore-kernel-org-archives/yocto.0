Return-Path: <b.hutchman@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66BF9C3DA70
	for <webhook@archiver.kernel.org>; Thu, 25 Jul 2024 19:54:59 +0000 (UTC)
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
 by mx.groups.io with SMTP id smtpd.web10.45270.1721937294842848483
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Jul 2024 12:54:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=cKyxbH4Y;
 spf=pass (domain: gmail.com, ip: 209.85.216.48, mailfrom: b.hutchman@gmail.com)
Received: by mail-pj1-f48.google.com with SMTP id 98e67ed59e1d1-2c964f5a037so189349a91.0
        for <yocto@lists.yoctoproject.org>; Thu, 25 Jul 2024 12:54:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1721937294; x=1722542094; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DW3qX7pluSG/kE1GSgQx+Fl2RtlplKVu1kHAG/+lP1U=;
        b=cKyxbH4YBhK+Ch/zy6pzuS6RSXtqkRv0HVRozATHITYm5EzqGZqI/ABZn1ujwLZA4J
         glYVusTmTNTqTvof582v6m2+3Ub/vM8a3hujiW9APocg1xjelr0cFqukNOyqoXA4fmqg
         Pms/7uDSUOBIxcNf6nG7F/1pu4KlYhKEk6IJOwfWzskzvgzgk+0j2McP7zu5WNyeraMN
         IfCE+cpthqSLrvsSLw5SM3FtxCARwJqJT3MiDYSqff9R14ewiegJcEnLHpaOK6LMSiFU
         btQr0TKje7waMD5MZMpK1Z6C6WjjCHGAZ+3MoIxhhr+hO3wkUWW3ffgO7+Ez2NFwxRkF
         bRag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721937294; x=1722542094;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DW3qX7pluSG/kE1GSgQx+Fl2RtlplKVu1kHAG/+lP1U=;
        b=JKoQgpW4Di+8dA+Dsf1Va/5lkle7YDZhIqBQFCfSCuPGLBb9g3QdVNZWtmOAC5PahD
         qOl1pXYWumZplFN6vpQba78FgndK3uFKS3xcdNsinvDvholSmizWRtcGp/JJEZS/8yAo
         eTP5jvNJj9EX4uNnohwltvJ8xRtIq6u/vhT0+8VG4bg8p1DHsOmMd+ygGyuFF6tpolTw
         1DxbwYSIkD9Y+06HdgbQDfsmNIRQJ0TLZmbhpBaORMZc37qrLuAndpCi0pchWNtMiuxG
         Y+mZKMEaaKVMuMoSXMrbdVL0hbqhF2W7UnoFWia3LXtMRhYvIzRuc++uZMuJyKY3VMw6
         4SSw==
X-Forwarded-Encrypted: i=1; AJvYcCVQwsGVzRn1zvZjs2daznYoMpXsiyD8+wuCRrh5oN4ALH8k6r/ZFty5Hj8FZiZ1MiRWODzpqKTarSdNJ2L1fMDOQoQlwBYPyhiI83+j
X-Gm-Message-State: AOJu0YxAuGa/lh+VMVpPgcRh8RyXf43rJEwzunb6c/JKStz/9/Z+8Twl
	bsdDLtUWWiU2D2UEMaNjMLJubiTJini9gx0cQ7rLt49tWnvhoAgR14sQiJ2BHIbzv599pnilV06
	eFGi2Tk/r10ePzqURAsItZihhpXA=
X-Google-Smtp-Source: AGHT+IFB0LKqlULr406DBj4jYkTQGseP0AdZ2hUFngZAp0iXqkGcLIMoBrMrfcHabPX0gWXE3AsFpQO0D1DHtwNLtXk=
X-Received: by 2002:a17:90b:4ad1:b0:2c9:7803:1cf6 with SMTP id
 98e67ed59e1d1-2cf2ea14a02mr3295142a91.20.1721937293743; Thu, 25 Jul 2024
 12:54:53 -0700 (PDT)
MIME-Version: 1.0
References: <CAFZh4h_wh01sjAar-QqHsQ=KY4zLjmpmXuJc83OeYue7YyYW3A@mail.gmail.com>
 <CAFZh4h9iaCGdnDhxik9Qtq82f0MGU2eL+8nBa8qoCCJrH-xsGQ@mail.gmail.com>
 <d30f1655-0efa-440a-ac17-fe82342f4556@efficios.com> <CAFZh4h_pOCzpJ6ssdZ7ts3vSdJNfEtS+d+2Foi4qAY6oH0+VKw@mail.gmail.com>
 <33527830-3bf3-4bc3-a53d-55eaefb74902@efficios.com> <CAFZh4h8k+eGuVJLJ_1vA1_P7+3Hi7h+UgUSmoN51Paxyypw-fA@mail.gmail.com>
 <09087915-9e15-4485-b3d3-f48b245690ec@efficios.com> <CAFZh4h-_ixamDD4hMMETXGx8oA6Dr_3R5eFBeQPusFnKHEXKGg@mail.gmail.com>
 <d52b867f-c35c-497a-af92-dfbe4452794c@efficios.com>
In-Reply-To: <d52b867f-c35c-497a-af92-dfbe4452794c@efficios.com>
From: Brian Hutchinson <b.hutchman@gmail.com>
Date: Thu, 25 Jul 2024 15:54:42 -0400
Message-ID: <CAFZh4h-Sp0HrUZZzfze0zwVcJznD1NeiJTpBt3hAfk=j1JieQw@mail.gmail.com>
Subject: Re: [lttng-dev] Using lttng-ust 2.13.6 from Yocto Kirkstone and
 getting weird segfault saying strlen_asimd.S can't be found.
To: Kienan Stewart <kstewart@efficios.com>
Cc: lttng-dev@lists.lttng.org, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 25 Jul 2024 19:54:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63575

Hi Kienan,

I'll answer your questions below, but I've got questions on what I saw
building and installing lttng-tools (2.13.13) and lttng-ust (2.13.8).

Based on the struggles I've had trying to get lttng to work with my
app over various Yocto versions (Dunfell & Kirkstone) and lttng
version, I think the problems I'm facing are mostly around C++ and
weak and hidden symbols in Yocto toolchain.

When I started my app with the options you mentioned previously a
while back, Id see things like:

# LTTNG_UST_DEBUG=3D1 LTTNG_UST_REGISTER_TIMEOUT=3D-1 /opt/tc/TrafficContro=
ller
liblttng_ust_tracepoint[4012/4012]: Your compiler treats weak symbols
with hidden visibility for integer objects as SAME address between
compile units part of the same module. (in check_weak_hidden() at
tracepoint.c:1012)
liblttng_ust_tracepoint[4012/4012]: Your compiler treats weak symbols
with hidden visibility for pointer objects as SAME address between
compile units part of the same module. (in check_weak_hidden() at
tracepoint.c:1016)
liblttng_ust_tracepoint[4012/4012]: Your compiler treats weak symbols
with hidden visibility for 24-byte structure objects as SAME address
between compile units part of the same module. (in check_weak_hidden()
at tracepoint.c:1020)

I further researched this whole 'weak symbol' and 'hidden visibility'
topic in the lttng-dev archives and it smells a lot like what I've
been seeing.  You should be able to mix both tracef and tracepoint
calls in souce code ... but I could not.  I could get a tracef call to
work but if I put a tracepoint call in the same code then nothing
would work.  This was with Dunfell 3.1.7 and earlier versions of
lttng.

At one point I could get a tracepoint call to work but I'd have to let
our cmake build system build and link the tpp.c file and then turn
around and use gcc to recompile it and copy it to where all the
objects were to create the huge .a library the app was built against.
That's when I first learned there are issues with C++.  I think g++ is
used to build even .c files that aren't c++.

Then if I tried to put a tracepoint in another sub project, none of
the tracepoints would work and I'd get empty traces.  This is a
symptom of the 'weak symbols with hidden visibility' issue ... and I
finally found others that were having same issue in the archives.  I
don't fully understand the issues here, although I do understand some
of what's going on ... I just don't know what to do about it.

At this point I was being encouraged to keep upgrading to newer
versions of lttng.  Our app never changed, gcc & lttng etc., kept
changing.  Now with newer versions nothing runs, all I get is an
immediate segfault.  Again, I'm building just like I did before a year
or so ago with older versions of Yocto and lttng.  I say all of that
to give perspective and history of what I've seen and experienced.
Now this TLS thing has entered the picture too and so far I've only
changed lttng, I don't know if I should be applying patches to my gcc
for that issue.  Like I said, I'm currently using Yocto Kirkstone
4.0.18 and 6.1.38 kernel.

Now I'll move into the area of things I've seen building/installing
lttng-tools and lttng-ust natively on the target environment I've
setup where I can run 'make check' etc.  These are in the category of
"hey, is this ok, should I be worried about this":

While building lttng-tools I see things like:

*** Warning: Linking the executable userspace-probe-elf-binary against
the loadable module
*** libfoo.so is not portable!

In file included from ../../../src/common/macros.h:15,
                from ../../../include/lttng/health-internal.h:19,
                from lttng-ctl-health.c:19:
In function 'lttng_strnlen',
   inlined from 'lttng_strncpy' at ../../../src/common/macros.h:128:6,
   inlined from 'set_health_socket_path' at lttng-ctl-health.c:146:9,
   inlined from 'lttng_health_query' at lttng-ctl-health.c:264:8:
../../../src/common/compat/string.h:19:16: warning: 'strnlen'
specified bound 4096 may exceed source size 37 [-Wstringop-overread]
  19 |         return strnlen(str, max);
     |                ^~~~~~~~~~~~~~~~~
lttng-ctl-health.c: At top level:
cc1: note: unrecognized command-line option
'-Wno-incomplete-setjmp-declaration' may have been intended to silence
earlier diagnostics

** Warning: Linking the shared library libbar.la against the loadable modul=
e
*** libzzz.so is not portable!

*** Warning: Linking the shared library libfoo.la against the loadable modu=
le
*** libbar.so is not portable!

While installing lttng-tools I see things like this:

make[4]: Entering directory '/opt/lttng/lttng-tools-2.13.13/src/lib/lttng-c=
tl'
 CC       lttng-ctl.lo
 CC       snapshot.lo
 CC       lttng-ctl-health.lo
In file included from ../../../src/common/macros.h:15,
                from ../../../include/lttng/health-internal.h:19,
                from lttng-ctl-health.c:19:
In function 'lttng_strnlen',
   inlined from 'lttng_strncpy' at ../../../src/common/macros.h:128:6,
   inlined from 'set_health_socket_path' at lttng-ctl-health.c:146:9,
   inlined from 'lttng_health_query' at lttng-ctl-health.c:264:8:
../../../src/common/compat/string.h:19:16: warning: 'strnlen'
specified bound 4096 may exceed source size 37 [-Wstringop-overread]
  19 |         return strnlen(str, max);
     |                ^~~~~~~~~~~~~~~~~
lttng-ctl-health.c: At top level:
cc1: note: unrecognized command-line option
'-Wno-incomplete-setjmp-declaration' may have been intended to silence
earlier diagnostics

Making install in trigger-condition-event-matches
make[2]: Entering directory
'/opt/lttng/lttng-tools-2.13.13/doc/examples/trigger-condition-event-matche=
s'
 CC       instrumented-app.o
 CC       tracepoint-trigger-example.o
 AR       libtracepoint-trigger-example.a
ar: `u' modifier ignored since `D' is the default (see `U')

While building lttng-ust I see things like:

Making all in utils
make[2]: Entering directory
'/home/iadmin/lttng-ust/lttng-ust-2.13.8/tests/utils'
 CC       tap.o
 AR       libtap.a
ar: `u' modifier ignored since `D' is the default (see `U')

*** Warning: Linking the shared library libzero.la against the
loadable module
*** libfakeust0.so is not portable!
 CCLD     app_noust_indirect_abi0

*** Warning: Linking the executable app_noust_indirect_abi0 against
the loadable module
*** libzero.so is not portable!
 CC       app_noust_indirect_abi0_abi1-app_noust.o
 CC       libone.lo
 CCLD     libone.la
 CCLD     app_noust_indirect_abi0_abi1

*** Warning: Linking the executable app_noust_indirect_abi0_abi1
against the loadable module
*** libzero.so is not portable!

*** Warning: Linking the executable app_noust_indirect_abi0_abi1
against the loadable module
*** libone.so is not portable!
 CC       app_noust_indirect_abi1-app_noust.o
 CCLD     app_noust_indirect_abi1

*** Warning: Linking the executable app_noust_indirect_abi0_abi1
against the loadable module
*** libone.so is not portable!
 CC       app_noust_indirect_abi1-app_noust.o
 CCLD     app_noust_indirect_abi1

*** Warning: Linking the executable app_noust_indirect_abi1 against
the loadable module
*** libone.so is not portable!
 CC       app_ust.o
 CC       tp.o
 CCLD     app_ust
 CC       app_ust_dlopen.o
 CCLD     app_ust_dlopen
 CC       app_ust_indirect_abi0-app_ust.o
 CC       app_ust_indirect_abi0-tp.o
 CCLD     app_ust_indirect_abi0

*** Warning: Linking the executable app_ust_indirect_abi0 against the
loadable module
*** libzero.so is not portable!
 CC       app_ust_indirect_abi0_abi1-app_ust.o
 CC       app_ust_indirect_abi0_abi1-tp.o
 CCLD     app_ust_indirect_abi0_abi1

*** Warning: Linking the executable app_ust_indirect_abi0_abi1 against
the loadable module
*** libzero.so is not portable!

I don't know if these are ok or if I should be worried about any of that.

... now on to your questions below.



On Wed, Jul 24, 2024 at 12:04=E2=80=AFPM Kienan Stewart <kstewart@efficios.=
com> wrote:
>
> Hi Brian,
>
> On 7/22/24 6:00 PM, Brian Hutchinson wrote:
> > Hi Kienan,
> >
> > Took a while to gather your grocery list but I think I have most of it
> > below ;)
>
> thanks for all the extra info. Replies inline below, but I'll cut a lot
> of the long output for readability.
>
> tl;dr the environment continues to be weird, but my present suspicion is
> that something in either compilation, the linking of your app (eg. with
> ld when producing the executable), or some post linking stripping might
> be causing issues.

I'm not aware of any stripping that's going on.  In fact everything is
being built with debug symbols at the moment and I even turned off
optimization ... even used the debug friendly -O flag to see if that
made a difference.

>
> I will stop digging into further hypotheticals on my side as there is no
> reproducer for both the environment and the application. If you ever end
> up with a minimal reproducer that you can share, I'd be more than happy
> to examine it.

I'm planning on trying to make a small reproducer I can share but not there=
 yet.

>
> >
> > I may have not been clear.  Most of the application components are
> > statically linked but I think there are some that are built as shared
> > objects (.so's) so that's what I was referring to.  I know that
> > lttng-ust is dynamically linked ... I think the lttng-ust docs say this
> > is only option but also makes reference to the fact static linking was
> > once possible (in some versions of the documentation) but not supported
> > anymore (I probably have the docs memorized by now ha, ha ... I've
> > looked at many, many versions of them).
> >
> > Just for full disclosure my ldd looks like:
> >
> >         linux-vdso.so.1 (0x0000ffffab196000)
> >         libfcgi.so.0 =3D> /usr/lib/libfcgi.so.0 (0x0000ffffa57f0000)
> >         liblttng-ust.so.1 =3D> /usr/lib/liblttng-ust.so.1
> > (0x0000ffffa5750000)
> >         libxml2.so.2 =3D> /usr/lib/libxml2.so.2 (0x0000ffffa55d0000)
> >         librt.so.1 =3D> /lib/librt.so.1 (0x0000ffffa55b0000)
> >         libm.so.6 =3D> /lib/libm.so.6 (0x0000ffffa5510000)
> >         libstdc++.so.6 =3D> /usr/lib/libstdc++.so.6 (0x0000ffffa52f0000=
)
> >         libgcc_s.so.1 =3D> /lib/libgcc_s.so.1 (0x0000ffffa52c0000)
> >         libc.so.6 =3D> /lib/libc.so.6 (0x0000ffffa5110000)
> >         /lib/ld-linux-aarch64.so.1 (0x0000ffffab15d000)
> >         liblttng-ust-common.so.1 =3D>
> > /usr/local/lib/liblttng-ust-common.so.1 (0x0000ffffa50e0000)
> >         liblttng-ust-tracepoint.so.1 =3D>
> > /usr/local/lib/liblttng-ust-tracepoint.so.1 (0x0000ffffa50a0000)
> >         libpthread.so.0 =3D> /lib/libpthread.so.0 (0x0000ffffa5080000)
> >         libz.so.1 =3D> /lib/libz.so.1 (0x0000ffffa5050000)
> >
> >
>
> I find it very suspicious that `liblttng-ust.so.1` is in `/usr/lib`,
> while the other lttng-ust libraries are being loaded from `/usr/local/lib=
`.

So Yocto puts all of the lttng libs into /usr/lib.  When I sent the
previous info I was using lttng-tools and modules built by Yocto/OE
and I setup a native build environment on the target so I could run
'make check' etc., and that's why there were things in /usr/local/lib
because that's where you guys want stuff to be.  So I actually left
the lttng-ust installables in /usr/local/build but also copied them to
/usr/lib to overwrite old Yocto versions there.

>
> This information also matches the statedump and the LD_DEBUG info from
> later on.
>
> Could you verify some of the following information:
>
> 1. In your build root for lttng-ust, enumerate all the liblttng*so
> files. For each shared object, run `file $libname` and record the value
> of the BuildID hash.

Sorry, I'm not following you here.  The only buildID hash I can think
of is with 'eu-unstrip -n' but that's on core files, not individual
libs.  And looking at the options I have for 'file' on my target, I
don't see anything that looks like what you are asking.

>
> 2. In your deployed environment, enumerate all the liblttng*so files in
> /usr/local/lib and record the value of the BuildID hash.
>
> 3. In your deployed environment, enumerate all the liblttng*so files in
> /usr/lib and record the value of the BuildID hash.
>
> The BuildID will vary from one object to the next, but the deployed
> environment BuildIDs should match the BuildIDs of the corresponding
> library from the build root.
>
> In particular my interest is the `liblttng-ust.so.1` library  that is
> loaded  from `/usr/lib` in your deployed environment, and if there are
> any in `/usr/local/lib`.

As I said above, when I built lttng-ust from source natively on the
target and installed it, it went to /usr/local/lib, your default.  I
then copied everything from /usr/local/lib (which was just lttng-ust
stuff) to /usr/lib to overwrite the old versions Yocto put there.

>
> In the working hello example, does it also end up linking against
> `/usr/lib/liblttng-ust.so.1`?

Yes

>
> >     Further along in stepping back:
> >
> >        - Does make check for lttng-ust pass in your environment?
> >
> >
> > So I'm glad you mentioned this.  I didn't try to run make check because
> > #1 have never seen anything in the documentation about it and what it
> > does and #2 It said that it depended on Perl and since this is an
> > embedded system, I really didn't want to pull it and its dependencies i=
n.
> >
> > Nevertheless, I ran it on my native target build I setup to see what
> > would happen.  I didn't notice it complaining about perl so then I
> > checked my manifest and perl is in fact in our image (I guess some othe=
r
> > recipe pulled it in and I never paid attention to that):
> >
> > Making check in include
> > make[1]: Entering directory
> > '/home/iadmin/lttng-ust/lttng-ust-2.13.8/include'
> > ...
>  >
> >
> >        - Does make check for lttng-tools pass in your environment?
> >
> > I'm still using lttng-tools built by yocto so I don't know how to run
> > make check in that situation.  From devtool maybe???  I don't know, I'd
> > have to look into that one.   I never upgraded lttng-tools either, only
> > upgraded lttng-ust and built from source tar to get the fix you
> > mentioned for TLS stuff.
>
> The poky version of the tools recipe seems to have some stuff relating
> to ptest, which seems to be a yocto tool for package testing. There
> might be a run to run that?
>
> https://git.yoctoproject.org/poky/plain/meta/recipes-kernel/lttng/lttng-t=
ools_2.13.13.bb
> https://wiki.yoctoproject.org/wiki/Ptest
>
> Otherwise I would get the lttng-tools source for your version,
> bootstrap, configure, build, and run the tests in tree.
>
> The bulk of regression testing for lttng-ust, -modules, and -tools
> happens during `make check` for lttng-tools.

I did all of that.  First I did it with lttng-ust, building it from
source tarball on target natively to eliminate any Yocto recipe/patch
issues.  Then did the same with lttng-tools.

>
> >
> >        - Is this reproducible in non-yocto environments or on other
> >     architectures with the same project?
> >
> > Hmm, that's a good question.  I don't have any other embedded targets t=
o
> > try this on that are a different arch.  I think I heard at one point
> > early on a heavily stubbed out version ran on a PC but I'd have to look
> > into that.
> >
> >        - Does running the traced application with `LTTNG_UST_DEBUG=3D1`=
 yield
> >     more information?
> >
> >
> > So far I've just been trying to get the app to run without even startin=
g
> > lttng just to get past segfault issue.  Here is what it looks like with
> > debug turned on without starting lttng or a lttng-sessiond:
> >
> > liblttng_ust_tracepoint[599/599]: Your compiler treats weak symbols wit=
h
> > hidden visibility for integer objects as SAME address between compile
> > units part of the same module. (in check_weak_hidden() at
> >
> > liblttng_ust[599/601]: Waiting for local apps sessiond (in
> > wait_for_sessiond() at lttng-ust-comm.c:1758)
> > liblttng_ust[599/600]: Info: sessiond not accepting connections to
> > global apps socket (in ust_listener_thread() at lttng-ust-comm.c:1884)
> > Segmentation fault
> >
> >        - I'd also run lttng-sessiond with the environment variable
> >     `LTTNG_UST_DEBUG=3D1` set and `-vvv --verbose-consumer` in the prog=
ram
> >     arguments and capture for stdout & stderr into a file for analysis.
> >        - Verify if the main program is dynamically linked with `ldd`
> >        - Verify which libraries are loaded at runtime and which calls a=
re
> >     shimmed with `LD_DEBUG=3Dlibs,binding`
> >
> >
> > I provided some of this above.
> > The output of LD_DEBUG=3Dlibs,bindings is attached as file
> > ld_debug-libs-bindings.txt
>
> Thanks. For your own debugging, I would recommend to run the hello world
> example with the same environment variables in order to have comparison
> point to a working example.

I ran the hello world in the example directory
lttng-ust-2.13.8/doc/examples/hello-static-lib and it ran fine.

I can send the sessiond.log etc. if you want to see it but it ran just
fine on target using the native built lttng-ust and lttng-tools.

>
>  From my observations in my own environment, for the hello example (and
> presumably your app if it's set up in the same way) I would expect
> something similar to the following
>
> ```
>    3624895:     initialize program: ./hello
>     3624895:
>     3624895:     binding file ./hello [0] to
> /lib/x86_64-linux-gnu/libc.so.6 [0]: normal symbol `dlopen' [GLIBC_2.34]
>     3624895:     opening
> file=3D/x/lttng/master/usr/lib/liblttng-ust-tracepoint.so.1 [0];
> direct_opencount=3D3
>     3624895:
>     3624895:     binding file ./hello [0] to
> /lib/x86_64-linux-gnu/libc.so.6 [0]: normal symbol `dlsym' [GLIBC_2.34]
>     3624895:     binding file
> /x/lttng/master/usr/lib/liblttng-ust-tracepoint.so.1 [0] to
> /x/lttng/master/usr/lib/liblttng-ust-tracepoint.so.1 [0]: normal symbol
> `lttng_ust_tp_rcu_re
> ad_lock'
>     3624895:     binding file
> /x/lttng/master/usr/lib/liblttng-ust-tracepoint.so.1 [0] to
> /x/lttng/master/usr/lib/liblttng-ust-tracepoint.so.1 [0]: normal symbol
> `lttng_ust_tp_rcu_re
> ad_unlock'
>     3624895:     binding file
> /x/lttng/master/usr/lib/liblttng-ust-tracepoint.so.1 [0] to
> /x/lttng/master/usr/lib/liblttng-ust-tracepoint.so.1 [0]: normal symbol
> `lttng_ust_tp_rcu_de
> reference_sym'
>     3624895:     binding file
> x/lttng/master/usr/lib/liblttng-ust-tracepoint.so.1 [0] to
> /x/lttng/master/usr/lib/liblttng-ust-tracepoint.so.1 [0]: normal symbol
> `lttng_ust_tracepoin
> t_module_register'
>     3624895:     binding file
> /x/lttng/master/usr/lib/liblttng-ust-tracepoint.so.1 [0] to
> /x/lttng/master/usr/lib/liblttng-ust-tracepoint.so.1 [0]: normal symbol
> `lttng_ust_tracepoin
> t_module_unregister'
>     3624895:     binding file
> /x/lttng/master/usr/lib/liblttng-ust-tracepoint.so.1 [0] to
> /x/lttng/master/usr/lib/liblttng-ust-tracepoint.so.1 [0]: normal symbol
> `lttng_ust_tp_disabl
> e_destructors'
>     3624895:     binding file
> /x/lttng/master/usr/lib/liblttng-ust-tracepoint.so.1 [0] to
> /x/lttng/master/usr/lib/liblttng-ust-tracepoint.so.1 [0]: normal symbol
> `lttng_ust_tp_get_de
> structors_state'
>     3624895:     binding file ./hello [0] to
> /x/lttng/master/usr/lib/liblttng-ust.so.1 [0]: normal symbol
> `lttng_ust_probe_register'
>     3624895:
>     3624895:     transferring control: ./hello
>     3624895:
> ```
>
> The bit that is missing from your program is the binding of
> `lttng_ust_probe_register`. Here, it's not like the symbol isn't
> resolved at all: it's found earlier and if it didn't exist at all the
> error would probably be relatively clear like:
>
> ```
> ./doc/examples/hello/hello: symbol lookup error:
> /x/lttng/master/usr/lib/liblttng-ust.so.1: undefined symbol:
> lttng_ust_probe_register
> ```
>
> I'd like you to run another test with your app. This should indicate
> that all symbols should be immediately resolved during dynamic loading
> rather than performing lazy symbol resolution. The goal of this test is
> to separate clearly the symbol resolution from the call that happens in
> the program's initialization. You can also run it with the hello demo to
> compare the runs.

At this point I need to quit for a bit so I'll send what I have up to
this point and perform these tests on both my app and the hello
example and report back as soon as I can.

>
> ```
> LTTNG_UST_DEBUG=3D1 LD_DEBUG=3Dall LD_BIND_NOW=3D1 ./my_app
> ```
>
> >
> >        - Review in detail which gcc commands are executed to produce th=
e
> >     tracepoint provider and link it to the main executable.
> >
> > Exactly like hello world example.
>
> Okay. I see your program also has at least some portions in C++, which
> is different than the hello world example.
>
> Does your build process use particular optimizations or strip parts from
> the resulting object files?
>
> When you're building the hello world example, does it get compiled in
> the same buildroot as your app, or is it done differently?
>
> Do you use a custom linker script(s)?
>
>
> >
> >
> >
> > So the embedded target doesn't have babletrace so I archived the sessio=
n
> > and transferred it over to my dev PC and used tracecompas to view the
> > lttng-session.
> >
> > You can see that in the attached file my_session.csv
>
> This is good, the statedump is happening properly.
>
> >
> >     ```
> >
> >      >
> >      > Thanks!  I'm running out of things to try.
> >
>
> For the next steps I would start disassembling "my_app" or checking in
> gdb which bad address is being fed into strnlen.
>
> Sections of interest (`objdump -sD my_app` _and_ `readelf -W -a my_app`):
>
> - lttng_ust_tracepoints_ptrs
> - lttng_ust_tracepoints_strings
>
> Symbols of interest (`objdump -sD my_app` _and `nm my_app`):
>
> - lttng_ust_tracepoint_hello_world___my_first_tracepoint
> - lttng_ust_tracepoints_ptrs
> - __start_lttng_ust_tracepoints_ptrs
> - __stop_lttng_ust_tracepoints_ptrs
>
> thanks,
> kienan
>
> >     Ultimately, given the bespoke environment, build steps, and applica=
tion
> >     it's tough to diagnose a lot of things that we would go over with a
> >     fine
> >     tooth comb: seeing how the TPPs are built and linked, seeing how th=
e
> >     application is built and linked, analyzing what's happening at runt=
ime,
> >     having a coredump that allows us to see the variables, etc.
> >
> >     If you can provide a minimal reproducer, it's possible to dig furth=
er
> >     into it.
> >
> >     Otherwise, to look in more detail at your specific project would be
> >     covered under a service contract (for which we can sign NDAs, etc. =
as
> >     needed). Feel free to reach out the sales@efficios.com
> >     <mailto:sales@efficios.com> to organise that.
> >
> >
> > I understand but so far schedules & budget/priorities haven't aligned s=
o
> > once again I've been scheduled to look at this issue again since we las=
t
> > tried it on older Dunfell OS with older versions of lttng and it looks
> > like we have the same problem as before.
> >
> > Thanks for your help!
> >
> > Regards,
> >
> > Brian
> >
> >
> >      >
> >      > I don't fully understand the implications of some of this
> >     documentation,
> >      > but I have learned enough to know LD_PRELOAD means nothing if
> >     everything
> >      > is static built.  Our application is heavily multi threaded, use=
s
> >     fork,
> >      > clone and who knows if it's doing double closes or not ... so
> >     I've tried
> >      > these LD_PRELOAD "helpers" or whatever they are, before and
> >     didn't get a
> >      > different result, but now know it's only for shared library
> >     object.  So
> >      > now I will experiment with making our tpp a shared object and tr=
y
> >      > LD_PRELOAD of fork, fd and pthread helpers and starting my app
> >     that way.
> >
> >     LD_PRELOAD has an effect if the application you are running is
> >     dynamically linked (note: the TPP can be statically linked inside a=
n
> >     dynamically linked executable, and the preloads are still useful an=
d/or
> >     needed in that case).
> >
> >     The function of the helpers are to ensure that various system calls
> >     don't clobber things in use by lttng-ust. E.g., close() is shimmed =
by
> >     liblttng-ust-fd.so so that FDs that lttng-ust uses aren't suddenly =
shut
> >     by the program.
> >
> >     If you want to see it in action, you could try an experiment with a
> >     slightly modified hello-static-lib application, with instructions i=
n
> >     the
> >     top comment:
> >     https://gist.github.com/kienanstewart/299eb6a511d92d458569b210e4a41=
8a8 <https://gist.github.com/kienanstewart/299eb6a511d92d458569b210e4a418a8=
>
> >
> >     The effect of the preloads such as liblttng-ust-fd.so are
> >     independent of
> >     how the TPP is built and linked to the application or library.
> >
> >     thanks,
> >     kienan
> >
> >      >
> >      > This is what I'm referring to above from the lttng docs:
> >      >
> >      >
> >      >           Use LTTng-UST with daemons
> >      >
> >       <https://lttng.org/docs/v2.13/#doc-using-lttng-ust-with-daemons
> >     <https://lttng.org/docs/v2.13/#doc-using-lttng-ust-with-daemons>>
> >      >
> >      > If your instrumented application calls fork(2)
> >      > <https://man7.org/linux/man-pages/man2/fork.2.html
> >     <https://man7.org/linux/man-pages/man2/fork.2.html>>, clone(2)
> >      > <https://man7.org/linux/man-pages/man2/clone.2.html
> >     <https://man7.org/linux/man-pages/man2/clone.2.html>>, or BSD=E2=80=
=99s
> >     rfork(2)
> >      >
> >     <http://www.freebsd.org/cgi/man.cgi?query=3Drfork&sektion=3D2&manpa=
th=3DFreeBSD+4.10-RELEASE <http://www.freebsd.org/cgi/man.cgi?query=3Drfork=
&sektion=3D2&manpath=3DFreeBSD+4.10-RELEASE>>, without a following exec(3) =
<https://man7.org/linux/man-pages/man3/exec.3.html <https://man7.org/linux/=
man-pages/man3/exec.3.html>>-family system call, you must preload the |libl=
ttng-ust-fork.so| shared object when you start the application.
> >      >
> >      > LD_PRELOAD=3Dliblttng-ust-fork.so ./my-app
> >      >
> >      > If your tracepoint provider package is a shared library which yo=
u
> >     also
> >      > preload, you must put both shared objects in |LD_PRELOAD|:
> >      >
> >      > LD_PRELOAD=3Dliblttng-ust-fork.so:/path/to/tp.so ./my-app
> >      >
> >      >
> >      >           Use LTTng-UST with applications which close file
> >     descriptors
> >      >           that don=E2=80=99t belong to them
> >      >           <https://lttng.org/docs/v2.13/#doc-liblttng-ust-fd
> >     <https://lttng.org/docs/v2.13/#doc-liblttng-ust-fd>>
> >      >
> >      > Since 2.9
> >      >
> >      > If your instrumented application closes one or more file descrip=
tors
> >      > which it did not open itself, you must preload the
> >     |liblttng-ust-fd.so|
> >      > shared object when you start the application:
> >      >
> >      > LD_PRELOAD=3Dliblttng-ust-fd.so ./my-app
> >      >
> >      > Typical use cases include closing all the file descriptors after
> >     fork(2)
> >      > <https://man7.org/linux/man-pages/man2/fork.2.html
> >     <https://man7.org/linux/man-pages/man2/fork.2.html>> or rfork(2)
> >      >
> >     <http://www.freebsd.org/cgi/man.cgi?query=3Drfork&sektion=3D2&manpa=
th=3DFreeBSD+4.10-RELEASE <http://www.freebsd.org/cgi/man.cgi?query=3Drfork=
&sektion=3D2&manpath=3DFreeBSD+4.10-RELEASE>> and buggy applications doing =
=E2=80=9Cdouble closes=E2=80=9D.
> >      >
> >      >
> >      > Thanks,
> >      >
> >      > Brian
> >      >
> >      >
> >

