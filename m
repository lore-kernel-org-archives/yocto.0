Return-Path: <aladyshev22@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B63C6C5478C
	for <webhook@archiver.kernel.org>; Fri, 23 Feb 2024 22:26:28 +0000 (UTC)
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com [209.85.217.47])
 by mx.groups.io with SMTP id smtpd.web10.7871.1708727187372846432
 for <yocto@lists.yoctoproject.org>;
 Fri, 23 Feb 2024 14:26:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=hO6Q8oRa;
 spf=pass (domain: gmail.com, ip: 209.85.217.47, mailfrom: aladyshev22@gmail.com)
Received: by mail-vs1-f47.google.com with SMTP id ada2fe7eead31-4703dcd55acso172823137.3
        for <yocto@lists.yoctoproject.org>; Fri, 23 Feb 2024 14:26:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708727186; x=1709331986; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ruEZxUhOLjTjbbvl4wMep1j9H27t8FWnLUuH/p8qB/w=;
        b=hO6Q8oRaKOoXKGLR6maZJ2vCsCJYjtNkLbAu/BxR7xXoDgcx+lVRE5qJ+i22cPtq62
         f/B64Wg9AF5CgMxnjc0rKhMcK27lHa4umSI54yaE/jNC/BFfKv9c0syZE/ZiQshAMgYT
         cOGIV5IgnzBoG04NKINxSYpeFUfG8TlE/IEGn5RnBkxDjf2lMFpFlbPCTkJT6/DAdvsN
         jrsO7mSjPyJ0p5ujHjZlXwozFjjRju5fT9orMgEtikf3GVrqNHWh3lQNfY5MhigRUILc
         CLBBte+qDHDiu26zRtFvp8O5THH3FR38MXMMTrz5h0pJ3nh1yCo5NnjigZHAe6nmNZzo
         wRTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708727186; x=1709331986;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ruEZxUhOLjTjbbvl4wMep1j9H27t8FWnLUuH/p8qB/w=;
        b=tJ3js1wOJmB/Hj8nE6HMrCb7itYfYapt4KVMPF4QoITLCVeZ8K4i7NqhQvHsjhK0fL
         SIiPGV7WnvheeAyTG+Yda36hlvgyZJi+fEVfzY5+ENBEKVeVQZjQ84hSrWKha5xPVC7w
         RmHltNbcpRBXvd1cEvkgcAOa34ss9XpZ/pA+g8FkuH8TRUjIyeBnBPCOkzgR2ZcKiZCl
         Ia9LKKYuBVGs8g0IcjPzQV2wt3cXlszsl5/QcKCd6nkNSwDofapmpWhUomCOPYNGHEv1
         0z6/QEM/bAI7VTv/uzZyw8PaHl1Z6Y1skJ/HkU7+bLg/DPviaNM2AtJ5igCp45maXo6K
         iZSA==
X-Forwarded-Encrypted: i=1; AJvYcCU/DOiEJzZOpU7uXlnOMj2q1T/Zil1u6iDwbjfXz50fygY+2s51R4k++z2zsbNcv73IJSfunXwTink15g3+koHqITIevLQJwzKSjsY7
X-Gm-Message-State: AOJu0YxhqkGucNEgkosTzswypXQs+It8RRW2HbP84WWjXMwAR6MI9TMl
	a/v+n63CTTAux3jiQDsUAhMevglbnKV28Exo+sPbdqT0sf1r0LNqrONxc/CdFUb0c02Nx36kQ/d
	V+u74owv/JOJrGSpOdqufEP7KoMs=
X-Google-Smtp-Source: AGHT+IESesXabhSkiWx+gnWjXszPqit29s0mrfqJ2aNFfaDZVvJuTryz65iJQ3rflQig2s9N5uYF86tQeQv25rISPIw=
X-Received: by 2002:a67:e8d1:0:b0:470:5b57:6943 with SMTP id
 y17-20020a67e8d1000000b004705b576943mr1080481vsn.31.1708727186371; Fri, 23
 Feb 2024 14:26:26 -0800 (PST)
MIME-Version: 1.0
References: <CACSj6VW3yitnPuAeg=VOXnhB7D5dN2_UD7KStSaDYug39YL3vg@mail.gmail.com>
 <CANNYZj9VBXUESuy91rfF1xbaN40AfU0trdevtLVgXgq37MLk5w@mail.gmail.com>
 <CACSj6VW19X4b7qq+prukimrrUhMYn6Xe2yorn2q6OnDjBYAPgw@mail.gmail.com>
 <CANNYZj-Rm-dKM1xc_e8mTobUgTE3uB8J_xEKDzfPCrJF7cWB7w@mail.gmail.com>
 <CADkTA4N-8JNL5_EOYicbsvAVtEMDzxUMQw6oyA9ckJ7c5fPA9w@mail.gmail.com>
 <CACSj6VV4WYA-QMrRub=dj70+V4Luf317Mt3j9yeLuA6YK9MJ2Q@mail.gmail.com>
 <CADkTA4OanM6BovM-1iLW=-gU3=UZQZYg7bomc-nzR5+3qEncMg@mail.gmail.com> <d0fe9e8b0ee7b8ee3c36189c297ac8194fd13326.camel@linuxfoundation.org>
In-Reply-To: <d0fe9e8b0ee7b8ee3c36189c297ac8194fd13326.camel@linuxfoundation.org>
From: Konstantin Aladyshev <aladyshev22@gmail.com>
Date: Sat, 24 Feb 2024 01:26:15 +0300
Message-ID: <CACSj6VWqwY633wrkZ1j3P5+Yz2feaTiKFndatBe85-N4QA-FYA@mail.gmail.com>
Subject: Re: [yocto] 'yocto-kernel-tools' requires git version much greater
 than general Yocto requirement
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Bruce Ashfield <bruce.ashfield@gmail.com>, yocto@lists.yoctoproject.org, 
	alex.kanavin@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 23 Feb 2024 22:26:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62590

Thanks Richard! That did the trick!

I've made the following changes to the "kern-tools-native_git.bb":
```
diff --git a/meta/recipes-kernel/kern-tools/kern-tools-native_git.bb
b/meta/recipes-kernel/kern-tools/kern-tools-native_git.bb
index 941160ea9c..7f8ea3e050 100644
--- a/meta/recipes-kernel/kern-tools/kern-tools-native_git.bb
+++ b/meta/recipes-kernel/kern-tools/kern-tools-native_git.bb
@@ -9,7 +9,7 @@ LIC_FILES_CHKSUM =3D "\
        file://Kconfiglib/LICENSE.txt;md5=3D712177a72a3937909543eda3ad1bfb7=
c \
 "

-DEPENDS =3D "git-native"
+DEPENDS =3D "git-replacement-native"

 SRCREV =3D "7160ebe8b865dd6028aef278efa219433db93f7e"
 PV =3D "0.3+git"
```
Is it ok? Can I send this patch to the mailing list?

Best regards,
Konstantin Aladyshev

On Sat, Feb 24, 2024 at 12:07=E2=80=AFAM Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
>
> On Fri, 2024-02-23 at 13:45 -0500, Bruce Ashfield wrote:
> > On Fri, Feb 23, 2024 at 12:15=E2=80=AFPM Konstantin Aladyshev
> > <aladyshev22@gmail.com> wrote:
> > >
> > > Should I see the new git version in the linux-yocto devshell?
> > > """
> > > bitbake linux-yocto -c devshell
> > > """
> > >
> > > I've tried to check it in the current poky master, and it gives me:
> > > """
> > > $/data/poky/build/workspace/sources/linux-yocto# git --version
> > > git version 2.30.2
> > > $/data/poky/build/workspace/sources/linux-yocto# which git
> > > /data/poky/scripts/git
> > > """
> > > So in this case host git is used. "bitbake kern-tools-native -c
> > > devshell" gives the same result.
> > > Can this be considered as a proof that git-native is not used?
> > >
> >
> > It is likely ASSUME_PROVIDED that is causing the issue, git-native is
> > in there, which means it is going to use the host version and not
> > build our -native recipe for it.
> >
> > We'll need some guidance from Richard on this, because the use of
> > that
> > flag in the git operations is in fact required for security reasons,
> > so it isn't going to be optional. If that means we need a minimum git
> > version or to use our own built one (and possibly the buildtools
> > tarball, etc), then those are the hoops we'll have to jump through.
> >
> > When I pulled git-native out of ASSUME_PROVIDED locally, I ended up
> > in
> > a dependency loop.
> >
> > I can have a closer look at this again on Monday, but i'm out of time
> > for it today.
>
> We do have a way to handle this.
>
> DEPENDS +=3D "git-replacement-native"
>
> should do it.
>
> Cheers,
>
> Richard

