Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B22C77B75
	for <webhook@archiver.kernel.org>; Fri, 21 Apr 2023 11:23:51 +0000 (UTC)
Received: from mail-ua1-f54.google.com (mail-ua1-f54.google.com [209.85.222.54])
 by mx.groups.io with SMTP id smtpd.web10.8987.1682076221583198755
 for <yocto@lists.yoctoproject.org>;
 Fri, 21 Apr 2023 04:23:41 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=RCyToS8G;
 spf=pass (domain: gmail.com, ip: 209.85.222.54, mailfrom: quaresma.jose@gmail.com)
Received: by mail-ua1-f54.google.com with SMTP id a1e0cc1a2514c-771d9ec5aa5so6406728241.0
        for <yocto@lists.yoctoproject.org>; Fri, 21 Apr 2023 04:23:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682076220; x=1684668220;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=TRzjSbXxoOcJOEANV0BW4My9/9UyaXJZk+4Hj7rI534=;
        b=RCyToS8GeYR00DN09IZb+9AWQeLh647/kiknO0lmab15p1qTLMl6E+/98/dtyjEpkT
         BQnNGO+Tn8S1kU9pnfYR67LHT/4WJp3Q2XSjxzlaTjH+A90KynD5zh+LP9c6KdSIKLSK
         cVjMaFqy1+ey6Ao8g5v1yoQw6RrYTRxQQVvXRmm7fzSynbp5SsYkZQk3FtCiyhtCd9Ps
         60fU0tINm0/a6aK2e4UNwC2TLCZrR1BZkDBa8TK45/Togz+i/IJTvzYtoZOgjxspAeyq
         varLg8F+n0Qp4ba0Ni3rn4kMZsg+u/S2RvTcBBnRktCDcxNtBKvIGvvXqqZzhLCDkhZx
         Bm7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682076220; x=1684668220;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TRzjSbXxoOcJOEANV0BW4My9/9UyaXJZk+4Hj7rI534=;
        b=jTedzwJLxf77Pmtdm84mn4xkY2H9PxREdY5VSLprwrfk1y6KpYE/Te9Eh8Hq8e3GWl
         iUbbKGuYF7MglgCpxS+dh/uKfxIDE7k92vkahG2xb5AnJeVyeHefxUMl4loyNAzoMqfo
         l0APDHpir5m34ONNPfoLo7UIwl4DcIpXRVuhH2zmG7QUmB/ahCAsFPvws96i4eNOWRWV
         f/fDpLvLG/nih972sFklVsSQ7RGH3QL6MgH7wu32Ias/zNSgAC1d4W07Talq5kliMy6y
         Tg6fq2QTOeaBUX++cGzaYRRIkAakurAwiUi15SlOilEosSfQFSvXCZrQZHyL/svEPM5a
         7DGA==
X-Gm-Message-State: AAQBX9d7EfWI4E72vBeoggCP2enymAr50FaCkqktYz/oUAr1oQzG/Jtq
	1652VCTDOQdYM/7lLWlG7FuzQcs8FojNL37yWa4=
X-Google-Smtp-Source: AKy350a3X6MXtx2nfaP6w5oqSqBPW2tYoL0xMnRkv4zjJwDZtpvKLlLFypjC1UNUmaOSDWgH2ZYkXiMA3D28HeajjBU=
X-Received: by 2002:a05:6102:1499:b0:42f:ee66:6a5 with SMTP id
 d25-20020a056102149900b0042fee6606a5mr2986939vsv.6.1682076220329; Fri, 21 Apr
 2023 04:23:40 -0700 (PDT)
MIME-Version: 1.0
References: <CAPJWBngCF34ht+RdS3cNb1ZPLSzobqJXu_pVF_WO+X54pwC7_A@mail.gmail.com>
 <CAMjhiJgBCe6B=_7859wMzAAuxXLk+z56MOL9VaqNGAPvkUv+Tw@mail.gmail.com>
In-Reply-To: <CAMjhiJgBCe6B=_7859wMzAAuxXLk+z56MOL9VaqNGAPvkUv+Tw@mail.gmail.com>
From: Jose Quaresma <quaresma.jose@gmail.com>
Date: Fri, 21 Apr 2023 12:23:29 +0100
Message-ID: <CANPvuR=N_yzc7Pjfde3=atTUL5v3PAwmkbbHbg+QXfYD5-VOrQ@mail.gmail.com>
Subject: Re: [yocto] OTA updates for Application Software
To: Leon Woestenberg <leon@sidebranch.com>
Cc: MOHAMMED HASSAN <hassanchattarki@gmail.com>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000099151905f9d6e303"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 21 Apr 2023 11:23:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59751

--00000000000099151905f9d6e303
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Leon Woestenberg <leon@sidebranch.com> escreveu no dia sexta, 21/04/2023
=C3=A0(s) 09:24:

> On Fri, Apr 21, 2023 at 5:53=E2=80=AFAM MOHAMMED HASSAN
> <hassanchattarki@gmail.com> wrote:
> >
> > I wanted to know if it is possible to update your application through
> OTA updates.
> > If yes, then please share some documentation or some steps in achieving
> it.
> >
>
> Also note "ostree", which allows incremental updates and is especially
> suited if you want to minimize data usage (for example, over cellular
> networks).
>
> https://ostree.readthedocs.io/en/stable/manual/introduction/
>
> Basically OSTree is GIT for filesystems.
>

The bitbake meta-updater [1] layer provides most of the bits to work with
ostree.
I work for Foundries.io [2] and my company also provides professional OTA
services.

[1] https://github.com/uptane/meta-updater
[2] https://github.com/foundriesio

Jose


>
> Regards,
>
> Leon.
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59750):
> https://lists.yoctoproject.org/g/yocto/message/59750
> Mute This Topic: https://lists.yoctoproject.org/mt/98403981/5052612
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> quaresma.jose@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
Best regards,

Jos=C3=A9 Quaresma

--00000000000099151905f9d6e303
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">Leon Woestenberg &lt;<a href=3D"mailt=
o:leon@sidebranch.com">leon@sidebranch.com</a>&gt; escreveu no dia sexta, 2=
1/04/2023 =C3=A0(s) 09:24:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">On Fri, Apr 21, 2023 at 5:53=E2=80=AFAM MOHAMMED HASSAN<br>
&lt;<a href=3D"mailto:hassanchattarki@gmail.com" target=3D"_blank">hassanch=
attarki@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; I wanted to know if it is possible to update your application through =
OTA updates.<br>
&gt; If yes, then please share some documentation or some steps in achievin=
g it.<br>
&gt;<br>
<br>
Also note &quot;ostree&quot;, which allows incremental updates and is espec=
ially<br>
suited if you want to minimize data usage (for example, over cellular<br>
networks).<br>
<br>
<a href=3D"https://ostree.readthedocs.io/en/stable/manual/introduction/" re=
l=3D"noreferrer" target=3D"_blank">https://ostree.readthedocs.io/en/stable/=
manual/introduction/</a><br>
<br>
Basically OSTree is GIT for filesystems.<br></blockquote><div><br></div><di=
v>The bitbake meta-updater [1] layer provides most of the bits to work with=
 ostree.<br>I work for Foundries.io [2] and my company also provides profes=
sional OTA services.<br><br>[1] <a href=3D"https://github.com/uptane/meta-u=
pdater">https://github.com/uptane/meta-updater</a><br>[2]=C2=A0<a href=3D"h=
ttps://github.com/foundriesio">https://github.com/foundriesio</a><br><br>Jo=
se<br>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
Regards,<br>
<br>
Leon.<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#59750): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/59750" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/59750</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/98403981/5052=
612" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/98403981/5052612</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:quaresma.jose@gmail.com" target=3D"_blank">quare=
sma.jose@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr">Best regards,<div><br>Jos=C3=A9 Quaresma</div></div></div></=
div>

--00000000000099151905f9d6e303--

