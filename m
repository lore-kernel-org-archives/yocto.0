Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
 by mx.groups.io with SMTP id smtpd.web11.65.1631727329459339717
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 Sep 2021 10:35:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=FLOHMjyc;
 spf=softfail (domain: sakoman.com, ip: 209.85.128.47, mailfrom: steve@sakoman.com)
Received: by mail-wm1-f47.google.com with SMTP id y132so2832695wmc.1
        for <yocto@lists.yoctoproject.org>; Wed, 15 Sep 2021 10:35:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Aihxn5U6Tjr26dQ4LyKHuUS59aLcQavZwSfkKK0IdQg=;
        b=FLOHMjycOUtGJNAMUc7pgOOKezyymnyiLwv1IQ4S6fGI3dirLkwmhgucro6H8+egui
         L7jBGJhr2D+eVDv3lVWyMCdq7zzqcktSgeylWk8WUH5Hciz8GOTPxQ7jGFbfhZrwsseW
         T9ylD6CgQxTHmVejA16uF2HpC6OSgYX4xqUOhdo6ncYXEJl7nQIS+uMY3fSkhBcY86Vu
         qwTNRSN1oPC9gHDX2ABsoYgBCkImrrhqjjThUOs4IdJBaY72CVfdNzexh+29t0IGKf54
         2JmsWMpAOnoDNWi0uLbQmAgqVAFNPn22RgUlY4uhHYnwoFbRE0MMk8EKRKz1BWTbuPcq
         qHjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Aihxn5U6Tjr26dQ4LyKHuUS59aLcQavZwSfkKK0IdQg=;
        b=K+dTbKC+8F4FcUdItoqidUjGGM6MaKovUtnyE74ay2qU5c8PTJsilZRbYBWiRlIcdj
         CEoFckdErYNNKatKE2J6SIcgYlrRWiFUbXVtbQ9IvuKDY8cNMiFHCe9az4c+yulsr4Hj
         lCczfOSyTmo6ZgJdbEVBbJs5N0SnZADjadqpUoVZUKhWmiRasn7caBh2zXpcvasvi9rh
         D4128GyGr89xmut5ojLl57xpUTQfyafO374f3Lalee5a8mnhUBa5VZt37OAt/jwuiDUA
         r7L00LwZxbw2yr5Wzf6TgnMvQfZI7qMxfmfDv+e/kbZXVBCD9A2ZVoUKz25162BHzAHI
         p0Ag==
X-Gm-Message-State: AOAM532uptHFgV1zsS1q6Riq/ZlZN/sGXz5Fnw8uHbvnsjIf3DkCestM
	Msq2jopIe4IXkm2cuB3hUz0Oh1Gj3h8TTtE2GP5gB7kGLBM56cKryCHbbQ==
X-Google-Smtp-Source: ABdhPJzZHLYDVQkRK0TjKqLYNv3LRcSGJDSJin5qVJS5M4PY3EMn6GW/6T1pMzNA+AymdEFk2rNqLKEnrhAV4Ei+I8c=
X-Received: by 2002:a1c:7e12:: with SMTP id z18mr5962652wmc.60.1631727327468;
 Wed, 15 Sep 2021 10:35:27 -0700 (PDT)
MIME-Version: 1.0
References: <3be57d37402add14f6515b72a9e35bd6209a927c.camel@linuxfoundation.org>
In-Reply-To: <3be57d37402add14f6515b72a9e35bd6209a927c.camel@linuxfoundation.org>
From: "Steve Sakoman" <steve@sakoman.com>
Date: Wed, 15 Sep 2021 07:35:15 -1000
Message-ID: <CAOSpxdZdWz4H2dm5KqAau5G3U_8gebi7s0+B=GOCRpSuyeJFbw@mail.gmail.com>
Subject: Re: [yocto] QA notification for completed autobuilder build (yocto-3.1.11.rc1)
To: "<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, Denys Dmytriyenko <denis@denix.org>
Content-Type: text/plain; charset="UTF-8"

It looks like we'll need to do an rc2 build to pick up a patch for meta-yocto.

Thanks to Denys for noticing the issue! For details see:
https://lists.yoctoproject.org/g/poky/message/12559

Steve

On Wed, Sep 15, 2021 at 7:12 AM Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
>
> A build flagged for QA (yocto-3.1.11.rc1) was completed on the autobuilder and
> is available at:
>
>
>     https://autobuilder.yocto.io/pub/releases/yocto-3.1.11.rc1
>
>
> Build hash information:
>
> bitbake: c2a3bda3a29e12472ef7862e424ea1552fab2959
> meta-agl: 60344efa7a50dc2548fc4b5d68b5ad4d60c4023a
> meta-arm: ce535dfb96de4d2529f091d7d85a7172c626001c
> meta-aws: c5164c1a795c21f7caccc3b68bb2e81a55bddb0e
> meta-gplv2: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
> meta-intel: 6837552365d3cac5f8044a5ae910aa874435f766
> meta-mingw: 524de686205b5d6736661d4532f5f98fee8589b7
> meta-openembedded: 5c347d8ce425dcb4896e6f873810b8bfff5e4e92
> oecore: 49ca1f62cc17c951b7737a4ee3c236f732bc8ebe
> poky: 80b8fc829f809ce07809a89a00cec3ee9dc18795
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
>
