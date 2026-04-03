Return-Path: <martin.jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 35A2FE7E35D
	for <webhook@archiver.kernel.org>; Fri,  3 Apr 2026 09:15:18 +0000 (UTC)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.7997.1775207714975233496
 for <yocto@lists.yoctoproject.org>;
 Fri, 03 Apr 2026 02:15:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=Zkm2j6WZ;
 spf=pass (domain: gmail.com, ip: 209.85.167.46, mailfrom: martin.jansa@gmail.com)
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-5a12cd0bd79so2047345e87.2
        for <yocto@lists.yoctoproject.org>; Fri, 03 Apr 2026 02:15:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1775207713; cv=none;
        d=google.com; s=arc-20240605;
        b=LvifnTgGCBA2uOo5DKARG0tbc8wotM0tTgO02IAz+4IuODoNNfZRfhnljCLv5pU4Jk
         mdIoXBvITGeg0ik7Oz8Ti6bn9kJzaNJ7l64H80p2AmjCzhXXh+xnYQWThwVoL3+WPItu
         g8oM7m0MR/acJQ8fl98rAMySUhKVFCg1mRhV6uhXhxQuYieE2klj5eHUSo73xD4J8kJ2
         JBZ/fiBRrra6Kg7pZJbwOP9YCyCTBr0ve9mrCGGIYtdSNty4oPByYxiwd+aMIfVXrGJV
         qPidKfK+QjWeqgpxR3JIpqXs9KKY9Tl3Y4ubNxd6zA+nwe8otop8KUUb4ftB+HUiK8RH
         awXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=CEL45YET/TWKNKnxAi7cpRSFhEBF8fKkU8tfhU6yazg=;
        fh=r4gkamIBJ8uTMzA41iCrA8y6EGUqk+A5Y1F7vPzYOcY=;
        b=kbddChTkIYkCtvm1W5arsJAOadVssT+obfzX2k+ruaijgCh+VH19kcxC46BigoVoc1
         3rEebU6VXj10osG5TUf3jrYdU6QmDXBztaNIa19FXejPbEHouCZfBt4UxgJoMxv7ivLx
         YVf5NYcytoah2P2Znk0o5vOHC+g3nmXCH0ahtIhgO7gU6wSkue5Rj2GyhZMvYnCVbQ9Y
         Msr4RanSGcRuZWGmlVCmLWOe5k1fX8SyVG2da93/drntqpPQ7B4+4zSnQEY06J1cq8HI
         8kcRFzp5w2jyrapczJLI/2COJMQ+tp5vlAJvdKIPK3mDSS83UWvKh6tSopmSkD4OVpgV
         6Wcw==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1775207713; x=1775812513; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CEL45YET/TWKNKnxAi7cpRSFhEBF8fKkU8tfhU6yazg=;
        b=Zkm2j6WZCOMN7iUT9pxm6amieL0Lxwfdjb9nRo/8Zoh/wc8C9bZ/P1D87vKheyEka9
         Yz7Nh3fp6wHpUlsI6eI//StW0gojCkJkv+35WHwPebjK7CnZIuE6bVikeKOITm5/la7L
         hw2ESaAybOScTWk1ZJ+UQ5z0vWSMp62p1HzY+L1NOTLZlxVXhBBcls+2azEO8sLpRPiV
         GpnGrA/SL5ElicH6FVnLIDBQFPSA84fMsbat5KV79ovuypb4QhCttwMpf1cgUduVGjrB
         e7BEuGJ3eBs8LHUdNv0ABRAFQyO5Yu9ubTLpAfChrx8GYQX7FyQMof7pkuj9SEIst1I3
         FXMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775207713; x=1775812513;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=CEL45YET/TWKNKnxAi7cpRSFhEBF8fKkU8tfhU6yazg=;
        b=L2IZGZqFJ6Sg9arv2nXbP6D1gCUExbEMy0dUzRzzlBCq3omIoEumbz2a7hxbXkd4F7
         6plsfnhWnbf2wfLJiAi0JiZvrodN++iowxl66LS2jQ55Jh2uRQjJxF+jHrw+J9fPPxio
         FgAoS/3aBu54l9pNb/NdSHqJG28TltsG9nAFgaeB370+JgMTluaazJLDnfvwInEsX5yP
         HQNFMPSxzvnQvW0ljWHPefzWcdBlcuCnmirsiP56OtvHbpjvjfVdPqrb7Kj4vlAzxHoD
         dCnbi6zTcdjDT7hiHHqhauchnCdmPek02LaGCNOhm6K+YQNpHD778242wRP9i0qx9N1c
         fXYg==
X-Gm-Message-State: AOJu0YxCXStXVllPD9x0zKcdQQ3mDRQRHiu/C7zHIgkGpX8Lllp6DoKh
	rGKEx05uNplq96YY5p3tY1wCvEQXTJCZ3kizvSU7bKtZrsQDkytuqgeaMh1qwbTYDmq1tSaYvVp
	izpGq0z4IIuILWDN7pPT1M/GKXE4ybHw=
X-Gm-Gg: AeBDievS8NkWhKJ270GyxcB9UgEt5P5AAPA+8fy2DDfqo4TRY56pAGYvaGGIUS1wtNE
	7VGnpKLM5iYnQLRrcQtTJMB3m1bYD9+IdhlNG7Z4ez7qV9zuVbDmKb6qiyYQO1MjwMFjj8BOc4m
	xu95UTn4CAiAGPqeNOI4oXb1IoFTZNI/RR9v0YmSReitnkJnCx3cgxnZtg7SOeQR8sjZte8kMCY
	4b/jmKYWIJ5Q/uqqikIWViiruv3YSxqiNFPql3jTEj7ejHra71rOBo9jHqWqJrI8UA9P8hUbfOg
	SqeOV+mYnQ==
X-Received: by 2002:a05:6512:3b1f:b0:5a2:b43d:ac47 with SMTP id
 2adb3069b0e04-5a33754efb5mr721227e87.5.1775207712558; Fri, 03 Apr 2026
 02:15:12 -0700 (PDT)
MIME-Version: 1.0
References: <DHJDUJSPA7LG.3IKCP2QUJBMRL@smile.fr>
In-Reply-To: <DHJDUJSPA7LG.3IKCP2QUJBMRL@smile.fr>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Fri, 3 Apr 2026 11:14:57 +0200
X-Gm-Features: AQROBzC66UuUmUGAr3LMp1zSKBkkoYp-2PN_PUFvQbh0f6HoHfsig70YdyhRgDY
Message-ID: <CA+chaQdp8E_HMyo6Qx6C+PuRrLbrqgbFdQF_WdbZS1ONncxb3w@mail.gmail.com>
Subject: Re: [bitbake-devel] End of whinlatter stable support
To: yoann.congal@smile.fr
Cc: Yocto ML <yocto@lists.yoctoproject.org>, 
	OE-core ML <openembedded-core@lists.openembedded.org>, 
	bitbake ML <bitbake-devel@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 03 Apr 2026 09:15:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66383

On Fri, Apr 3, 2026 at 10:46=E2=80=AFAM Yoann Congal via
lists.openembedded.org <yoann.congal=3Dsmile.fr@lists.openembedded.org>
wrote:
>
> Hello everyone,
>
> As you may have noticed, the end-of-life date of whinlatter (2.16 for
> bitbake) is near.
> The last release of whinlatter will be the 5.3.4 and will be built in
> the week of the 20th of april 2026 for a release the week of the 6th of m=
ay.
>
> If you have patches that you want to see merged in this last version,
> please send them before the 10th (next week) so we get enough time for
> review and testing.

I would like to see my glibc-2.43 compatibility changes I've sent last
week merged.

I've tested it on 26.04 in docker, if it doesn't show any issue on
other hosts used by AB, then what's the harm of merging them to
whinlatter and scarthgap?

Even after whinlatter gets EOL someone might use latest ubuntu release
on host and then try to compare his wrynose build (where 26.04 works
fine) with whinlatter build (which fails immediately without these
changes). I often use EOL OE releases when trying to "bisect" what
changed in upstream layers e.g. between scarthgap and wrynose.

Cheers,

