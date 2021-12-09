Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6817CC433F5
	for <webhook@archiver.kernel.org>; Thu,  9 Dec 2021 02:03:44 +0000 (UTC)
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com
 [209.85.160.175])
 by mx.groups.io with SMTP id smtpd.web08.5931.1639015423652281236
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Dec 2021 18:03:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=FuzhBeiz;
 spf=pass (domain: gmail.com, ip: 209.85.160.175,
 mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f175.google.com with SMTP id t11so4058045qtw.3
        for <yocto@lists.yoctoproject.org>;
 Wed, 08 Dec 2021 18:03:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=50HyisIgotHOY7gbAXwxsuJvseg3zN/3IrAD5JdZeEo=;
        b=FuzhBeizNptADklC2qiecfO1/HNgnzbqhDFn93ns7ivZ0EycGsCMoyjpmDo2K2Ps01
         mqFM/UBde4ujO4cVTsBzsFQHZOQvjc+/AxBXEBoXIryN+8mr9FixfasjQU0VSY+x7SV/
         WuqrkyMCnVP823Z6Oc2P+v1qd4LlmOtYnQYW02RIjLajJtxgg00v7h+7M+lbU0nhQZ50
         85JtmsTgvid7yezv7AlJG8dN+pZo+I9oFBZ0IqUst1FLYEHrNLWYRCwQPvtbsTyOxgZm
         rTlVWx8sUW5IAygZDWl7V0RIP5fGSY2AsYy+Vp/LV/6nIYxFeOmzrZcfRQzpMp2Hufki
         UrIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=50HyisIgotHOY7gbAXwxsuJvseg3zN/3IrAD5JdZeEo=;
        b=qHht+X3MB82TCckhX6HgnmT9u7wFQU2/hZQKN0T+U78sz6DV6bRoQVBVxxwbAiRTeU
         +W6Hq98/3r3zMJSEHGSM8xtWIWcFVT2VOGygj8XFjXpXNN+IfgJgm9x7UyCh1uyqnLgB
         QlGN1FUb8H7PiegGPeOZ/h8xKXNxPhILttkcfmUKTtIGY2CPSPeVeJuHNQwN4lgInsFv
         xUEEbtuYH5U/eS/iyICiX4J0KGjcYAuzBMDdqHF3+JRuHGSqp23NMsI4Imbn+yAwdNAu
         m63EYMSFn5EfdNei7Nyi+rwj0WCIQ9Ol7F2zTW4eR4IJb2Rk53G+UqnuQP83BC8mZerp
         OZgA==
X-Gm-Message-State: AOAM530fjTU3PVL5i5OQbWObux8Wp4K+aCG8K1EL9tItUrBbGSeU8ln9
	WoB8AHZjPYym5K2l8+Bqyio=
X-Google-Smtp-Source: 
 ABdhPJwgUPhxShaA48nh1XYwzQZZ7U9UUOpibTOrVbMykQYGtEp4H2Eyr5Zx/9Ln0h+Hu/SLi63W5Q==
X-Received: by 2002:a05:622a:100a:: with SMTP id
 d10mr13117896qte.548.1639015422845;
        Wed, 08 Dec 2021 18:03:42 -0800 (PST)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id
 h16sm2854561qtx.20.2021.12.08.18.03.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Dec 2021 18:03:42 -0800 (PST)
Date: Wed, 8 Dec 2021 21:03:40 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [meta-rockchip][PATCH] u-boot: Replace
 virtual/trusted-firmware-a with trusted-firmware-a
Message-ID: <20211209020340.GB4676@localhost>
References: <20211208211526.3287971-1-raj.khem@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20211208211526.3287971-1-raj.khem@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 09 Dec 2021 02:03:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55528

On Wed 2021-12-08 @ 01:15:26 PM, Khem Raj wrote:
> meta-arm has dropped exporting virtual/trusted-firmware-a and expects
> direct use of trusted-firmware-a on depends sections
> 
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  recipes-bsp/u-boot/u-boot%.bbappend | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Oops, looks like we both noticed this at about the same time.
Since both our patches are identical, I simply added your SoB line.

Thanks!

