Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 43D21C3DA41
	for <webhook@archiver.kernel.org>; Wed, 10 Jul 2024 13:19:31 +0000 (UTC)
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
 by mx.groups.io with SMTP id smtpd.web11.14245.1720617562309446072
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 Jul 2024 06:19:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=m2M1t/2Q;
 spf=pass (domain: gmail.com, ip: 209.85.208.171, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2eaafda3b5cso61763971fa.3
        for <yocto@lists.yoctoproject.org>; Wed, 10 Jul 2024 06:19:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720617560; x=1721222360; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+vSgYehvqK8NsVsCfmuGdxF+oISfbYVshl4ps43SEiA=;
        b=m2M1t/2QK2C6zjzjsWNCbLpi1SdG0YhsW7Lvhno+zygZlD8/up518jwcUC3XK8qjkp
         B0jV5FiT1hs4g4g+fRoOum5BzDN77MwbHEtP8ffjtFYqV14QinKsyo30IbiDJAgFPD7d
         UmxcImGjwOeOHGbh369u+NiVeOs8He04CDLIlKYqDORohjnNCTcB59g+SdO6jEDFKcAK
         S82njO/fTqhy8ohdjUv+xqgF1jOXBCaKaOBnEE/9m3i2fSQXBnYWcpM6QRv6Mguqh0XL
         nKSh+9APHimt5L2SIZHh72jaSUB4iJT930sWI1WP4zz78FhmL+tdrn6dGQ/CbDu6973z
         NG8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720617560; x=1721222360;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+vSgYehvqK8NsVsCfmuGdxF+oISfbYVshl4ps43SEiA=;
        b=EssOr66vl1aG43skuOxs0GZasFPfPcAm/rDDGTWbh5tFKaCSxVw06DnUOS7TE3pFy1
         752NCS+ICZonx9ngkdkNm9Jz6wn8uxlyTKLDi8P5MTAFjB8GZ6CEOCGg+7jXSlyazAGX
         vd8L9+i4vGt7jkZxktcRnsYy0c28GbrogNp8xZA+6VxSKm+rISjIh+dKlesCLEFyZHOn
         YD/kJhEKIjEe2LLr2XOTCTj9/69ctUYZ3snXk/ax+mFxEZIgf475whjLTQ/bNMRWYQif
         t2KSBORXCfw4pRlvUkRIp99hIkWUKGcsbw80KMKxeJ/abifTPgjlu2/iMU06MrpcHP3d
         WkGw==
X-Gm-Message-State: AOJu0YwN2J9VDXa90faSmvrKWyR3N//ilRHKIocOXtdPKGdvuFeTqRik
	bz+r0/5yv4nm5tEWCqhHUQ3/p5hbjy6X7VFZ10t1ISrW8+74bFG5kxMf7KcxLVI3XC1PKpBANhf
	8jol8jAq06HyWT3IemAxfgLGj6Uo=
X-Google-Smtp-Source: AGHT+IGaTp4hNqAerD2vjyz8YbCjyqCcum+cjXPYgw2q15QdEG8M8g++NWhuxzxdgv9WW85r6Nz5DU4iaQnwFwmT5wI=
X-Received: by 2002:a2e:9b57:0:b0:2ec:5172:dbb8 with SMTP id
 38308e7fff4ca-2eeb30b83afmr32483371fa.7.1720617559404; Wed, 10 Jul 2024
 06:19:19 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj8V2qASyEcY_59xOcm0UJO1J6Jxvo1J=4Car=OO8ymp1A@mail.gmail.com>
 <12578.1720617291064282914@lists.yoctoproject.org>
In-Reply-To: <12578.1720617291064282914@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 10 Jul 2024 15:19:06 +0200
Message-ID: <CANNYZj_pGxrBGoVPnBpS-0ZG6Fa=JboV6QVph3DMAgsfqykR5w@mail.gmail.com>
Subject: Re: [yocto] Common Kernel and Rootfs builds for multiple devices with
 different device trees
To: philip.dawson@datapath.co.uk
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 10 Jul 2024 13:19:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63457

If you're using petalinux, then you should ask for support from the
petalinux provider.

On the other hand it's probably possible to transition to a direct
yocto build using only standard yocto upstream mechanisms, without all
the extra custom BSP generation, and then you'd be better able to
control how the build gets constructed, and to get help with that in
this forum.

Alex

On Wed, 10 Jul 2024 at 15:14, philip.dawson via Lists.Yoctoproject.Org
<philip.dawson=datapath.co.uk@lists.yoctoproject.org> wrote:
>
> Each board is built as a separate Petalinux project with it's own Petalinux bsp.
>
> In Yocto terms this translates into four builds in entirely separate locations (no shared TMPDIR etc).
> Each build ends up with a different board specific layer (generated as part of the Petalinux BSP from a hardware description file of the SoC/FPGA) included, along with other common layers for our software.
> The device tree is part of this BSP layer for each board.
>
> Thank you for your help with this,
> Phil
>
> On Wed, Jul 10, 2024 at 01:46 PM, Alexander Kanavin wrote:
>
> If MACHINE is the same, how are the four different device trees
> inserted into the builds? Is it some petalinux-specifc mechanism?
>
> Alex

