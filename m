Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2D8FCC433F5
	for <webhook@archiver.kernel.org>; Fri,  5 Nov 2021 20:51:10 +0000 (UTC)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com
 [209.85.167.53])
 by mx.groups.io with SMTP id smtpd.web09.11348.1636145469243640414
 for <yocto@lists.yoctoproject.org>;
 Fri, 05 Nov 2021 13:51:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=klgGDwBS;
 spf=pass (domain: gmail.com, ip: 209.85.167.53,
 mailfrom: bruce.ashfield@gmail.com)
Received: by mail-lf1-f53.google.com with SMTP id f3so21057701lfu.12
        for <yocto@lists.yoctoproject.org>;
 Fri, 05 Nov 2021 13:51:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=9DDxyP87afpMMtxeXuU25D7MNlpKIkzULYcCD0cjU/4=;
        b=klgGDwBSLHNWKAvsITc4SVQvgBKLObO8tHzwn/ULKL7aAq9Wzs8/PuVtvN7Z4cBB/C
         CGOfWfaVWZdvh36QBqDXEk+MMZRJqUNb8aqHuWqJ+HGBLEBNNdc+nWDrsfhL5CFkD/QE
         g4sfhY54hAs7Be8zh0e4AsSsogxzUC6laCmzXn417N0Z75IUQY4/nvuuKjlQs5Y86MVi
         rnleVIjZPQcpzn5CExYK8J2qQn7W4ozhfsMOVgEmB69Xj/ohfDDuaycm1Sdv+GBo098d
         Qhk1aYOO/GnGKYBYP/jfgzJ2+50MHvtRlua2w2jk7dsubHEV4+Se1goumzbWOyBJ8mcK
         kbkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=9DDxyP87afpMMtxeXuU25D7MNlpKIkzULYcCD0cjU/4=;
        b=yG2/cV3xHLYghgl6YztqvsGTjpDvS52dj8yUiF2oo2FfK2ViIcGwvFZfzMIBCsbdMe
         YKZ/JgwgRPjBEQ7zdfUslwQWzPuhGG7Vy4pE8tF/9kaOVuJ8NTbZZLIFZUfBSUuxIuiy
         IJ6iPnYKBJQoSiAAiFE1ancaUK/dNRmHKWpk4duToKzsbeFk1l4/gdUAWzTzI4VhjM7e
         K2fMQlAS/7yUady+JsDmB1s16NSERARGx3WPuuxjOK9Fq06dnv2knG93eqg/JcecwGvd
         2+Dgfnkzx+OYSDLGoqAblrKsPdp5bxEz+VZiKD95MuanVApo/bZlODJ+Zq2j9ADOY7xb
         uULQ==
X-Gm-Message-State: AOAM5314NyApM77wfsrtt+Dp0GE9e/DJ7tZ5h66ed+2S/K7LEoM8fIfm
	HBIqmFLmen7pSWyTV6QKzU2DSjKwSyGVJ5HS+Wo=
X-Google-Smtp-Source: 
 ABdhPJxhQ+QUHBYg/61X9KeV4hLkmOU3bBqFDC2+ZtvJYKq3xFAKwFOsFmb6ENKYBHKYsrxaIOxw2khYwnV1B7321S4=
X-Received: by 2002:a05:6512:10cb:: with SMTP id
 k11mr53954532lfg.327.1636145467374;
 Fri, 05 Nov 2021 13:51:07 -0700 (PDT)
MIME-Version: 1.0
References: <JnQS.1636122755681200580.kFay@lists.yoctoproject.org>
 <61d3f746-107b-6dba-19dc-8e8786d6f26d@gmail.com>
 <SA1PR05MB804857BE5F3B9AE4EF05A108CC8E9@SA1PR05MB8048.namprd05.prod.outlook.com>
 <CADkTA4PbVEPtvSQEdND1X_VFF1HrDXF+hcmU4hchkzre=4tJ3g@mail.gmail.com>
 <SA1PR05MB80481FA071635A1E54982C0DCC8E9@SA1PR05MB8048.namprd05.prod.outlook.com>
In-Reply-To: 
 <SA1PR05MB80481FA071635A1E54982C0DCC8E9@SA1PR05MB8048.namprd05.prod.outlook.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Fri, 5 Nov 2021 16:50:52 -0400
Message-ID: 
 <CADkTA4M7_99Mo+h+vLEZbCV_JGHuJWoEW9+kv8odH4+YvzYrSg@mail.gmail.com>
Subject: Re: [yocto] #golang Build tools required during go generate
To: =?UTF-8?Q?Sebastian_R=C3=BChl?= <sebastian@mapped.com>
Cc: Khem Raj <raj.khem@gmail.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 05 Nov 2021 20:51:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55258

On Fri, Nov 5, 2021 at 3:18 PM Sebastian R=C3=BChl <sebastian@mapped.com> w=
rote:
>
> Yep might be=E2=80=A6 For me that=E2=80=99s desirable as these a built-ut=
ils, it=E2=80=99s golang and I see no benefit in having them dynamically li=
nked anyay. Any tips how to statically link these? As far as I understand t=
he golang classes do dynamic linking by default. Btw. I=E2=80=99m using the=
 backported 1.16 versions from hardknot but I don=E2=80=99t think that matt=
ers as our =E2=80=9Cmain=E2=80=9D application works just perfectly fine on =
the target hardware.
>
>
>
> I tried:
>
> GO_LINKSHARED =3D ""
>
> export CGO_ENABLED =3D "0"

It varies based on the application, the ones I've dealt with, tend to
have a -static flag.

Of course, the flag may not be exposed, and in those scenarios, I
patch the Makefile/build.

If you have public repos, or a pointer to the source of the
applications, I could have a look to see if there's anything I can
specifically recommend.

Bruce

>
>
>
> But it didn=E2=80=99t help =E2=98=B9
>
>
>
> Sebastian
>
>
>
> Von: Bruce Ashfield <bruce.ashfield@gmail.com>
> Datum: Freitag, 5. November 2021 um 20:07
> An: Sebastian R=C3=BChl <sebastian@mapped.com>
> Cc: Khem Raj <raj.khem@gmail.com>, yocto@lists.yoctoproject.org <yocto@li=
sts.yoctoproject.org>
> Betreff: Re: [yocto] #golang Build tools required during go generate
>
> I'd bet it is a variant of this:
>
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14386
>
> Bruce
>
> On Fri, Nov 5, 2021 at 2:58 PM Sebastian R=C3=BChl <sebastian@mapped.com>=
 wrote:
> >
> > Here some outputs:
> >
> >
> >
> > Bitbake -c devshell target-recipe
> >
> > sh-4.4# easyjson
> >
> > Segmentation fault
> >
> > sh-4.4# strace easyjson
> >
> > execve("/workdir/build/tmp/work/aarch64-fslc-linux/datadog-agent/7.31.1=
-r0/recipe-sysroot-native/usr/bin/easyjson", ["easyjson"], 0x7ffc7e88d530 /=
* 138 vars */) =3D 0
> >
> > brk(NULL)                               =3D 0x556083886000
> >
> > arch_prctl(0x3001 /* ARCH_??? */, 0x7fffd54fcc80) =3D -1 EINVAL (Invali=
d argument)
> >
> > --- SIGSEGV {si_signo=3DSIGSEGV, si_code=3DSEGV_MAPERR, si_addr=3D0x556=
083a1d000} ---
> >
> > +++ killed by SIGSEGV +++
> >
> > Segmentation fault
> >
> > sh-4.4# file $(which easyjson)
> >
> > /workdir/build/tmp/work/aarch64-fslc-linux/datadog-agent/7.31.1-r0/reci=
pe-sysroot-native/usr/bin/easyjson: ELF 64-bit LSB shared object, x86-64, v=
ersion 1 (SYSV), dynamically linked, interpreter /workdir/build/tmp/sysroot=
s-uninative/x86_64-linux/lib/ld-linux-x86-64.so.2, stripped
> >
> > sh-4.4# gdb $(which easyjson)
> >
> > GNU gdb (Ubuntu 8.1.1-0ubuntu1) 8.1.1
> >
> > Copyright (C) 2018 Free Software Foundation, Inc.
> >
> > License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl=
.html>
> >
> > This is free software: you are free to change and redistribute it.
> >
> > There is NO WARRANTY, to the extent permitted by law.  Type "show copyi=
ng"
> >
> > and "show warranty" for details.
> >
> > This GDB was configured as "x86_64-linux-gnu".
> >
> > Type "show configuration" for configuration details.
> >
> > For bug reporting instructions, please see:
> >
> > <http://www.gnu.org/software/gdb/bugs/>.
> >
> > Find the GDB manual and other documentation resources online at:
> >
> > <http://www.gnu.org/software/gdb/documentation/>.
> >
> > For help, type "help".
> >
> > Type "apropos word" to search for commands related to "word"...
> >
> > Reading symbols from /workdir/build/tmp/work/aarch64-fslc-linux/datadog=
-agent/7.31.1-r0/recipe-sysroot-native/usr/bin/easyjson...(no debugging sym=
bols found)...done.
> >
> > (gdb) run
> >
> > Starting program: /workdir/build/tmp/work/aarch64-fslc-linux/datadog-ag=
ent/7.31.1-r0/recipe-sysroot-native/usr/bin/easyjson
> >
> > warning: Error disabling address space randomization: Operation not per=
mitted
> >
> > BFD: warning: /workdir/build/tmp/sysroots-uninative/x86_64-linux/lib/ld=
-linux-x86-64.so.2: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0010001
> >
> > BFD: warning: /workdir/build/tmp/sysroots-uninative/x86_64-linux/lib/ld=
-linux-x86-64.so.2: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0010002
> >
> > BFD: warning: /workdir/build/tmp/sysroots-uninative/x86_64-linux/lib/.d=
ebug/ld-2.33.so: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0010001
> >
> > BFD: warning: /workdir/build/tmp/sysroots-uninative/x86_64-linux/lib/.d=
ebug/ld-2.33.so: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0010002
> >
> >
> >
> > Program received signal SIGSEGV, Segmentation fault.
> >
> > 0x00007fcfd962c2fa in strcmp () from /workdir/build/tmp/sysroots-uninat=
ive/x86_64-linux/lib/ld-linux-x86-64.so.2
> >
> > (gdb)
> >
> >
> >
> > Hope that helps=E2=80=A6.
> >
> >
> >
> > Small background: Yocto on dunfell, build with poky docker image
> >
> >
> >
> > Von: Khem Raj <raj.khem@gmail.com>
> > Datum: Freitag, 5. November 2021 um 18:29
> > An: Sebastian R=C3=BChl <sebastian@mapped.com>, yocto@lists.yoctoprojec=
t.org <yocto@lists.yoctoproject.org>
> > Betreff: Re: [yocto] #golang Build tools required during go generate
> >
> >
> >
> > On 11/5/21 7:32 AM, sebastian@mapped.com wrote:
> > > Hi yoto-devs/users,
> > >
> > > in order to get a golang application to run which relies on `go
> > > generate` calls I wrote special recipes for this tools and include th=
em
> > > in my original recipe. However I always get a segmentation fault.
> > > In the tools (which happens to be based on golang too) I use [1] in t=
he
> > > recipes and in the recipe I want to use them I include them via [2].
> > > However if for example enter the dev-shell or during build I get a
> > > segmentation fault although the binary seems to be compiled for the
> > > right architecture (host-amd64).
> > > Is there something wrong I try to use that?
> >
> > do you have stack trace ? that might give some more info on whats going=
 on
> >
> > >
> > > Sebastian
> > >
> > > [1]
> > > inherit go-mod
> > > BBCLASSEXTEND =3D "native"
> > > [2]
> > > DEPENDS +=3D "random-go-tool-needed-by-recipe-native"
> > >
> > >
> > >
> > >
> >
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#55255): https://lists.yoctoproject.org/g/yocto/mess=
age/55255
> > Mute This Topic: https://lists.yoctoproject.org/mt/86841696/1050810
> > Mute #golang:https://lists.yoctoproject.org/g/yocto/mutehashtag/golang
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [bruce.ashfie=
ld@gmail.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >
>
>
> --
> - Thou shalt not follow the NULL pointer, for chaos and madness await
> thee at its end
> - "Use the force Harry" - Gandalf, Star Trek II



--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

