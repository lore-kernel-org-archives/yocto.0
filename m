Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 22B9BC49EA4
	for <webhook@archiver.kernel.org>; Tue, 12 Apr 2022 16:46:43 +0000 (UTC)
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com
 [209.85.208.179])
 by mx.groups.io with SMTP id smtpd.web09.9293.1649761229991966074
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 Apr 2022 04:00:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=a9TEN9po;
 spf=pass (domain: gmail.com, ip: 209.85.208.179,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f179.google.com with SMTP id h11so23594655ljb.2
        for <yocto@lists.yoctoproject.org>;
 Tue, 12 Apr 2022 04:00:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=yqTLJYaWjVhJWt1jc2JIDOq1bYDvRvtWTh1HZfoBCCE=;
        b=a9TEN9poDiU7a9siWpJKTKc1SDWZ+KeftAROTmZIpCCB3xxr8Gs4nfIbsV2gKje6PW
         GU52YZuUcZyW8z4XsoSBmv+7LPmNeqyQBUmR+whJsGLsI0KnjZdA6wE5RMts3dTAfm8i
         2P0FUzA+rpAGJGKLrL+Y2+MAiHy0REOHIFNjHYyb/1razcZjWdzJtN27H4YTCI8gP3P6
         M++bZIqzepcceo8dUxqWlYMsrLEiNJ3BaOWD2wFwRjk3YqNlPeJ5TU2kPpvGwg0dp5rg
         jd8dqsbTpCeBwSEr2xQKG9SCVoT050EGkcnukdFTu3w598U2ZC26PRfxVLfxvQzbh+mv
         Ec7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=yqTLJYaWjVhJWt1jc2JIDOq1bYDvRvtWTh1HZfoBCCE=;
        b=GIVDCg6eAwRgJrFoPp+deH3m2tPvlkTBLt7W4yf0Zhoclyks5Gjot9Cbx8Kb94PjzS
         +TKukj3jZorSz4vNXv+A9SKWUkjpnebU7KPkZrWPTOisy1f9efztOv+5DtwYhc1AakVF
         /mDSp4F/Re+vVwh++O4k3xZsvWYQfjUbz9tiBaRHhQvqkKVLDyA8X9xYBFuHg7h5Aki5
         TKr0yH8HyVjI5VPp7t26hj2Od83WzZvfTxl2BFEwo0Jt8IjBJgjr6jFHXEq8wKhdrQCe
         +AJW1uNU/Cxsi3DNxN4yoQpv13LsCLyjbgkZWF4a7YusauwGG9k6jnl3aH8LQ1zwmprE
         5Vdw==
X-Gm-Message-State: AOAM530HDtSsaa22l3u3HFFM1L+gbVKJYtTGdQ2+dTeujQmLKxAkO6Qt
	bMgRZNhlBh9kRxCSvPf+6CyN3jOF2byiuFDJ8vs=
X-Google-Smtp-Source: 
 ABdhPJxp67LcADHjpXj5+11R5NP9dLSbxJu/mYUSpXqDDKrI3yrbo6StMzTFXDsYJymI3vtgoAtHaIwyfOn2P8wQkJ4=
X-Received: by 2002:a2e:8047:0:b0:24b:c26:611c with SMTP id
 p7-20020a2e8047000000b0024b0c26611cmr23007022ljg.191.1649761228019; Tue, 12
 Apr 2022 04:00:28 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CANNYZj9cssi4BOB0RytJo5GbOUaeNCNWgXjMnjDFPNWAO+zACA@mail.gmail.com>
 <23927.1649174947663691011@lists.yoctoproject.org>
In-Reply-To: <23927.1649174947663691011@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 12 Apr 2022 13:00:16 +0200
Message-ID: 
 <CANNYZj90sC2p0KHryRzcNvqMvLymSP-9-gsL8GLKUgCgyiqXmg@mail.gmail.com>
Subject: Re: [yocto] Building a core-image-weston with custom app using rust
 and gtk3
To: Artur Czajkowski <atch.cpp@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Apr 2022 16:46:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56745

There are no attachments though.

Alex

On Tue, 12 Apr 2022 at 12:57, Artur Czajkowski <atch.cpp@gmail.com> wrote:
>
> Hi and thank you for your reply.
> Please find all the necessary info in the attachments:
> a) Output from command: "bitbake rg" in file rg.bb_compile_error <- rg is a recipe with the rust application
> b) rg.bb <-recipe with the rust application
> c) bblayers.conf
> d) local.conf
> d) meta-custom-layer.7z <-compressed layer where the rg.bb recipe resides
>
> As a note, I just add that the error from the output is misleading because I do have pkg-config installed. Also, I am able to build and run that rust app on my host machine without any problems.
>
> Once again thank you for your interest and I hope you'll be able to help me with that issue.
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56743): https://lists.yoctoproject.org/g/yocto/message/56743
> Mute This Topic: https://lists.yoctoproject.org/mt/90197556/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

