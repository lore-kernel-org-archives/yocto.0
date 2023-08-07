Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA211EB64DD
	for <webhook@archiver.kernel.org>; Mon,  7 Aug 2023 08:10:31 +0000 (UTC)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
 by mx.groups.io with SMTP id smtpd.web11.29545.1691395825105192779
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Aug 2023 01:10:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=l/5+S0pS;
 spf=pass (domain: gmail.com, ip: 209.85.167.45, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-4fe28e4671dso6776127e87.0
        for <yocto@lists.yoctoproject.org>; Mon, 07 Aug 2023 01:10:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691395823; x=1692000623;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=tqsJm6QRqtgXVoyrRIHQk8W0XCkCg7yEUzU0lyVhXfY=;
        b=l/5+S0pSX7ArlC61InaqeNoD9fYN9SB41zrhmN5FQKMvO/rWSq0ZEk6tnfDxKmeYQe
         dxd8YgSV9Zn4yPcNJ6K93Ke7z8LIZ/1E1OGeVlYxBjwRn3dVwt7jIxZVgLXDdCm5a4Xc
         jPWJrnAzsBG2jRlC9waJlod3HIE11GhHMq7eE8KrHBuAxlMICsF8GB2iE/Xez9nEFG3m
         H5wKBNzMgjxukUBRh4ARiXnQi+ZXKZuBUD4lvG5Ziz2YBUUfJWUHdSunjTi4I6R39d1D
         VrZ7XfTe0kZYrUxPhaF8fGO3sVu+ZmFBcCkjndNzoxsi6c+xTwF4RDTVCPAUOM9srB4W
         /u9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691395823; x=1692000623;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tqsJm6QRqtgXVoyrRIHQk8W0XCkCg7yEUzU0lyVhXfY=;
        b=iezG1gkbb+2nhMDPdVM0cofoNDx5MyvBQvAsGGITAf/b9bqApwde6j5eB7Pnf/ONcd
         Gf2kibNGpl0hIexGpj1kFQmsVjwVXbMQK4wItKOXsexHx4Yzo4SKf7o/iUNmyNhNvoyw
         uDNg3n/26Npir3jWnBmbNFPZqNZhMMfyAYA0xAmiigQ3YfzFSeWSDu1iryHcDAjo30or
         C/m1lK8s5JckOjHUmx8Lv9P0VXV5FnUwu9Ux2GXnUhAFZl/qSJiaIDkmyo9M8qcv5G7C
         tSODNXdkla1U5hxAQ2UTameZeJAhaI4f27dQg6OD32qXZW3VJas8APTfEBIf+fjIwDNB
         4ohw==
X-Gm-Message-State: AOJu0YwogxYGtQ4MF1gQ9sM7kMGHuJuzUYjvIIId8pdQFyQ+RI6uWTKd
	MBJopadPJDI18/iTSs7+UJb67vTrXdsvysM+V/A=
X-Google-Smtp-Source: AGHT+IHFpNogxSUn4jmvim6qBM5QSbdqaRLtD5l68HEmRcA71pTWl4rCmeD+l4u1/b4fKLv0UipSV227WzhkPfV80N8=
X-Received: by 2002:ac2:46f1:0:b0:4f5:1418:e230 with SMTP id
 q17-20020ac246f1000000b004f51418e230mr4619421lfo.52.1691395822937; Mon, 07
 Aug 2023 01:10:22 -0700 (PDT)
MIME-Version: 1.0
References: <V0kT.1691392053458149531.vrIQ@lists.yoctoproject.org>
In-Reply-To: <V0kT.1691392053458149531.vrIQ@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 7 Aug 2023 10:10:11 +0200
Message-ID: <CANNYZj-MB7GL0AtBhF8Uo1b_MeQuqS628=A3aCzk=ajJ1mAtpg@mail.gmail.com>
Subject: Re: [yocto] Timescaledb-toolkit issue #rust
To: dini.michele@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 07 Aug 2023 08:10:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60722

meta-rust and cargo bitbake are both obsolete.

Please retry with a plain poky master checkout, and if something in
the recipe fails, we need to see the failure log and the complete
recipe as well, to be able to help.

Alex

On Mon, 7 Aug 2023 at 09:07, <dini.michele@gmail.com> wrote:
>
> Hello,
>
> I'm trying to add a recipe for timebasedb-toolkit from https://github.com/timescale/timescaledb-toolkit , but I'm not very experienced with Rust.
>
> I added meta-rust (just to have configuration for Rust 1.66.1) and installed cargo-bitbake. I successfully generated the base recipe and tried to build it. However it fails in the do_compile step.
>
> Before building the package, this configuration is required:
>
> cargo install --version '=0.9.7' --force cargo-pgrx
>
> cargo pgrx init --pg14 pg_config
>
>
>
> However, I don't know how to implement such "pre-configuration" to the recipe. Tried to add the commands in do_compile:prepend() and also re-writing the do_compile inserting those commands without luck.
>
> Any hint?
>
> I'm using Kirkstore, Raspberrypi CM4 platform, 64bit
>
> Thank you very much
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60721): https://lists.yoctoproject.org/g/yocto/message/60721
> Mute This Topic: https://lists.yoctoproject.org/mt/100595227/1686489
> Mute #rust:https://lists.yoctoproject.org/g/yocto/mutehashtag/rust
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

