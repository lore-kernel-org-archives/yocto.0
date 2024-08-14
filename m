Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70230C3DA4A
	for <webhook@archiver.kernel.org>; Wed, 14 Aug 2024 19:36:23 +0000 (UTC)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
 by mx.groups.io with SMTP id smtpd.web10.106874.1723664178873711223
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Aug 2024 12:36:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=P8hWo7jk;
 spf=pass (domain: gmail.com, ip: 209.85.167.46, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-530e2548dfdso232972e87.1
        for <yocto@lists.yoctoproject.org>; Wed, 14 Aug 2024 12:36:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723664177; x=1724268977; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XtICOS/aLEWE2fnf0o9w0wP/AEYkWo2tnkGDhMJHMjU=;
        b=P8hWo7jkGnctRtQfa+bqi5u6BEJ2zpz9jdDB5uM7XeflFLayOSl/+/QE7jkxl5/IAD
         SMdH3W++pDrMCsU7BtCPpBo8gXX76cH1pFz1zXxJodEjePN7tQ0q9glQrBzLV6NW6Fn6
         3GyjkkHXzrEFxNyw4RZ1zyRBQUXXDLPz471hlSPIA66trlrI40BytbmxYW5qZlLnXgpd
         RsroFULRsi4N8D09knFNfIpGMnm8Lbvn6xejPwdEYsPsmNipeI0G0J4GIP8WvzJMZz78
         kC3XSqL7ZqJ15sR00txY17jVLy2sLPZZzPEqytFuMu3dQfIs24KvLlyKCFH7wHaSh7t7
         EMdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723664177; x=1724268977;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XtICOS/aLEWE2fnf0o9w0wP/AEYkWo2tnkGDhMJHMjU=;
        b=FzI6XbTnToVPhyOm9U9GVRoZp39D3xnxRo9PJCJ2ni9CLNuJJzUxTHhkv49WXbsTgq
         IK1JbiJkC372RicK/W/9pjim6kSspbN3wkWN4AAYdliJk2k3T+ElJlxllQHX7rme8BSA
         ZoYPVkKtagd51CDpFJYQNDk9/+sLJl/ke2LTniz3gbzqCLA7PcFvy48RNgy2kzuoPg/a
         QSgyeFduO0yy5dau8OaBk/IgEsVKjDg4JJFxySh+kJ8Hi29j+p+9QZG9XyPltkMaiLl8
         1dpjZ2WsU9gAdwmn5YJVanfF2XwrtLgSFJTE/cG7NoW9bPaxKdtI/9VoGl2KmXJk7q83
         qxuQ==
X-Gm-Message-State: AOJu0YwZ04IZDUa7WIyncBvEX/sXYKGzsxRK9cLi0gl0RJhen3QrOZ0K
	HrCbNqlibAd6MhreYo3jfmS2WduYt9rjnFQKNo2JoGGAKQANV9rytst2fGhCiFRaTBq+woCynAI
	vZP8tpRDTCTEe7qATKWi5HqTZZ9iL2g==
X-Google-Smtp-Source: AGHT+IF2fQtWQ7yyWpjoahs3s/xbMehXtcbSN+YsO6v0eEAsDDS2604Y11FzLCC+98d+UjXCqtrNsMJCRrTXbvHBWLc=
X-Received: by 2002:a05:6512:2391:b0:530:ac0a:15e6 with SMTP id
 2adb3069b0e04-532eda59e57mr2106649e87.12.1723664176518; Wed, 14 Aug 2024
 12:36:16 -0700 (PDT)
MIME-Version: 1.0
References: <MADEUP.17EBAE4E6A437742.17352@lists.yoctoproject.org> <CAMKF1so5j+Pybn90f2_bCZHEUjGD0TGNqjb1rJgpJbxjdQguVw@mail.gmail.com>
In-Reply-To: <CAMKF1so5j+Pybn90f2_bCZHEUjGD0TGNqjb1rJgpJbxjdQguVw@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 14 Aug 2024 21:36:05 +0200
Message-ID: <CANNYZj8OMoGL5h9nGfht0w=KizX-FZuY6kFhGFb8Qv1dFAwM4w@mail.gmail.com>
Subject: Re: [yocto] Parallel builds under yocto
To: yocto@lists.yoctoproject.org, raj.khem@gmail.com
Cc: steven.monsees@baesystems.us
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 14 Aug 2024 19:36:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63701

Also there are sensible defaults for both, which use autodetection for
how many cores a system cpu has. Generally you need to start tweaking
these settings only when defaults aren't working well (e.g. if the
system doesn't have enough RAM to support that many instances of gcc).

Alex

On Wed, 14 Aug 2024 at 21:25, Khem Raj via lists.yoctoproject.org
<raj.khem=3Dgmail.com@lists.yoctoproject.org> wrote:
>
> On Wed, Aug 14, 2024 at 12:15=E2=80=AFPM Monsees, Steven C (US) via
> lists.yoctoproject.org
> <steven.monsees=3Dbaesystems.us@lists.yoctoproject.org> wrote:
> >
> > Hello:
> >
> > I am looking for some clarity with regards too parallel builds under Yo=
cto=E2=80=A6
> >
> > I think I had a false assumption on setting PARALEL_MAKE=E2=80=A6
> >
> > To increase thread usage: You add following to your local.conf inside t=
he build/conf directory. Replace x and y with your wanted configuration.
> >
> > PARALLEL_MAKE =3D "-j x"
> >
> >
> >
> > BB_NUMBER_THREADS =3D "y"
> >
> >
> >
> > Is the following true ?
> >
> >
> >
> > PARALLEL_MAKE defines how many threads should be used/dedicated when us=
ing make -j command during do_compile.
> >
> >
>
> seems correct.
>
> >
> > BB_NUMBER_THREADS defines number of threads dedicated for bitbake.
>
> It means how many jobs/tasks can bitbake spawn in parallel, its higher
> order than parallel make.
>
> >
> >
> >
> > I set up like so:
> >
> >
> >
> > There are 12 cores my board
> >
> >
> >
> > Yocto supporters say threads should be 2 times the number of cores, but=
 don=E2=80=99t go above 20=E2=80=A6, or just the number cores, also under 2=
0=E2=80=A6 depending on what you read.
> >
> >
> >
> > They also say, increasing PARALLEL_MAKE to higher values, increases you=
r chance for a race condition.
> >
> >
> >
> > Is the following true ?
> >
> >
> >
> > PARALLEL_MAKE =3D "-j x"  # For do_compile
> >
> >
> >
> > BB_NUMBER_THREADS =3D "y"  # For bitbake
> >
> >
> >
> > PARALLEL_MAKEINST =3D "-j x"  # For do_install
> >
> >
> >
> > If so, does this mean for 12 cores:
> >
> >
> >
> > BB_NUMBER_THREADS=3D"8", will this dedicate 8 cores just for bitbake to=
 use ?
>
> No, it will not reserve 8 cores, rather it tells bitbake to launch 8
> task executions in parallel
> if bitbake deems them not dependent upon each other, e.g. every recipe
> has several tasks
> during build do_confgure, do_compile, do_install etc. and there are
> several recipes in build
> queue, then bitbake's task manager can find out non-dependent tasks
> and execute them
> in parallel, now be aware that in some cases it could be executing 8
> tasks which could be
> all do_compile tasks for different recipes, in this case your
> parallelism will become -j 8*8
> systemwide.
>
> >
> >
> >
> > And does this dedicate the remaining 4 for do_compile and do_install ?
> >
> >
> >
> > PARALLEL_MAKE=3D"-j 2"
> >
> > PARALLEL_MAKEINST=3D"-j 2=E2=80=9D
> >
> >
> >
> > Thank you=E2=80=A6
> >
> >
> >
> > Steve
> >
> >
> >
> >
> >
> >
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63700): https://lists.yoctoproject.org/g/yocto/messag=
e/63700
> Mute This Topic: https://lists.yoctoproject.org/mt/107901352/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

