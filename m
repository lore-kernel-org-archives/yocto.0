Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 298E5C433EF
	for <webhook@archiver.kernel.org>; Fri, 25 Feb 2022 21:07:20 +0000 (UTC)
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com
 [209.85.222.174])
 by mx.groups.io with SMTP id smtpd.web10.2572.1645823238836079171
 for <yocto@lists.yoctoproject.org>;
 Fri, 25 Feb 2022 13:07:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=F/kn2Mff;
 spf=pass (domain: gmail.com, ip: 209.85.222.174,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f174.google.com with SMTP id q4so5557731qki.11
        for <yocto@lists.yoctoproject.org>;
 Fri, 25 Feb 2022 13:07:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=DoMclE/86EQXV3sYYVzIRUFls4omzucPzyojFBGJz/A=;
        b=F/kn2MffrT8uCDqSJdPvKcJaNXHT4WjS4R51Viren1+nG8d5gWwMqBuOy7zseS4F+e
         Nt+40f3WbfOrGP2oISHABbaEnO6S+qZkbWEoyM88yUE7pS/L5xB4J0C1duLXXrPwmzy4
         jG+SJcDYANH8yTTSJsoi0E+RSsdjFji1tleYc1eS5JKfKwKztnIsbV6wJUtX243ak+Nz
         QN244vi6lJjWYuIKk4Xu1fREM1niZVL9KEONK0rNRIlvPvzcl4ppubITw6+uK/R4TxkD
         epfuDnI0J1S8Wtfrn2VkseP/DS+WJ35hrjCdtcqlwW82btJBVo3JyhbuAqtmYGQG/IHK
         B/lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=DoMclE/86EQXV3sYYVzIRUFls4omzucPzyojFBGJz/A=;
        b=3/FLp7GzXI1iMZ27GvDk8Q8IW055lTeT4Kn9gR5OC7HsZY64ymjmGZQDnechSbNjhA
         Xy0KWpS3K4QxfXEu7i3EMSX8aqURgiqq3CYoEk8iTdDosK1jJu0E0AIITABua6syHa9C
         gEAjWO1VV0WlC5TooC39Edkrf+vfypsBsoU4y5sIVeNGWAQPQZ0Y3iI7UZh8ough6Yod
         1FPClCwV5E9sNV/8R5DxVJwnOFgJeTe3DG04Atp+/QukO81hWyre9N8cinvdj3wpd1yD
         Vg2xzC/P3TOPIv8HeVVeIN4kOQyC+nZ/1CkXZbWCVyzDQFnR8Fi7gkt1Z4zCCBzaZB2J
         eqdw==
X-Gm-Message-State: AOAM533gQXnj0TURWA46Ji5LvqoC/MzDH44xSx3C/zObDOz8hODjmIDm
	svO13RtCRDt/Efs2ACg934DxVpGI84Nvr9YzPEs=
X-Google-Smtp-Source: 
 ABdhPJzHsmiEpUuQKWkDU/A6sS3G3jyJgv6y7Yhb4KhgyE9lOMlp4K8p+9iuk6fuVb5inoPGSmxyNJ1ukBrocwOme2Q=
X-Received: by 2002:a05:620a:817:b0:648:d856:3fdc with SMTP id
 s23-20020a05620a081700b00648d8563fdcmr5873409qks.180.1645823237905; Fri, 25
 Feb 2022 13:07:17 -0800 (PST)
MIME-Version: 1.0
References: 
 <6234ac5289c4ca5846e6f80c13686f61ed340116.camel@linuxfoundation.org>
In-Reply-To: 
 <6234ac5289c4ca5846e6f80c13686f61ed340116.camel@linuxfoundation.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 25 Feb 2022 13:06:51 -0800
Message-ID: 
 <CAMKF1srxaKMgMj4NxDhq4a2GMA50ayObacv4b_gaeEQXnwYDXg@mail.gmail.com>
Subject: Re: [yocto] QA change - reduced number of reproducibility builds
 tests?
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: "<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>,
 Steve Sakoman <steve@sakoman.com>,
	"Mittal, Anuj" <anuj.mittal@intel.com>, Joshua Watt <JPEWhacker@gmail.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 25 Feb 2022 21:07:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56289

On Fri, Feb 25, 2022 at 10:10 AM Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
>
> Hi All,
>
> As the project develops, some tests are valuable and some become less valuable
> over time.
>
> When we first started reproducible builds work, testing reproducibility heavily
> across multiple distros highlighted some unusual bugs and let us improve things.
> We therefore currently run a-full with the targets:
>
> reproducibile-centos
> reproducibile-debian
> reproducibile-fedora
> reproducibile-ubuntu
>
> I've noticed we pretty much always see the same set of failures with these
> targets now, i.e. if one fails, they all fail the same way.
>
> Those targets are heavy builds which don't reuse sstate for one of the build
> streams and hence load the autobuilder heavily.
>
> I'm thinking they've served their purpose and that a-full should go back to just
> the randomly selected reproduiclbe target.
>
> Does anyone feel we shouldn't do that?

+1


>
> Cheers,
>
> Richard
>
>
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#56284): https://lists.yoctoproject.org/g/yocto/message/56284
> Mute This Topic: https://lists.yoctoproject.org/mt/89394327/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

