Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.180.1615907001394216884
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Mar 2021 08:03:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=TuC246iL;
 spf=softfail (domain: sakoman.com, ip: 198.145.29.25, mailfrom: steve@sakoman.com)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 563D038C06CF
	for <yocto@yoctoproject.org>; Tue, 16 Mar 2021 15:03:20 +0000 (UTC)
Received: by mail-wm1-f45.google.com with SMTP id m20-20020a7bcb940000b029010cab7e5a9fso1630872wmi.3
        for <yocto@yoctoproject.org>; Tue, 16 Mar 2021 08:03:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=IBJMrPa7royZJLZA94vyQC8fBJAO0hLwz05A3gtd69w=;
        b=TuC246iLGxTNkl4477ZdjxhcSUG6JTmwBLP/oCeYKg0kgCgUkTbhHxwwmxEgrP1/gG
         nbqKdcpdK3Nad1K7TzoxuJXbOiZPmvGt7g/ECmfNib5eYXsHGL5Xh1I0XYNFdTxpEqj/
         hXOm108fMGY5e0op3ciJ+7QXX0b9N1r+wAdTbD4HoaWImXfMwVTDkL5qhGqWLQM4x++1
         0x/Od23nUNdmEX4gUAEQBTOsQoUCnF3jXjjKYLgfhPtrhe1kenUCqkb2gmk1cRSJ1h8t
         7BVNrg72Vjhfvjx5uF/fsDF64mU4jvdM5mA6MJ+i6pSd2fjDQDABSyA0zcwmdOIWeLgB
         rwAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=IBJMrPa7royZJLZA94vyQC8fBJAO0hLwz05A3gtd69w=;
        b=RuEDwbIt2QPe2BPaxr9jRVrfft8gkFhXBssTJf3upMgt4eokzU9dreZwHuQeYp/gdN
         pVZq9/9kZEwmwxm5OQ6LUCxwZWwXAs+ems2GOXsGsKMJOBXIpnBo/FuOF0x+hA2voFH0
         p9NHf9i/S46CsTvKd1VgwJrc5zkzFMcF4ISzVJf5IPSjrJyj/DbWB79qTd8SsLBXFkmQ
         MtVIcrUvE81fGidwuIC3fSCu9vSMxM5eZjtzHS6jrS3iHWXN+H7Ab87fudygckOVIIgy
         Jq7FI+h/eRpiRGN6uEtbCgrZQO88hL1X1FDv2TFtItzCjpgFOgwRKAt33RYCkutuUZz1
         ygWw==
X-Gm-Message-State: AOAM532XegYMEa1lu3ZR7/7iZ3bkFXj2/8qGhVCCMwkBetawMU2QzrZ0
	lYHzy3vjqkh3ZwQqd+ykqiRd+DDOFV0CBu5W8ljUZu0jKm2TwisHiYQ=
X-Google-Smtp-Source: ABdhPJzcTUrm6lrQ/EXZN1BcdIofxkr5qY4t3JtELd51F3tjg4l1XhH8LrhCf7dC68WjppyRIyW6950T6VMaphH4v6k=
X-Received: by 2002:a1c:1f04:: with SMTP id f4mr125621wmf.12.1615906998758;
 Tue, 16 Mar 2021 08:03:18 -0700 (PDT)
MIME-Version: 1.0
References: <CAAfyv348tD+NJ=GMhEM5HHi1_yfbStK+qkp3c+xQxZMhJJZy=w@mail.gmail.com>
In-Reply-To: <CAAfyv348tD+NJ=GMhEM5HHi1_yfbStK+qkp3c+xQxZMhJJZy=w@mail.gmail.com>
From: "Steve Sakoman" <steve@sakoman.com>
Date: Tue, 16 Mar 2021 05:03:06 -1000
Message-ID: <CAOSpxdZWVFHtUUxcN9N=hmDoc6FTSF_k5q_6V80mTV7gK5vJOg@mail.gmail.com>
Subject: Re: [yocto] dunfell: regression linux-fimware installed in rootfs in actual dunfell master
To: Marek Belisko <marek.belisko@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Thu, Mar 11, 2021 at 11:44 AM Marek Belisko <marek.belisko@gmail.com> wrote:
>
> Hi,
>
> I've bumped from poky dunfell: dunfell-23.0.6 to actual dunfell branch
> and I have an problem that all linux-firmware packages are installed
> in my rootfs (even I have in IMAGE_INSTALL only
> linux-firmware-bcm43430). Any ideas? In the commit log I saw that
> linux-firmware package was bumped.

It appears that the upstream directory layout changed, so this is also
an issue in master.

A patch has been submitted to resolve the issue and I will cherry-pick
it to dunfell after it appears in master.

https://lists.openembedded.org/g/openembedded-core/message/149552

Steve

> Thanks and BR,
>
> marek
>
> --
> as simple and primitive as possible
> -------------------------------------------------
> Marek Belisko - OPEN-NANDRA
> Freelance Developer
>
> Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> Tel: +421 915 052 184
> skype: marekwhite
> twitter: #opennandra
> web: http://open-nandra.com
>
> 
>
