Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3912FC433FE
	for <webhook@archiver.kernel.org>; Sat,  6 Nov 2021 16:49:25 +0000 (UTC)
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com
 [209.85.208.51])
 by mx.groups.io with SMTP id smtpd.web10.21160.1636217363530514854
 for <yocto@lists.yoctoproject.org>;
 Sat, 06 Nov 2021 09:49:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=WnWUH97f;
 spf=pass (domain: gmail.com, ip: 209.85.208.51,
 mailfrom: bruce.ashfield@gmail.com)
Received: by mail-ed1-f51.google.com with SMTP id m14so43601306edd.0
        for <yocto@lists.yoctoproject.org>;
 Sat, 06 Nov 2021 09:49:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=xQAHMTbQ41D/5UjDDqf+J/zuRpw6LCCuBAVglaafROE=;
        b=WnWUH97f5Jps4OYD/aJAfFcBXE9+Dnm6LdQgYQcByfGXBwQ7+Xr1JPsdM0dGjnMqLn
         ejl3+Mb0rZVPE461xCy+hqFMUWILX0GD78KyQ+otimdmj18KGyES9upOvLCbnZu8tZSD
         C+MGrspk6ad/lcNjCBr3e1RpDrZDeClOA/V0jgZdXEygDx20AHkT4p66aJGf2Cll5f5H
         5OoFIBKvdQodlXbNLfEx/5kwFJFTkI6/KO/FZYcsEHNMszMm9C+lxKpPxe/Q1sYkovUl
         DNRjERoFOS6hxcVK00hVrdDQaWLl5hu1nMmIFUjOKdfoPvV3iRFgzvKFVpZYHEVBK6Xo
         Blhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=xQAHMTbQ41D/5UjDDqf+J/zuRpw6LCCuBAVglaafROE=;
        b=Wlz0fWZsPbinL/ymIyTFiWHHfOURFQcDOSRMCmZjA0szZHqjugI/nhNeXAjlvnpixE
         svPOXTA4fgO7ihnwc0revhMR/X87Zo6BQ+VPXO2zOjFhckXDVvBsYY/JWoIeJsN/W+M6
         PdIunH9zSuy7W5P0OrDV533V1tv4kRFAUOnzF6wIDUtBpWsDwxkM6E66E3IgMDHYuQnj
         8U3QaWE1vWStK2bi3WfeVukxDPXqwte21Vf+Jlhb1/57Enn9kIDYPq7UPXGZ7i6/+hJs
         uagvU4ZpKhs9qjqGRSP3aRWAB2BQd8VK6IlZI5H30iwsnSrCnTsZqQ9+E3PGHKsr/hrx
         EGag==
X-Gm-Message-State: AOAM530chY5ja1GrUvVsh9wST+VcKVcb51KTU5O61SUjmglZNtzOJf8E
	dCcMcVMltdAzcjglsed4j1/eMo7LLSF8PscFuSA=
X-Google-Smtp-Source: 
 ABdhPJwrZtxanjSiZ9ptteEqgIsPAEu03NOqmNMJfahm/vIwEtUOuBWbuV1btuEUU7a1HDlTMak2YE655R7NLrxox8o=
X-Received: by 2002:a05:6402:4404:: with SMTP id
 y4mr18438618eda.354.1636217361874;
 Sat, 06 Nov 2021 09:49:21 -0700 (PDT)
MIME-Version: 1.0
References: <JnQS.1636122755681200580.kFay@lists.yoctoproject.org>
 <61d3f746-107b-6dba-19dc-8e8786d6f26d@gmail.com>
 <SA1PR05MB804857BE5F3B9AE4EF05A108CC8E9@SA1PR05MB8048.namprd05.prod.outlook.com>
 <CADkTA4PbVEPtvSQEdND1X_VFF1HrDXF+hcmU4hchkzre=4tJ3g@mail.gmail.com>
 <SA1PR05MB80481FA071635A1E54982C0DCC8E9@SA1PR05MB8048.namprd05.prod.outlook.com>
 <CADkTA4M7_99Mo+h+vLEZbCV_JGHuJWoEW9+kv8odH4+YvzYrSg@mail.gmail.com>
 <SA1PR05MB80483F8BDBC50693DC1C8849CC8F9@SA1PR05MB8048.namprd05.prod.outlook.com>
In-Reply-To: 
 <SA1PR05MB80483F8BDBC50693DC1C8849CC8F9@SA1PR05MB8048.namprd05.prod.outlook.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Sat, 6 Nov 2021 12:49:10 -0400
Message-ID: 
 <CADkTA4M_Z+o5-ipi3XPf3UO-i4ajY71g28o43HBFT9S7roJTAQ@mail.gmail.com>
Subject: Re: [yocto] #golang Build tools required during go generate
To: =?UTF-8?Q?Sebastian_R=C3=BChl?= <sebastian@mapped.com>
Cc: Khem Raj <raj.khem@gmail.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 06 Nov 2021 16:49:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55263

I tweaked the recipe a bit (you should use SRCREV, versus a tag), etc,
and added some link flags to make things static.

This tends to be why I write my own do_compile for go applications, so
I can use the provided Makefiles when possible (although there were a
few bad things in the project Makefile .. so using the built in
go.bbclass works just as well).

The almost-no-testing recipe is here:

https://git.yoctoproject.org/cgit/cgit.cgi/meta-virtualization/commit/?h=3D=
easyjson&id=3Db64de1f188e6f675cadf02c77bc72b06ed728eeb

I did see segfaults with other combinations of flags, but I didn't go
back to isolate if all of my tweaks are required or not.

build [/home/bruc...9d7f52f-r0]> ./build/bin/easyjson
Usage of ./build/bin/easyjson:

Bruce


Bruce

On Sat, Nov 6, 2021 at 10:14 AM Sebastian R=C3=BChl <sebastian@mapped.com> =
wrote:
>
> Sure here you go:
>
>
>
> ```
>
> SUMMARY =3D "easyjson"
>
> DESCRIPTION =3D "easy json command util"
>
> HOMEPAGE =3D "https://github.com/mailru/easyjson"
>
> LICENSE =3D "MIT"
>
> LIC_FILES_CHKSUM =3D "file://src/${GO_IMPORT}/LICENSE;md5=3D819e81c2ec13e=
1bbc47dc5e90bb4d88b"
>
>
>
> RDEPENDS_${PN}-dev +=3D "bash"
>
>
>
> SRC_URI =3D "git://${GO_IMPORT};nobranch=3D1;protocol=3Dhttps"
>
> SRCREV =3D "v${PV}"
>
>
>
> GO_IMPORT =3D "github.com/mailru/easyjson"
>
> GO_WORKDIR ?=3D "${GO_IMPORT}/easyjson"
>
>
>
> GO_LINKSHARED =3D ""
>
> export CGO_ENABLED =3D "0"
>
>
>
> inherit go-mod
>
> BBCLASSEXTEND =3D "native"
>
> # Upstream class "forgot" this argument
>
> GOBUILDFLAGS:append =3D " -trimpath"
>
>
>
> INSANE_SKIP =3D "arch"
>
> ```
>
>
>
> Sebastian
>
>
>
> Von: Bruce Ashfield <bruce.ashfield@gmail.com>
> Datum: Freitag, 5. November 2021 um 21:51
> An: Sebastian R=C3=BChl <sebastian@mapped.com>
> Cc: Khem Raj <raj.khem@gmail.com>, yocto@lists.yoctoproject.org <yocto@li=
sts.yoctoproject.org>
> Betreff: Re: [yocto] #golang Build tools required during go generate
>
> On Fri, Nov 5, 2021 at 3:18 PM Sebastian R=C3=BChl <sebastian@mapped.com>=
 wrote:
> >
> > Yep might be=E2=80=A6 For me that=E2=80=99s desirable as these a built-=
utils, it=E2=80=99s golang and I see no benefit in having them dynamically =
linked anyay. Any tips how to statically link these? As far as I understand=
 the golang classes do dynamic linking by default. Btw. I=E2=80=99m using t=
he backported 1.16 versions from hardknot but I don=E2=80=99t think that ma=
tters as our =E2=80=9Cmain=E2=80=9D application works just perfectly fine o=
n the target hardware.
> >
> >
> >
> > I tried:
> >
> > GO_LINKSHARED =3D ""
> >
> > export CGO_ENABLED =3D "0"
>
> It varies based on the application, the ones I've dealt with, tend to
> have a -static flag.
>
> Of course, the flag may not be exposed, and in those scenarios, I
> patch the Makefile/build.
>
> If you have public repos, or a pointer to the source of the
> applications, I could have a look to see if there's anything I can
> specifically recommend.
>
> Bruce
>
> >
> >
> >
> > But it didn=E2=80=99t help =E2=98=B9
> >
> >
> >
> > Sebastian
> >
> >
> >
> > Von: Bruce Ashfield <bruce.ashfield@gmail.com>
> > Datum: Freitag, 5. November 2021 um 20:07
> > An: Sebastian R=C3=BChl <sebastian@mapped.com>
> > Cc: Khem Raj <raj.khem@gmail.com>, yocto@lists.yoctoproject.org <yocto@=
lists.yoctoproject.org>
> > Betreff: Re: [yocto] #golang Build tools required during go generate
> >
> > I'd bet it is a variant of this:
> >
> > https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14386
> >
> > Bruce
> >
> > On Fri, Nov 5, 2021 at 2:58 PM Sebastian R=C3=BChl <sebastian@mapped.co=
m> wrote:
> > >
> > > Here some outputs:
> > >
> > >
> > >
> > > Bitbake -c devshell target-recipe
> > >
> > > sh-4.4# easyjson
> > >
> > > Segmentation fault
> > >
> > > sh-4.4# strace easyjson
> > >
> > > execve("/workdir/build/tmp/work/aarch64-fslc-linux/datadog-agent/7.31=
.1-r0/recipe-sysroot-native/usr/bin/easyjson", ["easyjson"], 0x7ffc7e88d530=
 /* 138 vars */) =3D 0
> > >
> > > brk(NULL)                               =3D 0x556083886000
> > >
> > > arch_prctl(0x3001 /* ARCH_??? */, 0x7fffd54fcc80) =3D -1 EINVAL (Inva=
lid argument)
> > >
> > > --- SIGSEGV {si_signo=3DSIGSEGV, si_code=3DSEGV_MAPERR, si_addr=3D0x5=
56083a1d000} ---
> > >
> > > +++ killed by SIGSEGV +++
> > >
> > > Segmentation fault
> > >
> > > sh-4.4# file $(which easyjson)
> > >
> > > /workdir/build/tmp/work/aarch64-fslc-linux/datadog-agent/7.31.1-r0/re=
cipe-sysroot-native/usr/bin/easyjson: ELF 64-bit LSB shared object, x86-64,=
 version 1 (SYSV), dynamically linked, interpreter /workdir/build/tmp/sysro=
ots-uninative/x86_64-linux/lib/ld-linux-x86-64.so.2, stripped
> > >
> > > sh-4.4# gdb $(which easyjson)
> > >
> > > GNU gdb (Ubuntu 8.1.1-0ubuntu1) 8.1.1
> > >
> > > Copyright (C) 2018 Free Software Foundation, Inc.
> > >
> > > License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/g=
pl.html>
> > >
> > > This is free software: you are free to change and redistribute it.
> > >
> > > There is NO WARRANTY, to the extent permitted by law.  Type "show cop=
ying"
> > >
> > > and "show warranty" for details.
> > >
> > > This GDB was configured as "x86_64-linux-gnu".
> > >
> > > Type "show configuration" for configuration details.
> > >
> > > For bug reporting instructions, please see:
> > >
> > > <http://www.gnu.org/software/gdb/bugs/>.
> > >
> > > Find the GDB manual and other documentation resources online at:
> > >
> > > <http://www.gnu.org/software/gdb/documentation/>.
> > >
> > > For help, type "help".
> > >
> > > Type "apropos word" to search for commands related to "word"...
> > >
> > > Reading symbols from /workdir/build/tmp/work/aarch64-fslc-linux/datad=
og-agent/7.31.1-r0/recipe-sysroot-native/usr/bin/easyjson...(no debugging s=
ymbols found)...done.
> > >
> > > (gdb) run
> > >
> > > Starting program: /workdir/build/tmp/work/aarch64-fslc-linux/datadog-=
agent/7.31.1-r0/recipe-sysroot-native/usr/bin/easyjson
> > >
> > > warning: Error disabling address space randomization: Operation not p=
ermitted
> > >
> > > BFD: warning: /workdir/build/tmp/sysroots-uninative/x86_64-linux/lib/=
ld-linux-x86-64.so.2: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0010001
> > >
> > > BFD: warning: /workdir/build/tmp/sysroots-uninative/x86_64-linux/lib/=
ld-linux-x86-64.so.2: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0010002
> > >
> > > BFD: warning: /workdir/build/tmp/sysroots-uninative/x86_64-linux/lib/=
.debug/ld-2.33.so: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0010001
> > >
> > > BFD: warning: /workdir/build/tmp/sysroots-uninative/x86_64-linux/lib/=
.debug/ld-2.33.so: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0010002
> > >
> > >
> > >
> > > Program received signal SIGSEGV, Segmentation fault.
> > >
> > > 0x00007fcfd962c2fa in strcmp () from /workdir/build/tmp/sysroots-unin=
ative/x86_64-linux/lib/ld-linux-x86-64.so.2
> > >
> > > (gdb)
> > >
> > >
> > >
> > > Hope that helps=E2=80=A6.
> > >
> > >
> > >
> > > Small background: Yocto on dunfell, build with poky docker image
> > >
> > >
> > >
> > > Von: Khem Raj <raj.khem@gmail.com>
> > > Datum: Freitag, 5. November 2021 um 18:29
> > > An: Sebastian R=C3=BChl <sebastian@mapped.com>, yocto@lists.yoctoproj=
ect.org <yocto@lists.yoctoproject.org>
> > > Betreff: Re: [yocto] #golang Build tools required during go generate
> > >
> > >
> > >
> > > On 11/5/21 7:32 AM, sebastian@mapped.com wrote:
> > > > Hi yoto-devs/users,
> > > >
> > > > in order to get a golang application to run which relies on `go
> > > > generate` calls I wrote special recipes for this tools and include =
them
> > > > in my original recipe. However I always get a segmentation fault.
> > > > In the tools (which happens to be based on golang too) I use [1] in=
 the
> > > > recipes and in the recipe I want to use them I include them via [2]=
.
> > > > However if for example enter the dev-shell or during build I get a
> > > > segmentation fault although the binary seems to be compiled for the
> > > > right architecture (host-amd64).
> > > > Is there something wrong I try to use that?
> > >
> > > do you have stack trace ? that might give some more info on whats goi=
ng on
> > >
> > > >
> > > > Sebastian
> > > >
> > > > [1]
> > > > inherit go-mod
> > > > BBCLASSEXTEND =3D "native"
> > > > [2]
> > > > DEPENDS +=3D "random-go-tool-needed-by-recipe-native"
> > > >
> > > >
> > > >
> > > >
> > >
> > >
> > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > > Links: You receive all messages sent to this group.
> > > View/Reply Online (#55255): https://lists.yoctoproject.org/g/yocto/me=
ssage/55255
> > > Mute This Topic: https://lists.yoctoproject.org/mt/86841696/1050810
> > > Mute #golang:https://lists.yoctoproject.org/g/yocto/mutehashtag/golan=
g
> > > Group Owner: yocto+owner@lists.yoctoproject.org
> > > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [bruce.ashf=
ield@gmail.com]
> > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > >
> >
> >
> > --
> > - Thou shalt not follow the NULL pointer, for chaos and madness await
> > thee at its end
> > - "Use the force Harry" - Gandalf, Star Trek II
>
>
>
> --
> - Thou shalt not follow the NULL pointer, for chaos and madness await
> thee at its end
> - "Use the force Harry" - Gandalf, Star Trek II



--
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

