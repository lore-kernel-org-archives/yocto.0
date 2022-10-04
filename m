Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 88FBEC433F5
	for <webhook@archiver.kernel.org>; Tue,  4 Oct 2022 13:01:17 +0000 (UTC)
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com
 [209.85.166.42])
 by mx.groups.io with SMTP id smtpd.web10.10095.1664888473972343421
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Oct 2022 06:01:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=QtCHgr7a;
 spf=pass (domain: gmail.com, ip: 209.85.166.42,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-io1-f42.google.com with SMTP id d8so10408569iof.11
        for <yocto@lists.yoctoproject.org>;
 Tue, 04 Oct 2022 06:01:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=YKGAJ61TsJcvuV/lWYGBXUzJ7nRZv9eOTMnmYBkxuUQ=;
        b=QtCHgr7aWob+3qK6sYg9Uw3SnDI85HV5x6eMC332BLDywOMMvM8P+zsOHD8pxUvb6G
         bUFWeSTWa/pBLk+7JzAuoxvAQ3cjdSzaC/rlH7yFydmcelkshDCG8SstE7cik0GpogyA
         aeZg0fSdoLfTxDj3f8tRMk3cLa7m2jk21R9SHn7zRzlfqirzaQyO0gmKRsxMOuBhfIjT
         bXZ8A+h0y5pww51UrvVNoTomTtavu3Kri/ZAjd5qq8WsiGt3IOdT4NHvjpwDRYhrwioQ
         vlau5H9Jy9ONN+GZCoQBmmdiqkEBKSzG7sq68UCL9APWiKfhKxETQzLiM1pl9ZXxwYXP
         XZ2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=YKGAJ61TsJcvuV/lWYGBXUzJ7nRZv9eOTMnmYBkxuUQ=;
        b=zQMw+s2eRm7IjkvjYSkVKYWgmY8Y5i54ixHNUuHJSJ5Dkd2bSQNZK9UynT6hVQd2yu
         a6VJBpI86DiwgRu2Ay2+eVxgimXJ/hd3UWhmwZ7FNogipFclUUnkTMyKfxHXM0+0stsp
         t3mFm+pO4zmUpTnMZiwCYUdOuZmXY06GZ9Zs/6vWpbKsieezgu6UzkmFUkv/L6jn5CmU
         G1nvM0ZNAuyDkkwnkYjnx0GptLaKO8nGoO3iK7gABVxoyXt/MY2Bt+6vY7eYRzsSY7n4
         8j5wcCksZLkgYnzv790H04eqSe8lKuuBj3lx/RaRVN2/23CQ9SFz6T0RSltrSgYgMC36
         9cmA==
X-Gm-Message-State: ACrzQf1GNc0bubPyWV3Y6s/Wmu3fMH+r0RqZ/2WAsCjr+eKxrPToF5XW
	XV2BTjiUHG5G/ZnhVgL8RcCp+yo/RCbiX3nfJlA=
X-Google-Smtp-Source: 
 AMsMyM5iK91+rG8SBAgfW9zUI63ap16jTNn5bhKRATfw3qKANNVBpBJEea7RphQMbCvYwD/SBm0VH99zvRRI8koUumk=
X-Received: by 2002:a05:6638:14d6:b0:35a:6425:a027 with SMTP id
 l22-20020a05663814d600b0035a6425a027mr13156996jak.254.1664888473374; Tue, 04
 Oct 2022 06:01:13 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CANNYZj_KV7GRBubeCKGDho=CXe1xpkzE4XAiWoFDT25aO-VAYA@mail.gmail.com>
 <4602.1664720098520336517@lists.yoctoproject.org>
In-Reply-To: <4602.1664720098520336517@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 4 Oct 2022 15:01:02 +0200
Message-ID: 
 <CANNYZj9sZr9YfKHqGFTO10_gOE9+vEcO6Kx3jhOicTYVgXYK7w@mail.gmail.com>
Subject: Re: [yocto] Run rt specific test in "core-image-rt" #patch #yocto
 #qemu #dunfell #linux
To: Nikita Gupta <nikitagupta2509@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 04 Oct 2022 13:01:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58263

The log file seems truncated?

To enable the standard rt test, use

TEST_SUITES:append = ' rt'

as seen in https://git.yoctoproject.org/yocto-autobuilder-helper/tree/config.json#n1138

and build core-image-full-cmdline. core-image-rt is not well tested
unfortunately.

Alex

On Sun, 2 Oct 2022 at 16:15, Nikita Gupta <nikitagupta2509@gmail.com> wrote:
>
> Hello Alexander,
>
> Please find log.do_rootfs file for the image.
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58250): https://lists.yoctoproject.org/g/yocto/message/58250
> Mute This Topic: https://lists.yoctoproject.org/mt/94066549/1686489
> Mute #patch:https://lists.yoctoproject.org/g/yocto/mutehashtag/patch
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Mute #qemu:https://lists.yoctoproject.org/g/yocto/mutehashtag/qemu
> Mute #dunfell:https://lists.yoctoproject.org/g/yocto/mutehashtag/dunfell
> Mute #linux:https://lists.yoctoproject.org/g/yocto/mutehashtag/linux
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

