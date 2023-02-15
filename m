Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0D58AC636D4
	for <webhook@archiver.kernel.org>; Wed, 15 Feb 2023 07:22:45 +0000 (UTC)
Received: from mail-oa1-f43.google.com (mail-oa1-f43.google.com [209.85.160.43])
 by mx.groups.io with SMTP id smtpd.web10.10015.1676445763849795472
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Feb 2023 23:22:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=fvJD4LwE;
 spf=pass (domain: gmail.com, ip: 209.85.160.43, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f43.google.com with SMTP id 586e51a60fabf-16e353ce458so4392080fac.9
        for <yocto@lists.yoctoproject.org>; Tue, 14 Feb 2023 23:22:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=X7mhfB1F9czG8gjvCPGAogwpuMNz1W75c/7aO3j4iOA=;
        b=fvJD4LwEBalyR8S1ZAVQu5XCS+AI5dpav0AOd1TSHeQC2i98fi/4zYN7Vis7DGYRdL
         KYfCOD1Hr7Cy8/e1zO7+2PUUs/h7gF8cz6iadkuPWgDJPykdmuk+fj6CVk7v75LW/v+E
         XLdOM71/P+lCYcd+LU955W+JqsTcJAg/EsaF9pO4VRlk6ZMNYqXhTCRo0qrovp3pqGe9
         TpuumrEe7ZLKJ8XUDrflMfl72LqHdsbWgfTkburX2Z8YgbITX4VewXAUrL7tlr1Papnz
         N2GQqaNBdHxvh803yO0riWEankk3NKXVkB2eDD9q/I1mWToJvv/ieYyz+FzgcOZWUtrt
         wjbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=X7mhfB1F9czG8gjvCPGAogwpuMNz1W75c/7aO3j4iOA=;
        b=DeJ5pGQAvHer0di2RkXTr8Q0lL5/BLYLq3IHtfERMGEtaQgd/YFsPHKhSPViXrKPrL
         NFUph/ihTUVBEIoMt7U11mMHprqzS4LsVHR/SlKG8l2ou5C+8UJ/dtbquog9wB/22vag
         uyclZVaar7lA/AcSTQLHQGBVjhqRuglvxd+BmKcSIBsLO3SgcFuZHX2vXFjonUpit/GP
         rOMfX0XlzyNdjlThBW4WaynKybYjUEtiZoo+/652Zi97AoY19yGRQVV5ld9kMTsM0wUo
         1LcfdKJ/kh8GKelRnfob3ICgA8CKbY2AIpGw7lrsRKH/58senZR8XGWITgbS0bRHARtv
         e8LQ==
X-Gm-Message-State: AO0yUKUEv1qR6kNS4rgW0wEbeBMUSa5IeiF1l1xbld0fpkVMrgw72b5x
	/i+I/vQzfjq+1lCLf4yvZGP/d+Oyrik9uUDPlfY=
X-Google-Smtp-Source: AK7set8HHJv0C6uZRzV8T+phNaRCnWsB5bjsvfyPlR5Q4zguOGxtTz3Gv9Zzsc7LHZgJr9w/m5bf/m3r8whBEtrOknA=
X-Received: by 2002:a05:6870:e754:b0:163:b85e:f1ca with SMTP id
 t20-20020a056870e75400b00163b85ef1camr220307oak.262.1676445763095; Tue, 14
 Feb 2023 23:22:43 -0800 (PST)
MIME-Version: 1.0
References: <CABKMkPJ3-KK_Y0tMrp2QC=K0P0hm_2-cV0UorSQOSvZ7PVub6A@mail.gmail.com>
In-Reply-To: <CABKMkPJ3-KK_Y0tMrp2QC=K0P0hm_2-cV0UorSQOSvZ7PVub6A@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 14 Feb 2023 23:22:17 -0800
Message-ID: <CAMKF1spuPKtEPvkBZ68uPNMSQbCx4GDWC47hJGoRTW6qH0fbfQ@mail.gmail.com>
Subject: Re: [yocto] Mold linker
To: Joel Winarske <joel.winarske@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 15 Feb 2023 07:22:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59230

On Tue, Feb 14, 2023 at 9:36 PM Joel Winarske <joel.winarske@gmail.com> wrote:
>
> Has anyone played around with the mold linker?
>
> https://github.com/rui314/mold
>
>
> Curious what the build time difference might be on a large multi-core machine.

Yes, lightly. I found it similar to lld in many cases, only used it on
native links for chromium
it seems to be better at parallelization.

>
>
> Joel
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#59229): https://lists.yoctoproject.org/g/yocto/message/59229
> Mute This Topic: https://lists.yoctoproject.org/mt/96977773/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

