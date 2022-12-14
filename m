Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7BDEAC4332F
	for <webhook@archiver.kernel.org>; Wed, 14 Dec 2022 08:41:13 +0000 (UTC)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
 by mx.groups.io with SMTP id smtpd.web10.97894.1671007268905029210
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Dec 2022 00:41:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=EFmg+3yh;
 spf=pass (domain: gmail.com, ip: 209.85.208.181, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f181.google.com with SMTP id h10so5923008ljk.11
        for <yocto@lists.yoctoproject.org>; Wed, 14 Dec 2022 00:41:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=sLDPKLRYi8K1IZV6dg4/HPb40rANOZEgm7Cqw2VFwcc=;
        b=EFmg+3yhdtHkga7Ad2F1SGm9IkkhpoPRJgn4iFGjHMl6ib/o+YvmAiP0rtSLARlVld
         jbE/9gB4EjqU3L6IWZI3vWbIEhVfr6bIiinmG4ur6tRqZLQd4T5el66BKOxunLSlU658
         wbsy+OGuOoXgxGHFaHhPrvm96x1dsJ3XZkD0l97z3dhZ+2oLbCtIV4xvBqH95k04i0ym
         Ew1i7WRZmbj2Q4huEQJBIIJ86qGYWhJ2Lh7R6yh8pL9+LwIMA43+UaTCq9HYFzYMr/T0
         TFn0ycEGIFPgKJtfCsUurrkol+PWAjpl1qLsfsqqj6qoEjgLctkLH20lKVMXhHkIpF9g
         x3pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sLDPKLRYi8K1IZV6dg4/HPb40rANOZEgm7Cqw2VFwcc=;
        b=N/7s56VZWsheXjg4l1CKyo6KAG6zgrf1zzDNjaeTzucM2ucIP0xc/qqGVrNiAC9mg3
         oj/PZBo2XHP2Jl9kmqMe5BSgJyXktH41jrqijnNbLK/GKu7MbBD4bO4fJkEbpsGIbR9o
         7LSG5vmcgbqTWWEDGV2lzVjrd2b9eQwqpfDH9qa5d3uro6P7/wM57wc+tinuErPiv8no
         x2QhWroKpen8sc8VHcZlUmQ8f9LJYmYrpziAfa0au5R+mUxLfMsUF7G6mWPa94+rRQFk
         6kyerRGxYibaV8vHNHqabMN83Ee8CfFxMByVYMbIOuN8e2pRpH6ziNaCVCWr7LUltVLl
         jydw==
X-Gm-Message-State: ANoB5pmonmSD4ahXsiGh7M+OBEu+MIrd3xk1jXBtT4ML5Bp3bnehXFl4
	tMptR3WKcc51m8FJ9WriZVB3lT8mKES+nJe2+hs=
X-Google-Smtp-Source: AA0mqf4MwO0k2C3Fw4CUL8L8R026wUxiXrlTiH548TsCkUYWcwRSmfp+vKrI3YK6uKTVrHLBoQXRyRTtuAKcyAHNWLs=
X-Received: by 2002:a05:651c:2386:b0:27b:4ac7:bb8f with SMTP id
 bk6-20020a05651c238600b0027b4ac7bb8fmr1030848ljb.403.1671007267152; Wed, 14
 Dec 2022 00:41:07 -0800 (PST)
MIME-Version: 1.0
References: <20221213154056.370033-1-alex.kanavin@gmail.com>
 <20221213154056.370033-2-alex.kanavin@gmail.com> <3839f0c710cd4c57f60405bdf71cc451fd3d5084.camel@linuxfoundation.org>
In-Reply-To: <3839f0c710cd4c57f60405bdf71cc451fd3d5084.camel@linuxfoundation.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 14 Dec 2022 09:40:56 +0100
Message-ID: <CANNYZj8zvJb6wwM+eFSxdj6MAJzGSFXQPWt_h+BwVoWkC=Fw8g@mail.gmail.com>
Subject: Re: [yocto] [yocto-autobuilder2][PATCH 2/2] config.py: include 32 bit
 qemux86-ptest (full) into a-full
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 14 Dec 2022 08:41:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58791

On Tue, 13 Dec 2022 at 23:56, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:

> This test doesn't seem to be one which is showing regressions, given we
> have a low number of issues despite never having run it. The day to day
> patch review struggles with the volume of tests we're running without
> adding the load this test needs to a-full.
>
> We need to focus the tests on those which catch issues creeping into
> the project and I'm not convinced this is one of them. Running this
> test once or twice a month is probably all we need?

I don't have a strong opinion here. But what about qemux86-ptest-fast,
should that be in a-quick only, a-quick+a-full, or neither?

Alex

