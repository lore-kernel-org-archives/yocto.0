Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CCFFEE49B5
	for <webhook@archiver.kernel.org>; Wed, 11 Sep 2024 14:10:14 +0000 (UTC)
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
 by mx.groups.io with SMTP id smtpd.web10.22544.1726063811353314167
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 Sep 2024 07:10:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=a6ktd4gP;
 spf=pass (domain: gmail.com, ip: 209.85.208.174, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2f762de00e5so48551361fa.3
        for <yocto@lists.yoctoproject.org>; Wed, 11 Sep 2024 07:10:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726063809; x=1726668609; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=d4U9p9gjNwVNKB8Rhe3RyRyex3vdrxqJqeJdxXAbECw=;
        b=a6ktd4gPfAGdeJcr4l4/4FkEkSVHY664GolO5Ns51qzWuZ5p3NNqGAQ4Dig6S3cfYo
         eOaum2oVQfUS25SAcw9sYQ3xP0gqHcCugI3Cb/70JkYv4VIl8udlcyvCQ9sutdO66uJP
         pG+7UziduvMzcY9s51PJ7sTabzv46/s6WQXMnoflow8b1MH8PXoED1BdVsXjbGUnmnMV
         EF21d1RdF3j08Q1kTWXbuTaTk1OLf9oC4R8wTby2K8zyrZWoMuTA/Fc2mAKraoX9DFER
         axZXPkA449y+wUntZCTZ6TX5H1zql0BgLJOYoYhgW6JgauFpFQrB9EpzZEbibX6Wd+39
         6p0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726063809; x=1726668609;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=d4U9p9gjNwVNKB8Rhe3RyRyex3vdrxqJqeJdxXAbECw=;
        b=FXKBXnbaOyZYd48WLHN6gqKgWTwveHXYXvUKxaU/YAji1Fl1P7RpETCuwjCfNutQZI
         aEjDNQMkq0EBTEeDfREIJYSXvNTuPzjUYozCj4NO9RL5VJV8GBaUkWu0ZhAGcMW61ubu
         eW5xiWv7iqkQ32DvIbwlOy7s69zqyegDrVlk8vE4bLEsQeUo9Nl2jXq+SHE4J2rf3zOw
         pdTvelS//gcEaCsFO4i2D4pbzDZHAD9Z+QR9O3WIe37MMWbRy7Nfqf57OLlAlqCyLaJK
         ivBl3MvKvOLKQs6SciWsnFq1kbMZbQbT5RvAconobWWbzDDoCDMGvKiywBIgkv2bkLiN
         AM6Q==
X-Gm-Message-State: AOJu0YyKmZbJT5zrtono/yYvRxzc8XWcsJGOO/RP2S1B8B5Ek/7Y+BZA
	/E1lHKMDrGjEW6uo7Ao0FB7+N0nvDFjoZOsaahxAFX65oKD84ahSVCAcvQqW424iNcdYsKLeW/V
	PLAgM03EsX6j64OP20HcMJ6cyMwdFXQ==
X-Google-Smtp-Source: AGHT+IEtmewyB/GYutpcMJJI+hl1D6SFSCN4CkoW/xKswH0AW16qLAuMgRBcUU2Bj1r1EkpHnyrh4xx7p+GYQjgRy2o=
X-Received: by 2002:a2e:a596:0:b0:2f1:a509:ce66 with SMTP id
 38308e7fff4ca-2f751eb2524mr140948001fa.5.1726063808391; Wed, 11 Sep 2024
 07:10:08 -0700 (PDT)
MIME-Version: 1.0
References: <CABKMkPK18FnhuOT8ydnLXw-n-e_Y8rW_vg7AzwG4qgnXdsHQwQ@mail.gmail.com>
In-Reply-To: <CABKMkPK18FnhuOT8ydnLXw-n-e_Y8rW_vg7AzwG4qgnXdsHQwQ@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 11 Sep 2024 16:09:57 +0200
Message-ID: <CANNYZj_tWknK_HhTEZY4EHLJcJyW2aRHDS4EyZn2SSHFtABTXA@mail.gmail.com>
Subject: Re: [yocto] [scarthgap] dwarfsrcfiles + static lib built with clang
To: yocto@lists.yoctoproject.org, joel.winarske@gmail.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 11 Sep 2024 14:10:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63823

.a files are not ELF files, they're archives made with GNU ar. So it's
not clear why dwarfsrcfiles is even run on that, but I don't think it
should be.

Alex

On Wed, 11 Sept 2024 at 15:56, Joel Winarske via
lists.yoctoproject.org
<joel.winarske=gmail.com@lists.yoctoproject.org> wrote:
>
> Seeing this error when installing archive file to ${PN}-staticdev, (not prior seen on kirkstone or dunfell):
>
> ```
> ERROR: dwarfsrcfiles failed with exit code 1 (cmd was ['dwarfsrcfiles', '/mnt/raid10/yocto/master/raspberry-pi5/tmp/work/cortexa76-poky-linux/filament-vk/1.54.3/package/usr/lib/filament/libfilamat.a']):
> dwarfsrcfiles: /mnt/raid10/yocto/master/raspberry-pi5/tmp/work/cortexa76-poky-linux/filament-vk/1.54.3/package/usr/lib/filament/libfilamat.a: not a valid ELF file
> ```
>
> Running readelf -h on the file I get:
>
> `readelf: Error: This is a LLVM bitcode file - try extracing and then using llvm-bcanalyzer`
>
> Is there an override to handle clang generated archives?
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63822): https://lists.yoctoproject.org/g/yocto/message/63822
> Mute This Topic: https://lists.yoctoproject.org/mt/108393840/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

