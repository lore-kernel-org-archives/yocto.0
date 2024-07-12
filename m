Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D34FC2BD09
	for <webhook@archiver.kernel.org>; Fri, 12 Jul 2024 09:55:31 +0000 (UTC)
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
 by mx.groups.io with SMTP id smtpd.web10.4301.1720778128123358713
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Jul 2024 02:55:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Ll4FNUsD;
 spf=pass (domain: gmail.com, ip: 209.85.167.42, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-52e98087e32so2095140e87.2
        for <yocto@lists.yoctoproject.org>; Fri, 12 Jul 2024 02:55:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720778126; x=1721382926; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5N52lVflr/J5Gqp+ChdFHRvpGHeBuj4Vtp9TJ2kgxgc=;
        b=Ll4FNUsD+93WrLYr5gngno5yU+rhQksGNVFtLEJAJajZ38A9dE2xHsVLwDoUT6vM6m
         ZcWL22siNYuoWdLSVk/MioaxrkpkEALKpdcfEKO0MqV4L5E0y5OKdWtN460DzsbXYXHX
         utmH9EKLwYVs+T63ea3aivWJ2VE8trtjcuXUzBshRUZyAuML7cAaxb4ZadjlVw89fg0y
         SWVqSw8FXcc8dsYg36W9CFA6f2btAYHcZGb4pymJTZP0SHgTrFFwfxK/LnaJDKmSzNIR
         C1Wp2goDQU28PoDyx+tXVfeGmPtzSJ+ujqxr6zOJfdLVU1aqQ9oolhDppXNOop4NpVBU
         geuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720778126; x=1721382926;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5N52lVflr/J5Gqp+ChdFHRvpGHeBuj4Vtp9TJ2kgxgc=;
        b=f0KUQqrwDBEeeDDuuHQ+8jIWkRy9WulfB9x78inws9bMJWXVh+b5ynOGZh+0QyGElh
         BUKjVs7koVNo/MQTXViRWzeL/j0LqZdPu7qUv5DHnTi6JKVu4C28UliHc8xUz798VRre
         inRIdBIvUT1mFbFlrcuw7P/NcnclPQ1R929Jeygj3x2Bhlt0YTt70gLuehqtWUumB3no
         Rx4bfQYwTYoUipzwQkwBXraNj0STzhpNnanZcTeB5cCWW93IEYPPcRnqJsKmRcmQqNVT
         MGFYd/e7xQ03KC8baHNXMC3s5k4yp406kEAME8c0GFFO/O/n6V5tF1vjaUGWCmOmFJHZ
         0CwQ==
X-Gm-Message-State: AOJu0YxHX6pGdrKbepzVeefp9QVbvLMkVus9U2gNQQDJK1wbSzDoVImw
	s3Rqhr1HB8+FB5ls+Djr1k2yNlzBv+6y5FyB+TsmjhHF+4CKmS6TrNjt8YPkjZg/omY6gkUzVWP
	yfroyFpa5gqQ049Xk4uRTMAuPoRk=
X-Google-Smtp-Source: AGHT+IHfxpRMaO+oV4QCd+v8pfMbIuH7Y8fKvSw5ZMBlBEAx6N+Yu2hp7Dz6KvzJLyVTdC19YeAxn0Y6hX956Sll3Dc=
X-Received: by 2002:a2e:8806:0:b0:2ee:849b:576d with SMTP id
 38308e7fff4ca-2eeb318abafmr74508371fa.43.1720778126038; Fri, 12 Jul 2024
 02:55:26 -0700 (PDT)
MIME-Version: 1.0
References: <CAC3TgAK9+yDoz=3emvD6GTB6PNNe7=o5w6hkGpWm0juwt_X=pA@mail.gmail.com>
 <CANNYZj99c_sfCDt+MtAswB4UvoTnc-97RiAKjfG5dd7a2kin1A@mail.gmail.com>
 <CAC3TgAJGvSjZ8ZZq35ay3h1-UvOFGZbEd6-rZ60WE=k70-krew@mail.gmail.com>
 <917cfcbc-f82a-46c7-a774-b1ca8e267a6c@cherry.de> <CA+chaQcNPBsk_H6438qGU8QhDXVz+ob2kX3G4oMyHiAYpm2YCw@mail.gmail.com>
In-Reply-To: <CA+chaQcNPBsk_H6438qGU8QhDXVz+ob2kX3G4oMyHiAYpm2YCw@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 12 Jul 2024 11:55:14 +0200
Message-ID: <CANNYZj-O5V7kd15U0__WZj65NxX=2Bv+ck_XJHXYtEme+ZWmpw@mail.gmail.com>
Subject: Re: [Yocto][QA] patches : QA Issue: Missing Upstream-Status in patch
To: Martin Jansa <martin.jansa@gmail.com>
Cc: yocto@lists.yoctoproject.org, quentin.schulz@cherry.de, 
	ycnakajsph@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 12 Jul 2024 09:55:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63479

FWIW, I'd like to tighten the check for Pending, so that it would
require a [reason] too. For existing pending patches it can simply say
[legacy patch needing triage], but having to think of a reason will
hopefully deter people from adding more Pending patches without at
least pausing to think what they want to do with them (and ideally
sending them upstream there and then).

Alex

On Fri, 12 Jul 2024 at 11:52, Martin Jansa <martin.jansa@gmail.com> wrote:
>
> Agreed with what was said before about usefulness of Upstream-Status
> (even if you don't see it at first).
>
> Instead of just disabling this QA check I would recommend to keep it
> enabled and add at least Pending everywhere.
>
> Pending isn't very useful by itself, but at least it will mark the
> .patch files where Upstream-Status wasn't decided yet (and where the
> decision might be complicated if the .patch is very old added by
> someone else etc.) while more importantly preventing new .patch files
> being introduced without any Upstream-Status at all (and that's the
> best time to catch this and the author should decide what
> Upstream-Status should be).
>
> You don't need to run to build to find all the .patch files which
> should be updated, there is very useful script to do that for you,
> see:
> openembedded-core/scripts/contrib/patchreview.py
>
> I did this for many layers with simple one line script (mentioned in
> https://lists.openembedded.org/g/openembedded-core/message/197115) and
> then incrementally worked on updating the Pending .patch files.
>
> Adding that to all the .patch files takes less time than this e-mail
> thread did :).
>
> Regards,
>
> On Fri, Jul 12, 2024 at 11:32=E2=80=AFAM Quentin Schulz via
> lists.yoctoproject.org
> <quentin.schulz=3Dcherry.de@lists.yoctoproject.org> wrote:
> >
> > Hi Yann,
> >
> > On 7/11/24 3:50 PM, Yann CARDAILLAC via lists.yoctoproject.org wrote:
> > > You don't often get email from ycnakajsph=3Dgmail.com@lists.yoctoproj=
ect.org. Learn why this is important<https://aka.ms/LearnAboutSenderIdentif=
ication>
> > > Well, I'm not really sure I would need it in most cases.
> > >
> > > For instance today I was modifying an existing device tree to make it=
 fit my board, that's not necessarily going to last.
> > >
> >
> > I assume it'll make it to your upstream repo which contains this device
> > tree, so there'll be no patch in Yocto after your debugging session end=
s.
> >
> > > Or say I have a package, which is from my company and doesn't have an=
y reason to get out of it.
> > >
> >
> > If it's from your company, you own the repo where the source code is
> > stored, so fix the source code in the repo once you're done with the
> > debugging session.
> >
> > > As an integrator I need to modify the build system, let's say somethi=
ng in the makefile, or maybe there's simply stuff that I don't want on my s=
ystem.
> > >
> >
> > If it is source code from your company, then fix it in the repo. If it'=
s
> > from a third party that isn't public, send them the patch so you
> > eventually don't have to maintain this on your own, if it's public and
> > open-source code, contribute back so you don't have to maintain this
> > patch once you upgrade to a new version of the package (as part of a
> > full Yocto upgrade or not).
> >
> > > So I'll make a patch.
> > >
> > > Why would Yocto be authority for the way my commits are formatted? In=
 all the above cases I don't see why.
> > >
> >
> > You can disable the warning, we're just strongly recommending you to
> > follow the format we came up with. Why? Because we've had years/decades
> > of experience with handling patches we only had in layers. We went
> > through the pain (and still go) of finding out if the patch is
> > necessary, if it was sent upstream, if so, should we rework it based on
> > newer versions of that patch, was it merged upstream, if so in which
> > form and when, was it rejected, if so, why, security issue, broken
> > logic, etc...
> > Where and how was the patch submitted etc. It also encourages us to
> > contribute upstream, which means they then know the build system(s)
> > compiling the source code and their usecases so they have it in mind fo=
r
> > future development.
> >
> > Yocto/OE needs to be opinionated (it factually cannot, because not
> > implementing something like this if it's suggested means we have the
> > opinion it's not necessary), but for most parts, it's still very very
> > flexible, so feel free to disable the check we put in place to prevent
> > people shooting their own foot :)
> >
> > Cheers,
> > Quentin
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#63477): https://lists.yoctoproject.org/g/yocto/mess=
age/63477
> > Mute This Topic: https://lists.yoctoproject.org/mt/107142644/3617156
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [martin.jansa=
@gmail.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >

