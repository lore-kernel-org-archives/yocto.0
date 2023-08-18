Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4D28CC71159
	for <webhook@archiver.kernel.org>; Fri, 18 Aug 2023 15:31:13 +0000 (UTC)
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
 by mx.groups.io with SMTP id smtpd.web11.14419.1692372664676151795
 for <yocto@lists.yoctoproject.org>;
 Fri, 18 Aug 2023 08:31:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=Ys4fLkj8;
 spf=pass (domain: gmail.com, ip: 209.85.208.174, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2b9f0b7af65so15709651fa.1
        for <yocto@lists.yoctoproject.org>; Fri, 18 Aug 2023 08:31:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692372662; x=1692977462;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=0NBGkV2aVSRFfVXU02T+TSb/eCxepDWmviUVfJZtAYI=;
        b=Ys4fLkj8Bs0aRv4wHT6L/4sp5tMPTYVVLKK+moys68ZmopxQgt/eqaxwpNy6OntjcF
         6KOaP2OVvvayGxUZoywSOwHQgAqhuApOSDCEgWmdl52lBev4QU1NTsuvY8w2Ky6ja0it
         LTxT6bd/StFQQp/t2VEYALZaly8qTq8FhQjoNfBQ7Pg3stultf/6cHX3AQWSDOcenewg
         J5kVSlvm68W40JeOiFnwg5d8J1F+nGhqPi7gKjQYm2XE6c5qNl/9rqJj9HiRW4KmVStz
         StuTdAEWwCeFKJMJ46E596r3eXQqDSOYX5b/LGOY2M0BW02kIY4vewdzP8LWH/Jm9wIj
         xa6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692372662; x=1692977462;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0NBGkV2aVSRFfVXU02T+TSb/eCxepDWmviUVfJZtAYI=;
        b=VlGmQU8HzVG0k3MPu1Z+6c/JtWXD3S3mnG6+N1YQcLNCNRPVEFu9gr0csOJs6QSX92
         t0n+6WrNvcBiRfNG956+D0rwk8FR6elBJ5/nOl8xzje2lq/fHNc6iH5SHQZk/nYYJEqJ
         UBg+GVIRsLvRIrMUyf9g/+sc10fA+hGY/ADgoKshnUeDPhp2JECeIS00d/jn/3vuv0Aa
         ihP/WytDCrHbdFzmS7RyxNLisL8OiCTSmWOws8ylv6o+xpNnMbDxGybAgFhEjmTCKga/
         WqmJDgezp/6/S2B/9wwjeEzGVShFUh3VFOgOrHwutuaRAEZi5+C0j1ICAiMkVa+psu+G
         SU4w==
X-Gm-Message-State: AOJu0YxRk83nMF1/Vhe2dzb14zyDnfB3pNypOveT6GzRlXXyZ2EkGnPp
	wLpRCDMOrL+3qQ4EUbV5hOOM/9SXVHc9wdLkDdU=
X-Google-Smtp-Source: AGHT+IGb0RwW2WXJwhZU6i+6TynVBWhy34ew6l6hb2GU2hehQ3fnc+A8RzlhfegpGWeIKRWB3gU23Qz+NCJ8gc/y5vs=
X-Received: by 2002:a19:ca01:0:b0:4fe:3724:fdb1 with SMTP id
 a1-20020a19ca01000000b004fe3724fdb1mr1885603lfg.41.1692372662145; Fri, 18 Aug
 2023 08:31:02 -0700 (PDT)
MIME-Version: 1.0
References: <ZN9m5Edu4sszrpcx@insidem2ms-MacBook-Pro.local>
In-Reply-To: <ZN9m5Edu4sszrpcx@insidem2ms-MacBook-Pro.local>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 18 Aug 2023 17:30:50 +0200
Message-ID: <CANNYZj969r-C5WBSHmCweE_WB_Xwxgc-0jhXTZ+ECDWvYoyXCg@mail.gmail.com>
Subject: Re: [yocto] Pick up ${PV} dynamically from environment or file or filename
To: konstantin.kletschke@inside-m2m.de
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 18 Aug 2023 15:31:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60824

You probably need to explain the use case. Why do you want to do
something like that?

Generally, Yocto cares about build reproducibility, a lot. Thus,
source must be stable, and verified against a checksum of some kind.

Alex

On Fri, 18 Aug 2023 at 14:41, Konstantin Kletschke via
lists.yoctoproject.org
<konstantin.kletschke=inside-m2m.de@lists.yoctoproject.org> wrote:
>
>
> Dear community,
> I need to build a recipe which does not now, which actual version the
> source file(s) has.
>
> So is it possible, to pick up a version preliminary from either
> environment, the content of an existing auxiliary file or from the
> structure of the source file itself?
>
> Say, if theres is something like bla-1.23.jar I could look vor a jar
> beginning with bla, suffix .jar and construct 1.23 as ${PV} to use in
> the SRC_URI. Also possible is to provide a file with version info to be
> read or prepare the ENV.
>
> Kind Regards
> Konstantin
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60823): https://lists.yoctoproject.org/g/yocto/message/60823
> Mute This Topic: https://lists.yoctoproject.org/mt/100819403/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

