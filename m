Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919FCC433F5
	for <webhook@archiver.kernel.org>; Fri, 26 Nov 2021 22:55:58 +0000 (UTC)
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com
 [209.85.222.179])
 by mx.groups.io with SMTP id smtpd.web08.30220.1637967357986568584
 for <yocto@lists.yoctoproject.org>;
 Fri, 26 Nov 2021 14:55:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=iuE0wFeV;
 spf=pass (domain: gmail.com, ip: 209.85.222.179,
 mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f179.google.com with SMTP id m192so16244714qke.2
        for <yocto@lists.yoctoproject.org>;
 Fri, 26 Nov 2021 14:55:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=QkRoUbNBQgWF15NpZR5G9y8Q2Pf1wFbinoeozvQEks8=;
        b=iuE0wFeVHlgafqqGzGs6BbqC2LjpVGZDXY9wsin2sxBw9uDEEcUl40xi7UjWxvKwaD
         64bIzlQ0XDVoqL5EAeoIy+mqeyOQBUvLkUbAGlvC7ioVT/l/0pkCs8XkdQJFhyXrFr74
         uOw97cCVrOupjqjF+IjU8r5a6nfD9wlW+srOXDzwSQ8WdAicGQ0AvPqUbgghoyx4wEgq
         xpz8MKK6iS+BTTSFm4TlVFW8WzhwBKj5b2RFtlO3IvnFXdW0oc/w65GD1TsKijFo5LBu
         TWGJ8zprF5M5bqhIsRcCtXODcLUXxVT6Dm5vww8NgwUPvhBOLUcx13BfMY0PhtG/T1Fw
         V1XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=QkRoUbNBQgWF15NpZR5G9y8Q2Pf1wFbinoeozvQEks8=;
        b=cFC7ObNZEHZc+4wq+Zaqq7qZFDgnY7gq36uoT87ZlpR+TUkwuCo7nF9wO/T9SChSM4
         +N8AXGtZYNJvDU9NuAYOB2sX4+8mdc5XqCS2uUFZZOMxTWL3fQIwSCzTShHg2oufkc7J
         98ABY2lY33i8lcnfIbdSCmE4EUyZalTI9GiUeuAbTe6c4DG7f33szK98L5TDCzsrDFKI
         QWY92+ZcQicPPvMIpvlhKKsybrqzV++RqUE5T64s4E76x4+rg5ytiInIhdrELXYv53qb
         QlEywJsD3skqt6ifTq21mQArO0x41hUUqabrS50XJwZ2oEk0XVr6KCC1lUBUFf9TDXJS
         f2jw==
X-Gm-Message-State: AOAM531icP9K3sMQKt5MZUQQs4l3lNcKZJAqoa1rgDb3jlGJQuLbKuPd
	yvRwJDIKJewZ9xdfqdVVDeM=
X-Google-Smtp-Source: 
 ABdhPJxPws0Pit3mCm6Ykc1H7Y8ZDfD+LCVCDkXIYvAhKdhOVJ67NMKwyklPAjPB9jgJ8nFnQQ1qVA==
X-Received: by 2002:a05:620a:2942:: with SMTP id
 n2mr16160032qkp.608.1637967357158;
        Fri, 26 Nov 2021 14:55:57 -0800 (PST)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id
 p18sm4175699qtk.54.2021.11.26.14.55.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 14:55:56 -0800 (PST)
Date: Fri, 26 Nov 2021 17:55:54 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Marek Belisko <marek.belisko@gmail.com>
Cc: Yocto <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] [meta-rockchip] dunfell: u-boot build issue when added
 patch to u-boot
Message-ID: <20211126225554.GA9691@localhost>
References: 
 <CAAfyv36OOxr2XHq6bk=XrA829X+kEdx3pdv2WoQytW5A3SuxCg@mail.gmail.com>
 <CAAfyv34cx7i5HHiHEOYTK1-2eBywBTRv6jB8RcD86Q5mRQJvRQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: 
 <CAAfyv34cx7i5HHiHEOYTK1-2eBywBTRv6jB8RcD86Q5mRQJvRQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 26 Nov 2021 22:55:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55429

On Thu 2021-11-11 @ 08:44:48 AM, Marek Belisko wrote:
> Hello,
> 
> I'm trying to integrate mender for tinker-board-s using meta-rockchip
> dunfell branch. When added meta-mender which add few patches to
> u-boot I'm seeing u-boot compilation issues like:
> 
> Error: SPL image is too large (size 0x11000 than 0x8000)
> | Error: Bad parameters for image type
> 
> Error is clear to me but patches which mender adds are related mostly
> to the environment so I'm not sure how SPL can increase size. Any
> ideas on how to resolve this issue?

Does the following help?
https://github.com/mendersoftware/meta-mender-community/tree/dunfell/meta-mender-rockchip

