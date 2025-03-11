Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 155FBC28B30
	for <webhook@archiver.kernel.org>; Tue, 11 Mar 2025 13:07:11 +0000 (UTC)
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com [209.85.219.171])
 by mx.groups.io with SMTP id smtpd.web11.8414.1741698423795446094
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 Mar 2025 06:07:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=dnXYpvJr;
 spf=softfail (domain: sakoman.com, ip: 209.85.219.171, mailfrom: steve@sakoman.com)
Received: by mail-yb1-f171.google.com with SMTP id 3f1490d57ef6-e549b0f8d57so4566435276.3
        for <yocto@lists.yoctoproject.org>; Tue, 11 Mar 2025 06:07:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1741698423; x=1742303223; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ci/iSIZTWA+oZsppYu+ngFbEXYL2gOGjclK9R3bD52U=;
        b=dnXYpvJr4g60pwDtfCeky6Aq5v293nA1ou7HBGxbG0K9osXExLmME+2tTX3WDQ9BN9
         8VFEK9P9sieGcn0f2rDxDW1HG7HJ+6OZ8iMk0tFkJeqnMfU1bai4pLqxhUAjbl1VRsDm
         +QgE1zxwiFeBdQIFs0gwSHvfKuW3RMZWYge33LsQqlfiBWDAhXU6c7aTryahH95txnD6
         we+8gDlw4I/Ksu6c/Ry1ERVCYWNBI+C5LIt5zORGQmHqe8BAH9WXOimMp5smDZXgZgTq
         IReKbnbB9Gw7YbThBFxH0fRmJATRYAWcYf9x/mdSu+IKVYkfyctEX//ewmXxd7LOAQaT
         nXUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741698423; x=1742303223;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ci/iSIZTWA+oZsppYu+ngFbEXYL2gOGjclK9R3bD52U=;
        b=EjdaPbhqgy+BPqWP++inJ+1fc6aq3/fh6RdgdFVfVP11PrKSFTN3nAWbmAHxinwS40
         X5WA3e29tuYzQs86NbDzUDJqPG4FL5pRL4DZHApuuuemwL4ugPH8fJpkIBZBQF6ZvjFJ
         FxFCBxkgPA1DFV3WtgvqMfxlE3nhqdBq6PbBL6wj5EiuB4J5OTVtkhLaLVZfJ7hzFr9e
         LPcU3NYeTu+7FeCJMnWq0/XF78UrIq8MBs2uJv9EUNetHagOQzvoOnX01d+f/F1rueBc
         45fe2YQ49CrbK5MRE9mBW9RxuxHuHP99dez3H5IlSNr1XWcC5vRWrLqYLVswhyQ2XeLH
         fWUA==
X-Gm-Message-State: AOJu0Yyt3SogjUGtzB1tCX6sbOsud1BOSAuzJmr6/5msuVy7nlvGtVvr
	mza7E3BHDp9r91rUf42MLryCeMQ5hONu0zpPzCkXNvVObu2L22GNEVCpNqoWLXuBruKoCzSeY8X
	F5GR8Q5c5yIoWvUozU2W4Xbq943KIlUpYgt2beA==
X-Gm-Gg: ASbGncuuIqqEi8tje0C3K+6OBA0pFlva/mCHspQkzE039MSozJQVap4ou4wE+c6nTGF
	GU+0HYaEc/d2gpQvEv9uA3DP3kolFHenrqQmTmC/vTwtBjJMdil8JhZWlFokd4bOMNpFrFh2fDy
	pw0BlllrPXPoehKLPKnusfiSVhiRXp0Z5OljFqfockcduTt+D/9QTQ9yOitVirsN+Fwbs=
X-Google-Smtp-Source: AGHT+IF0XYUyMEjLBwlGpoaiMMPC+hCkE3UhIA86jnF1cLH0/JSoLcGDDoX0+QyrlAJooF5iMMG18xL82zbtMI5oiHo=
X-Received: by 2002:a05:6902:1107:b0:e63:4a36:4317 with SMTP id
 3f1490d57ef6-e635c18c0efmr20559326276.25.1741698421375; Tue, 11 Mar 2025
 06:07:01 -0700 (PDT)
MIME-Version: 1.0
References: <01010195822fc491-f61abe47-1c61-47db-bd38-1063cc68c953-000000@us-west-2.amazonses.com>
In-Reply-To: <01010195822fc491-f61abe47-1c61-47db-bd38-1063cc68c953-000000@us-west-2.amazonses.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Tue, 11 Mar 2025 06:06:50 -0700
X-Gm-Features: AQ5f1JpEsJkzormwX5RzXKrPa4_-tICElcGTUhnaxPYMu4VGZiDjXA0rbDWgaaE
Message-ID: <CAOSpxdaCAZTBx7hdmD1Brr9DbvxatvCG+0EEpdS4Y6m1SwFQ1g@mail.gmail.com>
Subject: Re: [qa-build-notification] QA notification for completed autobuilder
 build (yocto-5.2_M3.rc1)
To: qa-build-notification@lists.yoctoproject.org
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Mar 2025 13:07:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64941

This was an "all green" build other than two CDN 504 Gateway timeouts in
the source mirror selftest.  Since this is an infrastructure issue it
is OK to proceed with QA on the rc3 build.

Steve

On Mon, Mar 10, 2025 at 3:32=E2=80=AFPM Pokybuild User via
lists.yoctoproject.org
<pokybuild=3Dyoctoproject.org@lists.yoctoproject.org> wrote:
>
>
>     A build flagged for QA (yocto-5.2_M3.rc1) was completed on the autobu=
ilder and is available at:
>
>
>         https://valkyrie.yocto.io/pub/releases/yocto-5.2_M3.rc1
>
>
>     Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/2=
9/builds/1154
>
>     Build hash information:
>
>     bitbake: d5562e007c7c64e8613a118ab9a6c73ed2063263
> meta-agl: 17fd501fae2361588f2af72c229d56612cdca40f
> meta-arm: b6227e29625c2509b083092e5e10975c3b2d037b
> meta-aws: 886dea85a304b5db0346494b2e95e7c59cab14da
> meta-clang: 3669c28e90ad710e38ad2381ef0292d706fa9ffd
> meta-intel: 81b110e4fae3c47d65872ffc60bda6e92271b3f5
> meta-mingw: edce693e1b8fabd84651aa6c0888aafbcf238577
> meta-openembedded: 74110869a8c1c54270c3a919ef7e84bed896e166
> meta-virtualization: 2b0e119d5ce4106e78c214babfc1c6fe02f636b2
> oecore: 6027a6c6cf283bfb639bb6c3bc2f35b3da225352
> poky: 046a92d351e2025e0dadead9f70f85eff8f5af70
>
>
>
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org
>
>
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#523): https://lists.yoctoproject.org/g/qa-build-notif=
ication/message/523
> Mute This Topic: https://lists.yoctoproject.org/mt/111615524/3620601
> Group Owner: qa-build-notification+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/qa-build-notification/leave=
/12627247/3620601/791647976/xyzzy [steve@sakoman.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

