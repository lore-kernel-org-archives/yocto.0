Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1CCAC433EF
	for <webhook@archiver.kernel.org>; Tue, 16 Nov 2021 18:50:41 +0000 (UTC)
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com
 [209.85.160.177])
 by mx.groups.io with SMTP id smtpd.web08.300.1637088640706755049
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Nov 2021 10:50:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=O6++Ang4;
 spf=pass (domain: gmail.com, ip: 209.85.160.177,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f177.google.com with SMTP id z9so110212qtj.9
        for <yocto@lists.yoctoproject.org>;
 Tue, 16 Nov 2021 10:50:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=XNeoarIPUNI/z9NrkenW1eAzTtjpafyOEzcbvDFTGjA=;
        b=O6++Ang4c1uyW2khTv/j9jcR+niL5U1q9h2ZgI0DmOtm7j2aj4UsOJeyMpDwSaRsfy
         D6RdVW2ETUykS8KqEhk///N7QiL32mk4LqiEW26/qDTMaeTEWgk38Y6kh3sLhXtn0R3L
         lIQXsduC6vUo35X/AdQAY0HtHVLF0C6gdOGPHJ82S7a6v5wuwj5BQ5RH+qTcvxXaxXUn
         EjS6IeE7SDvgcJJm8Tmx/H2X361xIRr4BfhW6zvK3xZ2NlPFZhX6iQfSxZEJDu763QxI
         HF6H2Cp3jQih2l16M6voSxULO0jaPWri4p627VVzE1raE6ZJz0Y8POWRMoNFF44/y1Dh
         zqvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=XNeoarIPUNI/z9NrkenW1eAzTtjpafyOEzcbvDFTGjA=;
        b=qFwVcveQkFIK01LLEeeM4SltVwbPma4H+Sl7HnG1hL3jcezCQj7ld8RRVm8Fw9kUG+
         aiVMbF462dwrwtc8cIWuqkv4Xtbp9Gp223aAlbEqu1sKbAiA9RA6A44F+2FVzV6MwxaL
         ca34++w/R9GEyloGKR2OtlWh4Gmlsrv1nPY9TnmpzJ1eAjXW3bRh4kOJ+VXmZVi0FxpK
         6RekaCL8UfXrK4pb7GuJIjrCm4uBl7Q1RdmYspmtZUuR3ZUBkntj5HnjZ08vTg/J3qv0
         M6VunhXZKf3nTbob1K2CzhJ7R2ZViWJvrqYOCVfLtT+jjIeK71/s5u/tfaguZ8HFBaPZ
         y0LA==
X-Gm-Message-State: AOAM530/oSvbMZ/toC4sxRYcBrasSMfEz0mJ7ZODmrfkc5qqP6jYJbJZ
	wiNZBWMOkQURDV3lZQ9NkKdRqnjTo8K0vtJiy3E=
X-Google-Smtp-Source: 
 ABdhPJwK29qCwWBk4N1ENyX1Oj1U/V6FYLXqRnZ6h7bObkON4+Ozbv0aMoBn9j/FIpmEdZUl6fJxUazZOf7kiyWw+bc=
X-Received: by 2002:ac8:4e41:: with SMTP id e1mr9952782qtw.116.1637088639722;
 Tue, 16 Nov 2021 10:50:39 -0800 (PST)
MIME-Version: 1.0
References: <20211116153256.3639663-1-quentin.schulz@theobroma-systems.com>
 <CAMKF1sq+cj8e31L1ExHSKckEVab-ZdeUCF3_CTSr0VPtZ=_sVQ@mail.gmail.com>
 <20211116170406.abau3j6liwsdonbp@fedora>
 <CAMKF1srfKKzNYBJPMKo_V13QKXuq1+mz-ULDd7hk3UEH_QwCNQ@mail.gmail.com>
 <20211116171242.7dyycd3d2qwb4ske@fedora>
 <CAMKF1soUeJES6ZG-wvng3VDfW_unw_7Fo4KSPWr3Cr8uR9T=eA@mail.gmail.com>
 <69C8168A-27F2-4B12-9592-264E80EFBC2D@0leil.net>
In-Reply-To: <69C8168A-27F2-4B12-9592-264E80EFBC2D@0leil.net>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 16 Nov 2021 10:50:13 -0800
Message-ID: 
 <CAMKF1sq2vE9NuXpLYG6upqxBfa7XZ9yO0G2qNe-+yRBMcaTxVg@mail.gmail.com>
Subject: Re: [yocto] [meta-rockchip][PATCH] kernel: linux-yocto: fix broken
 Ethernet MAC controller on RK3399 on 5.14 >= version <= 5.14.11
To: Quentin Schulz <foss@0leil.net>
Cc: Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	Quentin Schulz <foss+yocto@0leil.net>, Trevor Woerner <twoerner@gmail.com>,
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 16 Nov 2021 18:50:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55353

On Tue, Nov 16, 2021 at 10:03 AM Quentin Schulz <foss@0leil.net> wrote:
>
>
>
> On November 16, 2021 6:45:05 PM GMT+01:00, Khem Raj <raj.khem@gmail.com> =
wrote:
> >On Tue, Nov 16, 2021 at 9:12 AM Quentin Schulz <
> >quentin.schulz@theobroma-systems.com> wrote:
> >
> >> On Tue, Nov 16, 2021 at 09:08:41AM -0800, Khem Raj wrote:
> >> > On Tue, Nov 16, 2021 at 9:04 AM Quentin Schulz
> >> > <quentin.schulz@theobroma-systems.com> wrote:
> >> > >
> >> > > On Tue, Nov 16, 2021 at 09:00:42AM -0800, Khem Raj wrote:
> >> > > > On Tue, Nov 16, 2021 at 7:52 AM Quentin Schulz
> >> > > > <quentin.schulz@theobroma-systems.com> wrote:
> >> > > > >
> >> > > > > From Linux kernel v5.14 to v5.14.11 (both included), the Ether=
net
> >> MAC
> >> > > > > controller found on RK3399 is not working.
> >> > > > >
> >> > > > > A fix is available in v5.14.12 and later (available also in v5=
.15)
> >> > > > > which is provided here and applied to linux-yocto source tree =
if
> >> > > > > linux-yocto version is of the impacted ones.
> >> > > > >
> >> > > > > The conditional patching is unfortunately required because
> >> Honister 3.4
> >> > > > > has linux-yocto v5.14.9 and Honister 3.4.1 will have at least
> >> > > > > linux-yocto v5.14.14.
> >> > > >
> >> > > > Patching piece below looks quite a bit.
> >> > > > lets just fix v5.14.14 and dont worry about 3.4
> >> > > >
> >> > >
> >> > > v5.14.14 is already fixed. The only release currently is 3.4 and I=
 hit
> >> > > that issue, hence the patch.
> >> > > I assume not everybody is updating to 3.4.1 when it's out, I've se=
en
> >> > > people running behind dot releases.
> >> > > What's bothering you?
> >> >
> >> > once dot release is out then thats whats maintained not the original
> >> > release since they are incremental.
> >> > the anon python to apply a patch. Can you explain why we want to pat=
ch
> >> > applied this way ?
> >> >
> >>
> >> I could define a python function and use it like this:
> >> SRC_URI:append:rk3399 =3D "${@rk3399_fix_mac(d)}"
> >>
> >> Would that work better for you?
> >
> >
> >I am not yet convinced why should we have such version specific patch
> >
>
> If you could explain what's *really* bothering you, I could try to find a=
 proper explanation or agree with you but it's a bit too vague to me right =
now. Anyway, I'll do some guesses in the next paragraphs.
>
> Because Ethernet does not work for all RK3399-based boards in the latest =
and only release of Honister?

meta-rockchip does not have honister branch for now. So it expects
master to keep working with honister for now. kernel upgrades are
already committed into honister branch on meta-yocto-bsps so fix it
already available in latest honister
branch and will be in imminent point release soon as well.

>
> meta-rockchip is the BSP layer for Rockchip based devices, if not there, =
where should I put this patch?
>
> Or are we just going to say "Ethernet does not work, we know" to people a=
sking instead of having this patch in? Obviously you could tell them to upg=
rade their oe-core/poky git repo to rolling honister or 3.4.1 once it's out=
 but having this patch in avoid those questions.
>

I would say yes, document it as that of a known issue and possible fix
if someone is using exact point release. They might have snapshotted
meta-rockpi too and in that case it will be easy for them to carry a
local patch if needed.
vesion specific patching would also be setting a not so desired
patching practice, so I am trying to avoid it if we can.

> I understand we're talking about policy here. I am not fond of this patch=
 either but Ethernet is quite critical on boards which don't have WiFi for =
example. I don't have anything better to suggest to fix this in the *latest=
* release.

Update to latest honister branch or wait for 3.4.1, would be my suggestion.

>
> Cheers
> Quentin
> >>
> >>
> >> Cheers,
> >> Quentin
> >>

