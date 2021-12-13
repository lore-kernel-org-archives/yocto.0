Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3113C433FE
	for <webhook@archiver.kernel.org>; Mon, 13 Dec 2021 15:04:16 +0000 (UTC)
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com
 [209.85.219.48])
 by mx.groups.io with SMTP id smtpd.web08.12038.1639407855237885822
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Dec 2021 07:04:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=pcxmGJoW;
 spf=pass (domain: gmail.com, ip: 209.85.219.48, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f48.google.com with SMTP id j9so14567447qvm.10
        for <yocto@lists.yoctoproject.org>;
 Mon, 13 Dec 2021 07:04:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=KLKmS0dDdi0kn4pSPLN/HlZoInE3H3+SAKX4wtjpSns=;
        b=pcxmGJoWXk2bk6+DuCOpdf0uvNtDHTXs9ADVVLKwTbBEFn0Wy63RmHgNViRlpyevzA
         YRGfiUHNGpXOHaCwOdxiXO3Zm+hs0kom7a7LXnaDiWoicZLUMVXEX+TYoUkUy0jXDp0K
         4cZJw+fXmBcvj7n77zbSCkIDEoBONzThA16TusPDN53VBdKgN2gCvMizaSwmFJADYi0c
         6kMS3f54avJECyiYZJ0rzWbwI8o+NDut7i3QForZ4U71xSNO/lsPH3Fr+FZ75VIPE6yD
         bQRV138aNabKM0JFhSZm9iUDhk8wz0LqRz3658lFDIWQICwfRYmXCnPgDQzfUxiwOsiZ
         1L+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=KLKmS0dDdi0kn4pSPLN/HlZoInE3H3+SAKX4wtjpSns=;
        b=2vSNAM4+EO/XhkrHewC8RMzFb/q2g1iQAJF94UpIgTuAgDjY9LmDnA2em1knn1lWok
         xJMijJo+Yw8mHjGixeC8bBbI8Kjkngt97o++IkCFECm0a8ld5RZhyZybUUywFus2fvMp
         Tz653hC21wkqoIvTIE0TgonzRMIwnh6aRNUeTtn6UiEJZZK+taW6Z082WrNRz0vERV/z
         4G9VWCB3hz2Y008B4a6tOr6UEUzrBuML03aLXM/FS6IpozjUdlRKJjYk30yQMeHCH0cY
         OppKzuwM4GSup7VqenL6Cht/OAfLbJ6o+PiyMLI6NRsvTbw1bTxJkAtAqWfE3JtPgI5P
         PLcg==
X-Gm-Message-State: AOAM530qazCDK7iw9ju4Lqejpga9ZmiLU8D4Zg4ebbAXNAnGHyIuF+Oa
	2SQJbi2LkYxOOAktgK95UXKVGsFOEqch70Ob4/E=
X-Google-Smtp-Source: 
 ABdhPJzDovaw5teCRaYS2S4HQ10CBRJzqGJAwICcqJxOIT4bRXq5WygWGKtO7HNB8mkmIndyz+bIns0yOTQdNcVlCwo=
X-Received: by 2002:a05:6214:c28:: with SMTP id
 a8mr44389599qvd.24.1639407854196;
 Mon, 13 Dec 2021 07:04:14 -0800 (PST)
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
In-Reply-To: <20211213090032.dy47s56sykoikbfc@fedora>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 13 Dec 2021 07:04:03 -0800
Message-ID: 
 <CAMKF1srokMzJfW8ZU=djZVaaXUTdXd9giCz6GgbhqX+X7RU8kQ@mail.gmail.com>
Subject: Re: [yocto] [meta-rockchip][PATCH] kernel: linux-yocto: fix broken
 Ethernet MAC controller on RK3399 on 5.14 >= version <= 5.14.11
To: Quentin Schulz <quentin.schulz@theobroma-systems.com>
Cc: Quentin Schulz <foss+yocto@0leil.net>,
 Trevor Woerner <twoerner@gmail.com>,
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000ca9cdb05d3086226"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 13 Dec 2021 15:04:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55559

--000000000000ca9cdb05d3086226
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 13, 2021 at 1:00 AM Quentin Schulz <
quentin.schulz@theobroma-systems.com> wrote:

> Hi Trevor,
>
> Gentle ping :)
>
> Honister 3.4.1 being out it's less of an issue but the question remains
> at least for settling on a policy :)


Do we still need this patch ? I think now that dot release is out it=E2=80=
=99s less
of a problem. Version specific patching will set a different preset for the
layer to carry unexcercised patches


>
> Cheers,
> Quentin
>
> On Tue, Nov 16, 2021 at 10:50:13AM -0800, Khem Raj wrote:
> > On Tue, Nov 16, 2021 at 10:03 AM Quentin Schulz <foss@0leil.net> wrote:
> > >
> > >
> > >
> > > On November 16, 2021 6:45:05 PM GMT+01:00, Khem Raj <
> raj.khem@gmail.com> wrote:
> > > >On Tue, Nov 16, 2021 at 9:12 AM Quentin Schulz <
> > > >quentin.schulz@theobroma-systems.com> wrote:
> > > >
> > > >> On Tue, Nov 16, 2021 at 09:08:41AM -0800, Khem Raj wrote:
> > > >> > On Tue, Nov 16, 2021 at 9:04 AM Quentin Schulz
> > > >> > <quentin.schulz@theobroma-systems.com> wrote:
> > > >> > >
> > > >> > > On Tue, Nov 16, 2021 at 09:00:42AM -0800, Khem Raj wrote:
> > > >> > > > On Tue, Nov 16, 2021 at 7:52 AM Quentin Schulz
> > > >> > > > <quentin.schulz@theobroma-systems.com> wrote:
> > > >> > > > >
> > > >> > > > > From Linux kernel v5.14 to v5.14.11 (both included), the
> Ethernet
> > > >> MAC
> > > >> > > > > controller found on RK3399 is not working.
> > > >> > > > >
> > > >> > > > > A fix is available in v5.14.12 and later (available also i=
n
> v5.15)
> > > >> > > > > which is provided here and applied to linux-yocto source
> tree if
> > > >> > > > > linux-yocto version is of the impacted ones.
> > > >> > > > >
> > > >> > > > > The conditional patching is unfortunately required because
> > > >> Honister 3.4
> > > >> > > > > has linux-yocto v5.14.9 and Honister 3.4.1 will have at
> least
> > > >> > > > > linux-yocto v5.14.14.
> > > >> > > >
> > > >> > > > Patching piece below looks quite a bit.
> > > >> > > > lets just fix v5.14.14 and dont worry about 3.4
> > > >> > > >
> > > >> > >
> > > >> > > v5.14.14 is already fixed. The only release currently is 3.4
> and I hit
> > > >> > > that issue, hence the patch.
> > > >> > > I assume not everybody is updating to 3.4.1 when it's out, I'v=
e
> seen
> > > >> > > people running behind dot releases.
> > > >> > > What's bothering you?
> > > >> >
> > > >> > once dot release is out then thats whats maintained not the
> original
> > > >> > release since they are incremental.
> > > >> > the anon python to apply a patch. Can you explain why we want to
> patch
> > > >> > applied this way ?
> > > >> >
> > > >>
> > > >> I could define a python function and use it like this:
> > > >> SRC_URI:append:rk3399 =3D "${@rk3399_fix_mac(d)}"
> > > >>
> > > >> Would that work better for you?
> > > >
> > > >
> > > >I am not yet convinced why should we have such version specific patc=
h
> > > >
> > >
> > > If you could explain what's *really* bothering you, I could try to
> find a proper explanation or agree with you but it's a bit too vague to m=
e
> right now. Anyway, I'll do some guesses in the next paragraphs.
> > >
> > > Because Ethernet does not work for all RK3399-based boards in the
> latest and only release of Honister?
> >
> > meta-rockchip does not have honister branch for now. So it expects
> > master to keep working with honister for now. kernel upgrades are
> > already committed into honister branch on meta-yocto-bsps so fix it
> > already available in latest honister
> > branch and will be in imminent point release soon as well.
> >
> > >
> > > meta-rockchip is the BSP layer for Rockchip based devices, if not
> there, where should I put this patch?
> > >
> > > Or are we just going to say "Ethernet does not work, we know" to
> people asking instead of having this patch in? Obviously you could tell
> them to upgrade their oe-core/poky git repo to rolling honister or 3.4.1
> once it's out but having this patch in avoid those questions.
> > >
> >
> > I would say yes, document it as that of a known issue and possible fix
> > if someone is using exact point release. They might have snapshotted
> > meta-rockpi too and in that case it will be easy for them to carry a
> > local patch if needed.
> > vesion specific patching would also be setting a not so desired
> > patching practice, so I am trying to avoid it if we can.
> >
> > > I understand we're talking about policy here. I am not fond of this
> patch either but Ethernet is quite critical on boards which don't have Wi=
Fi
> for example. I don't have anything better to suggest to fix this in the
> *latest* release.
> >
> > Update to latest honister branch or wait for 3.4.1, would be my
> suggestion.
> >
> > >
> > > Cheers
> > > Quentin
> > > >>
> > > >>
> > > >> Cheers,
> > > >> Quentin
> > > >>
>

--000000000000ca9cdb05d3086226
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Mon, Dec 13, 2021 at 1:00 AM Quentin Schulz &lt;<a href=
=3D"mailto:quentin.schulz@theobroma-systems.com">quentin.schulz@theobroma-s=
ystems.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;=
padding-left:1ex;border-left-color:rgb(204,204,204)">Hi Trevor,<br>
<br>
Gentle ping :)<br>
<br>
Honister 3.4.1 being out it&#39;s less of an issue but the question remains=
<br>
at least for settling on a policy :)</blockquote><div dir=3D"auto"><br></di=
v><div dir=3D"auto">Do we still need this patch ? I think now that dot rele=
ase is out it=E2=80=99s less of a problem. Version specific patching will s=
et a different preset for the layer to carry unexcercised patches</div><div=
 dir=3D"auto"><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;padding-left=
:1ex;border-left-color:rgb(204,204,204)" dir=3D"auto"><br>
<br>
Cheers,<br>
Quentin<br>
<br>
On Tue, Nov 16, 2021 at 10:50:13AM -0800, Khem Raj wrote:<br>
&gt; On Tue, Nov 16, 2021 at 10:03 AM Quentin Schulz &lt;<a href=3D"mailto:=
foss@0leil.net" target=3D"_blank">foss@0leil.net</a>&gt; wrote:<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; On November 16, 2021 6:45:05 PM GMT+01:00, Khem Raj &lt;<a href=
=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;=
 wrote:<br>
&gt; &gt; &gt;On Tue, Nov 16, 2021 at 9:12 AM Quentin Schulz &lt;<br>
&gt; &gt; &gt;<a href=3D"mailto:quentin.schulz@theobroma-systems.com" targe=
t=3D"_blank">quentin.schulz@theobroma-systems.com</a>&gt; wrote:<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;&gt; On Tue, Nov 16, 2021 at 09:08:41AM -0800, Khem Raj wrote=
:<br>
&gt; &gt; &gt;&gt; &gt; On Tue, Nov 16, 2021 at 9:04 AM Quentin Schulz<br>
&gt; &gt; &gt;&gt; &gt; &lt;<a href=3D"mailto:quentin.schulz@theobroma-syst=
ems.com" target=3D"_blank">quentin.schulz@theobroma-systems.com</a>&gt; wro=
te:<br>
&gt; &gt; &gt;&gt; &gt; &gt;<br>
&gt; &gt; &gt;&gt; &gt; &gt; On Tue, Nov 16, 2021 at 09:00:42AM -0800, Khem=
 Raj wrote:<br>
&gt; &gt; &gt;&gt; &gt; &gt; &gt; On Tue, Nov 16, 2021 at 7:52 AM Quentin S=
chulz<br>
&gt; &gt; &gt;&gt; &gt; &gt; &gt; &lt;<a href=3D"mailto:quentin.schulz@theo=
broma-systems.com" target=3D"_blank">quentin.schulz@theobroma-systems.com</=
a>&gt; wrote:<br>
&gt; &gt; &gt;&gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt;&gt; &gt; &gt; &gt; &gt; From Linux kernel v5.14 to v5.14.11 =
(both included), the Ethernet<br>
&gt; &gt; &gt;&gt; MAC<br>
&gt; &gt; &gt;&gt; &gt; &gt; &gt; &gt; controller found on RK3399 is not wo=
rking.<br>
&gt; &gt; &gt;&gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt;&gt; &gt; &gt; &gt; &gt; A fix is available in v5.14.12 and l=
ater (available also in v5.15)<br>
&gt; &gt; &gt;&gt; &gt; &gt; &gt; &gt; which is provided here and applied t=
o linux-yocto source tree if<br>
&gt; &gt; &gt;&gt; &gt; &gt; &gt; &gt; linux-yocto version is of the impact=
ed ones.<br>
&gt; &gt; &gt;&gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt;&gt; &gt; &gt; &gt; &gt; The conditional patching is unfortun=
ately required because<br>
&gt; &gt; &gt;&gt; Honister 3.4<br>
&gt; &gt; &gt;&gt; &gt; &gt; &gt; &gt; has linux-yocto v5.14.9 and Honister=
 3.4.1 will have at least<br>
&gt; &gt; &gt;&gt; &gt; &gt; &gt; &gt; linux-yocto v5.14.14.<br>
&gt; &gt; &gt;&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt;&gt; &gt; &gt; &gt; Patching piece below looks quite a bit.<b=
r>
&gt; &gt; &gt;&gt; &gt; &gt; &gt; lets just fix v5.14.14 and dont worry abo=
ut 3.4<br>
&gt; &gt; &gt;&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt;&gt; &gt; &gt;<br>
&gt; &gt; &gt;&gt; &gt; &gt; v5.14.14 is already fixed. The only release cu=
rrently is 3.4 and I hit<br>
&gt; &gt; &gt;&gt; &gt; &gt; that issue, hence the patch.<br>
&gt; &gt; &gt;&gt; &gt; &gt; I assume not everybody is updating to 3.4.1 wh=
en it&#39;s out, I&#39;ve seen<br>
&gt; &gt; &gt;&gt; &gt; &gt; people running behind dot releases.<br>
&gt; &gt; &gt;&gt; &gt; &gt; What&#39;s bothering you?<br>
&gt; &gt; &gt;&gt; &gt;<br>
&gt; &gt; &gt;&gt; &gt; once dot release is out then thats whats maintained=
 not the original<br>
&gt; &gt; &gt;&gt; &gt; release since they are incremental.<br>
&gt; &gt; &gt;&gt; &gt; the anon python to apply a patch. Can you explain w=
hy we want to patch<br>
&gt; &gt; &gt;&gt; &gt; applied this way ?<br>
&gt; &gt; &gt;&gt; &gt;<br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt; I could define a python function and use it like this:<b=
r>
&gt; &gt; &gt;&gt; SRC_URI:append:rk3399 =3D &quot;${@rk3399_fix_mac(d)}&qu=
ot;<br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt; Would that work better for you?<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;I am not yet convinced why should we have such version specif=
ic patch<br>
&gt; &gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; If you could explain what&#39;s *really* bothering you, I could t=
ry to find a proper explanation or agree with you but it&#39;s a bit too va=
gue to me right now. Anyway, I&#39;ll do some guesses in the next paragraph=
s.<br>
&gt; &gt;<br>
&gt; &gt; Because Ethernet does not work for all RK3399-based boards in the=
 latest and only release of Honister?<br>
&gt; <br>
&gt; meta-rockchip does not have honister branch for now. So it expects<br>
&gt; master to keep working with honister for now. kernel upgrades are<br>
&gt; already committed into honister branch on meta-yocto-bsps so fix it<br=
>
&gt; already available in latest honister<br>
&gt; branch and will be in imminent point release soon as well.<br>
&gt; <br>
&gt; &gt;<br>
&gt; &gt; meta-rockchip is the BSP layer for Rockchip based devices, if not=
 there, where should I put this patch?<br>
&gt; &gt;<br>
&gt; &gt; Or are we just going to say &quot;Ethernet does not work, we know=
&quot; to people asking instead of having this patch in? Obviously you coul=
d tell them to upgrade their oe-core/poky git repo to rolling honister or 3=
.4.1 once it&#39;s out but having this patch in avoid those questions.<br>
&gt; &gt;<br>
&gt; <br>
&gt; I would say yes, document it as that of a known issue and possible fix=
<br>
&gt; if someone is using exact point release. They might have snapshotted<b=
r>
&gt; meta-rockpi too and in that case it will be easy for them to carry a<b=
r>
&gt; local patch if needed.<br>
&gt; vesion specific patching would also be setting a not so desired<br>
&gt; patching practice, so I am trying to avoid it if we can.<br>
&gt; <br>
&gt; &gt; I understand we&#39;re talking about policy here. I am not fond o=
f this patch either but Ethernet is quite critical on boards which don&#39;=
t have WiFi for example. I don&#39;t have anything better to suggest to fix=
 this in the *latest* release.<br>
&gt; <br>
&gt; Update to latest honister branch or wait for 3.4.1, would be my sugges=
tion.<br>
&gt; <br>
&gt; &gt;<br>
&gt; &gt; Cheers<br>
&gt; &gt; Quentin<br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt; Cheers,<br>
&gt; &gt; &gt;&gt; Quentin<br>
&gt; &gt; &gt;&gt;<br>
</blockquote></div></div>

--000000000000ca9cdb05d3086226--

