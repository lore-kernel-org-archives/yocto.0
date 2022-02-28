Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0BD5C433F5
	for <webhook@archiver.kernel.org>; Mon, 28 Feb 2022 17:08:49 +0000 (UTC)
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com
 [209.85.219.42])
 by mx.groups.io with SMTP id smtpd.web08.132.1646068128598088661
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Feb 2022 09:08:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Ol2FXKeu;
 spf=pass (domain: gmail.com, ip: 209.85.219.42, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f42.google.com with SMTP id v18so13543851qvh.11
        for <yocto@lists.yoctoproject.org>;
 Mon, 28 Feb 2022 09:08:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=bSY9sPE6pkt5OQRJe8aZR39muiwMJgiN+Q5wrGmCC/s=;
        b=Ol2FXKeu8psuWriZh1Hrw2qcKrykb4uayTV3tZcXtkIhdCOJ26IChqhYLyqpe0VUgd
         9F+mCzRf5IUI2SH1BPxmn61EW6oEN2qpthe9Ztv9FILkJQs1xge8mVgRQfxFzbXdiD60
         XjtZGs4S3ykA740Zc+Ck3XabFU81FPLPbN43VI4Oc19TEjJwRkwDqXlRh2qToCSXN3qK
         2HT/qZgSuA4qfk7BOSh/anS2QbR0vuCqDWwzqQTyrbIRxcL9LuA3zmr1qLaAkQ7RGpEk
         0O0fQDxmY74KWharCXYssQ0vMXNRXJhawD09azVzh3vUcUlOdHYkxkEqFALHYOxTnUoi
         zvsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=bSY9sPE6pkt5OQRJe8aZR39muiwMJgiN+Q5wrGmCC/s=;
        b=5t+lluELYzYyJt93L8zH8URXa533ZBVBK6PGXZ6qaDQcZAP2PRFhD//LICukp1HY/X
         SpzYAdccSeoH/dAZ1UPQdeijCTOpyT+m/ScvOx+fWk6Ry0g6pFoBfLcSyxg4/YwGkF/H
         SBwer1epFcvy+QJ4qnrEAKZcZTHGUlHhJonZOb2cPEJFzoQvNjST1+iuLPv++Ozu8/bC
         LCD0ozeGfEgU48c0iXg3qJ++C8T0fco/Uj8jNQntvPGJVuM83fiMwqefT9ySHzDpr79y
         wwgOAl+lnlWzDRVelz8pHPV9sRxi23iCLEuORwGfS/sPmCfbbG6YFJFiaGFNVkXHG56u
         53Vw==
X-Gm-Message-State: AOAM533561bZxuuiNUvTJWl3kgeeQzYjFpc90xUMKauiri71N9nhtzZv
	1p7P+7E6ukDj1fxyugXGgenOKx6Z6YfS6KdPftM=
X-Google-Smtp-Source: 
 ABdhPJxw9womo3jFkmJGFdJq4PE2pctNkVv62B06FyFXRcLMvjMoEEUYW9rav5LxjhssjPyda3Y5t/Qf6zXS62WiG/0=
X-Received: by 2002:ad4:5dea:0:b0:433:2d8f:f85 with SMTP id
 jn10-20020ad45dea000000b004332d8f0f85mr2525385qvb.63.1646068127657; Mon, 28
 Feb 2022 09:08:47 -0800 (PST)
MIME-Version: 1.0
References: 
 <AM0PR10MB31073672E30DE783EABE13FE99019@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
 <AM9PR09MB464256F2947816A73AA0CC9DA8019@AM9PR09MB4642.eurprd09.prod.outlook.com>
 <AM0PR10MB3107024590B74E59994FCDD399019@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
 <AM9PR09MB4642ED6A0F16027A770DD9AFA8019@AM9PR09MB4642.eurprd09.prod.outlook.com>
 <AM0PR10MB31070795E5754234F7ED07ED99019@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
 <AM9PR09MB46428B0965F4ECB7AF9ABC89A8019@AM9PR09MB4642.eurprd09.prod.outlook.com>
In-Reply-To: 
 <AM9PR09MB46428B0965F4ECB7AF9ABC89A8019@AM9PR09MB4642.eurprd09.prod.outlook.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 28 Feb 2022 09:08:21 -0800
Message-ID: 
 <CAMKF1soa6JjfcSuiMKx7zcf7sTf=SNvQidtuCv0YAC6nJac5vQ@mail.gmail.com>
Subject: Re: [yocto] python3-smbus no longer builds - Does anyone have an
 idea?
To: Konrad Weihmann <kweihmann@outlook.com>
Cc: Matthias Klein <matthias.klein@optimeas.de>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
 Tim Orling <ticotimo@gmail.com>,
	Richard Purdie <richard.purdie@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 28 Feb 2022 17:08:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56323

On Mon, Feb 28, 2022 at 5:10 AM Konrad Weihmann <kweihmann@outlook.com> wro=
te:
>
> Hi Matthias,
>
> you're right :(
>
> PYPA_WHEEL =3D "${S}/py-smbus/dist/smbus-*-*.whl"

this should be B instead I think

>
> finally does it
>
> @Tim @Richard
> PYPA_WHEEL doesn't respect SETUPTOOLS_SETUP_PATH, which might be another
> issue to fix
>
> BR
> Konrad
>
> On 28.02.22 14:04, Matthias Klein wrote:
> > Hello Konrad,
> >
> > unfortunately it still does not build:
> >
> > ERROR: smbus-*-*.whl is not a valid wheel filename.
> >
> > Best regards,
> > Matthias
> >
> > -----Urspr=C3=BCngliche Nachricht-----
> > Von: Konrad Weihmann <kweihmann@outlook.com>
> > Gesendet: Montag, 28. Februar 2022 13:59
> > An: Matthias Klein <matthias.klein@optimeas.de>; yocto@lists.yoctoproje=
ct.org
> > Betreff: Re: AW: [yocto] python3-smbus no longer builds - Does anyone h=
ave an idea?
> >
> > On 28.02.22 13:56, Matthias Klein wrote:
> >> Hello Konrad,
> >>
> >> Thanks for the quick feedback.
> >>
> >> Have you been able to build the package with the change?
> >> I get a similar error with it:
> >
> > Dang - that's the second issue being open in this series...
> >
> >>
> >> ERROR: smbus-4.3-*.whl is not a valid wheel filename.
> >
> > Try
> >
> > PYPA_WHEEL =3D "${PIP_INSTALL_DIST_PATH}/smbus-*-*.whl"
> >
> > instead - and it should really work
> >
> >>
> >> Best reagrds,
> >> Matthias
> >>
> >> -----Urspr=C3=BCngliche Nachricht-----
> >> Von: Konrad Weihmann <kweihmann@outlook.com>
> >> Gesendet: Montag, 28. Februar 2022 13:51
> >> An: Matthias Klein <matthias.klein@optimeas.de>; yocto@lists.yoctoproj=
ect.org
> >> Betreff: Re: [yocto] python3-smbus no longer builds - Does anyone have=
 an idea?
> >>
> >> Hi Matthias,
> >>
> >> this is cause by merged PEP-517 changes.
> >> To make it build again just inject
> >>
> >> PIP_INSTALL_PACKAGE =3D "smbus"
> >>
> >> into the recipe or a bbappend.
> >> Mainly the python3-prefix of the recipe, makes the name guessing fail,=
 I suspect patches to be incoming soon
> >>
> >> BR
> >> Konrad
> >>
> >> On 28.02.22 13:45, Matthias Klein wrote:
> >>> Hello,
> >>>
> >>> the python3-smbus package no longer builds.
> >>>
> >>> The install step ends with the following error message:
> >>>
> >>> ERROR: python3_smbus-4.3-*.whl is not a valid wheel filename.
> >>>
> >>> Does anyone have an idea what is the cause?
> >>>
> >>> Many greetings,
> >>>
> >>> Matthias
> >>>
> >>>
> >>>
> >>>
> >>>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#56316): https://lists.yoctoproject.org/g/yocto/messag=
e/56316
> Mute This Topic: https://lists.yoctoproject.org/mt/89449220/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

