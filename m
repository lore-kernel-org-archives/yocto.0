Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EC649C433EF
	for <webhook@archiver.kernel.org>; Mon, 13 Dec 2021 17:36:21 +0000 (UTC)
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com
 [209.85.219.53])
 by mx.groups.io with SMTP id smtpd.web09.14365.1639416981333430985
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Dec 2021 09:36:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=TxAeuhNZ;
 spf=pass (domain: gmail.com, ip: 209.85.219.53, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f53.google.com with SMTP id i12so15031726qvh.11
        for <yocto@lists.yoctoproject.org>;
 Mon, 13 Dec 2021 09:36:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=Q9z85AGZgsbwJqItIFkJD2DkuJllE0Szues4CN0VdDA=;
        b=TxAeuhNZbxJogbjd4jN1HBRMPYAsKTncHokp1JefEwZxdLom8QVoVv8Pp78ar8kcOv
         1bQzSJB6riA5NOULYq1IMpo6oArP05eiTx42mD/ICNkWR/4QzDwnnC/q0esl8USG18uw
         mJm8/pudADEzr6Qeqs+H4fKkWKYo2RuXteEl9a5KVElO766heMOpQTME4RnbWS+BAlUC
         y7nV+D9P3LogJc/yuHWfsv4OuFCC9W+81CgnA0ARzbwtHBdaArGae+XEG29Lwf0R2Sao
         HVJTMg4bAqsSK2uMdi/2u3PwJTosh0D7CVKnTctyiGfB8PyRENt+eNRHpOV8pIfMK2FI
         5krw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=Q9z85AGZgsbwJqItIFkJD2DkuJllE0Szues4CN0VdDA=;
        b=gEdccH1R+Ja5BFnEnlk1xPSyDXelfvHcfuycX4qe0oeHmDygQ/Y0i7qUArkgT9m312
         OKDY7qS3SWw/heLYoHGQqxuWQC6fVtNBfAJwCsnV/Po9l2yacgZlLCYJJQ+Jcm906LrK
         k13mXyrX0uVDb9svecMNqN7Ko0bNN3APkHCc3lhsnCOPMxa5nRCqLvQ4jHpRYE3tMUoZ
         n/A5JM7vGqzNmgoktc58PwFcf0ZI6qhAfUF+zkjHKn6QjtsNr/5O4t1jsqBhbCiTnWrh
         2M7KCM75c941NTS7yBqloJak9R2WEj5JTI3tqSvPAC8HkZiLFiTheKseli6kiTZBHo60
         NYig==
X-Gm-Message-State: AOAM532dSkmS/nhevPzpIHV42jcrRmBHKJ/QVxgPJt7hKW3IbiJGwYFm
	dtBGW6n0SVY6C4eiaST7GlL19JuLd3hWI9Al+/Y=
X-Google-Smtp-Source: 
 ABdhPJxtSkAZZxyhVOTeYS8k+9CgLG8ufESgf5POWmIcq0xrVRmPKhx1oLUS9wQDVLME7D9bqjOitrsa/ITPydqLyJo=
X-Received: by 2002:a05:6214:2429:: with SMTP id
 gy9mr203364qvb.36.1639416980290;
 Mon, 13 Dec 2021 09:36:20 -0800 (PST)
MIME-Version: 1.0
References: <20211116153256.3639663-1-quentin.schulz@theobroma-systems.com>
 <CAMKF1sq+cj8e31L1ExHSKckEVab-ZdeUCF3_CTSr0VPtZ=_sVQ@mail.gmail.com>
 <20211116170406.abau3j6liwsdonbp@fedora>
 <CAMKF1srfKKzNYBJPMKo_V13QKXuq1+mz-ULDd7hk3UEH_QwCNQ@mail.gmail.com>
 <20211116171242.7dyycd3d2qwb4ske@fedora>
 <CAMKF1soUeJES6ZG-wvng3VDfW_unw_7Fo4KSPWr3Cr8uR9T=eA@mail.gmail.com>
 <69C8168A-27F2-4B12-9592-264E80EFBC2D@0leil.net>
 <CAMKF1sq2vE9NuXpLYG6upqxBfa7XZ9yO0G2qNe-+yRBMcaTxVg@mail.gmail.com>
 <20211213090032.dy47s56sykoikbfc@fedora>
 <CAMKF1srokMzJfW8ZU=djZVaaXUTdXd9giCz6GgbhqX+X7RU8kQ@mail.gmail.com>
 <C99AA08F-5ECC-4989-8B8B-F4C6EF182ABD@0leil.net>
In-Reply-To: <C99AA08F-5ECC-4989-8B8B-F4C6EF182ABD@0leil.net>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 13 Dec 2021 09:35:53 -0800
Message-ID: 
 <CAMKF1sorO4VR2GaN0gn2rS5-Lti_rXGy=9GsQWCgEAgN5gO9nQ@mail.gmail.com>
Subject: Re: [yocto] [meta-rockchip][PATCH] kernel: linux-yocto: fix broken
 Ethernet MAC controller on RK3399 on 5.14 >= version <= 5.14.11
To: Quentin Schulz <foss+yocto@0leil.net>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>,
	Quentin Schulz <quentin.schulz@theobroma-systems.com>,
 Trevor Woerner <twoerner@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 13 Dec 2021 17:36:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55563

On Mon, Dec 13, 2021 at 9:18 AM Quentin Schulz <foss+yocto@0leil.net> wrote=
:
>
> Hi Khem,
>
> On December 13, 2021 4:04:03 PM GMT+01:00, Khem Raj <raj.khem@gmail.com> =
wrote:
> >On Mon, Dec 13, 2021 at 1:00 AM Quentin Schulz <
> >quentin.schulz@theobroma-systems.com> wrote:
> >
> >> Hi Trevor,
> >>
> >> Gentle ping :)
> >>
> >> Honister 3.4.1 being out it's less of an issue but the question remain=
s
> >> at least for settling on a policy :)
> >
> >
> >Do we still need this patch ? I think now that dot release is out it=E2=
=80=99s less
> >of a problem. Version specific patching will set a different preset for =
the
> >layer to carry unexcercised patches
> >
>
> We need this patch for honister 3.4 but what I meant is that even though =
it's not needed for honister >=3D 3.4.1, I'm still interested in what the p=
olicy should be. Especially what we should have done between 3.4 and 3.4.1,=
 before the latter was released.
>
> I understand the precedent it creates but also, it's a bit sad for a "BSP=
" layer to have some support broken between Yocto releases.

I agree with you that broken is not good as it was for sometime, but
now with the latest  supported release in 3.4 series ( which is 3.4.1)
things should be good.

>
> Cheers,
> Quentin
>
> >
> >>
> >> Cheers,
> >> Quentin
> >>
> >> On Tue, Nov 16, 2021 at 10:50:13AM -0800, Khem Raj wrote:
> >> > On Tue, Nov 16, 2021 at 10:03 AM Quentin Schulz <foss@0leil.net> wro=
te:
> >> > >
> >> > >
> >> > >
> >> > > On November 16, 2021 6:45:05 PM GMT+01:00, Khem Raj <
> >> raj.khem@gmail.com> wrote:
> >> > > >On Tue, Nov 16, 2021 at 9:12 AM Quentin Schulz <
> >> > > >quentin.schulz@theobroma-systems.com> wrote:
> >> > > >
> >> > > >> On Tue, Nov 16, 2021 at 09:08:41AM -0800, Khem Raj wrote:
> >> > > >> > On Tue, Nov 16, 2021 at 9:04 AM Quentin Schulz
> >> > > >> > <quentin.schulz@theobroma-systems.com> wrote:
> >> > > >> > >
> >> > > >> > > On Tue, Nov 16, 2021 at 09:00:42AM -0800, Khem Raj wrote:
> >> > > >> > > > On Tue, Nov 16, 2021 at 7:52 AM Quentin Schulz
> >> > > >> > > > <quentin.schulz@theobroma-systems.com> wrote:
> >> > > >> > > > >
> >> > > >> > > > > From Linux kernel v5.14 to v5.14.11 (both included), th=
e
> >> Ethernet
> >> > > >> MAC
> >> > > >> > > > > controller found on RK3399 is not working.
> >> > > >> > > > >
> >> > > >> > > > > A fix is available in v5.14.12 and later (available als=
o in
> >> v5.15)
> >> > > >> > > > > which is provided here and applied to linux-yocto sourc=
e
> >> tree if
> >> > > >> > > > > linux-yocto version is of the impacted ones.
> >> > > >> > > > >
> >> > > >> > > > > The conditional patching is unfortunately required beca=
use
> >> > > >> Honister 3.4
> >> > > >> > > > > has linux-yocto v5.14.9 and Honister 3.4.1 will have at
> >> least
> >> > > >> > > > > linux-yocto v5.14.14.
> >> > > >> > > >
> >> > > >> > > > Patching piece below looks quite a bit.
> >> > > >> > > > lets just fix v5.14.14 and dont worry about 3.4
> >> > > >> > > >
> >> > > >> > >
> >> > > >> > > v5.14.14 is already fixed. The only release currently is 3.=
4
> >> and I hit
> >> > > >> > > that issue, hence the patch.
> >> > > >> > > I assume not everybody is updating to 3.4.1 when it's out, =
I've
> >> seen
> >> > > >> > > people running behind dot releases.
> >> > > >> > > What's bothering you?
> >> > > >> >
> >> > > >> > once dot release is out then thats whats maintained not the
> >> original
> >> > > >> > release since they are incremental.
> >> > > >> > the anon python to apply a patch. Can you explain why we want=
 to
> >> patch
> >> > > >> > applied this way ?
> >> > > >> >
> >> > > >>
> >> > > >> I could define a python function and use it like this:
> >> > > >> SRC_URI:append:rk3399 =3D "${@rk3399_fix_mac(d)}"
> >> > > >>
> >> > > >> Would that work better for you?
> >> > > >
> >> > > >
> >> > > >I am not yet convinced why should we have such version specific p=
atch
> >> > > >
> >> > >
> >> > > If you could explain what's *really* bothering you, I could try to
> >> find a proper explanation or agree with you but it's a bit too vague t=
o me
> >> right now. Anyway, I'll do some guesses in the next paragraphs.
> >> > >
> >> > > Because Ethernet does not work for all RK3399-based boards in the
> >> latest and only release of Honister?
> >> >
> >> > meta-rockchip does not have honister branch for now. So it expects
> >> > master to keep working with honister for now. kernel upgrades are
> >> > already committed into honister branch on meta-yocto-bsps so fix it
> >> > already available in latest honister
> >> > branch and will be in imminent point release soon as well.
> >> >
> >> > >
> >> > > meta-rockchip is the BSP layer for Rockchip based devices, if not
> >> there, where should I put this patch?
> >> > >
> >> > > Or are we just going to say "Ethernet does not work, we know" to
> >> people asking instead of having this patch in? Obviously you could tel=
l
> >> them to upgrade their oe-core/poky git repo to rolling honister or 3.4=
.1
> >> once it's out but having this patch in avoid those questions.
> >> > >
> >> >
> >> > I would say yes, document it as that of a known issue and possible f=
ix
> >> > if someone is using exact point release. They might have snapshotted
> >> > meta-rockpi too and in that case it will be easy for them to carry a
> >> > local patch if needed.
> >> > vesion specific patching would also be setting a not so desired
> >> > patching practice, so I am trying to avoid it if we can.
> >> >
> >> > > I understand we're talking about policy here. I am not fond of thi=
s
> >> patch either but Ethernet is quite critical on boards which don't have=
 WiFi
> >> for example. I don't have anything better to suggest to fix this in th=
e
> >> *latest* release.
> >> >
> >> > Update to latest honister branch or wait for 3.4.1, would be my
> >> suggestion.
> >> >
> >> > >
> >> > > Cheers
> >> > > Quentin
> >> > > >>
> >> > > >>
> >> > > >> Cheers,
> >> > > >> Quentin
> >> > > >>
> >>

