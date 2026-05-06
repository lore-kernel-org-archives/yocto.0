Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6D31CD342C
	for <webhook@archiver.kernel.org>; Wed,  6 May 2026 14:23:06 +0000 (UTC)
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.19613.1778077386331847653
 for <yocto@lists.yoctoproject.org>;
 Wed, 06 May 2026 07:23:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=NyI+Yyq1;
 spf=pass (domain: gmail.com, ip: 209.85.219.42, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f42.google.com with SMTP id 6a1803df08f44-8b5232009a6so53927756d6.1
        for <yocto@lists.yoctoproject.org>; Wed, 06 May 2026 07:23:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1778077385; cv=none;
        d=google.com; s=arc-20240605;
        b=kaPbM4rA2My2DQJ5KdmvA0ndH871crqsX1G3a6HA0hAHfpEhVnz5p+fBvcWZmzE3H8
         61pt5ylcYVFgDGr6BZnnj2L7LKYLwMn3Y5gElc+xPmDbU7Bmr/VZ7erU4Ts5CbremlYR
         PuXwSQBFsgD4S8yeNgZknVyA9gdzpjI88dEE0g2DrDrvrnb7EZOGY/ZIAr+x9weOSN2W
         02xsqraBWtU+clADLzTUbdRt1/a55v+6O1UUe5OVUYnlkXGkt2aW4qvrv1PQU1j+EcVa
         vHMHZg6Kq+OG8Rh16IKXrXypoBv/5+8SqJNVMsWwftcv7Rts+A8HGNeWCVkoEJalxgWK
         jHCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=KFn0dtk6K7F69xXfUk638BZIecsjwd3DrdfmTcIh+Qs=;
        fh=6F6R+Tc0TOlDT5Hsorz/JpRqMO1w/T2xClSh/KF8MTU=;
        b=CPCu4h1Rhk7ouTFWWRA3PPF8Yr7JYXonRmSYPV7MATqdVcaHxMr1EPVXnBgry6cat+
         C/Hy9shIXHuM9FbiucHVp2JLMsLMuiDvhTetAnmIP+x75FAo7qgYh/Av9hNbB5azgxUl
         DAOKLg/sJB7rpwfM1C8xrc9vcEzdxZ32SseMPvQf/NAxl5psTxAlZmSeZpOa9xcrbafA
         XBcsl8l+RJTECRoXngnwDh0XHe1dS6r+AnnrOKGv6nOYROjcQyU/AKbdycSQmNvY9F9r
         TBp24UTePaaLXDq5teF02yvsoj33rY4Mb2kDWZosgGHIPRhWU8vhxn7I0iVQDzhgBKWm
         OIJA==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778077385; x=1778682185; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=KFn0dtk6K7F69xXfUk638BZIecsjwd3DrdfmTcIh+Qs=;
        b=NyI+Yyq1auuPhdU9cuYylGyADdny9hVkpkAqe2iRzgA689l9DjTzJe/YiVYtaWV4RH
         SW9KRbEC+YqTAqH7ehK/iVl8HFVH7+/vIkYmXvBa3r3POFBMQ9yQ7ow56qePQ3lpEL0w
         sEbxt48SMOleoiPeFU0VpIODD6SUQQ+B+HgPcRU9kI7n60V8VDdOtvtB5lqep6dqIiii
         +H/F6wkWDEV1UV6tILJPODSdVNCUXaMd5bKPqecWwKvwvToa4GjNMXBzrOgPSQU8VCrP
         2o+XZ2neleIQGE/yaOXczCjAxhwnVf2DagTc6sP6U2vHkdd3FhVuElkBcAHsov0L9Bwp
         nXlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778077385; x=1778682185;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KFn0dtk6K7F69xXfUk638BZIecsjwd3DrdfmTcIh+Qs=;
        b=sD9MPb64UW8LjLQZXV2HQ26QENvdpMOwwQnCKqA0nHVFa4+/deX4uwyK9Jf3R/VDgY
         UlB5cnGFmyyzVTJClFNfNvqJM3hG6vrqTwhWP6q+UlLv9+amaNcnzOLmOO2bo3SqfN6c
         df3k3fX9I03dXBjIyDIbdfpQY4ZaYC5eLacHp8Dy6pewjvQXFmsKTtWJGU+KFTvM/aA0
         kl37GMVzF9sknKG/CGo6Yzcj6LjCWpLah0rP1+ccjqkwn5DiqPtkJ2xcU6GOk+ZlcU/w
         UkpLS/f4ip5FS245n6gBndDubc6PlgoB8WsG7uSg0GGijZ+AVWvV0rIQJRCDPNBPdfwK
         l4HA==
X-Forwarded-Encrypted: i=1; AFNElJ+h4j2WLzhgbYgHh8zo13ujA76rHIYCAq9DQE96DqI8cg0yVN8WzyaGKEgyoYPOaXjt22d9FA==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YxUOLpv8+iRw3c7kXOGFsHQSr5pGN6lfiVRfb1XMSz6AIisxUss
	fO3mymOiwjgbt2Wd5zVG1l6AuI21bkaLGKp0P3U+0MvAV8rKSRCNke5MGLWsm60y93QJhefVltp
	OKWL54wrDXo2kNDmct2SiB897Ot5jLA8=
X-Gm-Gg: AeBDiet0Vmtk97lQ668ToNzs8lrDOMVYGFDEW0RBG2C9RZQ9k89W5JYd9hhIKkJrg5Q
	T5+H4LJOGtXJWwI0LF8HTCdLFbaUEGfsXBPUO6BGC1i7G0gjv0geSbq2Kx9CJYxXYPXot0BWiyi
	QxHaakafo3KQFn1edgji6AfUEC4D718Ek2axVrfAc4dWq9of86+6dWc/qbSTpyzK2kpRqw2NtzH
	RnlUPiJkPtLOuXede3rt1YwLVjuMZ9i8atZwjFpOgZ31znHP5tPAJGk79HW4sgkw9yX9RRopDi1
	bOj6ya6G56IpA32TY45s076TJ16jJ1Iroovm77eDiR2oFn45UTm6v1wPYTh1c1A=
X-Received: by 2002:ad4:5c64:0:b0:8bb:2e70:7a2a with SMTP id
 6a1803df08f44-8bc441e5420mr48051426d6.31.1778077384610; Wed, 06 May 2026
 07:23:04 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj-hrSdEoX5XRmM1MYhXMVkqpa0CBHHbMqVhjM034bKTDg@mail.gmail.com>
 <66b3dbc7-e6f0-4013-8d2e-d646f0fd8c9b@baylibre.com> <CANNYZj9dsi3XDGVBtEM4Hp8eqZfLtf9Jwa-0m8T5J9rt7V7skw@mail.gmail.com>
 <CA+HEL7_H1MJe3WGhdP3TMQho8u0M8g5OfUv2oFXxQjefAo6Hnw@mail.gmail.com>
 <CANNYZj9=Qap1AsWfgFgEforE17Gz8ft8fNz4hJcU4Y=zmTKDZA@mail.gmail.com>
 <58d89d74-bca7-49eb-8591-5c5e1a0a40fe@baylibre.com> <CA+HEL7_pJqDsKUn2OL3Kqhiy4y_H7LRoQTWuVJ-EbOH7k8NymA@mail.gmail.com>
In-Reply-To: <CA+HEL7_pJqDsKUn2OL3Kqhiy4y_H7LRoQTWuVJ-EbOH7k8NymA@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 6 May 2026 16:22:53 +0200
X-Gm-Features: AVHnY4KYQ36G0gfkWOWAo-Gx8pPCYTx1RCnB5d2fvEZpOszh652UBTaR8Wwao7Y
Message-ID: <CANNYZj_CperqNKE-a=gGJQw24wyhZ_5MyYk9vTa8Ytp7urMUQA@mail.gmail.com>
Subject: Re: [Openembedded-architecture] proposal: build pipelines in bitbake-setup
To: Daiane Angolini <daiane.angolini@foundries.io>
Cc: Trevor Gamblin <tgamblin@baylibre.com>, 
	openembedded-architecture <openembedded-architecture@lists.openembedded.org>, 
	bitbake-devel <bitbake-devel@lists.openembedded.org>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 06 May 2026 14:23:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66491

On Wed, 6 May 2026 at 16:03, Daiane Angolini
<daiane.angolini@foundries.io> wrote:
> > I do like this version of the proposal better. Having read the responses
> > from the two of you, I think 'bitbake-setup run' might be a reasonable
> > compromise for running steps and pipelines. What do you think?
>
> I like that the bitbake configuration template may provide a set of
> usable steps, but I don't understand what this other tool does (other
> than wrapping the build script)

I was confused by your response which quotes Trevor's suggestion and
then starts talking about a separate tool. But if you are actually
responding to me, then the arguments make sense.

I think we can drop the 'separate tool' idea, and use 'bitbake-setup
run'. If someone wants straightforward shell scripts that just run all
pipeline steps one after another that can be done too, but rich
functionality should be inside the 'run' command.

Alex

