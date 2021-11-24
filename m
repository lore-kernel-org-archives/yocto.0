Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6605C433F5
	for <webhook@archiver.kernel.org>; Wed, 24 Nov 2021 18:21:34 +0000 (UTC)
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com
 [209.85.222.182])
 by mx.groups.io with SMTP id smtpd.web09.1851.1637778093534793534
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Nov 2021 10:21:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=m8L59wIq;
 spf=pass (domain: gmail.com, ip: 209.85.222.182,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f182.google.com with SMTP id b67so3785973qkg.6
        for <yocto@lists.yoctoproject.org>;
 Wed, 24 Nov 2021 10:21:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=CIo/oeQaH+JDYQgCWuKDXoxZNX9y91Pxd0h7JKm33Qw=;
        b=m8L59wIqgCF6LebjuFD33oAfmhdwWYgnnAcqXbABW5/1w/PvGuop0hWxG01O1/4s3F
         b0U0kezMTOrAeTiVUZod0XhcHMLrS6Vx/hhgLXWTWHouIQU/Re0RlE0gnFB9OhbzcZXt
         OeVwnZP22ldarpVSTbIaKeh56/rgtPK2A4iE8IVEqXlr7WCuxdaWHxygNf8nT4pLXBb3
         anUIl6AfGQewb+sIHsdoqkKVp8ciRMuq2MTA/dxnczjBaikBvQeesKk6fIhgimDHHX8y
         xv2Wtj1KaadInj47rDtJrtOX+ihG90Eu5pLPKn8ugUeJLeHLX0Lx1dUpCNtFOMNOEKFk
         QpLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=CIo/oeQaH+JDYQgCWuKDXoxZNX9y91Pxd0h7JKm33Qw=;
        b=GhcrU6OWP3GOcf/49Gtq6pt0ViZM8zBns+kS42UGwQEwN49/7PWBstYUZzwNOPWzxs
         o0LWPfrP9zM58hdm9ftbX2hXnKR6EgPPiKHE67Lgs3YC2PAG9cs3JEsfKnhPZZPr8Zjl
         1Seh4drHIEkk8sGtr1RP6F4YpvMA70wzcaW/HXta8sYHJc7TqlgLgeAsV2zCYiexmxdG
         NPRXkaN7cFPw5bRLwAEm+87voT05fRgee4/pBkeK3DSyy3ZVkM/c+Jpic81JWsOj/D9j
         +k0UwDP/HWYtq1RKsgxWsOjYCpgCWqzoKEvFCubmCCvJww/kz8fv019vBi75VCDl9T3Q
         xTNw==
X-Gm-Message-State: AOAM532s+WDFS05uoqY1U9NCtwFgT3XTlBgha/+wfAN1jWRamzI00TVI
	sLpW6PCm71eJnSJViPzr3AfsQbPLydLudXWNE8o=
X-Google-Smtp-Source: 
 ABdhPJwAmXyTw4G4guLBChM3nihOshFlR4zDbUPLtegiQzajT5tqeSF/vjpC6OWXceQ1q3nb5nfplMjDlqnY0SyCjLU=
X-Received: by 2002:a37:dd4:: with SMTP id 203mr8027640qkn.149.1637778092612;
 Wed, 24 Nov 2021 10:21:32 -0800 (PST)
MIME-Version: 1.0
References: <20211123150331.2431516-1-ross.burton@arm.com>
 <CANNYZj8WZgGfNjF3pf2i5Fg1yJ0BEJVX3jhjDyTa+0Bs-H5ZAg@mail.gmail.com>
 <CAAnfSTvi57f0i83T80Z2SEKpXG6ch3kiSAKJwo3g=2u9-F_j=Q@mail.gmail.com>
 <CANNYZj9hoiUbuqjiMY00bG3BSAqNL1qrmK1HASdHiD1YyVMn1Q@mail.gmail.com>
 <473510c439b0d732d956ab327a425221f6019cc7.camel@linuxfoundation.org>
In-Reply-To: 
 <473510c439b0d732d956ab327a425221f6019cc7.camel@linuxfoundation.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 24 Nov 2021 10:21:06 -0800
Message-ID: 
 <CAMKF1sq+zY0SqPHganABa0nZdKK1mg0mvJ2MwhvwXnPeU_HS=w@mail.gmail.com>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper] config.json: set
 ZSTD_THREADS like XZ_THREADS
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Alexander Kanavin <alex.kanavin@gmail.com>,
 Ross Burton <ross@burtonini.com>,
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 24 Nov 2021 18:21:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55410

On Wed, Nov 24, 2021 at 2:18 AM Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
>
> On Wed, 2021-11-24 at 09:00 +0100, Alexander Kanavin wrote:
> > But the AB has not been exhibiting any problems with zstd, and this will
> > degrade performance. Let's only fix what is broken.
>
> I'm not sure I agree with that.
>
> We have 60+ "intermittent" bugs and some of us are in weekly meetings trying to
> do something about working out why these are failing. It feels like we're not
> really getting too far with some subset of them and it is using up a lot of the
> SWAT and bug triage time.
>
> We've made a few changes to try and reduce the load spikes on the systems and
> this fits with the other changes we've made.
>

From a different data point, we have clipped the parallelism for XZ
and ZSTD internally to very low ( 2 and 4 )
and it has in fact reduced unexpected failures and seen no impact on
build performance. Since parallelism settings
are myopic for these tools, they greedily take every CPU which is not
best for overall build thats doing many
things in parallel, so its best to curtail them to a conservative value.

> Cheers,
>
> Richard
>
>
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#55404): https://lists.yoctoproject.org/g/yocto/message/55404
> Mute This Topic: https://lists.yoctoproject.org/mt/87260143/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

