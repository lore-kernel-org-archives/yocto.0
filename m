Return-Path: <martin.jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4C053C3DA4A
	for <webhook@archiver.kernel.org>; Fri, 12 Jul 2024 09:52:51 +0000 (UTC)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
 by mx.groups.io with SMTP id smtpd.web10.4264.1720777960667517578
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Jul 2024 02:52:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=KuS3WIJ6;
 spf=pass (domain: gmail.com, ip: 209.85.167.49, mailfrom: martin.jansa@gmail.com)
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-52e9f788e7bso2146345e87.0
        for <yocto@lists.yoctoproject.org>; Fri, 12 Jul 2024 02:52:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720777959; x=1721382759; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XLpH4vdLHRD3yJHnFWq2NzZkL21LqDmkaISrnU68Jts=;
        b=KuS3WIJ6QWhAdl7JXcXqlg9P8NROEE1529iUoqVtXFytGAQujuD/xCoMfITRdhDD3Q
         YVtWWyLlcmhtOdvTcFt1bHdUqvdhvPwv8ik2iIau0oq9p1N7AM4gGJy0f4dPj1HTDf8R
         uuuZMlYNorQQVCmFITAvl4AmhgVuowRNtPJ+Kd0ejJ0Q0Zx8uhOVb/cs+j2Lu3muRy6S
         Rm26k4H5XnwbEM4PNw7PZEOXSAP0T57K62uS9vU1Cdo78JC+ZFN1mH5yGTQyF6NPOWoa
         4PiHeaiZhCtIEaZDvhlbO8UPUJ1AxzwgV/JVcXwvxx5izw+ohrt2pVA4mZAdp6HCpqz3
         o9wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720777959; x=1721382759;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XLpH4vdLHRD3yJHnFWq2NzZkL21LqDmkaISrnU68Jts=;
        b=ah+yHoXy7VjNEa8lhweiRgl02sxZTjpuwZVOpyV0a7+l2qp8hXJ5Mm8y4fFEH1G2rL
         gkllcXUZf0epXKSyTVwgLXfiZHKTZveqa8ctv94bZ/UZaTAX1cGLc+oQOZeOKKsSWYZV
         9ibRc5EisqlU1QVXD6mez62PDEDyPlUPiAZ5koZBZcGIZSh5APIQapMooTm5/aPty+Q5
         o75o4BUFnGEAWu78IpHO0GhW+ZuTUfVJU20COKKo7A1SfNl7StJXQviBVvWy33Y4jX5F
         YE3EShReqrYgkyiBFnRUNcKfTKfGUt6iMCTgtXSL5WLQluXCo5QbWu4B9Hj25x7CvsVY
         82kg==
X-Gm-Message-State: AOJu0YzqdheAG/ORBWr+uBzyXt9SjF//I+lB5FudZSPFVaHKbDzg2PYl
	ehHl0er2K7kP4mUjoEwQRyArXY1UCqn4hGnYVNmvz0Dxucj5gXn8vq7DbhXTrpFuUicOCDdkpbp
	R0LA65c/knqbGOs5+N1btHtpJnIZ1YxFj
X-Google-Smtp-Source: AGHT+IHOOPh6kTDJq/LYy28j8RI8SUA0tdVip/xA2wGWR4HmArdAkv49ag+m6nUBSqJMQ9Zp0ZNT8HRnm0sg4e6Ijic=
X-Received: by 2002:a05:6512:1247:b0:52c:df86:68c6 with SMTP id
 2adb3069b0e04-52eb99915aemr7497007e87.16.1720777958464; Fri, 12 Jul 2024
 02:52:38 -0700 (PDT)
MIME-Version: 1.0
References: <CAC3TgAK9+yDoz=3emvD6GTB6PNNe7=o5w6hkGpWm0juwt_X=pA@mail.gmail.com>
 <CANNYZj99c_sfCDt+MtAswB4UvoTnc-97RiAKjfG5dd7a2kin1A@mail.gmail.com>
 <CAC3TgAJGvSjZ8ZZq35ay3h1-UvOFGZbEd6-rZ60WE=k70-krew@mail.gmail.com> <917cfcbc-f82a-46c7-a774-b1ca8e267a6c@cherry.de>
In-Reply-To: <917cfcbc-f82a-46c7-a774-b1ca8e267a6c@cherry.de>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Fri, 12 Jul 2024 11:52:24 +0200
Message-ID: <CA+chaQcNPBsk_H6438qGU8QhDXVz+ob2kX3G4oMyHiAYpm2YCw@mail.gmail.com>
Subject: Re: [Yocto][QA] patches : QA Issue: Missing Upstream-Status in patch
To: yocto@lists.yoctoproject.org, quentin.schulz@cherry.de
Cc: ycnakajsph@gmail.com, Alexander Kanavin <alex.kanavin@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 12 Jul 2024 09:52:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63478

Agreed with what was said before about usefulness of Upstream-Status
(even if you don't see it at first).

Instead of just disabling this QA check I would recommend to keep it
enabled and add at least Pending everywhere.

Pending isn't very useful by itself, but at least it will mark the
.patch files where Upstream-Status wasn't decided yet (and where the
decision might be complicated if the .patch is very old added by
someone else etc.) while more importantly preventing new .patch files
being introduced without any Upstream-Status at all (and that's the
best time to catch this and the author should decide what
Upstream-Status should be).

You don't need to run to build to find all the .patch files which
should be updated, there is very useful script to do that for you,
see:
openembedded-core/scripts/contrib/patchreview.py

I did this for many layers with simple one line script (mentioned in
https://lists.openembedded.org/g/openembedded-core/message/197115) and
then incrementally worked on updating the Pending .patch files.

Adding that to all the .patch files takes less time than this e-mail
thread did :).

Regards,

On Fri, Jul 12, 2024 at 11:32=E2=80=AFAM Quentin Schulz via
lists.yoctoproject.org
<quentin.schulz=3Dcherry.de@lists.yoctoproject.org> wrote:
>
> Hi Yann,
>
> On 7/11/24 3:50 PM, Yann CARDAILLAC via lists.yoctoproject.org wrote:
> > You don't often get email from ycnakajsph=3Dgmail.com@lists.yoctoprojec=
t.org. Learn why this is important<https://aka.ms/LearnAboutSenderIdentific=
ation>
> > Well, I'm not really sure I would need it in most cases.
> >
> > For instance today I was modifying an existing device tree to make it f=
it my board, that's not necessarily going to last.
> >
>
> I assume it'll make it to your upstream repo which contains this device
> tree, so there'll be no patch in Yocto after your debugging session ends.
>
> > Or say I have a package, which is from my company and doesn't have any =
reason to get out of it.
> >
>
> If it's from your company, you own the repo where the source code is
> stored, so fix the source code in the repo once you're done with the
> debugging session.
>
> > As an integrator I need to modify the build system, let's say something=
 in the makefile, or maybe there's simply stuff that I don't want on my sys=
tem.
> >
>
> If it is source code from your company, then fix it in the repo. If it's
> from a third party that isn't public, send them the patch so you
> eventually don't have to maintain this on your own, if it's public and
> open-source code, contribute back so you don't have to maintain this
> patch once you upgrade to a new version of the package (as part of a
> full Yocto upgrade or not).
>
> > So I'll make a patch.
> >
> > Why would Yocto be authority for the way my commits are formatted? In a=
ll the above cases I don't see why.
> >
>
> You can disable the warning, we're just strongly recommending you to
> follow the format we came up with. Why? Because we've had years/decades
> of experience with handling patches we only had in layers. We went
> through the pain (and still go) of finding out if the patch is
> necessary, if it was sent upstream, if so, should we rework it based on
> newer versions of that patch, was it merged upstream, if so in which
> form and when, was it rejected, if so, why, security issue, broken
> logic, etc...
> Where and how was the patch submitted etc. It also encourages us to
> contribute upstream, which means they then know the build system(s)
> compiling the source code and their usecases so they have it in mind for
> future development.
>
> Yocto/OE needs to be opinionated (it factually cannot, because not
> implementing something like this if it's suggested means we have the
> opinion it's not necessary), but for most parts, it's still very very
> flexible, so feel free to disable the check we put in place to prevent
> people shooting their own foot :)
>
> Cheers,
> Quentin
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63477): https://lists.yoctoproject.org/g/yocto/messag=
e/63477
> Mute This Topic: https://lists.yoctoproject.org/mt/107142644/3617156
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [martin.jansa@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

