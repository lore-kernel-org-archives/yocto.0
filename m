Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 86EE6C7EE39
	for <webhook@archiver.kernel.org>; Mon, 30 Jun 2025 11:19:29 +0000 (UTC)
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
 by mx.groups.io with SMTP id smtpd.web11.37231.1751282360313920374
 for <yocto@lists.yoctoproject.org>;
 Mon, 30 Jun 2025 04:19:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=fXQUsL1j;
 spf=pass (domain: gmail.com, ip: 209.85.208.49, mailfrom: skandigraun@gmail.com)
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-60c6fea6742so8188413a12.1
        for <yocto@lists.yoctoproject.org>; Mon, 30 Jun 2025 04:19:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1751282359; x=1751887159; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=dqsBUZ91/BkzeMxLCYto1lKFnIViwvWTCwIjEWtlQDc=;
        b=fXQUsL1jtt0sT2VPOkChYz8/HNEovcEGza7dDgvP5x/61+3bQq322XFc1z8oA/O4st
         m6EpIpppTmOModZDx5mKXwRGO/e3R3d2vQAMGyN8BDwEJ3HgvL965rLNqAL4QZQEqOFK
         QYOxn8zTS1hKexVEBtp/kUMEwvIidVn4lWCFFFqGutrhLtw0iQZxCrWY5TKLKvgj4e2l
         rlMJT0I0lRzzeHL59z5dhUZIUy715KWkhwsNkeOXW3o5iy+U0AyIDZwCBOvdeMj7+CMy
         bzdfTHMGOOZyHbsVqAM1Sfi8R/26k45Z8iub0ZMsfMw8ixjOBt4JcKRIdvdDxB8nqqnQ
         zpPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751282359; x=1751887159;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dqsBUZ91/BkzeMxLCYto1lKFnIViwvWTCwIjEWtlQDc=;
        b=n/3BL9dBFYP9CrRplGAFseRuJFCUBWDGmTGQXfr8PQ2Mb0EFE4p/T5ipc3e+8mFXgX
         YDKNMly32WiMzOYYxi5L0e7hPYxExF1p9fS5tX6UFuViGQlq+xXbHH+0Nd8Ppsyj/zs4
         rC7Pj1bBNzgFaQNdJlsJLmNFJ03OlJXpBnf9HjfsZZRZl0qN7CC35ks2hG+NfK9or7B4
         eDLEZ5cFGu2hVyWyuoAPXJN5NJ+YW7naczFTnf6RnyalWll4oZg62FHMrkk6gAl0T1Dg
         4zTPv/UKHQ9lo1BY1bDiZVM/ru56xcD5aCRabd5EioAJiucZPV3V75GqYLkNmDfd4Vk9
         GbXA==
X-Gm-Message-State: AOJu0YyV2xAhcQMQIApvhT/LyN2LhTZ7CCIdQDcYl0Vsf34d/JhCmXb1
	TSbeynsdYkRzT55fNfmGP3mpcpYkBFscP3soqrCDiJYDP1KnxdZqWf/wM6CHIg==
X-Gm-Gg: ASbGncuEghzs8dG+bFJakXzPq4am4+3IaioSvx5bopTf6Sfq38GGetGN+ztq3BcN120
	NmRCZICWHsnBqVv1Bhov0Gu9lVyKzFqoemN3mw1PbxAf/vO/L+jONa39Qw68kZQKVBxpgkjiOgD
	67lWKCu43DjrllxGOabtIzlesqWZQ3At9q3Kb1b8gTGt9hiE0igehlqu6xSGYEYI9xPiqkQwFn9
	niC5Tzxix/6MRkM3EEZtJQ5+9JXAMMV9t/4BhTwZQ79DZlVY0v0u/hnf5KdRKV/e7631RSbBwOI
	p00i7zqPqL/goHgnn0Ep97cNXr9i0Kq5Xd6ctoH4sTIX0UQPnMRRHYkYl9V+Z1cUwAr2pQ==
X-Google-Smtp-Source: AGHT+IEKvpHl3R1sCRyqhv+qHTs7uT9rGnsEbpzM0uMSF0/1jxt+VXhGFCokTEru2ECR00A34hvL1w==
X-Received: by 2002:a05:6402:3586:b0:608:66a3:fec with SMTP id 4fb4d7f45d1cf-60c88b3453bmr11724859a12.2.1751282358308;
        Mon, 30 Jun 2025 04:19:18 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60c831aa9d0sm5922641a12.46.2025.06.30.04.19.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Jun 2025 04:19:17 -0700 (PDT)
Message-ID: <f2e25afb-1cdb-49eb-a168-ccd900b58d22@gmail.com>
Date: Mon, 30 Jun 2025 13:19:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] BSP: X and customized raspberrypi5.conf machine
To: yocto@lists.yoctoproject.org, daniel@d-f-d.ca
References: <918368ba-ed9f-49a8-a41f-a99f05c3aba4@d-f-d.ca>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <918368ba-ed9f-49a8-a41f-a99f05c3aba4@d-f-d.ca>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 30 Jun 2025 11:19:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65565

On 6/30/25 09:43, Daniel F. Dickinson via lists.yoctoproject.org wrote:
> This is a multipart question/problem.
>
> Summary:
>
> 1. I want to be sure I am using the correct means to create a customized machine configuration for what in the meta-raspberrypi layer is raspberrypi5.conf.
>
> 2. With my current attempt I get a working X11 image for the Raspberry Pi 5 but not the Compute Module 5 with CM5 IO board; I am unclear at present on whether
> this is due to the customized configuration or an issue with current walnascar branch of meta-raspberrypi; if the latter I'd like to resolve that too.
>
>
> Customizing raspberrypi machine configuration
>
> The first thing is I did is the obvious: create a meta-bsp_custom_pi5 with a config/machine/raspberrypi5-custom.conf. This appears to work when I use
> `require conf/machine/raspberrypi5.conf` and override the parts I want to change. However, I ran into an issue on the Compute Module 5 with CM5 IO
> board which I discuss below. It occurred to me the issue could be the method of customizing the machine configuration.
>
> I therefore went off on a tangent and successfully created a qemuarm64-pi5 board definition[1] which builds and executes my variation of
> core-image-x11 correctly. This required a little more work than a simple rename as getting the linux-yocto to build correctly required making a
> local copy of the kernel metadata (.scc and .cfg) so I could set the KMACHINE name. It was also during that process that I discovered that on
> the qemu board the board kernel configuration is not a simple defconfig.
>
> So, this leads to the question: am I missing something like setting KMACHINE for the Pi5 / CM5 customized board? If so, what am I missing. If it
> 'should work' then see below for a possible graphics driver issue with the CM5-IO setup.
>
>
> X mostly not rendering for CM5-IO but works correctly for a Pi5 flagship board
>
> With a modified core-image-x11 image it correctly displays with a modified raspberrypi5.conf on a Pi5 flagship board and on with qemuarm64-pi5.conf
> (qemuarm64.conf with GPIO_VIRTIO drivers added) using runqemu.
>
> However on the Compute Module 5 on a CM5 IO board the display is completely black with only the mouse cursor being rendered.
>
> The vt1 console is working fine, so it's somehow specifically an X on CM5-IO issue.
>
> Any ideas? I'm at a loss other than to wonder if there is some graphics driver issue.
>


It seems that someone had the same issue reported in the meta-rpi repo,
and it turned out to be a mesa issue for them - have you taken a look at
this:
https://github.com/agherzan/meta-raspberrypi/issues/1426#issuecomment-2810084993
?

> Regards,
> Daniel
>
>
> [1] Its eventual goal is to be able to use virtio GPIO to verify Pi builds in Qemu instead of requiring deploying to a physical Pi5/CM5 for
> basic testing (and, ideally, to automate some testing).
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65561): https://lists.yoctoproject.org/g/yocto/message/65561
> Mute This Topic: https://lists.yoctoproject.org/mt/113904208/6084445
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [skandigraun@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


