Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0E85C433EF
	for <webhook@archiver.kernel.org>; Fri,  5 Nov 2021 19:07:18 +0000 (UTC)
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com
 [209.85.167.51])
 by mx.groups.io with SMTP id smtpd.web09.10055.1636139237197094659
 for <yocto@lists.yoctoproject.org>;
 Fri, 05 Nov 2021 12:07:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=P1GR8nrE;
 spf=pass (domain: gmail.com, ip: 209.85.167.51,
 mailfrom: bruce.ashfield@gmail.com)
Received: by mail-lf1-f51.google.com with SMTP id d12so17116672lfv.6
        for <yocto@lists.yoctoproject.org>;
 Fri, 05 Nov 2021 12:07:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=UH3jsLwjfTsK262iANEzx9oNiPcbkoqIn9Vn9cS6Tp0=;
        b=P1GR8nrEfqM5QC12Eq3nPIi+AjqgFyin1bBNIKu3zQrfVleg6ya0goMwGJRXYGEBBO
         4FOBQnCePAMICawi8RDmVAqLbex5BCMuP+MBz8m/ubHN10kgZ0wkuB2CbEx/02sAKfu6
         6C1UvHw+lRFMkGdvPaoQVMZEsQQKM6VDEw6POOcAhw403krLFO2p4NqCIW/YxBsWezfP
         v+dOgvDFVXCElW+xTGoLbn0vQG9mkEkDrtOgXOwqB7/X2cgpgfmb2W3SHuGRBGdmD7WW
         AWXyzPZ90hj5Q+VqD9MGBcCPIVGfgDctsv8TnvCc5DgxxkS+zUsLn9e0shd6Sun3UTj0
         dgLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=UH3jsLwjfTsK262iANEzx9oNiPcbkoqIn9Vn9cS6Tp0=;
        b=h4LfXV8OJXFLP6SfGhn3KaXdHGDFXiHc3Ujuec58MXgZc/SvtlxBEwRiUrVpkEZBvH
         APTb1MGotr3vOEPkQhH0CatansEKq0IPLt0IAc9aTZDaBh2KkQhC66lqmazWYibZ2kg2
         rCNdWqgXvbXEX2TmTwpVJkdFi4e8b29pjYEGjWVrcHAskJStpZSyFuNAPM7DHR5Oo3as
         4usnWw/aJ8mX4phGews4ZVG2VJeXgOXo0gr8eI2g6DtxI/spc61cN0HEX9EdE1CgnRE5
         e12+CjTlr464+yUVZtL710nTTC4q7jXArQXSnhVJx9Dl639nea7IfKRAvl4Sndvfm5La
         VkDg==
X-Gm-Message-State: AOAM530H3k80UxKt/pDRqOIDwokYa7eKEG02h36uu6ns15Wdqr9FLP5q
	waWSKO9B4FGP5/dBmqYo+WfMl2RNysTGAmHYuCE=
X-Google-Smtp-Source: 
 ABdhPJzjVLLntoNMlS4faUx2HjUFWrHDwc46ptTFxzrz0yC92Vq39OgYUKGvwyc1LmxWn/zqscg7nJ0t8j7kzXZj8f4=
X-Received: by 2002:ac2:4f02:: with SMTP id k2mr53814594lfr.635.1636139235209;
 Fri, 05 Nov 2021 12:07:15 -0700 (PDT)
MIME-Version: 1.0
References: <JnQS.1636122755681200580.kFay@lists.yoctoproject.org>
 <61d3f746-107b-6dba-19dc-8e8786d6f26d@gmail.com>
 <SA1PR05MB804857BE5F3B9AE4EF05A108CC8E9@SA1PR05MB8048.namprd05.prod.outlook.com>
In-Reply-To: 
 <SA1PR05MB804857BE5F3B9AE4EF05A108CC8E9@SA1PR05MB8048.namprd05.prod.outlook.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Fri, 5 Nov 2021 15:07:03 -0400
Message-ID: 
 <CADkTA4PbVEPtvSQEdND1X_VFF1HrDXF+hcmU4hchkzre=4tJ3g@mail.gmail.com>
Subject: Re: [yocto] #golang Build tools required during go generate
To: =?UTF-8?Q?Sebastian_R=C3=BChl?= <sebastian@mapped.com>
Cc: Khem Raj <raj.khem@gmail.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 05 Nov 2021 19:07:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55256

I'd bet it is a variant of this:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14386

Bruce

On Fri, Nov 5, 2021 at 2:58 PM Sebastian R=C3=BChl <sebastian@mapped.com> w=
rote:
>
> Here some outputs:
>
>
>
> Bitbake -c devshell target-recipe
>
> sh-4.4# easyjson
>
> Segmentation fault
>
> sh-4.4# strace easyjson
>
> execve("/workdir/build/tmp/work/aarch64-fslc-linux/datadog-agent/7.31.1-r=
0/recipe-sysroot-native/usr/bin/easyjson", ["easyjson"], 0x7ffc7e88d530 /* =
138 vars */) =3D 0
>
> brk(NULL)                               =3D 0x556083886000
>
> arch_prctl(0x3001 /* ARCH_??? */, 0x7fffd54fcc80) =3D -1 EINVAL (Invalid =
argument)
>
> --- SIGSEGV {si_signo=3DSIGSEGV, si_code=3DSEGV_MAPERR, si_addr=3D0x55608=
3a1d000} ---
>
> +++ killed by SIGSEGV +++
>
> Segmentation fault
>
> sh-4.4# file $(which easyjson)
>
> /workdir/build/tmp/work/aarch64-fslc-linux/datadog-agent/7.31.1-r0/recipe=
-sysroot-native/usr/bin/easyjson: ELF 64-bit LSB shared object, x86-64, ver=
sion 1 (SYSV), dynamically linked, interpreter /workdir/build/tmp/sysroots-=
uninative/x86_64-linux/lib/ld-linux-x86-64.so.2, stripped
>
> sh-4.4# gdb $(which easyjson)
>
> GNU gdb (Ubuntu 8.1.1-0ubuntu1) 8.1.1
>
> Copyright (C) 2018 Free Software Foundation, Inc.
>
> License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.h=
tml>
>
> This is free software: you are free to change and redistribute it.
>
> There is NO WARRANTY, to the extent permitted by law.  Type "show copying=
"
>
> and "show warranty" for details.
>
> This GDB was configured as "x86_64-linux-gnu".
>
> Type "show configuration" for configuration details.
>
> For bug reporting instructions, please see:
>
> <http://www.gnu.org/software/gdb/bugs/>.
>
> Find the GDB manual and other documentation resources online at:
>
> <http://www.gnu.org/software/gdb/documentation/>.
>
> For help, type "help".
>
> Type "apropos word" to search for commands related to "word"...
>
> Reading symbols from /workdir/build/tmp/work/aarch64-fslc-linux/datadog-a=
gent/7.31.1-r0/recipe-sysroot-native/usr/bin/easyjson...(no debugging symbo=
ls found)...done.
>
> (gdb) run
>
> Starting program: /workdir/build/tmp/work/aarch64-fslc-linux/datadog-agen=
t/7.31.1-r0/recipe-sysroot-native/usr/bin/easyjson
>
> warning: Error disabling address space randomization: Operation not permi=
tted
>
> BFD: warning: /workdir/build/tmp/sysroots-uninative/x86_64-linux/lib/ld-l=
inux-x86-64.so.2: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0010001
>
> BFD: warning: /workdir/build/tmp/sysroots-uninative/x86_64-linux/lib/ld-l=
inux-x86-64.so.2: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0010002
>
> BFD: warning: /workdir/build/tmp/sysroots-uninative/x86_64-linux/lib/.deb=
ug/ld-2.33.so: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0010001
>
> BFD: warning: /workdir/build/tmp/sysroots-uninative/x86_64-linux/lib/.deb=
ug/ld-2.33.so: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0010002
>
>
>
> Program received signal SIGSEGV, Segmentation fault.
>
> 0x00007fcfd962c2fa in strcmp () from /workdir/build/tmp/sysroots-uninativ=
e/x86_64-linux/lib/ld-linux-x86-64.so.2
>
> (gdb)
>
>
>
> Hope that helps=E2=80=A6.
>
>
>
> Small background: Yocto on dunfell, build with poky docker image
>
>
>
> Von: Khem Raj <raj.khem@gmail.com>
> Datum: Freitag, 5. November 2021 um 18:29
> An: Sebastian R=C3=BChl <sebastian@mapped.com>, yocto@lists.yoctoproject.=
org <yocto@lists.yoctoproject.org>
> Betreff: Re: [yocto] #golang Build tools required during go generate
>
>
>
> On 11/5/21 7:32 AM, sebastian@mapped.com wrote:
> > Hi yoto-devs/users,
> >
> > in order to get a golang application to run which relies on `go
> > generate` calls I wrote special recipes for this tools and include them
> > in my original recipe. However I always get a segmentation fault.
> > In the tools (which happens to be based on golang too) I use [1] in the
> > recipes and in the recipe I want to use them I include them via [2].
> > However if for example enter the dev-shell or during build I get a
> > segmentation fault although the binary seems to be compiled for the
> > right architecture (host-amd64).
> > Is there something wrong I try to use that?
>
> do you have stack trace ? that might give some more info on whats going o=
n
>
> >
> > Sebastian
> >
> > [1]
> > inherit go-mod
> > BBCLASSEXTEND =3D "native"
> > [2]
> > DEPENDS +=3D "random-go-tool-needed-by-recipe-native"
> >
> >
> >
> >
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55255): https://lists.yoctoproject.org/g/yocto/messag=
e/55255
> Mute This Topic: https://lists.yoctoproject.org/mt/86841696/1050810
> Mute #golang:https://lists.yoctoproject.org/g/yocto/mutehashtag/golang
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [bruce.ashfield=
@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>


--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

