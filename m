Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 41677C433EF
	for <webhook@archiver.kernel.org>; Fri, 17 Dec 2021 18:11:33 +0000 (UTC)
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com
 [209.85.160.175])
 by mx.groups.io with SMTP id smtpd.web10.39.1639764692291748898
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Dec 2021 10:11:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Ml+moRYo;
 spf=pass (domain: gmail.com, ip: 209.85.160.175,
 mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f175.google.com with SMTP id o17so3512380qtk.1
        for <yocto@lists.yoctoproject.org>;
 Fri, 17 Dec 2021 10:11:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=HLJN0Gif4k0V9DMv/Ag/eKTaFAvlU7oP+gTXIiENv6U=;
        b=Ml+moRYozwbKoqHrTxQa59KDYhPOsUXE0WmuATpSfCQMJzQAGeUzZdZiDl3kWPG42J
         l3saapfDkOdWroAqb8UodoNjCQoED/NA6L02uwSKtSe3Fh7XIIN+uO/Bt+dfBFv44Fvp
         oy9Dg6emo2fw+VgqQoMzcAtI1cixV9dEd0WHkUIR4Mg/o0/bpdN0iFNHllkOu/rCbHdW
         fFJPd6Cc89BVHgY3xtkB1xy9VKUZWmxfxdDoO04ib2eBv/p7dEh21ICEn7M28HGm/ttG
         fx/3vRT6dKsyxxHUasInI0kff7QChOUEf2ql3s+5P3NnmJGp+EKVYB/+IVB69tZzfbGe
         aFZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=HLJN0Gif4k0V9DMv/Ag/eKTaFAvlU7oP+gTXIiENv6U=;
        b=VskLTcgP0UpwFX8yDBzVmgVJNosChhwm69PVzqySEJk3UIB0und4cFHu4j8FzmFIpr
         v7/Cre/EPWaiq6z9170KWXZ8Ovu9ZSEl+oTreWbC3NE+XRnggiysQYccQeDMNrckB3bD
         MXP86/A+/8B8oFV+v5f3vZeymi4+mxAd02Mc6e2FbXqJnFl+VzMgirOXqhJfoegUCaC4
         wm/4t4rjA0quGhzfbJM/Ymjpt2vfgCw8w7Z8dOt1pj9ub3tA5UakqVS96a30Wj2nQAIT
         J3sNJ0XcDNVp6RWFEtv9/asH1/0tVh+ob68/YI7bd61yLEkqAcE6XoRQrnYLqrpFoTJ7
         ALrg==
X-Gm-Message-State: AOAM533nMwRloovX9PBRXVkM4pbyhoWzGODmcFOPuPMPm8X/qVGMddNS
	HK/8zVV81FN6/wjWmZPJQ0E=
X-Google-Smtp-Source: 
 ABdhPJxW4E0wbGK+q2QWLXxOUQ3DTTtqAh6Ew49hN31u31NOsl6tLxq1zNu4ujoyte2HLDQrEkzRxA==
X-Received: by 2002:a05:622a:1708:: with SMTP id
 h8mr3515700qtk.318.1639764691388;
        Fri, 17 Dec 2021 10:11:31 -0800 (PST)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id
 w8sm7799078qtc.36.2021.12.17.10.11.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Dec 2021 10:11:30 -0800 (PST)
Date: Fri, 17 Dec 2021 13:11:28 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Quentin Schulz <foss+yocto@0leil.net>
Cc: yocto@lists.yoctoproject.org, raj.khem@gmail.com,
	Quentin Schulz <quentin.schulz@theobroma-systems.com>
Subject: Re: [meta-rockchip][PATCH v3] trusted-firmware-a: replace baudrate
 with the one specified in machine conf
Message-ID: <20211217181128.GA21592@localhost>
References: <20211217113047.207480-1-foss+yocto@0leil.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20211217113047.207480-1-foss+yocto@0leil.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 Dec 2021 18:11:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55614

On Fri 2021-12-17 @ 12:30:47 PM, Quentin Schulz wrote:
> From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> 
> Not all Rockchip boards have their console running at 1500000 baud in
> U-Boot and the kernel. Such is the case for puma-haikou RK3399-based
> SoM+Carrierboard.
> 
> In order to prepare for the addition of puma-haikou to meta-rockchip,
> let's replace the baudrate in TF-A by the one defined in the machine
> conf file in the RK_CONSOLE_BAUD variable.
> 
> Cc: Quentin Schulz <foss+yocto@0leil.net>
> Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> ---
>  .../files/serial-console-baudrate.patch       | 36 -------------------
>  .../trusted-firmware-a_%.bbappend             | 10 +++++-
>  2 files changed, 9 insertions(+), 37 deletions(-)
>  delete mode 100644 recipes-bsp/trusted-firmware-a/files/serial-console-baudrate.patch

Applied to meta-rockchip master. Thanks!

