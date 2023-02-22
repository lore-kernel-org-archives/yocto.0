Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63922C61DA3
	for <webhook@archiver.kernel.org>; Wed, 22 Feb 2023 02:20:26 +0000 (UTC)
Received: from mail-oa1-f43.google.com (mail-oa1-f43.google.com [209.85.160.43])
 by mx.groups.io with SMTP id smtpd.web11.2851.1677032418412989932
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Feb 2023 18:20:18 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=mdj1QlII;
 spf=pass (domain: gmail.com, ip: 209.85.160.43, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f43.google.com with SMTP id 586e51a60fabf-1720433ba75so8228987fac.5
        for <yocto@lists.yoctoproject.org>; Tue, 21 Feb 2023 18:20:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=tzB8Guqw/95EDpNiAvF9H4ZIAuD4TqmgTZa95c8ttu4=;
        b=mdj1QlII1/bBIau/ofFvv0wteyvihBCHz5SGNhoUUGRVszfWBt46eZjHxPd5G7iaxS
         aDDtMWQjM1Px0VkCtR4Lv63QXl1cU6XUVvADOZUqaoVywNgRBHAWel6MyxltnnloLhm3
         eimo2eb6P404WiRqV8zhfM8KnJJ0uWSBaGq1iy72IrAeybLWXLb85iwoHTBntLQAvI7J
         ruOi+V9zCX7yWXqIovCXTTtpCUEFqIN4RpFKKE8DNiHt8xjq4FU3eAbsQ51/9I/dJ/FA
         3oNdTvgwLElX06yxxArhxH9j59hgI5XL011rUUzs9kJ7OnbKRV8aaLjARpwdRCbFDvn3
         2JOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tzB8Guqw/95EDpNiAvF9H4ZIAuD4TqmgTZa95c8ttu4=;
        b=58BIY+iurYH0OYLwjvqu6v+sd81+YyHv6Ji40H5p5OrR+RQQRQk0+zrMCQV80nZhhm
         JEMV9KGzkOE8l0p9Zm9/7BNDR5t4GErxzyn7sh6mgdyznk1GaIxY3h1+4yofxj5ssupy
         wHCvgh0zQiIZkrV7jW2+Q0fzJCvhfTdR6x2lAHOtPv1FZYwS+ZUwnBwm8EarfiYMJzum
         h40IBp+e0kAJMyTLQyS+2qK4fWKQmtTZW3f6oxIFo0WddSRS5HgwntKwj3Zx8gvggzuT
         tYCuDn7bIvDS4IEgYSeoJtzTu+Yl1X1DPcrIRZ13WdEyCo01TdJtVPQXheRRZS3xy9Pq
         eNuQ==
X-Gm-Message-State: AO0yUKXHzel85zqmEpcFDtmIO2n0zx4I4D2LLlSjv582ckX3mEL8D3l/
	EtGNGbTv5Co/5D9p44KPOJzpAN1Sv9HtlFfJWMbwbMbn4KA=
X-Google-Smtp-Source: AK7set9T9NTuC9IlNhapTwGC9o/A2O0CWERFtyDgCDjRPPxvh+hZsRzaGWfc9tVYvvj8E9x4MoV7fRwOKIUQihJEqlI=
X-Received: by 2002:a05:6870:d188:b0:163:b85e:f1ca with SMTP id
 a8-20020a056870d18800b00163b85ef1camr1030721oac.262.1677032417539; Tue, 21
 Feb 2023 18:20:17 -0800 (PST)
MIME-Version: 1.0
References: <qIwR.1677013376481498401.XOp3@lists.yoctoproject.org>
In-Reply-To: <qIwR.1677013376481498401.XOp3@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 21 Feb 2023 18:19:51 -0800
Message-ID: <CAMKF1sqr1i5QXvFukcedccrRaMJq2ULGAx=G-7tu8_RRfJ8UGQ@mail.gmail.com>
Subject: Re: [yocto] resize2fs, what's provide this package
To: martin.leduc@luminator.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 22 Feb 2023 02:20:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59272

Martin

you can use a tool called oe-pkgdata-util to operate on metadata for
such things e.g.

oe-pkgdata-util find-path "*resize2fs"

would give you the names of output packages containing this binary


On Tue, Feb 21, 2023 at 2:03 PM Martin Leduc via
lists.yoctoproject.org
<martin.leduc=luminator.com@lists.yoctoproject.org> wrote:
>
> Hi community,
>
> I look for the resize2fs recipes.  This application shall be included in the e2fsprog package but it's not there.  I've also tried to configure the e2fsprog package using menuconfig without any success (bitbake -c menuconfig e2fsprog).
>
> Normally I use https://layers.openembedded.org to find the recipes for required packages but this time, everything points me to the e2fsprog recipes but it doesn't work for me.
>
> Any idea and another system to find which meta-* provides a specific application?
>
> Thank you, team,
>
> Have a nice day
>
> Martin
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#59270): https://lists.yoctoproject.org/g/yocto/message/59270
> Mute This Topic: https://lists.yoctoproject.org/mt/97120003/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

