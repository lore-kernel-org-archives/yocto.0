Return-Path: <JPEWhacker@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE08AC4332F
	for <webhook@archiver.kernel.org>; Wed,  8 Nov 2023 13:41:46 +0000 (UTC)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
 by mx.groups.io with SMTP id smtpd.web10.13685.1699450905516133594
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Nov 2023 05:41:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=amDIA4b3;
 spf=pass (domain: gmail.com, ip: 209.85.167.52, mailfrom: jpewhacker@gmail.com)
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-507a62d4788so9393126e87.0
        for <yocto@lists.yoctoproject.org>; Wed, 08 Nov 2023 05:41:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699450904; x=1700055704; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=dBz3UM79OmHXUaX3Sl4V3iY1iEm4wLgiZm67AAFA3Fo=;
        b=amDIA4b3SFmbuEzTJy+PsVRvLni/ekzyFrgiZkhBdf+XQSH/dajsd4UXazNOBkwxms
         rOh41S9GkbM3HTyLeVIm5TsnfkK1iY2yLY4xwKdGgZDjFoKYKTJjvlFB/PxKxc+yrw1K
         MujNFXs8SCxFExLORYhl+81GHWQgqI29tXedY2h0ss1xS+l5opU/quhyNjTKJ/cKm/KH
         pj1Ic0A+BTAV7mwA/YffskUFWuF5YISeylOMPuJB1D0lHm5q5ar8w32am23fAwKDK+9m
         2TIVPQILbmr10cumhsA/yLp7WzRKlmcH70gTwV361Rbcto251PAkqDCSOylGW2h8DAjD
         Rv5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699450904; x=1700055704;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dBz3UM79OmHXUaX3Sl4V3iY1iEm4wLgiZm67AAFA3Fo=;
        b=V+cSqJiim53V7g2cZyelKpGTfEsI1e1Uzip/ZLrOT4MQhAJ/JASjIw9CytfhiSOp+6
         9hzGf4C1V+CNsUDy1Lfx3AOdnU2zHd24Umd4HTG1PQo8aZ7HADakdR/1Hwt7J80Cfwjv
         DzvHh9fPoDmFXeCg5lEUlJfxAg4w68pSraa2WQBKJs2YUohvPHP5DDy4wRswzruSN8/X
         T7Bgvacatz7zGQlfSam+oApS7t18u9xCBJDDOAfXtLWSML1gX89MtdNJmY3CzSaNQo2j
         VIdhknYd8/QmDwUxCbQbwe610A4nRVUagrsZVGjeYiZgaB5lIN0RRnLiERYlfouEkhnA
         bo7Q==
X-Gm-Message-State: AOJu0YwNPrIL1YwnAo3RJ3U1ODgZrNdYhG631yTHHt/Vbtq5MXwTfNKZ
	vwauaXXEpMiM+BqPBQiBuqKlgmCWh/yc1rJn06A=
X-Google-Smtp-Source: AGHT+IG1SN0IvgB3MUBCUtRuVJCI2FCBBLNgphLbAmOiRvegvpF2SPPCzYeLlu6t6NM+0rJda8577DVxtR2ad3aAtKk=
X-Received: by 2002:a05:6512:239e:b0:504:7bb0:9d7e with SMTP id
 c30-20020a056512239e00b005047bb09d7emr1862277lfv.27.1699450903374; Wed, 08
 Nov 2023 05:41:43 -0800 (PST)
MIME-Version: 1.0
References: <CABXoSoWo6-beEPMM0eVkrMzqR+mA0bwPdw6w9dthVhcCk+06DA@mail.gmail.com>
In-Reply-To: <CABXoSoWo6-beEPMM0eVkrMzqR+mA0bwPdw6w9dthVhcCk+06DA@mail.gmail.com>
From: Joshua Watt <jpewhacker@gmail.com>
Date: Wed, 8 Nov 2023 06:41:33 -0700
Message-ID: <CAJdd5Gaf_kGS2r_KJECj5coBwn7qUFncFnvNOVTGWEQf+OUMCA@mail.gmail.com>
Subject: Re: [meta-mingw] patches for meta-openembedded recipes
To: Samuli Piippo <samuli.piippo@gmail.com>
Cc: yocto <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000068af470609a43f68"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 08 Nov 2023 13:41:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61637

--00000000000068af470609a43f68
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Depends on what the fix looks like. Most likely meta-openembedded though

On Wed, Nov 8, 2023, 1:57=E2=80=AFAM Samuli Piippo <samuli.piippo@gmail.com=
> wrote:

> Hi,
>
> There is a mingw build problem with abseil-cpp recipe from
> meta-openembedded layer (master/nanbield). meta-mingw declares dependency
> only to oe-core, so the question is that should fixes be pushed to
> meta-mingw layer or directly to meta-openembedded?
>
> -samuli
>

--00000000000068af470609a43f68
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Depends on what the fix looks like. Most likely meta=
-openembedded though<br><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Wed, Nov 8, 2023, 1:57=E2=80=AFAM Samuli Piippo &lt;<a=
 href=3D"mailto:samuli.piippo@gmail.com">samuli.piippo@gmail.com</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div>Hi,</div=
><div><br></div><div>There is a mingw build problem with abseil-cpp recipe =
from meta-openembedded layer (master/nanbield). meta-mingw declares depende=
ncy only to oe-core, so the question is that should fixes be pushed to meta=
-mingw layer or directly to meta-openembedded?<br></div><div><br></div><div=
>-samuli<br></div></div>
</blockquote></div></div></div>

--00000000000068af470609a43f68--

