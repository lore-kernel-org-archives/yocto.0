Return-Path: <trini@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 545EDC433EF
	for <webhook@archiver.kernel.org>; Mon, 29 Nov 2021 15:49:15 +0000 (UTC)
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com
 [209.85.219.51])
 by mx.groups.io with SMTP id smtpd.web11.62394.1638200953865991282
 for <yocto@lists.yoctoproject.org>;
 Mon, 29 Nov 2021 07:49:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=cc3sPxUK;
 spf=pass (domain: konsulko.com, ip: 209.85.219.51,
 mailfrom: trini@konsulko.com)
Received: by mail-qv1-f51.google.com with SMTP id a24so14936734qvb.5
        for <yocto@lists.yoctoproject.org>;
 Mon, 29 Nov 2021 07:49:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=NscZ1hg1hnrpN9wxbJuZynL5rF2Wbvp4SEHzePqmVYM=;
        b=cc3sPxUKz/Huq3sfRB2INJRtfBD47PFMrSGNVwTtttIjb+JGm0o86ELuXWA7i7ccpt
         rKObduGezcLy952CFPnwkNf531IIWSbGcmiIg1SYC+G8twyndaApeF1o9syvwueMmkaA
         0y9c1y8+vkuL2hUc2DtcOTS3P0xSrYBprBadM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=NscZ1hg1hnrpN9wxbJuZynL5rF2Wbvp4SEHzePqmVYM=;
        b=sZP2bbwid50wIz+bSKHym1Auefgz0IPfJC04CrJzG8eDBp5OY0G4mcSNbAuif0BfoZ
         S5L29QK2jGF2XWBPfcqCfxk9X/cONslhjfqNpk/VqqRKzN0UgXneBCz3kJeOmlPtwieH
         2EtdVMc6SQmQPq6Tty+xjBz7lYyS66N1oYOCUPK/5/Rb20MONAYEzEFkrv08h94LT8pK
         4j+DQiT8etTQy9zMm12hO/IQ56LK4clTEBvMXo3dGb96Jcl9JnVKsll9cDJBNvfuSXKB
         dVJmzOUWz/RPWetTErckJnCCyuIfLz4zx6oXOLWDeYjeoFg8aGfqP06FKQW6/lPDy+c0
         sk9w==
X-Gm-Message-State: AOAM533n09quJLQogo0pbShqm7J/yfxBPzhEFT/UXhwiDdw2h6ql2ibw
	194k6oW9/XGJETw7P9uMrgA1cA==
X-Google-Smtp-Source: 
 ABdhPJxAqNcrh1P/WuYQ3veHfeUopg/COTTf6nTVzVU11rOxw9uT1CdULRfoaF0qwmXhi3Y2q8vtEQ==
X-Received: by 2002:ad4:49cd:: with SMTP id j13mr44052951qvy.20.1638200951155;
        Mon, 29 Nov 2021 07:49:11 -0800 (PST)
Received: from bill-the-cat
 (2603-6081-7b01-cbda-edec-aa90-ebd5-017a.res6.spectrum.com.
 [2603:6081:7b01:cbda:edec:aa90:ebd5:17a])
        by smtp.gmail.com with ESMTPSA id
 y11sm9346390qta.6.2021.11.29.07.49.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Nov 2021 07:49:10 -0800 (PST)
Date: Mon, 29 Nov 2021 10:49:08 -0500
From: Tom Rini <trini@konsulko.com>
To: Marek Belisko <marek.belisko@gmail.com>
Cc: Trevor Woerner <twoerner@gmail.com>,
	Yocto <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] [meta-rockchip] dunfell: u-boot build issue when added
 patch to u-boot
Message-ID: <20211129154908.GK24579@bill-the-cat>
References: 
 <CAAfyv36OOxr2XHq6bk=XrA829X+kEdx3pdv2WoQytW5A3SuxCg@mail.gmail.com>
 <CAAfyv34cx7i5HHiHEOYTK1-2eBywBTRv6jB8RcD86Q5mRQJvRQ@mail.gmail.com>
 <20211126225554.GA9691@localhost>
 <CAAfyv368M8EExa_6tMYc7A4P9U0Hq+_QQAfmaN4-S4fzTMpJkQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: 
 <CAAfyv368M8EExa_6tMYc7A4P9U0Hq+_QQAfmaN4-S4fzTMpJkQ@mail.gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 29 Nov 2021 15:49:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55441

On Sat, Nov 27, 2021 at 09:24:56PM +0100, Marek Belisko wrote:
> Hi,
> 
> On Fri, Nov 26, 2021 at 11:55 PM Trevor Woerner <twoerner@gmail.com> wrote:
> >
> > On Thu 2021-11-11 @ 08:44:48 AM, Marek Belisko wrote:
> > > Hello,
> > >
> > > I'm trying to integrate mender for tinker-board-s using meta-rockchip
> > > dunfell branch. When added meta-mender which add few patches to
> > > u-boot I'm seeing u-boot compilation issues like:
> > >
> > > Error: SPL image is too large (size 0x11000 than 0x8000)
> > > | Error: Bad parameters for image type
> > >
> > > Error is clear to me but patches which mender adds are related mostly
> > > to the environment so I'm not sure how SPL can increase size. Any
> > > ideas on how to resolve this issue?
> >
> > Does the following help?
> I'm adding dunfell support for mender :). In this link mender rockchip
> integration is for older u-boot not 2020.01
> > https://github.com/mendersoftware/meta-mender-community/tree/dunfell/meta-mender-rockchip

Did some sort of "enable environment support in SPL" option get enabled
in your patches perhaps?

-- 
Tom

