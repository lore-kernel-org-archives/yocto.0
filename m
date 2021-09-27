Return-Path: <jupiter.hce@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72AF2C433FE
	for <webhook@archiver.kernel.org>; Mon, 27 Sep 2021 02:06:07 +0000 (UTC)
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com
 [209.85.217.48])
 by mx.groups.io with SMTP id smtpd.web10.25849.1632708366456682966
 for <yocto@lists.yoctoproject.org>;
 Sun, 26 Sep 2021 19:06:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=dNtVgqTm;
 spf=pass (domain: gmail.com, ip: 209.85.217.48,
 mailfrom: jupiter.hce@gmail.com)
Received: by mail-vs1-f48.google.com with SMTP id f18so16491965vsp.2
        for <yocto@lists.yoctoproject.org>;
 Sun, 26 Sep 2021 19:06:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=yFRvkeoQL7qJWEcJBlOWL4FhCPvzH9Qdu75CM1AhnNs=;
        b=dNtVgqTm+5faGyJNievzpcKgWlKotrnErScPkel2IK32wODWY0+NVGFuvFpzQZQTrO
         Q1ZBuQOLktV3tSpsagG7wE4shcHpplGoAE/TJYvDARthVTJSCJ5YLtk2oCpzNz2E1EAs
         wctOXdUlYHvV9Qq789PXgDrRRBA8+DpIF1+pa8NHw6K+N8oMmHzyR5MgI2Hx/UqoE7aC
         xjkciiyhBcofO4yAROYki9HRirz6npZHurY/Zx+nyP9z7aFWWYpH4oxoOer9EuaKT6Sc
         bUPEUbOHi0PaZjVVPTU7+mHrzhXddFq9x1v/XAdDYyUW6x9AiZnH6eThz0IfMRauWcfl
         lbNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=yFRvkeoQL7qJWEcJBlOWL4FhCPvzH9Qdu75CM1AhnNs=;
        b=T897D9E82ER1OjkuRQALQ4avM95LoCRlipCGeY8GD4ikv12+yDHLgU0dn1JCBajtWP
         0FSQa8xpdfLqcvfx5YqPWFTMfBgCRpf3Y3xYg7M2J450kUGjkYSMAF97+8BcDVHdV299
         +MfmDLEU8azV9LMMZBHcmLWfNSCDfJuSgzkI5yUjaNXa2osLRMaFVJHlWDzEAouVKO4/
         r3zAJJP3eWtMGZKvUIyq3Zt90ajzfJksPPkSoBrwaiEV6gvKz7yrTwtZpyY8clBE6oee
         VhQH7R3g1ipqmbyPGrKyHfDlJ97F7bOYeikHXpaXW1fv/+hTuqYuSt5Fhw04KoiwGhIL
         4BAA==
X-Gm-Message-State: AOAM530EGIGul9I+nhN4KIHcGOo2Mk55KshLNhuEJQnKWSxjlJtNN1cQ
	86uiZ8zbzSjBndXfXR9S+OTxO1+M+gbCLHcADt/qCqGy
X-Google-Smtp-Source: 
 ABdhPJy7nqVsbpzBeKcYPl8xuz9gYlLT/awfsYjmHXD3rKdhLV3MLl9q4ieJjXwwot4nPhYOf/qH4wAjl4ETY2Y6pIY=
X-Received: by 2002:a67:1087:: with SMTP id 129mr16483043vsq.60.1632708365457;
 Sun, 26 Sep 2021 19:06:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a59:8016:0:b0:234:c9f4:9f5f with HTTP; Sun, 26 Sep 2021
 19:06:05 -0700 (PDT)
In-Reply-To: 
 <CAA=hcWTC3_+Fg9uRC7ZnAEKhNEcF5Z_PM1WEugxQD76oFJ33dg@mail.gmail.com>
References: 
 <CAA=hcWTC3_+Fg9uRC7ZnAEKhNEcF5Z_PM1WEugxQD76oFJ33dg@mail.gmail.com>
From: Jupiter <jupiter.hce@gmail.com>
Date: Mon, 27 Sep 2021 12:06:05 +1000
Message-ID: 
 <CAA=hcWTvdgKjCr7kNEgysxM+OsgXt4yu3eVY0gJ41q7y3xxKVg@mail.gmail.com>
Subject: Re: Incorrect systemd timer
To: yocto <yocto@lists.yoctoproject.org>
Cc: OE <openembedded-core@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 Sep 2021 02:06:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54870

I changed OnCalendar=*-*-* *:*:50, in vain



On 9/27/21, Jupiter <jupiter.hce@gmail.com> wrote:
> Hi,
>
> I set up a service timer to run the service every minute at times
> 01:10:50, 01:10:50, 01:10:50, ...
>
> [Unit]
> Description=Run watchdog job at every 1 minute
> [Timer]
> Unit=mwatchdog.service
> OnCalendar=*-*-* *:00:50
> Persistent=true
> [Install]
> WantedBy=timers.target
>
> But the timer was actually fired about every 8 - 9 seconds:
>
> Mon Sep 27 01:10:06 UTC 2021 start timer
> Mon Sep 27 01:10:15 UTC 2021 start timer
> Mon Sep 27 01:10:23 UTC 2021 start timer
>
> Not quite sure if it is a kernel issue or Yocto oe-core build issue or
> what I could be missing, appreciate your advice.
>
> Thank you.
>
> Kind regards,
>
> - jupiter
>


-- 
"A man can fail many times, but he isn't a failure until he begins to
blame somebody else."
-- John Burroughs

