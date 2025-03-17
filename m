Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A877DC282EC
	for <webhook@archiver.kernel.org>; Mon, 17 Mar 2025 12:17:29 +0000 (UTC)
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
 by mx.groups.io with SMTP id smtpd.web10.50867.1742213844018154611
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Mar 2025 05:17:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=dJj5OGLF;
 spf=pass (domain: gmail.com, ip: 209.85.219.41, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f41.google.com with SMTP id 6a1803df08f44-6e8fc176825so38231566d6.0;
        Mon, 17 Mar 2025 05:17:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742213843; x=1742818643; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tPUK9b+2+u2T1UWoT0vgTg4aFbsgTpPSXau+CQGZTzg=;
        b=dJj5OGLFEgWPZyI68KtX+/hTj3uzimEacVktgLXK8vVv1oQzq79KzjHNspt26jO4Rc
         8Wxp1rHNtU6SQOTvk/+p1mCBEEiyhkoUnVFbCQqZ9QzhqiWLHWiePpce1AXDr2fQYsa1
         GyQgRMX2xf6PKXaYmyvRGdrfdDfb0oxjrWC81DvNoeiup700XTMgIgiOe+6EPexuXV2m
         m0+UCQ8ULg99vYZtt14rMkl4FwKSoqLjheKrvOPvYpI8/fa1yGguSroFm6Kgke8LvA4P
         J79fCXBp8zH6CrfWJMe/8IzIhN9J01zIoSHWxZtKL7V5fQ+GeGUJuCFbJug/+pEq8NLu
         rCwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742213843; x=1742818643;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tPUK9b+2+u2T1UWoT0vgTg4aFbsgTpPSXau+CQGZTzg=;
        b=p+ZQ1+nlZTIc1rUBV7F60vquFnvC5fvAl6FONJ0Yc2O3Z2EIyrkmiH1EnLLnId2oHq
         ksd6tyc50kuj80sSXALGFDvYbfRqybliWI7S+m6jfYpuzHJyiuz4bGY+7IRTo4jD+BZ/
         vcBSzIt/dfF7LuRab42Yxj6ab8mqcryEP8B/UUeXY+DAUi4mLRVwgY6ts9iyUph/Hv13
         CEoeSzjeStEVDwwtX5Av5lT3vGKUljlZUEXu+KUoHRo2Si8STwWuvZPKVbtUYYfHUZhR
         Zz9G6rK2syS13quJACzJ2vkPkXAKxsxH/O70SJHAiYWGWM0tOYXwTXSPGCETQToMEPlD
         8Tzw==
X-Forwarded-Encrypted: i=1; AJvYcCU59T4og+FvPStNztvJf7jMGPkKDrnV5nRYSTXpzVzULiNfNXf2gucWmJc4+OA44JYLjQi1jYGcrAN7rkBpdK3EWqJvq7Ht@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YwFfFJldW/xf17hOkXrDsKyuxD006ZG7a7NhU2jlwvw0eyCmch+
	CfhYYZrJQINmFUP2F0sgL6eRPpS+ibUiMxo1fdOHninq3DS/hsHm6N8LIT58Zx0Hl/K2axsRTz8
	/Pvofa20Se2RngnEU/hUdjMGBj8Dqnw==
X-Gm-Gg: ASbGnculmg28SX2juAMFfZdAs5oZpT0gBimXeJNrQuorF2VOexAaubZv9P7Qe5VtR46
	4y4nNuFNqTYvxHebMcvM3arSv7RMvGVUl1NdFF79q8/MV7a3nHzyGZt8FoySH0bTokbprPx9XzK
	VxuW/plJwqCW0hYzg0pexIL4yoyTHs3EWHaIv5PJZkIHb+TjaJsRBEfyx9I7NN
X-Google-Smtp-Source: AGHT+IF0oGhco2HZMV8PXAcyERWrF53T1IK9i8y35yShyiOdNcOVQP8rNt6lZrvhCXJ+zQL7df/ODzRYGERfN24cZXA=
X-Received: by 2002:a05:6214:501c:b0:6e8:8d15:2d3d with SMTP id
 6a1803df08f44-6eaeab39103mr167854126d6.40.1742213842744; Mon, 17 Mar 2025
 05:17:22 -0700 (PDT)
MIME-Version: 1.0
References: <852477278.5779554.1742203477554@webmail.strato.de>
 <CANNYZj_+csNysr1sb2pR4nQrctLOLVuK8y8An0YTxB48tgH4bg@mail.gmail.com> <663305746.5836211.1742213116065@webmail.strato.de>
In-Reply-To: <663305746.5836211.1742213116065@webmail.strato.de>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 17 Mar 2025 13:17:11 +0100
X-Gm-Features: AQ5f1JpKiDtUAlrhFFITcEoqBSoFXWnF_D6d_EYDt8nV7sPIzoMU4I_Z_65SmPc
Message-ID: <CANNYZj_=wJRHeUk5ypoOJx=dovETdJFGKHjt19Frb3vnH5+=KQ@mail.gmail.com>
Subject: Re: [yocto] Migrating npm installation script into Yocto BSP
To: Daniel Kampert <kontakt@daniel-kampert.de>
Cc: yocto@lists.yoctoproject.org, 
	"Alexander Kanavin via lists.yoctoproject.org" <alex.kanavin=gmail.com@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 17 Mar 2025 12:17:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64963

You can attempt a backport of a newer nodejs recipe from newer yocto
releases, but there will be problems, which you'll have to solve
mostly on your own. Talk to your customer and suppliers first.

Alex

On Mon, 17 Mar 2025 at 13:05, Daniel Kampert <kontakt@daniel-kampert.de> wr=
ote:
>
> Hi Alexander,
>
> unfortunately upgrading to the latest version is not an option. I have to=
 use Dunfell for the moment.
>
> > Alexander Kanavin via lists.yoctoproject.org <alex.kanavin=3Dgmail.com@=
lists.yoctoproject.org> hat am 17.03.2025 11:24 CET geschrieben:
> >
> >
> > Dunfell reached end of life almost a year ago, and is no longer
> > supported. You need to update to a more recent yocto.
> >
> > Alex
> >
> > On Mon, 17 Mar 2025 at 10:24, Daniel Kampert via
> > lists.yoctoproject.org
> > <kontakt=3Ddaniel-kampert.de@lists.yoctoproject.org> wrote:
> > >
> > > Hi,
> > >
> > > I have a BSP with a npm installation script. The script is sourced du=
ring the initialization and contains the following commands:
> > >
> > > #!/bin/sh
> > >
> > > # Install Node.js version 18.20.2
> > > curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install=
.sh | bash
> > > export NVM_DIR=3D"$HOME/.nvm"
> > > [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
> > > nvm install 18.20.2
> > >
> > > # Install pm2 via npm
> > > npm --prefix /opt/app/backend/ install
> > >
> > > Now I=C2=B4m wondering how I can add this to the Yocto recipes of my =
BSP. The current Dunfell BSP only supports npm 14.x but I need this upgrade=
 to 18.20.
> > >
> > > How can I do it? Has someone done anything similar so far?
> > >
> > > Thanks for help!
> > >
> > > Mit freundlichen Gr=C3=BC=C3=9Fen / With kind regards
> > >
> > > Ing. Daniel Kampert, M. Sc.
> > > Embedded Systems Solutions
> > > Address: Hauptstr. 36 | 91469 Hagenb=C3=BCchach | Deutschland
> > > Phone: +49 (0)174 6932561
> > > E-Mail: kontakt@daniel-kampert.de
> > > Web: www.daniel-kampert.de
> > >
> > >
> > >
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#64960): https://lists.yoctoproject.org/g/yocto/mess=
age/64960
> > Mute This Topic: https://lists.yoctoproject.org/mt/111745830/9229641
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [kontakt@dani=
el-kampert.de]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
> Mit freundlichen Gr=C3=BC=C3=9Fen / With kind regards
>
> Ing. Daniel Kampert, M. Sc.
> Embedded Systems Solutions
> Address: Hauptstr. 36 | 91469 Hagenb=C3=BCchach | Deutschland
> Phone: +49 (0)174 6932561
> E-Mail: kontakt@daniel-kampert.de
> Web: www.daniel-kampert.de (https://www.daniel-kampert.de)

