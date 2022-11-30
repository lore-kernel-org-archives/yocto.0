Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 27DBFC4167B
	for <webhook@archiver.kernel.org>; Wed, 30 Nov 2022 01:52:49 +0000 (UTC)
Received: from mail-oa1-f51.google.com (mail-oa1-f51.google.com [209.85.160.51])
 by mx.groups.io with SMTP id smtpd.web11.38.1669773163462465742
 for <yocto@lists.yoctoproject.org>;
 Tue, 29 Nov 2022 17:52:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ASOexF/J;
 spf=pass (domain: gmail.com, ip: 209.85.160.51, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f51.google.com with SMTP id 586e51a60fabf-14286d5ebc3so19392467fac.3
        for <yocto@lists.yoctoproject.org>; Tue, 29 Nov 2022 17:52:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ctj1yZo78BTRfXMZMGcFDl9AfY4tABR3qJL/Ztxpxlw=;
        b=ASOexF/J48wB9fP8rAX6tvIKyPgmQluupfZvrhPgGdNL72wMBdchDHsM9kA65K66cx
         Uuoe3pjUOC7FjqX7cxKKQUUB8dQ024uWjBrvcdahxgiITwjuywwmPOUKfDcRXrV2pzYy
         13piuImntZfcxKTcgbVKJDJP7ntfKbNcknkKG7rnhC7bCEY75MSlQVZws5iT0e24FCO8
         UDNpeEjdanSEtvYlpfNEIcPL7bs0yXVx7h4MRJq7iBNEpXQ1SLbZ/HRDGS2k+FswEShg
         y2VaQ154mqawxu8ZbtcJHuWm9IZsS9l7gH+/o3k1mxKDbrNdD88W/29Pre7iHp1ge+to
         ZFnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ctj1yZo78BTRfXMZMGcFDl9AfY4tABR3qJL/Ztxpxlw=;
        b=3LI2g8BQa2IRT33zPKNN6VRPoHTRuBWpuTZuKlgov5SiGI7hLziu04oj+zQ1pNjiKX
         agULN+51C8a+gbFq6XyHwAhZRX15ytaoJHcdIFS+tvehBMh3Bd9DJ+cUka4wv75C1In9
         HGD9piRMI74Eis6k5WZm+//hjqw8FIowt/QkyGTmS5MBc27aqwlBMU3IjPRlieBIkvZ2
         wM7KoQljqguPYlbda+M7w2AaQ38kTwnRyuT7zYlPit2xrORQJK+gUEpctIanMnuRlXSQ
         VhAj+0ULzibzxWP1GDilqvnaNf3DSfgUS6y1YNPukgvRG4A732o0yoJwt9J9mgR1zx5Q
         i+ZQ==
X-Gm-Message-State: ANoB5pkhnkE1eie+GQLfxLYOJ6WBEO6d+Ux7GRH+UL5mJK4gLEc/8mZV
	j7uKP05342UXBUsgBb/9J/0md8+18IqVYjjVJkM=
X-Google-Smtp-Source: AA0mqf61UI5+S/bcJYZQHS6aujwg4I657XI6GFypDIhZWDmtPq8UtxqTSYIxnXyomFw/2ottPPlE3arL9osvi4P7uhQ=
X-Received: by 2002:a05:6871:4199:b0:142:d126:dc55 with SMTP id
 lc25-20020a056871419900b00142d126dc55mr22994703oab.262.1669773162699; Tue, 29
 Nov 2022 17:52:42 -0800 (PST)
MIME-Version: 1.0
References: <172AF1F3497B3C0B.368@lists.yoctoproject.org> <676c7488-3db0-c606-82f3-7e8e05ebc090@mistywest.com>
In-Reply-To: <676c7488-3db0-c606-82f3-7e8e05ebc090@mistywest.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 29 Nov 2022 17:52:16 -0800
Message-ID: <CAMKF1spFhinrsx2_tznv_aCQS18JdD7UEXi8G2_FV06JHNUb5A@mail.gmail.com>
Subject: Re: [yocto] unable to find u-boot config file in existing BSP
To: Mistyron <ron.eggler@mistywest.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 30 Nov 2022 01:52:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58660

On Fri, Nov 25, 2022 at 11:00 PM Mistyron <ron.eggler@mistywest.com> wrote:
>
>
> On 11/25/22 13:43, Mistyron via lists.yoctoproject.org wrote:
>
> Hi,
>
> I'm interested in extracting the u-boot config from an existing BSP. It does compile u-boot but I cannot find the config file and I definitely can invoke bitbake u-boot separately, i.e. there must be a .config file somewhere.
>
> I did find the location of the bbapppends:
>
> $ bitbake-layers show-appends | grep boot
> u-boot_2021.10.bb:
>   /home/yocto/rzv_vlp_v3.0.0/build/../meta-renesas/recipes-rzg2l/recipes-bsp/u-boot/u-boot_2021.10.bbappend
> u-boot_2021.10.bb (skipped):
>   /home/yocto/rzv_vlp_v3.0.0/build/../meta-renesas/recipes-rzg2l/recipes-bsp/u-boot/u-boot_2021.10.bbappend
>
> but searching in   /home/yocto/rzv_vlp_v3.0.0/build/../meta-renesas/recipes-rzg2l/recipes-bsp/u-boot/ for "*config*" did not yield any results.
>
> Background: I want to be able to compile u-boot separately with make, outside of Yocto and re-use the same configuration.
> Can anyone give me any hints?

.config should be in build tree of u-boot, when you do bitbake u-boot,
please look into the builddir of u-boot under work folder

>
> Thanks,
>
> Ron
>
> --
> RON EGGLER Firmware Engineer (he/him/his) www.mistywest.com
>
>
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#58637): https://lists.yoctoproject.org/g/yocto/message/58637
> Mute This Topic: https://lists.yoctoproject.org/mt/95262552/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

