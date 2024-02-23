Return-Path: <aladyshev22@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0921FC5478C
	for <webhook@archiver.kernel.org>; Fri, 23 Feb 2024 20:18:38 +0000 (UTC)
Received: from mail-vk1-f173.google.com (mail-vk1-f173.google.com [209.85.221.173])
 by mx.groups.io with SMTP id smtpd.web10.5080.1708719513373348522
 for <yocto@lists.yoctoproject.org>;
 Fri, 23 Feb 2024 12:18:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=RaVPf3PC;
 spf=pass (domain: gmail.com, ip: 209.85.221.173, mailfrom: aladyshev22@gmail.com)
Received: by mail-vk1-f173.google.com with SMTP id 71dfb90a1353d-4affeacaff9so301802e0c.3
        for <yocto@lists.yoctoproject.org>; Fri, 23 Feb 2024 12:18:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708719512; x=1709324312; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GftyP2q9DgQ+n4ETT3I+kGpgrQ9m1766o2YASbzWO7U=;
        b=RaVPf3PCv1OC/2YS6Semb0jN3qSrzTCu/rrkLl5UhnrBSGuBANR5gU5whvvkvAH8hV
         fMJfdWnLEPeCTvYOzo7xhrVvhPjiuVCbnnI2ATXHWtTaEQhP3vnOnZWCZaSFR5fETBjk
         9Pm3x88tP6wYpXRIJLTytPN8NqqXSINLLj4VTj6gz0dbEoAGnpHRdd07YTvoDqGIwsTv
         2TEVchOIRcuFZS7qK3kfWix/nyavTvYzXoCD3GJ/Si4wT6bXB70o+7wGI65swFdi7h1Z
         vBGICp49Y/hgRZttuDCGNZLxwpJbVAT7fMY0GfMQsmXlj4Dosa14RtLg4WAdBnhUOn2x
         qAEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708719512; x=1709324312;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GftyP2q9DgQ+n4ETT3I+kGpgrQ9m1766o2YASbzWO7U=;
        b=o/TqgPVxSnAoYmprGR8ObRnrbxyssPrVwsBpxVMWD41bkDNQSH/3BDh5ZVU5VzQWGZ
         OoBz3vUwE8z5uqtBYeK8+UCUHKcscn8qckhUES63vOENdnZ++T9dIscAxgrIWqRv0gQ2
         vR32smVenRwUAzpsTBjCRXslvm0awJVcK+K2kiOZUw0hAzp0YL285sSVXRAbBlR/XOOg
         L+RQDa2mi6VRe/lLo5x0xa+/2FEkooReHt6B5apL0ayEAyqdCTjChuPkyJBx+nLhgXOm
         7eBOVs8iVkKZsRcMcdjVCRmUx9ZnjBN/PZoTIPUNCxmlgH254mxZjn8wvtVQC7SYcx2c
         EHcw==
X-Forwarded-Encrypted: i=1; AJvYcCWT+SEuI92dy/v5rJ0n2mRmbV+QvE9H14cEBILumLuxBBWA75mGm6qOnpTKB8iWISpxhbyBdiQhLnfrlSqOK+QaGX7MHCuDhX26atNU
X-Gm-Message-State: AOJu0YzAlry94nsq8fo/X4DmEYxRuWdgZeoSliHHypwtQVO/E7L8Zph8
	vWJ+IPQyK33GfycAKFdT7VYD0jmUaQdbGUObPFm/fiHh0oRa0Li8ea43DYJnRyi1QDa8Rth9XB8
	m8tdcFDtgqu87VLH6JbGTwLywp+E=
X-Google-Smtp-Source: AGHT+IE2rR79xVVxjx8B65Vqmy9LfRSrqF/1XCbFRKl43oWRfx1LflSejOCU75mD17AZ02ds+Gx/fu4MzchQnfcGi5I=
X-Received: by 2002:a1f:4841:0:b0:4ce:7663:af1f with SMTP id
 v62-20020a1f4841000000b004ce7663af1fmr987139vka.7.1708719512431; Fri, 23 Feb
 2024 12:18:32 -0800 (PST)
MIME-Version: 1.0
References: <CACSj6VW3yitnPuAeg=VOXnhB7D5dN2_UD7KStSaDYug39YL3vg@mail.gmail.com>
 <CANNYZj9VBXUESuy91rfF1xbaN40AfU0trdevtLVgXgq37MLk5w@mail.gmail.com>
 <CACSj6VW19X4b7qq+prukimrrUhMYn6Xe2yorn2q6OnDjBYAPgw@mail.gmail.com>
 <CANNYZj-Rm-dKM1xc_e8mTobUgTE3uB8J_xEKDzfPCrJF7cWB7w@mail.gmail.com>
 <CADkTA4N-8JNL5_EOYicbsvAVtEMDzxUMQw6oyA9ckJ7c5fPA9w@mail.gmail.com>
 <CACSj6VV4WYA-QMrRub=dj70+V4Luf317Mt3j9yeLuA6YK9MJ2Q@mail.gmail.com> <CADkTA4OanM6BovM-1iLW=-gU3=UZQZYg7bomc-nzR5+3qEncMg@mail.gmail.com>
In-Reply-To: <CADkTA4OanM6BovM-1iLW=-gU3=UZQZYg7bomc-nzR5+3qEncMg@mail.gmail.com>
From: Konstantin Aladyshev <aladyshev22@gmail.com>
Date: Fri, 23 Feb 2024 23:18:21 +0300
Message-ID: <CACSj6VXU+Pg_5qGk3Y5v9KakWm7gyo7n_NQBcJ6Fq5mBVCZYYg@mail.gmail.com>
Subject: Re: [yocto] 'yocto-kernel-tools' requires git version much greater
 than general Yocto requirement
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, yocto@lists.yoctoproject.org, 
	alex.kanavin@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 23 Feb 2024 20:18:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62588

Thanks Bruce! I would appreciate that.
Should we move this discussion to linux-yocto as well?

Best regards,
Konstantin

On Fri, Feb 23, 2024 at 9:45=E2=80=AFPM Bruce Ashfield <bruce.ashfield@gmai=
l.com> wrote:
>
> On Fri, Feb 23, 2024 at 12:15=E2=80=AFPM Konstantin Aladyshev
> <aladyshev22@gmail.com> wrote:
> >
> > Should I see the new git version in the linux-yocto devshell?
> > """
> > bitbake linux-yocto -c devshell
> > """
> >
> > I've tried to check it in the current poky master, and it gives me:
> > """
> > $/data/poky/build/workspace/sources/linux-yocto# git --version
> > git version 2.30.2
> > $/data/poky/build/workspace/sources/linux-yocto# which git
> > /data/poky/scripts/git
> > """
> > So in this case host git is used. "bitbake kern-tools-native -c
> > devshell" gives the same result.
> > Can this be considered as a proof that git-native is not used?
> >
>
> It is likely ASSUME_PROVIDED that is causing the issue, git-native is
> in there, which means it is going to use the host version and not
> build our -native recipe for it.
>
> We'll need some guidance from Richard on this, because the use of that
> flag in the git operations is in fact required for security reasons,
> so it isn't going to be optional. If that means we need a minimum git
> version or to use our own built one (and possibly the buildtools
> tarball, etc), then those are the hoops we'll have to jump through.
>
> When I pulled git-native out of ASSUME_PROVIDED locally, I ended up in
> a dependency loop.
>
> I can have a closer look at this again on Monday, but i'm out of time
> for it today.
>
> Bruce
>
>
> Bruce
>
> > Konstantin
> >
> > On Fri, Feb 23, 2024 at 4:11=E2=80=AFPM Bruce Ashfield <bruce.ashfield@=
gmail.com> wrote:
> > >
> > > On Fri, Feb 23, 2024 at 6:43=E2=80=AFAM Alexander Kanavin
> > > <alex.kanavin@gmail.com> wrote:
> > > >
> > > > On Fri, 23 Feb 2024 at 12:32, Konstantin Aladyshev
> > > > <aladyshev22@gmail.com> wrote:
> > > > > Thanks for the response! What would be a proper way to fix this p=
roblem then?
> > > >
> > > > 1. show how to reproduce the issue in plain poky master.
> > > > 2. check why none of the tests expose the issue. You can for exampl=
e
> > > > grep related keywords in meta/lib/oeqa/selftest/cases. I think ther=
e
> > > > are tests that check devtool kernel operations there.
> > > > 3. see if existing tests can be easily extended to cover it, so tha=
t
> > > > they fail without a fix.
> > > > 4. perhaps the fix would be to check git version first, and add the
> > > > argument only if the version is recent enough.
> > >
> > > Which unfortunately would still leave the problem that the change is
> > > intended to fix, so I wouldn't want to merge any patches to make it
> > > conditional in the kern-tools.
> > >
> > > Those changes were made to prevent git operations from running
> > > hooks from the host environment, for both security and consistency
> > > reasons.
> > >
> > > We added git-native to the kern-tools-native recipe to get a consiste=
ntly
> > > new version available for any operations involving the tools.
> > >
> > > So I'd add another question .. why is this operation not using our
> > > natively built git ? Is there something going on with the path, envir=
onment
> > > or something else that we missed when adding that native dependency.
> > >
> > > Bruce
> > >
> > > >
> > > > Alex
> > > >
> > > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > > > Links: You receive all messages sent to this group.
> > > > View/Reply Online (#62579): https://lists.yoctoproject.org/g/yocto/=
message/62579
> > > > Mute This Topic: https://lists.yoctoproject.org/mt/104509876/105081=
0
> > > > Group Owner: yocto+owner@lists.yoctoproject.org
> > > > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [bruce.as=
hfield@gmail.com]
> > > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > > >
> > >
> > >
> > > --
> > > - Thou shalt not follow the NULL pointer, for chaos and madness await
> > > thee at its end
> > > - "Use the force Harry" - Gandalf, Star Trek II
>
>
>
> --
> - Thou shalt not follow the NULL pointer, for chaos and madness await
> thee at its end
> - "Use the force Harry" - Gandalf, Star Trek II

