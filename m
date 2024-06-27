Return-Path: <marek.belisko@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 24069C2BD09
	for <webhook@archiver.kernel.org>; Thu, 27 Jun 2024 12:07:33 +0000 (UTC)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
 by mx.groups.io with SMTP id smtpd.web11.6360.1719490050343450112
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 Jun 2024 05:07:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=mRFOdzkz;
 spf=pass (domain: gmail.com, ip: 209.85.208.173, mailfrom: marek.belisko@gmail.com)
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2ee4ab5958dso4689011fa.1
        for <yocto@lists.yoctoproject.org>; Thu, 27 Jun 2024 05:07:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719490048; x=1720094848; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=bt5/7GwwqDdXqt8fHz389fueskBL4embCvgtsz4UA18=;
        b=mRFOdzkzoe876qGJdNsNGfwarcHGQ6p5izpMAbmRwhuYSkX9Maa1Pz8/8voBUUmtXo
         ndm6g6qytKfWaLxYuEVdW7Ani/9FeALrpft+qEI3bNBKSEHelxprwMN1j3ZQdHtcy/BA
         59aqvVRbw2+ahhQPjy6q0c7G15tgcoycJwKpzfz4iOtI+QSMgramelEu4dsWDFVWth/i
         33bI3alr4WnRiKt1slM/wBKcGPtm3T/2iiAb5OauDW7jbjMCGHmQl5m8ln/XXH8S501f
         NsJXgYdt9ZdcSMygjjhSo0B4RfECvpAYfXhJ+lQ+R/EiOAOrCwh8fXMxheof9KoyqPlo
         wPvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719490048; x=1720094848;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bt5/7GwwqDdXqt8fHz389fueskBL4embCvgtsz4UA18=;
        b=JaWdZgbrJlbHJBQrNfOUCHgRHwZM8Bc+CCzLN6VMbAeALKu+5AxRG5UU/goJr4sBTK
         wQvlXNYkFXrGUumcY9f+2c99aJwJa2hBv6/3wD+iis9sYW72KAcLRE48vwE2MpH7lxj2
         11L4RVD3vWyhdE3G+1XbXEk2x10/fh3suJ9gk58A1LUp0zE0U+UcTtZ33MW9DKB6lRSA
         3HoIFp0B7oPsAxTJmLftujutU+BdER7iyDaC2L08cE6CIQH4hwgYcLriNt7F0AwmHBgJ
         XnnKX5vvzvXLABqZnR5223q5yEj/i108d+7++jFGu3c2/ismDt2zMSoheQE/mf3kuUGa
         lXcQ==
X-Gm-Message-State: AOJu0YyG4BuK60SO7fga1er0IJFAt2mlUmhU1h8ZUnKZdYPoJjP7jHlD
	hZ1KAMkGVKRwjqQ0MYwemqBH0RBD1s+O3TXpwsGJVLMFSwZlHlUs+8e/SYn/SOv9TwdagaaF6lV
	8jM4cu9ZoKRTjiGmX+J8kt5vP1xw=
X-Google-Smtp-Source: AGHT+IHyk/4TuG5kyj6NtyYWOvHSMyeylOc0pMHOfHuTrgrsbJIjCGysc5aOhVR8xG5IKWb/uU1LYJ9gGNVp6YywndE=
X-Received: by 2002:a2e:9813:0:b0:2ec:4d82:9e96 with SMTP id
 38308e7fff4ca-2ee48075252mr7554301fa.23.1719490048199; Thu, 27 Jun 2024
 05:07:28 -0700 (PDT)
MIME-Version: 1.0
References: <CAAfyv355-ZMkGobQnzpOBHgpaU+=heHVVv0M9mLh+P78XnwEpw@mail.gmail.com>
 <d31565dd-301e-4f48-ad0e-d24561a7e6ae@cherry.de>
In-Reply-To: <d31565dd-301e-4f48-ad0e-d24561a7e6ae@cherry.de>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Thu, 27 Jun 2024 14:07:16 +0200
Message-ID: <CAAfyv34jfFccpV9fMU9LkQz2XVDaAW6iNBaFjVBfO6TC76JZ1Q@mail.gmail.com>
Subject: Re: [yocto] meta-rockchip: rk3568 GPU support
To: Quentin Schulz <quentin.schulz@cherry.de>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000008495e1061bddf966"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 27 Jun 2024 12:07:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63398

--0000000000008495e1061bddf966
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Quentin,
On Thu, Jun 27, 2024 at 1:49=E2=80=AFPM Quentin Schulz <quentin.schulz@cher=
ry.de>
wrote:

> Hi Marek,
>
> On 6/27/24 11:49 AM, Marek Belisko via lists.yoctoproject.org wrote:
> > You don't often get email from marek.belisko=3D
> gmail.com@lists.yoctoproject.org. Learn why this is important<
> https://aka.ms/LearnAboutSenderIdentification>
> > Hi,
> >
> > I'm just checking how to enable GPU acceleration for e.g. gstreamer for
> cm3-io board using rk3568 CPU. I saw that mesa have some options but not
> for rk356x CPU's:
> > PACKAGECONFIG:append:rk3288 =3D " kmsro panfrost"
> > PACKAGECONFIG:append:rk3399 =3D " kmsro panfrost"
> > PACKAGECONFIG:append:rock64 =3D " kmsro lima"
> > PACKAGECONFIG:append:px30 =3D " kmsro panfrost"
> >
> >
> > I've added a cm3-io machine and will post a patch soon (snippet below)
> > require conf/machine/include/rk3568.inc
> >
> > KERNEL_DEVICETREE =3D "rockchip/rk3566-radxa-cm3-io.dtb"
> > MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-modules"
> >
> > UBOOT_MACHINE =3D "radxa-cm3-io-rk3566_defconfig"
> >
> > Any ideas please?
> >
>
> We have it enabled on the master branch already, c.f.
>
> https://git.yoctoproject.org/meta-rockchip/commit/?id=3D9b20f029184798b41=
93945bbf286505e88b97da6
>
> You can send patches to backport it to other branches if you want?
>
Thanks I'll probably backport it to scharthgap. I think I mixed things up.
panfrost is used for GPU acceleration. I need vpu acceleration (gstreamer
decode h264) so I've enabled hantro driver
but gstreamer is still taking a lot of cpu. Maybe gstreamer support is not
yet added? According this:
https://wiki.pine64.org/wiki/Mainline_Hardware_Decoding it should work so
I'm puzzled.

>
> Cheers,
> Quentin
>

Thanks and BR,

marek

--=20
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

--0000000000008495e1061bddf966
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Quentin,</div><div dir=3D"ltr">On Thu, Jun 27, 202=
4 at 1:49=E2=80=AFPM Quentin Schulz &lt;<a href=3D"mailto:quentin.schulz@ch=
erry.de">quentin.schulz@cherry.de</a>&gt; wrote:<br></div><div class=3D"gma=
il_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi Marek,<br>
<br>
On 6/27/24 11:49 AM, Marek Belisko via <a href=3D"http://lists.yoctoproject=
.org" rel=3D"noreferrer" target=3D"_blank">lists.yoctoproject.org</a> wrote=
:<br>
&gt; You don&#39;t often get email from marek.belisko=3D<a href=3D"mailto:g=
mail.com@lists.yoctoproject.org" target=3D"_blank">gmail.com@lists.yoctopro=
ject.org</a>. Learn why this is important&lt;<a href=3D"https://aka.ms/Lear=
nAboutSenderIdentification" rel=3D"noreferrer" target=3D"_blank">https://ak=
a.ms/LearnAboutSenderIdentification</a>&gt;<br>
&gt; Hi,<br>
&gt; <br>
&gt; I&#39;m just checking how to enable GPU acceleration for e.g. gstreame=
r for cm3-io board using rk3568 CPU. I saw that mesa have some options but =
not for rk356x CPU&#39;s:<br>
&gt; PACKAGECONFIG:append:rk3288 =3D &quot; kmsro panfrost&quot;<br>
&gt; PACKAGECONFIG:append:rk3399 =3D &quot; kmsro panfrost&quot;<br>
&gt; PACKAGECONFIG:append:rock64 =3D &quot; kmsro lima&quot;<br>
&gt; PACKAGECONFIG:append:px30 =3D &quot; kmsro panfrost&quot;<br>
&gt; <br>
&gt; <br>
&gt; I&#39;ve added a cm3-io machine and will post a patch soon (snippet be=
low)<br>
&gt; require conf/machine/include/rk3568.inc<br>
&gt; <br>
&gt; KERNEL_DEVICETREE =3D &quot;rockchip/rk3566-radxa-cm3-io.dtb&quot;<br>
&gt; MACHINE_EXTRA_RRECOMMENDS +=3D &quot;kernel-modules&quot;<br>
&gt; <br>
&gt; UBOOT_MACHINE =3D &quot;radxa-cm3-io-rk3566_defconfig&quot;<br>
&gt; <br>
&gt; Any ideas please?<br>
&gt; <br>
<br>
We have it enabled on the master branch already, c.f. <br>
<a href=3D"https://git.yoctoproject.org/meta-rockchip/commit/?id=3D9b20f029=
184798b4193945bbf286505e88b97da6" rel=3D"noreferrer" target=3D"_blank">http=
s://git.yoctoproject.org/meta-rockchip/commit/?id=3D9b20f029184798b4193945b=
bf286505e88b97da6</a><br>
<br>
You can send patches to backport it to other branches if you want?<br></blo=
ckquote><div>Thanks I&#39;ll probably backport it to scharthgap. I think I =
mixed things up. panfrost is used for GPU acceleration. I need vpu accelera=
tion (gstreamer decode h264) so I&#39;ve enabled hantro driver</div><div>bu=
t gstreamer is still taking a lot of cpu. Maybe gstreamer=C2=A0support is n=
ot yet added? According this:=C2=A0<a href=3D"https://wiki.pine64.org/wiki/=
Mainline_Hardware_Decoding">https://wiki.pine64.org/wiki/Mainline_Hardware_=
Decoding</a> it should work so I&#39;m puzzled.</div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
<br>
Cheers,<br>
Quentin<br>
</blockquote></div><div><br></div>Thanks and BR,<div><br></div><div>marek<b=
r clear=3D"all"><div><br></div><span class=3D"gmail_signature_prefix">-- </=
span><br><div dir=3D"ltr" class=3D"gmail_signature">as simple and primitive=
 as possible<br>-------------------------------------------------<br>Marek =
Belisko - OPEN-NANDRA<br>Freelance Developer<br><br>Ruska Nova Ves 219 | Pr=
esov, 08005 Slovak Republic<br>Tel: +421 915 052 184<br>skype: marekwhite<b=
r>twitter: #opennandra<br>web: <a href=3D"http://open-nandra.com" target=3D=
"_blank">http://open-nandra.com</a></div></div></div>

--0000000000008495e1061bddf966--

