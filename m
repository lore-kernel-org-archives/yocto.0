Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 04881C4725D
	for <webhook@archiver.kernel.org>; Mon, 22 Jan 2024 13:47:51 +0000 (UTC)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
 by mx.groups.io with SMTP id smtpd.web10.73989.1705931267808167914
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Jan 2024 05:47:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=TJUR34xv;
 spf=pass (domain: gmail.com, ip: 209.85.167.48, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-50e766937ddso3610318e87.3
        for <yocto@lists.yoctoproject.org>; Mon, 22 Jan 2024 05:47:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705931266; x=1706536066; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=42MTKZeIucvsT9eSC1b2xc5YtJhfbkHs7DjrKjj55HE=;
        b=TJUR34xv+p+0lc/FCq+eTdjCvzaPqY+L8TW9cqS8NWxu9nzh8T/VVP7wtgaDHGmV0F
         w+eU33m8fMw2z8caOgoGDe9rYc2J4Exda8tWUTFC/feId2DeBkaQoBc3maIhnEGvsl+e
         95Is7dbh07UDi3+7vq5mlOd0Q3cRnqH/GZakWNUl2n2MeEGe9Ug8yOYwt3ZG0e3jYzi5
         NGxDCv6mwN/yBauxqNVQYFXAHlezhqNCnOmto3WVEeWjTtJAW5Pvlwwr+ciD69e+jzdJ
         olycmoI6PHCpLGYZ64N3Dty88zpYBKZ/xf/U86sa1970egkPrJZK8Zfo7eiaSTeZ74mq
         /aew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705931266; x=1706536066;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=42MTKZeIucvsT9eSC1b2xc5YtJhfbkHs7DjrKjj55HE=;
        b=u2kgIF240iukz8lWzc4m/AFpj2VRmlxOem3dYKGTy7TpCVTzb5oiHbpIdPwJfoNW8G
         5VJa31Pfhv7oB4SDYaKYyVaGlEXLOHRmd/bTJPvGCtErCHtiq1DQVxDLzb0WWHbLVLpR
         HJf4FU+oI95Pl8oRZtFucC1QtmURSRbG5+DDKZJu0IQgtcLBWjZkObSD/fHmmh3+avm2
         qo3rc33uvHii/D6Po7VXoqaUQwKwBx81LJEsqLPyW7fNYFjmE3oQG/JIsqTiWSYgVTe8
         gtrd4WKJOR6+X9jTL+ju5ykfLKfrdb2fYYmpiQPTKcowK9uA9FG6CN3ZYIdac+l0LlJt
         ITsw==
X-Gm-Message-State: AOJu0Yyvy+kBbZFhNJj7tXTQzlqzcdAvXmt6EQDccDXWnKXjnX781iqA
	DxJExbe+JECOrQbctRBzjabUuw+qbemjCiwQMVkzbNAxKL4sLpQ2gCLoAeL3lwEnxqBC/nlkOlr
	osX60gAUntVP5WtuVZrCTo1yqGcjeGbJX
X-Google-Smtp-Source: AGHT+IE0QaQa1DYIiR/gSY58SoPpLC06oDXhVS+8CFWilixBOCq7nIpSliRFfubxQ8u6zdg0PKxtOht/gVrcXHTxUXk=
X-Received: by 2002:ac2:5297:0:b0:50e:aa74:5ff9 with SMTP id
 q23-20020ac25297000000b0050eaa745ff9mr1512018lfm.15.1705931265805; Mon, 22
 Jan 2024 05:47:45 -0800 (PST)
MIME-Version: 1.0
References: <DU2PR01MB871782D4F3B6384568F20F99A4762@DU2PR01MB8717.eurprd01.prod.exchangelabs.com>
 <07856f5e06ff5c9fc1ffa903b682426de2a32a65.camel@linuxfoundation.org>
 <DU2PR01MB87178F9BB04E6D84F03AFE1CA4752@DU2PR01MB8717.eurprd01.prod.exchangelabs.com>
 <f854dec6-5968-4b79-b8d5-6abfd8d75135@theobroma-systems.com>
In-Reply-To: <f854dec6-5968-4b79-b8d5-6abfd8d75135@theobroma-systems.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 22 Jan 2024 14:47:33 +0100
Message-ID: <CANNYZj_-tUaUE9qrDJjChX1PP5yaSWMvEDFOezkFiwZ4tqOjww@mail.gmail.com>
Subject: Re: [yocto] Remove Python dependency from target package only
To: yocto@lists.yoctoproject.org, quentin.schulz@theobroma-systems.com
Cc: holger.sebert.ext@karlstorz.com, 
	Richard Purdie <richard.purdie@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 22 Jan 2024 13:47:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62221

I would suggest not trying to figure out PACKAGECONFIGs just yet, but
rather go to the source of the error: inspect ${T}/log.do_configure
and ${T}/run.do_configure. Are options to enable/disable python passed
in? If yes, then something in PACKAGECONFIG settings doesn't quite
work. If no, then libxml somehow needs python at build time even
without those options, and this should be looked at separately by
checking in libxml source code what the failing check for python
actually does, and is it guarded by any options.


Alex

On Mon, 22 Jan 2024 at 14:40, Quentin Schulz via
lists.yoctoproject.org
<quentin.schulz=3Dtheobroma-systems.com@lists.yoctoproject.org> wrote:
>
> Hi Holger,
>
> On 1/22/24 14:33, Sebert, Holger.ext via lists.yoctoproject.org wrote:
> > [You don't often get email from holger.sebert.ext=3Dkarlstorz.com@lists=
.yoctoproject.org. Learn why this is important at https://aka.ms/LearnAbout=
SenderIdentification ]
> >
> > Hi Richard,
> >
> > Von: Richard Purdie <richard.purdie@linuxfoundation.org>
> >> Try:
> >>
> >> PACKAGECONFIG:remove:class-target:pn-libxml2 =3D "python"
> >>
> >
> > Tried it, but same error appears (=E2=80=9CPython not found=E2=80=9D in=
 libxml2-native).
> >
>
> What does
> bitbake-getvar -r libxml2-native PACKAGECONFIG
> and
> bitbake-getvar -r libxml2 PACKAGECONFIG
>
> return?
>
> I'm not entirely sure if the former will work since bitbake-getvar
> expects a recipe and libxml2 isn't reaaaaally a recipe on its own.
>
> If the former doesn't work, we need to check for
> PACKAGECONFIG:class-native and PACKAGECONFIG:class-target in
> bitbake-getvar -r libxml2 PACKAGECONFIG to debug this further.
>
> Cheers,
> Quentin
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62220): https://lists.yoctoproject.org/g/yocto/messag=
e/62220
> Mute This Topic: https://lists.yoctoproject.org/mt/103871920/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

