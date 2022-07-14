Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A454EC43334
	for <webhook@archiver.kernel.org>; Thu, 14 Jul 2022 19:14:50 +0000 (UTC)
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com
 [209.85.210.176])
 by mx.groups.io with SMTP id smtpd.web11.265.1657826084932674900
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Jul 2022 12:14:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=fwi8L+Sk;
 spf=pass (domain: gmail.com, ip: 209.85.210.176,
 mailfrom: bruce.ashfield@gmail.com)
Received: by mail-pf1-f176.google.com with SMTP id g126so2709870pfb.3
        for <yocto@lists.yoctoproject.org>;
 Thu, 14 Jul 2022 12:14:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=c7xuQE7T8ZbLVTwpIj7pAzkqMQMBVEKa4sgxIN+Td5Q=;
        b=fwi8L+SkCH/vzo4THVsWGC1vfj+Bfg5HysFRJ3x1qMgvI2yVw/oCCz5A9+lA1SQM6D
         IeqCCtkz3C1qZDDK/ts9Tzv+a2rm9qSoR9ZhIe7LCFjqKBJNipqQHTFo4jCVSjCRALql
         infPUqojQdVSxJOI0oWqNgk9DW4Po1h2DBSdy12vYVLL/Uy8Oi8KmGGz3zBnM+6Yl33I
         rIwfraab8tJBU1OJM/+NR8bh6jyZ2k+8Wd7ygaoAtFhzFTKRt/VGKR+Dl1ZPHnVoZamQ
         Ro9Bd9mo4YCKPNomuppCcfFglfnXVP1T042+OOCzFjwyL9nC/O2FJVfOw6FhHM9DcuBQ
         LNAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=c7xuQE7T8ZbLVTwpIj7pAzkqMQMBVEKa4sgxIN+Td5Q=;
        b=DZw/ump/cJ7rsGvrHo56ut+3rOLUvKEtQigG+KYg142R0+XJKZHWxA43Pg4uG/LAaK
         Ep/46FzWRVYDQAtD9yYGrZ3Lmut//xL4mkeyV1z7eZJQYGy+PD3kphP+piowZWAmK5PW
         Se1RLwfbycLF3VYQmIjL7e7tjt77S6T681G1WgjPHaqUV4eAzpKBqRYiQPoHifYWsVu5
         9GD1Ct+02kxCGYc4Yrhze9DjId5ibn8D2Fnod6qqfr6LArX5VrL3fmoEvmnKgnI08ktq
         lGfyGvuWMaxxQarTHKL4MlBsk7jbG8iEPKaU1IAkMY+zA9NqdlbYkjBk2Pe9Osbaye23
         +6fQ==
X-Gm-Message-State: AJIora8b0Q3NjiGFpOAtvAbsml4AqMdZih7JR4ko6HMuq3ZpIM3PNo+E
	XNTT1j3JED0fqtW2lB/gNOpUoySIhy22MdnfYcw=
X-Google-Smtp-Source: 
 AGRyM1vYAO6Kc9T+3/ArIlO32lTTZ3TOlSMq4dTOTcZxz7DNnvgz48zdSrDXYJ2pthzxVU377E8RczIs/hSU9xCjK+8=
X-Received: by 2002:a63:9041:0:b0:415:c0e8:c588 with SMTP id
 a62-20020a639041000000b00415c0e8c588mr8687481pge.282.1657826084237; Thu, 14
 Jul 2022 12:14:44 -0700 (PDT)
MIME-Version: 1.0
References: <1701C7F16D0CF4FA.6313@lists.yoctoproject.org>
In-Reply-To: <1701C7F16D0CF4FA.6313@lists.yoctoproject.org>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Thu, 14 Jul 2022 15:14:32 -0400
Message-ID: 
 <CADkTA4Pa6-vdLVZRY3du_79NwyjpQZdJFxB3qAb0EF889E6Eiw@mail.gmail.com>
Subject: Re: [yocto] [PATCH 00/10] linux-yocto: consolidated pull request
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
	yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Jul 2022 19:14:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57548

On Thu, Jul 14, 2022 at 3:12 PM Bruce Ashfield via
lists.yoctoproject.org
<bruce.ashfield=gmail.com@lists.yoctoproject.org> wrote:
>
> From: Bruce Ashfield <bruce.ashfield@gmail.com>
>
> Richard,
>
> The gen-mach-types patches are repeats of ones I sent before, but I've
> included them to make the ordering clear.
>
> After that, we have two -stable updates (getting ready for the "big"
> CVE updates)
>
> And then the pnmtologo fixes. That should be all the builpaths warnings.
>
> I'm sending this all to oe-core fo simplicty sake, but obviously the
> yocto-bsp ones are for the yocto layers.

Clearly, I did the opposite of what I claimed, I'm resending to
oe-core for a wider audience.

Bruce

>
> Brue
>
> The following changes since commit e65ee81d621e679107b5f4ef2dbbb8d1786e93ad:
>
>   ltp: fix builds when host ld doesn't know about target ELF formats (2022-07-14 10:08:57 +0100)
>
> are available in the Git repository at:
>
>   git://git.yoctoproject.org/poky-contrib zedd/kernel
>   http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel
>
> Bruce Ashfield (10):
>   linux-yocto/5.10: fix buildpaths issue with gen-mach-types
>   linux-yocto/5.15: fix buildpaths issue with gen-mach-types
>   yocto-bsps/5.10: fix buildpaths issue with gen-mach-types
>   yocto-bsps/5.15: fix buildpaths issue with gen-mach-types
>   linux-yocto/5.15: update to v5.15.54
>   linux-yocto/5.10: update to v5.10.130
>   linux-yocto/5.15: fix buildpaths issue with pnmtologo
>   linux-yocto/5.10: fix buildpaths issue with pnmtologo
>   yocto-bsps/5.10: fix buildpaths issue with pnmtologo
>   yocto-bsps/5.15: fix buildpaths issue with pnmtologo
>
>  .../linux/linux-yocto_5.10.bbappend           |  8 +++---
>  .../linux/linux-yocto_5.15.bbappend           |  8 +++---
>  .../linux/linux-yocto-rt_5.10.bb              |  6 ++---
>  .../linux/linux-yocto-rt_5.15.bb              |  6 ++---
>  .../linux/linux-yocto-tiny_5.10.bb            |  8 +++---
>  .../linux/linux-yocto-tiny_5.15.bb            |  6 ++---
>  meta/recipes-kernel/linux/linux-yocto_5.10.bb | 24 ++++++++---------
>  meta/recipes-kernel/linux/linux-yocto_5.15.bb | 26 +++++++++----------
>  8 files changed, 46 insertions(+), 46 deletions(-)
>
> --
> 2.19.1
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57537): https://lists.yoctoproject.org/g/yocto/message/57537
> Mute This Topic: https://lists.yoctoproject.org/mt/92386534/1050810
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [bruce.ashfield@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

