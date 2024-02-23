Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8991C5478C
	for <webhook@archiver.kernel.org>; Fri, 23 Feb 2024 18:45:27 +0000 (UTC)
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
 by mx.groups.io with SMTP id smtpd.web10.2818.1708713924284798143
 for <yocto@lists.yoctoproject.org>;
 Fri, 23 Feb 2024 10:45:24 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=hbYD5ZbE;
 spf=pass (domain: gmail.com, ip: 209.85.216.50, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-29a2d0f69a6so871093a91.3
        for <yocto@lists.yoctoproject.org>; Fri, 23 Feb 2024 10:45:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708713924; x=1709318724; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/SxtREjvW/Zr8SPHN1JkrTCbllZLLySpX6H9lhqAnM4=;
        b=hbYD5ZbEE1iALx2B2/rlH0XYVjRv+XwFru55r6nsUttJRmOf5l6ux5q7AvnI7w04P/
         GQzKwArPC/SONzwpqQivxeo1Wa7y8Y3dXN9jW/wIEXDiJS9MPAPlTMX8dJJ1ylp8kO9r
         kDbP4vT9RIuvMa7/n44mcvcXQypaqUfj9PEw5LBzd9x23IlsD0ZOnnOQqNzHGyKI35i3
         u1vKHf7loCr0666JaNQZE+33NxqYmHOZ2UaJeFeB0Qg/5dpA6tw+LmCZAufeZKgSJGTA
         gISz3xXtfqlsvg3xVToIIqfgcNcYMsvnRSEeNfWs2Xj1lJV5EjCxqs8lwAA5SrxGzCYL
         XE8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708713924; x=1709318724;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/SxtREjvW/Zr8SPHN1JkrTCbllZLLySpX6H9lhqAnM4=;
        b=RCMLSYEfcMEsXpt9ZuRLJYl/d7CB9pRI/Ye2waHKX77pVZyvpgJWql8pLP9LXDo63Q
         SmFgBKu4XhdwN5rTeaj42NAzc8/YGvH+Ow/r50kaUpJ7/qVvA1PDqL883yhF+JJaj2YL
         /UoE/xnyPa60eXogMSY8W5vpS9o0iSUCSxA1qgfNf9jNsVQHmPwt5kOxtvASQjsoeVoE
         2pVhiGO+eyBS7JSnXFlDu4BikGOMoa6hBti9ws+j79/OUfBvTsTzaI4kWhFgIhA2L99B
         o8bvxA+5VLmTZsWH/djBpJ5W5rtf09MHqYy/ryn9KIGiQndujKMpQa0ezp54XCc7Fptl
         HnkA==
X-Gm-Message-State: AOJu0YyXuPXZ5e0SlGt1QDCfE+ulvVbCCeT9SyI+j/QXqkNVmaUGum8a
	8Eugx78wmtUguPWjk+CNXscuJQCqc5ku3oi2mczrTD9WmLWG/ldkwkNZ/v3nqiI8mS2H9e2qOtz
	G8vgkX40r0ezFtBPbkiF9m8NLzJs=
X-Google-Smtp-Source: AGHT+IFgZePZ5MklZAgogWFn7FC6JVGum5+GWR4WDG3ZnxzMvm0Z9XOhZbm4ykJGelvXyh5JHnsA8NzKVKWONiFk/P0=
X-Received: by 2002:a17:90a:a011:b0:299:3f16:184 with SMTP id
 q17-20020a17090aa01100b002993f160184mr867333pjp.34.1708713923468; Fri, 23 Feb
 2024 10:45:23 -0800 (PST)
MIME-Version: 1.0
References: <CACSj6VW3yitnPuAeg=VOXnhB7D5dN2_UD7KStSaDYug39YL3vg@mail.gmail.com>
 <CANNYZj9VBXUESuy91rfF1xbaN40AfU0trdevtLVgXgq37MLk5w@mail.gmail.com>
 <CACSj6VW19X4b7qq+prukimrrUhMYn6Xe2yorn2q6OnDjBYAPgw@mail.gmail.com>
 <CANNYZj-Rm-dKM1xc_e8mTobUgTE3uB8J_xEKDzfPCrJF7cWB7w@mail.gmail.com>
 <CADkTA4N-8JNL5_EOYicbsvAVtEMDzxUMQw6oyA9ckJ7c5fPA9w@mail.gmail.com> <CACSj6VV4WYA-QMrRub=dj70+V4Luf317Mt3j9yeLuA6YK9MJ2Q@mail.gmail.com>
In-Reply-To: <CACSj6VV4WYA-QMrRub=dj70+V4Luf317Mt3j9yeLuA6YK9MJ2Q@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Fri, 23 Feb 2024 13:45:12 -0500
Message-ID: <CADkTA4OanM6BovM-1iLW=-gU3=UZQZYg7bomc-nzR5+3qEncMg@mail.gmail.com>
Subject: Re: [yocto] 'yocto-kernel-tools' requires git version much greater
 than general Yocto requirement
To: Konstantin Aladyshev <aladyshev22@gmail.com>, 
	Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: yocto@lists.yoctoproject.org, alex.kanavin@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 23 Feb 2024 18:45:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62586

On Fri, Feb 23, 2024 at 12:15=E2=80=AFPM Konstantin Aladyshev
<aladyshev22@gmail.com> wrote:
>
> Should I see the new git version in the linux-yocto devshell?
> """
> bitbake linux-yocto -c devshell
> """
>
> I've tried to check it in the current poky master, and it gives me:
> """
> $/data/poky/build/workspace/sources/linux-yocto# git --version
> git version 2.30.2
> $/data/poky/build/workspace/sources/linux-yocto# which git
> /data/poky/scripts/git
> """
> So in this case host git is used. "bitbake kern-tools-native -c
> devshell" gives the same result.
> Can this be considered as a proof that git-native is not used?
>

It is likely ASSUME_PROVIDED that is causing the issue, git-native is
in there, which means it is going to use the host version and not
build our -native recipe for it.

We'll need some guidance from Richard on this, because the use of that
flag in the git operations is in fact required for security reasons,
so it isn't going to be optional. If that means we need a minimum git
version or to use our own built one (and possibly the buildtools
tarball, etc), then those are the hoops we'll have to jump through.

When I pulled git-native out of ASSUME_PROVIDED locally, I ended up in
a dependency loop.

I can have a closer look at this again on Monday, but i'm out of time
for it today.

Bruce


Bruce

> Konstantin
>
> On Fri, Feb 23, 2024 at 4:11=E2=80=AFPM Bruce Ashfield <bruce.ashfield@gm=
ail.com> wrote:
> >
> > On Fri, Feb 23, 2024 at 6:43=E2=80=AFAM Alexander Kanavin
> > <alex.kanavin@gmail.com> wrote:
> > >
> > > On Fri, 23 Feb 2024 at 12:32, Konstantin Aladyshev
> > > <aladyshev22@gmail.com> wrote:
> > > > Thanks for the response! What would be a proper way to fix this pro=
blem then?
> > >
> > > 1. show how to reproduce the issue in plain poky master.
> > > 2. check why none of the tests expose the issue. You can for example
> > > grep related keywords in meta/lib/oeqa/selftest/cases. I think there
> > > are tests that check devtool kernel operations there.
> > > 3. see if existing tests can be easily extended to cover it, so that
> > > they fail without a fix.
> > > 4. perhaps the fix would be to check git version first, and add the
> > > argument only if the version is recent enough.
> >
> > Which unfortunately would still leave the problem that the change is
> > intended to fix, so I wouldn't want to merge any patches to make it
> > conditional in the kern-tools.
> >
> > Those changes were made to prevent git operations from running
> > hooks from the host environment, for both security and consistency
> > reasons.
> >
> > We added git-native to the kern-tools-native recipe to get a consistent=
ly
> > new version available for any operations involving the tools.
> >
> > So I'd add another question .. why is this operation not using our
> > natively built git ? Is there something going on with the path, environ=
ment
> > or something else that we missed when adding that native dependency.
> >
> > Bruce
> >
> > >
> > > Alex
> > >
> > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > > Links: You receive all messages sent to this group.
> > > View/Reply Online (#62579): https://lists.yoctoproject.org/g/yocto/me=
ssage/62579
> > > Mute This Topic: https://lists.yoctoproject.org/mt/104509876/1050810
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



--
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

