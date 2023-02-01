Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA67FC05027
	for <webhook@archiver.kernel.org>; Wed,  1 Feb 2023 15:02:42 +0000 (UTC)
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
 by mx.groups.io with SMTP id smtpd.web10.25495.1675263755122811657
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Feb 2023 07:02:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=CDXjSBxX;
 spf=pass (domain: linaro.org, ip: 209.85.208.43, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-ed1-f43.google.com with SMTP id v10so17961470edi.8
        for <yocto@lists.yoctoproject.org>; Wed, 01 Feb 2023 07:02:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=jfjt6DoarHW3/IpQ5WK32gFdO7YNZwLVVSTII4Nw9l8=;
        b=CDXjSBxXM9rxasIyzeIlO/z+li/D2r6fOziD6l/XdB/Y/7Y6IjGXbZ99KCQNjePi7/
         GK3jd3jgBWN8Yj7dRqyq6z2necnrApELAND098UbktrKn/zRUl6v6c1rKgaYY6Fj8wTR
         3xAcjxEw8t6Qw1K3Dq/MpuV35FMJR1DW0sCq58VbDBcEclRIySmZFH31cTGkvEhBREj8
         BnExnLkhMDcyuY/6WBE5wvDVEeYL7MyUAX9sW77sDrROwcJAl/AQovJOa7n33m9XeFad
         IztWx8iydK8Lx1O8nd2xWoWhrV8SIrXvZrrJODLYGJX5fsjakZZRGv9yEaXAVou3hWn3
         qA0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jfjt6DoarHW3/IpQ5WK32gFdO7YNZwLVVSTII4Nw9l8=;
        b=kLWuBJNpMxou0WUlS8HYFsPc34g5z2U/YRaLCKweymqtmPbdN6DBuTw+bM7gnyM5I3
         TI+RWEn/I7d0YEPQbYd2V9bYc+m1tF92AOuSqHhlRRR0ZPCy2Ooio6XbzAz8AYqIhglB
         HGSyBRv3U25ekRL3JjVRzhfu9rhtS0h2Mn9k4LlSWNkU5ycOc25Zj5dpgVIn8B2eaY7D
         6hbsHEQ3uIOOfLYwaaCdO3J2naLKID3ug5xcun+AoDObh6H6nIp+Q4f80wvc6zmIkbIe
         BH5gkEcGkbLAQaw6uNGPJ731vhSE/llOi7j3JKsdH9Jjuu92x1BqSIu0OxDVkYMhiBxS
         vP4g==
X-Gm-Message-State: AO0yUKVNOp9LzX0tR6zO7IUYwgFgZdq3pKtn6BEvlxrekW7bCPwscFF1
	PyYEI5NICUnwEGdx40WGaKuwKA==
X-Google-Smtp-Source: AK7set86NNHlOERzAJtBAh18VFS6EKsWXEf/PlXZtK1NkI7/FQgH9FC6sU4bwK3YJ3662nQ3COZG7w==
X-Received: by 2002:aa7:c494:0:b0:4a3:fd1a:2e80 with SMTP id m20-20020aa7c494000000b004a3fd1a2e80mr1721583edq.2.1675263753419;
        Wed, 01 Feb 2023 07:02:33 -0800 (PST)
Received: from nuoska (dsl-olubng11-54f814-94.dhcp.inet.fi. [84.248.20.94])
        by smtp.gmail.com with ESMTPSA id p2-20020a05640210c200b00499e5659988sm9761303edu.68.2023.02.01.07.02.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Feb 2023 07:02:32 -0800 (PST)
Date: Wed, 1 Feb 2023 17:02:30 +0200
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: akuster808 <akuster808@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-security][PATCH] linux-yocto: drop version from
 bbappends
Message-ID: <Y9p/BiyhHYUTaf0c@nuoska>
References: <20230130110106.4002198-1-mikko.rapeli@linaro.org>
 <87c2bde7-c0d8-a61b-f6da-5557f3347ced@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87c2bde7-c0d8-a61b-f6da-5557f3347ced@gmail.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 01 Feb 2023 15:02:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59134

Hi,

On Wed, Feb 01, 2023 at 08:19:42AM -0500, akuster808 wrote:
> 
> 
> On 1/30/23 6:01 AM, Mikko Rapeli wrote:
> > These bbappends apply to multiple kernel versions so no
> > need to make them version dependent. Fixes recipe parsing when
> > using meta-security master branch on kirkstone. In our custom layer we
> > set layer compatibility for kirkstone and I understand why meta-security
> > upstream would not want to do that:
> > 
> > LAYERSERIES_COMPAT_security-layer += 'kirkstone'
> > LAYERSERIES_COMPAT_parsec-layer += 'kirkstone'
> > LAYERSERIES_COMPAT_tpm-layer += 'kirkstone'
> > 
> > While I work towards supporting also yocto master branch and newer
> > releases than kirkstone, I would appreciate if I would not have to
> > branch off layers over minor details like this.
> 
> Is this a dup of the one sent earlier?

Yes, I wasn't sure if I was on the mailing list or not and send-emailed
another one after I was correctly subscribed.

Cheers,

-Mikko

> -armin
> > 
> > Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
> > ---
> >   .../linux/{linux-yocto_6.%.bbappend => linux-yocto_%.bbappend}    | 0
> >   .../linux/{linux-yocto_6.%.bbappend => linux-yocto_%.bbappend}    | 0
> >   2 files changed, 0 insertions(+), 0 deletions(-)
> >   rename meta-tpm/recipes-kernel/linux/{linux-yocto_6.%.bbappend => linux-yocto_%.bbappend} (100%)
> >   rename recipes-kernel/linux/{linux-yocto_6.%.bbappend => linux-yocto_%.bbappend} (100%)
> > 
> > diff --git a/meta-tpm/recipes-kernel/linux/linux-yocto_6.%.bbappend b/meta-tpm/recipes-kernel/linux/linux-yocto_%.bbappend
> > similarity index 100%
> > rename from meta-tpm/recipes-kernel/linux/linux-yocto_6.%.bbappend
> > rename to meta-tpm/recipes-kernel/linux/linux-yocto_%.bbappend
> > diff --git a/recipes-kernel/linux/linux-yocto_6.%.bbappend b/recipes-kernel/linux/linux-yocto_%.bbappend
> > similarity index 100%
> > rename from recipes-kernel/linux/linux-yocto_6.%.bbappend
> > rename to recipes-kernel/linux/linux-yocto_%.bbappend
> > 
> > -=-=-=-=-=-=-=-=-=-=-=-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#59099): https://lists.yoctoproject.org/g/yocto/message/59099
> > Mute This Topic: https://lists.yoctoproject.org/mt/96625229/3616698
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [akuster808@gmail.com]
> > -=-=-=-=-=-=-=-=-=-=-=-
> > 
> 

