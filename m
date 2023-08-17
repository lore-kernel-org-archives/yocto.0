Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD82EC27C7A
	for <webhook@archiver.kernel.org>; Thu, 17 Aug 2023 07:38:07 +0000 (UTC)
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
 by mx.groups.io with SMTP id smtpd.web10.181956.1692257884938021421
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Aug 2023 00:38:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=R54m12QV;
 spf=pass (domain: gmail.com, ip: 209.85.167.41, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-4ff93a7f230so750753e87.1
        for <yocto@lists.yoctoproject.org>; Thu, 17 Aug 2023 00:38:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692257883; x=1692862683;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=qufp5xRF0ZmA3gIRj6abxJEAIrrb16Zkez6i2/pEWts=;
        b=R54m12QVpzWIyN38F7l02NluFwByc9SJ6y+On1bVaFqkpD/ZP6Zj6EXH/N+QGbfNjk
         15CDbg3vTg4MyVXX8r2dWrF33xeQumOGOZiOVI7TxxlL0ZXjgWcbyf2P1VmI3PyqZAI3
         G82PIu9SQCwM+zGF+7AP3pTXMNGVdFzpAdSemB/yIWWAw1MW4cxe+M1wQJaXLqVUTPKQ
         cBF24ZrCWmJDFKBT5QslvuL9eXQ1vbVt0SkvL+CW0mdqW9oJPyXfhv6f8TpFIwcVtheK
         jSoRLsQKQE93y17NB751qvRNXv/QEdySBuVWmb13NIZgV7/rGFRmB9oEgdqgG5kMs4n2
         FO9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692257883; x=1692862683;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qufp5xRF0ZmA3gIRj6abxJEAIrrb16Zkez6i2/pEWts=;
        b=Ljjjg9axfzmXTtKdkPKG/6ORg3d/r3umCEKs7jRhOBeXmxquVeT8qwU7iLHksItVOg
         A8LPGtjs47q/eMzQp+gSN9JWyCTPFt1R0mCzGfGImeRKjaVLbjLdtcoV4LSptCaALSVY
         CwOZB3mqp7s4f0nRhDyfRsUMBVrcMQLUsnUN9JCING1uCoL+ZxXMU80hd3mpvsWXVPfl
         G5DEHdygVkzsI3QKhuV67WKJhv3lIZncxfpNPKdlTXkwZZzzuNKu9bP3FT0uHU5YE+pB
         GHLFzwy2oS4KYM7XV1LnSB87O5GsazUwOrbVYb8l6tFZaieMT1oZs9s52MyxZAh70BrA
         f3bA==
X-Gm-Message-State: AOJu0YxdK+hXLmDbTMNKdv+SsJ5fX8hNjD2e+grLDulWGw/eLCgH1Gwr
	VyH0pMHQpxR8Lz3H/Lb9V9sUc7nKJz8PupvjQqM=
X-Google-Smtp-Source: AGHT+IGBUTn/Cz6Rn/5MqVj8A+83lRxrrLw9zH7tBk8+gf9b1np12NR0K6szUfYFhuEVCZQRE2IKBeyR7OfWCc19H1I=
X-Received: by 2002:a05:6512:2527:b0:4fe:13c9:2071 with SMTP id
 be39-20020a056512252700b004fe13c92071mr594620lfb.2.1692257882857; Thu, 17 Aug
 2023 00:38:02 -0700 (PDT)
MIME-Version: 1.0
References: <ZNyvYwadnDXBDsQm@nuoska> <19617.1692186953072162853@lists.yoctoproject.org>
 <ZNy7lBOvfDQheQ5j@nuoska> <CANNYZj8=WHe-oCJRqGB0Ux9qnE=ZH93=PR=Cw=OfZ0w6kArEiQ@mail.gmail.com>
 <ZN2lCDX6GKDse76V@nuoska>
In-Reply-To: <ZN2lCDX6GKDse76V@nuoska>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 17 Aug 2023 09:37:51 +0200
Message-ID: <CANNYZj9iCmC5_HHhv9jvQGsohh-whcn=+J2hVRDrgH+Jjd23bw@mail.gmail.com>
Subject: Re: [yocto] How to switch between package version ?
To: Mikko Rapeli <mikko.rapeli@linaro.org>
Cc: nicolas.wirth@speedgoat.ch, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 17 Aug 2023 07:38:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60815

On Thu, 17 Aug 2023 at 06:41, Mikko Rapeli <mikko.rapeli@linaro.org> wrote:
> One of the major problems with yocto major updates is that it becomes a big bang,
> everything must be updated at once. This can be split down and individual layers updated
> one at a time while keeping poky on the old version. This requires working around
> layer compatibility, which in many cases is quite artificial and just indiciates that layer
> is not tested with the other poky versions but it might still just work.
>
> I've done this so many times now that I don't see any reason to hide it,
> also because many non-core layers are simply not maintaining other than master branch
> exposing users to obsole and insecure SW if they stick to the branch name.

Getting around LAYERSERIES_COMPAT or using BBMASK in order to update
layers one at a time is not the problem here. The problem here is that
a newcomer wants to have an older boost (which is in poky) with a
newer everything else (which is also in poky). What I'm trying to say,
nobody stopped and asked, what are they actually trying to do? What
made them think they need an older boost? Why isn't a newer boost
suitable? Maybe it is, with a bit of work?

You should know very well that making two versions of the same thing
coexist in the same build is painful and often impossible if they
clash in sysroots or packaging. Rolling back to an older version is
also painful, but for a different reason: the rest of the stack may
actually have moved on, requiring newer APIs and features. Older
version may also be insecure. So can we try to do the right thing
first?

Alex

