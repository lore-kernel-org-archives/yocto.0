Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7FABC433FE
	for <webhook@archiver.kernel.org>; Thu, 21 Apr 2022 16:46:05 +0000 (UTC)
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com
 [209.85.219.42])
 by mx.groups.io with SMTP id smtpd.web08.23966.1650559455236077334
 for <yocto@lists.yoctoproject.org>;
 Thu, 21 Apr 2022 09:44:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=NOqKMpz+;
 spf=pass (domain: gmail.com, ip: 209.85.219.42, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f42.google.com with SMTP id a10so4082486qvm.8
        for <yocto@lists.yoctoproject.org>;
 Thu, 21 Apr 2022 09:44:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=RGwao7wmM+WotZHCYI/M8wVNGG3Cgk9TpSrZNauAelg=;
        b=NOqKMpz+AfQgVtENfzIjJS8i12szrMSejQGxZq9hE40Tz7DMZeMqSlbvnaDAMwB89/
         Kk2lw7yyqH+oZ+P1zChKvgMdH/LPkvUqIReVUU6Nu0bdvuIaXz177Qq/PYNWTCrSyr6A
         waBShtPJnzvdz11tAErJ4kGfBV+YC/ZSA9ySb/1w/P7Xa3bRqNPeKZq/tNWofLP3Uh48
         ZqKYviAxw9u3yoAWO9G4qMKoj2B9VF+ViBXBBN/1l3BC4GcTRHgOILKegKuwD3wdFfba
         jRt//eulKlHUbysREMVM34utPB8boehe3jaNCZbZ3KKZ6CU22Crr2QY0ibwmzZEaM0GH
         gIMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=RGwao7wmM+WotZHCYI/M8wVNGG3Cgk9TpSrZNauAelg=;
        b=8L90Cej4EDQtKxKvbjTfhyFg5+AeriDepRtWqUoPaSiPI8sECLgC7WA4zR/ZYOBbQh
         ubGoLyOd95aifdfaX/0fUUpT3WInrOCWJ/L4JiLCVcmvOvUxEk80AZB7VtvtRKJiIUaI
         1hYAtyiaaTA+pr0eD75Z8mlFtEhGF2D2t5yaz1PX6fA3NcIsiqQ3u165QgeJsh+qBdKr
         +OsQcvugOKkrR8BmEpKQy+tpF5Q2sDUzDuTBfebZEjO1kgGjLwOkH3vgnjn9GPnhMgPo
         x/5xZ644F1wJ43lfaWa7jf9gHEXactycA3QJvamZ6bRneeOTGY5ijr+52ObE/jBALenX
         Bmcg==
X-Gm-Message-State: AOAM533rnv4PdeuOf8XWssxL80dbTu6zS1PBkARUMOq6Y3gs/sh1zI4u
	PFUBe++QZ0Nlxnez7k5+vgql7Fjm0yrT+unDfBk=
X-Google-Smtp-Source: 
 ABdhPJz1J/42ZiF7gE53EoKQTKpBzTGgnly4rBbzPfXQ8oZTxd02z21Xa6XwQ+1Y9/A6AsjQT8TYymyDdWz6FV5+gOE=
X-Received: by 2002:a05:6214:1194:b0:444:45d6:d79d with SMTP id
 t20-20020a056214119400b0044445d6d79dmr311535qvv.36.1650559454181; Thu, 21 Apr
 2022 09:44:14 -0700 (PDT)
MIME-Version: 1.0
References: <7QpW.1650456925554776331.UMQo@lists.yoctoproject.org>
In-Reply-To: <7QpW.1650456925554776331.UMQo@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 21 Apr 2022 09:43:48 -0700
Message-ID: 
 <CAMKF1sru_oWdDfnxytkzMsJ8-hX7boG3NoHmPgqU50c5+LpdsA@mail.gmail.com>
Subject: Re: [yocto] SRC_URI from AWS codecommit with user and password #yocto
To: mail2uvijay@gmail.com
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 21 Apr 2022 16:46:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56833

you might have to figure out how the clone should work firstly. then
you can either encode it into SRC_URI, but I would say be careful
since you might leak password and url info
into packages, other option is to have some sort of ssh-agent running
and doing the authentication or maybe use .netrc to hold this info on
builder's homedir.

On Wed, Apr 20, 2022 at 5:15 AM <mail2uvijay@gmail.com> wrote:
>
> Hi All,
>
> I have an application writing in Qt/QML for specific embedded target, The repo for this application is maintained in AWS codecommit which has user and password .
> How to mentioned in the recipe SRC_URI to fetch from the repo which has user/password. I dont have SSH access for the same.
> Let me know if you need more details.
> tried this https://www.yoctoproject.org/pipermail/yocto/2014-April/019135.html no luck.
>
> Regards,
> Vijay
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#56820): https://lists.yoctoproject.org/g/yocto/message/56820
> Mute This Topic: https://lists.yoctoproject.org/mt/90582260/1997914
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

