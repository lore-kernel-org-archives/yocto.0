Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 793F9C433F5
	for <webhook@archiver.kernel.org>; Fri, 11 Feb 2022 16:32:14 +0000 (UTC)
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com
 [209.85.217.53])
 by mx.groups.io with SMTP id smtpd.web12.9463.1644597133283986501
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Feb 2022 08:32:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=hXUjqhFd;
 spf=pass (domain: gmail.com, ip: 209.85.217.53,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f53.google.com with SMTP id t184so10830807vst.13
        for <yocto@lists.yoctoproject.org>;
 Fri, 11 Feb 2022 08:32:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=LFiuU96Tt1Js3yTZP/5+cS3t7ndCQ6IINjucVjWUx78=;
        b=hXUjqhFdmcHu5EmNImT0SpHfo1tCTVuDA6WxIczmU6lsOWZ0razD0LGLTie8kb9xub
         tuD8H0gcs0Fqa7ZBuB5gfUNTSjGiCqRRKa7/eLIwNeRf7o3pfeBHsPkz5J9ozP15ODBg
         h0nByzjGotYN4xJ+drEZGLGKEj7LmiawybnlBtG6cjsKqvxU9p2/arSQ1w9Qc3/PrvpL
         CoNKg2uzwHuOT+050Yoc4mEZhRL9UcAKjPzuPPbkV5GED3IcHGksLk0IICTYNYf9LkdN
         bWzwpoH3rFXm6iyCI6PBSpyCt9qXo584BnYoemiDBufjFNpwmrX0vIeNu713VggY4b8Y
         skoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=LFiuU96Tt1Js3yTZP/5+cS3t7ndCQ6IINjucVjWUx78=;
        b=G2w+JwUYX1WuFVVoBeXmQ6/cNBkldyRGwuWxoMhBnUetpHtN+snMymZdan9SvHZKqD
         W8ipKkAb+izv8GY1p+eAbP9MjWwIGHZ3P8xhCDuvjvC6Mae0bxCzF5m9m3jBid2XO+hR
         s7CkHeJkObOaW4mdZiIfSYw/bkKtxo5eA0OwvAK4h069P3HXLbWhcXyH5byJ1sM1pu1E
         1gxtAiGLiHpIF91QS7RjHfSSRrVWBZKFoLZrjsAXu9DJUW5ZLU4AI5BF+DJ+aGbPjMoz
         /ocrqLXdFyGyvIZlKZtxpxhyiAEdylMjam/w58P68iCAgmxdG4YlF/DyWWKNVE9nMLOj
         EtsA==
X-Gm-Message-State: AOAM530OtOiQcPngSwqEWhuPww+STRu69y1pg7JmSWAwb69c4ZaVoXSn
	RtBJEWXofpFiCrp72UMIxu3ld8niePFavF1qBZ8=
X-Google-Smtp-Source: 
 ABdhPJwjHVlcFuZ7LEVvcckdP58LmFLdaTCEFm6kw/Cq7ead/Tbzzr6vykRQtgc3EGjF0BrXxtjVacLVA39nQVyTkt8=
X-Received: by 2002:a05:6102:c50:: with SMTP id
 y16mr725540vss.45.1644597132409;
 Fri, 11 Feb 2022 08:32:12 -0800 (PST)
MIME-Version: 1.0
References: 
 <CADjezmaWK+MRzqRyHwvegFoNQRwwdaCXCT_KU=70i270z79zOg@mail.gmail.com>
In-Reply-To: 
 <CADjezmaWK+MRzqRyHwvegFoNQRwwdaCXCT_KU=70i270z79zOg@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 11 Feb 2022 17:32:01 +0100
Message-ID: 
 <CANNYZj-b-41OiiEGmtEd5ZpLCHZWBBPPKpu8o95GD-rpKRnP2w@mail.gmail.com>
Subject: Re: [yocto] gpsd recipe not installing clients
To: mattwood2000@gmail.com
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 11 Feb 2022 16:32:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56159

Check tmp/work/cortexa53-poky-linux/gpsd/3.23.1-r0/packages-split to
see what package the needed binaries go into.

Alex

On Fri, 11 Feb 2022 at 17:23, <mattwood2000@gmail.com> wrote:
>
> Hi,
>
> I am trying to include gpsd in a poky build.  The core components are
> included, i.e gpsd gpsctl and gpsdctl, but the clients like gpspipe
> and gpsmon do not make it to the final image.
>
> For context, I'm building for the raspberry pi 3b+ using
> core-image-full-cmdline.
>
> I see all of the clients in
> tmp/work/cortexa53-poky-linux/gpsd/3.23.1-r0/image/usr/bin however.
>
> What am I missing?  I didn't see anything in the recipe that would
> indicate a conditional install flag.
>
> Thanks, Matt.
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56158): https://lists.yoctoproject.org/g/yocto/message/56158
> Mute This Topic: https://lists.yoctoproject.org/mt/89075159/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

