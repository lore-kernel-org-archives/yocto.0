Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 22F3CC433FE
	for <webhook@archiver.kernel.org>; Mon,  7 Nov 2022 15:20:53 +0000 (UTC)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
 by mx.groups.io with SMTP id smtpd.web09.4675.1667834451535447158
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Nov 2022 07:20:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=mLYq/CDK;
 spf=pass (domain: gmail.com, ip: 209.85.167.45, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f45.google.com with SMTP id bp15so17152069lfb.13
        for <yocto@lists.yoctoproject.org>; Mon, 07 Nov 2022 07:20:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=mepjqnN5gWIzItqhHiltoCI9Lj9lTtQQWJTlYmR6oCI=;
        b=mLYq/CDKsmM9vmr2S70wk4P0zaHiIiS7iuGqNxqIDjv9mI1Qjr4mXIpUbuEQMICR1/
         wyq10wE7QgUzgSTe5VuOQc59IflJe4com7ATKzkReRVgO8tv0rxPTMTBV/i9p2j1BO6v
         vAYMh41TRe+npoBQE800nzlPy9dB+nuynjRlWL18Dqh1K5MMcJhNkmVbRQ2adw5moO4A
         dwK4pGXihLHIZZdgzNfg0hO0gOkzgCF1qGHYv0PVhVjIYRKMLY9XexrtAg9Ew9lzcKqK
         ZBMh+eohYD3xri4X0WUGArsmLFC/aaAcCvcFGJzW+y6IjzZZJQ2wE9r4Fa1q3m5EHM9h
         OhyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mepjqnN5gWIzItqhHiltoCI9Lj9lTtQQWJTlYmR6oCI=;
        b=RJrVPmExSbGAuQUQH1f9W+RGe6/SkOAUhUFYLpZmFj9WuI5/78c67Y1mPRRGxXEH/t
         CnT1wnJZADU7cxaU9EmBoot1chepTgnrphaTIcB3mBZ+owpkx9hIWPeDGL75RpZ/BGcz
         ncOAtW7TyDyWauLp9tZnpvf612FXG8L2ZBSu0jQfMQN2D0qoPywmVgQr+tjJViC9rxu4
         TRGwqjokykb+/WMbohkole7IHjtXsVNsffiZjpitStEwMuD6HOzFiVnWrcha46JnoX5v
         tV3jt7vSDtxmXwmplaOSeiqfcYHVJ4SmGYXSQCtfzPzrUHer2i5D4Qfca2uoLDlZphoN
         oDkw==
X-Gm-Message-State: ACrzQf3j72cD2s6eqU+0LvxnpMHelSRf8lPUI/kUF9+M08k2fDDEdlBf
	bapr1fdfLF8blxjKTiWmOb2NLEcYpjGB0/QGj74=
X-Google-Smtp-Source: AMsMyM611lWJfLhCtf345A7F7Cg2UefOL5ZvrBF4wcmRwU4dgpWBcYJi5tmZlYOL5O0R23xj1mTBWcPWhjW6fyVaAPA=
X-Received: by 2002:a05:6512:4016:b0:4a4:6edb:8d6e with SMTP id
 br22-20020a056512401600b004a46edb8d6emr19419452lfb.393.1667834444689; Mon, 07
 Nov 2022 07:20:44 -0800 (PST)
MIME-Version: 1.0
References: <49ac7ca4-2af5-43e9-d5f8-02bb98ac372a@mistywest.com>
 <68E37127-C80B-4A73-A4F1-AB3CA40A8A48@iki.fi> <7200a7e4-f302-170b-a0e9-f84867b77773@mistywest.com>
 <0C6FEB0D-931C-4EE1-BA24-3534DB9940EC@iki.fi> <cbe95fad-8ce9-3e72-2626-e1185505ede5@mistywest.com>
 <CANNYZj-PtwKFqs+DHCR-CTC86UiVU7p9D=mBNyjG+pes6zeK8g@mail.gmail.com>
 <29069143-19cf-3d00-4c13-a031f61c02d4@mistywest.com> <CANNYZj8Kn7bL8Mk5QdF4tbVyK_7SGUwPAYbs2XqjkAbrpn8Twg@mail.gmail.com>
 <b2693c74-41ba-bbcc-8337-cd2ff343ea8e@mistywest.com>
In-Reply-To: <b2693c74-41ba-bbcc-8337-cd2ff343ea8e@mistywest.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 7 Nov 2022 16:20:32 +0100
Message-ID: <CANNYZj9WvY-ZM2LSTBcrO5-4FZm99UTMVzOoh=ts-V1HOHs5hQ@mail.gmail.com>
Subject: Re: [yocto] undefined reference problem persists
To: Ron Eggler <ron.eggler@mistywest.com>
Cc: Anders Montonen <Anders.Montonen@iki.fi>, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 07 Nov 2022 15:20:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58513

On Mon, 7 Nov 2022 at 16:13, Ron Eggler <ron.eggler@mistywest.com> wrote:
> > Are you able to fulfil that obligation you have under the license?
>
> Yes, that will definitely be doable for the recepient if they chose to
> do so.

I'm curious as to how though. Are you going to give them a complete
set of yocto layers and source code for everything that goes into the
image, so that they can replicate the yocto build? If they choose to
replace readline with their own version, I don't see any other way.

Note that we are not talking about the manufacturer of the device, we
are talking about the actual end users who will buy and use the device
for its intended purpose.

Alex

