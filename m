Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1F9F8C433EF
	for <webhook@archiver.kernel.org>; Tue,  7 Jun 2022 19:44:56 +0000 (UTC)
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com
 [209.85.167.54])
 by mx.groups.io with SMTP id smtpd.web10.1930.1654631091163295459
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Jun 2022 12:44:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=oXVBpGU4;
 spf=pass (domain: gmail.com, ip: 209.85.167.54,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f54.google.com with SMTP id s6so29861690lfo.13
        for <yocto@lists.yoctoproject.org>;
 Tue, 07 Jun 2022 12:44:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=t7MgphMZB+KjYQJnpdsONjOGkNW4hXTo0ghbcO5LQdI=;
        b=oXVBpGU4Ak9X1Oi5mDzarkuQh1YI/UfO3d3/oDJl7kA/I11tyWtbwv4VMhFw+AEeUk
         FNee/Oan35Q4Od+p0VDrosAvcJPDFEmq0b1zNWcdpOt42FIMKjB5GSrJ+ODTVsPb78Pu
         GtBvw7BIxCU4oIwUYbu0JkcVPThlvyVesOKrJxenST1HzI2ARoup2ZNjJHpD14K2/xf5
         +fua1tCfOcOOAu6Du4VnhvwzfJdgskMQ1Za53+LSpOv9op2+swoMQJAEpu1xZJUIYd9B
         sfJDU49qJDDp8TqqcPvNz7KYvGhYxGHihtcdiJnj+6fEV8GdSCqUYXv26LEgCgHiyHE2
         ePUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=t7MgphMZB+KjYQJnpdsONjOGkNW4hXTo0ghbcO5LQdI=;
        b=sr0KYk6A0JN71mZVbOCzYx5S/rtbH2kRlUWEtRY+NQOOR7oY+iofGxeQVcuZjqFSoj
         z1IwTZ0HQ0a3C72AWj8gPBJPKl46nt0AjC9axOT8T7LTWHrqxZT/uyYl9Js6sDgPOF1D
         DxOs82ZtYHPvZfdWGFV0utTQcckM/c1BuZhSHCl1jMHAObpcrzAUOT8K0Q76tvdKJGFG
         fM+Fy3HfDAS3SyQFAKlmkCG7Wwr7+z3wEQeIICGpiiJsP0DZibC+DFFZ+kvTt2zBJQ2m
         i3Ym2iO+JIQhkzJQR4COZK9tMjXS+TXr2CBzX90whftQXR+/hAaNNxAbH1dy3nt9OVmm
         5qeA==
X-Gm-Message-State: AOAM531EtIT14VwDrlqbDQmMV2fHXK7/h24oVBuW7Lg2utVvcvo/Y5gy
	N1GjcapUVSSHexG2XD/8GsFxzp+nLonz8+2rkfI=
X-Google-Smtp-Source: 
 ABdhPJwa9ffBEm4nX+CmDW9dKBK2FDSKo8vaPh68nS1dl7X0rrYe1XOmW9n90KyHTOVCGpq2jG15Uj+G7qaMjpPNgYc=
X-Received: by 2002:a05:6512:3f8f:b0:479:64f9:4420 with SMTP id
 x15-20020a0565123f8f00b0047964f94420mr3100692lfa.534.1654631089044; Tue, 07
 Jun 2022 12:44:49 -0700 (PDT)
MIME-Version: 1.0
References: <22848052-7e8c-d0c4-1c42-6d71022956bd@ibeeto.com>
In-Reply-To: <22848052-7e8c-d0c4-1c42-6d71022956bd@ibeeto.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 7 Jun 2022 21:44:37 +0200
Message-ID: 
 <CANNYZj-DmzVListvGSW8QMzMcyX0xOPBKCw=1V19hWjpjtcy=g@mail.gmail.com>
Subject: Re: [yocto] Force binary package install
To: Rudolf J Streif <rudolf.streif@ibeeto.com>
Cc: Yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Jun 2022 19:44:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57297

Can you show the recipe that you wrote for the blob?

Alex

On Tue, 7 Jun 2022 at 20:59, Rudolf J Streif <rudolf.streif@ibeeto.com> wrote:
>
> I have been handed a binary package that I am integrating into a Yocto
> build.
>
> When dnf runs it complains about missing dependencies. These are
> standard libraries of course but the culprit is the incompatible
> version. The software runs fine when I install it on the target using
> the script/tar installation it comes with. Needless to say that YP
> packaging QA complains about this already when assembling the package.
> However, there I can silence the complaints with INSANE_SKIP.
>
> Unfortunately I have not found a method doing the same when the package
> is installed by the image class.
>
> Is there an elegant way around it?
>
>
> Error:
>   Problem: conflicting requests
>    - nothing provides libdl.so.2 needed by
> xxx-single-group-0.1-r0.cortexa53_crypto
>    - nothing provides libdl.so.2(GLIBC_2.0) needed by
> xxx-single-group-0.1-r0.cortexa53_crypto
>    - nothing provides libdl.so.2(GLIBC_2.1) needed by
> xxx-single-group-0.1-r0.cortexa53_crypto
>    - nothing provides libgcc_s.so.1 needed by
> xxx-single-group-0.1-r0.cortexa53_crypto
>    - nothing provides libgcc_s.so.1(GCC_3.0) needed by
> xxx-single-group-0.1-r0.cortexa53_crypto
>    - nothing provides libm.so.6 needed by
> xxx-single-group-0.1-r0.cortexa53_crypto
>    - nothing provides libm.so.6(GLIBC_2.0) needed by
> xxx-single-group-0.1-r0.cortexa53_crypto
>    - nothing provides libm.so.6(GLIBC_2.1) needed by
> xxx-single-group-0.1-r0.cortexa53_crypto
>    - nothing provides libpthread.so.0 needed by
> xxx-single-group-0.1-r0.cortexa53_crypto
>    - nothing provides libpthread.so.0(GLIBC_2.0) needed by
> xxx-single-group-0.1-r0.cortexa53_crypto
>    - nothing provides libpthread.so.0(GLIBC_2.1) needed by
> xxx-single-group-0.1-r0.cortexa53_crypto
>    - nothing provides libpthread.so.0(GLIBC_2.2) needed by
> xxx-single-group-0.1-r0.cortexa53_crypto
>    - nothing provides libpthread.so.0(GLIBC_2.3.2) needed by
> xxx-single-group-0.1-r0.cortexa53_crypto
>    - nothing provides librt.so.1 needed by
> xxx-single-group-0.1-r0.cortexa53_crypto
>    - nothing provides librt.so.1(GLIBC_2.2) needed by
> xxx-single-group-0.1-r0.cortexa53_crypto
> (try to add '--skip-broken' to skip uninstallable packages)
>
>
> --
> Rudolf J Streif
> CEO/CTO ibeeto
> +1.855.442.3386 x700
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57296): https://lists.yoctoproject.org/g/yocto/message/57296
> Mute This Topic: https://lists.yoctoproject.org/mt/91607892/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

