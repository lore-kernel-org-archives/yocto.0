Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0FBABC433FE
	for <webhook@archiver.kernel.org>; Tue, 16 Nov 2021 17:45:18 +0000 (UTC)
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com
 [209.85.160.181])
 by mx.groups.io with SMTP id smtpd.web09.1430.1637084717260622939
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Nov 2021 09:45:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=qKf4pF2n;
 spf=pass (domain: gmail.com, ip: 209.85.160.181,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f181.google.com with SMTP id j17so19778805qtx.2
        for <yocto@lists.yoctoproject.org>;
 Tue, 16 Nov 2021 09:45:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=dV6JFTRbkmK2SOrmQndYEfF3KjWp8AuyB+wTvNSyucE=;
        b=qKf4pF2n2Bjg90Q2XTIXlelcLeyRLwLOJmToGS3Tbghdd8ehBvRV0nryvD2d7UNKGV
         AN6WdYpxVfcgt9U2AG4VLAazUr+BJ0FK8BgbPj67wYiKEEgK1wt/JubM3ohf/emsjbnV
         yG8pLKYoXqD51iEv3q91+TXNaBTfME8bnU61i4aVwgMB/ZyFDKDVRr28KV7C/hd0VSbo
         8khpqq5Y5Du1JZvXR7cGHNkL5ttmpK/YmbHi9HTm/OoVJ8vSXr1guXv8Kfq2zM35Fqtk
         b+qs3PPGH+ErCW7AxTFcDc13cJq2RLuwsq2F1GGT2rKccMr04nyZE5YbJEpMl/WV6zxW
         gdxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=dV6JFTRbkmK2SOrmQndYEfF3KjWp8AuyB+wTvNSyucE=;
        b=Nedu9AYbemBBX7CzO3RsypNAr5jAhVdAYy1nWhxil1U9Qf8Ne6GJj+XOchoZG2+JmD
         bhjUHzqusoGMPZvJ9uLipqTuJ/gjNmTR8JJV9d9AKFBBl5ZBeSM8i8MphjfKpNQ7BOme
         CLwul0h5E6GjIM/UxF0NL/667QN9OayRgGlZtHzyDA9bSnL7v/W2aio7D3BvQJxY8vMy
         sv0ljcXqTWSgzREGYPa7RePUFcHeSYbntk0STauzuHkd62cb93s1UDbZ/9w6KxNsBczF
         evLgc5IqmeUOvROBOAk6FNjrPpF1Ikfb8Q4Uq37pMsCH55UwLbJFuWK/zfrIbiYR4Dnp
         1qjQ==
X-Gm-Message-State: AOAM533EvlXPphQCDZQ9+XKOm5yeS0CdIPY/Czqn+4gQceiMdsSHws8v
	rsVmLvc1DUA28+1h6RCo1Jqgfjhb8rEnAUCqMUU=
X-Google-Smtp-Source: 
 ABdhPJye/hZLdG2usQzjKZFp/DK8PZLQbD7XnRHAgyz7EEr1dHZv+73wm7KVajd4UkuQtXoHnG4FNVYmoxl83Wtqw1E=
X-Received: by 2002:a05:622a:15c5:: with SMTP id
 d5mr9682499qty.227.1637084716352;
 Tue, 16 Nov 2021 09:45:16 -0800 (PST)
MIME-Version: 1.0
References: <20211116153256.3639663-1-quentin.schulz@theobroma-systems.com>
 <CAMKF1sq+cj8e31L1ExHSKckEVab-ZdeUCF3_CTSr0VPtZ=_sVQ@mail.gmail.com>
 <20211116170406.abau3j6liwsdonbp@fedora>
 <CAMKF1srfKKzNYBJPMKo_V13QKXuq1+mz-ULDd7hk3UEH_QwCNQ@mail.gmail.com>
 <20211116171242.7dyycd3d2qwb4ske@fedora>
In-Reply-To: <20211116171242.7dyycd3d2qwb4ske@fedora>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 16 Nov 2021 09:45:05 -0800
Message-ID: 
 <CAMKF1soUeJES6ZG-wvng3VDfW_unw_7Fo4KSPWr3Cr8uR9T=eA@mail.gmail.com>
Subject: Re: [yocto] [meta-rockchip][PATCH] kernel: linux-yocto: fix broken
 Ethernet MAC controller on RK3399 on 5.14 >= version <= 5.14.11
To: Quentin Schulz <quentin.schulz@theobroma-systems.com>
Cc: Quentin Schulz <foss+yocto@0leil.net>,
 Trevor Woerner <twoerner@gmail.com>,
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000fc4b2905d0eb7ccf"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 16 Nov 2021 17:45:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55350

--000000000000fc4b2905d0eb7ccf
Content-Type: text/plain; charset="UTF-8"

On Tue, Nov 16, 2021 at 9:12 AM Quentin Schulz <
quentin.schulz@theobroma-systems.com> wrote:

> On Tue, Nov 16, 2021 at 09:08:41AM -0800, Khem Raj wrote:
> > On Tue, Nov 16, 2021 at 9:04 AM Quentin Schulz
> > <quentin.schulz@theobroma-systems.com> wrote:
> > >
> > > On Tue, Nov 16, 2021 at 09:00:42AM -0800, Khem Raj wrote:
> > > > On Tue, Nov 16, 2021 at 7:52 AM Quentin Schulz
> > > > <quentin.schulz@theobroma-systems.com> wrote:
> > > > >
> > > > > From Linux kernel v5.14 to v5.14.11 (both included), the Ethernet
> MAC
> > > > > controller found on RK3399 is not working.
> > > > >
> > > > > A fix is available in v5.14.12 and later (available also in v5.15)
> > > > > which is provided here and applied to linux-yocto source tree if
> > > > > linux-yocto version is of the impacted ones.
> > > > >
> > > > > The conditional patching is unfortunately required because
> Honister 3.4
> > > > > has linux-yocto v5.14.9 and Honister 3.4.1 will have at least
> > > > > linux-yocto v5.14.14.
> > > >
> > > > Patching piece below looks quite a bit.
> > > > lets just fix v5.14.14 and dont worry about 3.4
> > > >
> > >
> > > v5.14.14 is already fixed. The only release currently is 3.4 and I hit
> > > that issue, hence the patch.
> > > I assume not everybody is updating to 3.4.1 when it's out, I've seen
> > > people running behind dot releases.
> > > What's bothering you?
> >
> > once dot release is out then thats whats maintained not the original
> > release since they are incremental.
> > the anon python to apply a patch. Can you explain why we want to patch
> > applied this way ?
> >
>
> I could define a python function and use it like this:
> SRC_URI:append:rk3399 = "${@rk3399_fix_mac(d)}"
>
> Would that work better for you?


I am not yet convinced why should we have such version specific patch

>
>
> Cheers,
> Quentin
>

--000000000000fc4b2905d0eb7ccf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Tue, Nov 16, 2021 at 9:12 AM Quentin Schulz &lt;<a href=
=3D"mailto:quentin.schulz@theobroma-systems.com">quentin.schulz@theobroma-s=
ystems.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On Tue, =
Nov 16, 2021 at 09:08:41AM -0800, Khem Raj wrote:<br>
&gt; On Tue, Nov 16, 2021 at 9:04 AM Quentin Schulz<br>
&gt; &lt;<a href=3D"mailto:quentin.schulz@theobroma-systems.com" target=3D"=
_blank">quentin.schulz@theobroma-systems.com</a>&gt; wrote:<br>
&gt; &gt;<br>
&gt; &gt; On Tue, Nov 16, 2021 at 09:00:42AM -0800, Khem Raj wrote:<br>
&gt; &gt; &gt; On Tue, Nov 16, 2021 at 7:52 AM Quentin Schulz<br>
&gt; &gt; &gt; &lt;<a href=3D"mailto:quentin.schulz@theobroma-systems.com" =
target=3D"_blank">quentin.schulz@theobroma-systems.com</a>&gt; wrote:<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; From Linux kernel v5.14 to v5.14.11 (both included), th=
e Ethernet MAC<br>
&gt; &gt; &gt; &gt; controller found on RK3399 is not working.<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; A fix is available in v5.14.12 and later (available als=
o in v5.15)<br>
&gt; &gt; &gt; &gt; which is provided here and applied to linux-yocto sourc=
e tree if<br>
&gt; &gt; &gt; &gt; linux-yocto version is of the impacted ones.<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; The conditional patching is unfortunately required beca=
use Honister 3.4<br>
&gt; &gt; &gt; &gt; has linux-yocto v5.14.9 and Honister 3.4.1 will have at=
 least<br>
&gt; &gt; &gt; &gt; linux-yocto v5.14.14.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Patching piece below looks quite a bit.<br>
&gt; &gt; &gt; lets just fix v5.14.14 and dont worry about 3.4<br>
&gt; &gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; v5.14.14 is already fixed. The only release currently is 3.4 and =
I hit<br>
&gt; &gt; that issue, hence the patch.<br>
&gt; &gt; I assume not everybody is updating to 3.4.1 when it&#39;s out, I&=
#39;ve seen<br>
&gt; &gt; people running behind dot releases.<br>
&gt; &gt; What&#39;s bothering you?<br>
&gt; <br>
&gt; once dot release is out then thats whats maintained not the original<b=
r>
&gt; release since they are incremental.<br>
&gt; the anon python to apply a patch. Can you explain why we want to patch=
<br>
&gt; applied this way ?<br>
&gt; <br>
<br>
I could define a python function and use it like this:<br>
SRC_URI:append:rk3399 =3D &quot;${@rk3399_fix_mac(d)}&quot;<br>
<br>
Would that work better for you?</blockquote><div dir=3D"auto"><br></div><di=
v dir=3D"auto">I am not yet convinced why should we have such version speci=
fic patch=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex" dir=3D"auto"><br>
<br>
Cheers,<br>
Quentin<br>
</blockquote></div></div>

--000000000000fc4b2905d0eb7ccf--

