Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.7368.1617803161913437028
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Apr 2021 06:46:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=IBE17GBZ;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: twoerner@gmail.com)
Received: from mail-il1-f173.google.com (mail-il1-f173.google.com [209.85.166.173])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 41BFA38C05B5
	for <yocto@yoctoproject.org>; Wed,  7 Apr 2021 13:46:00 +0000 (UTC)
Received: by mail-il1-f173.google.com with SMTP id b17so869642ilh.6
        for <yocto@yoctoproject.org>; Wed, 07 Apr 2021 06:46:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=HvP4LL19HGGs44n4U0aN+t73BSOI9HYF4psM/stjs34=;
        b=IBE17GBZ3zkne3YbftOXSMyFikDa5Lhl6N21OTiniD/PhLt9OOpsJqK1ktGnYYcdvX
         r6QWKypxUVZMDHlKOKfjKgWKHM+2ECFtNNF+Iuo43heWdeHjBd5RjYTuJ7zYNVQf86P1
         FU6NwlYyTtTatrv2zkSPIUWBtQEoF2weUNri17SpSE5FD+KoQ2uoak1yujxpHxvrg0v/
         qYLxR4KluZm9ySqBPFs0egjHDKZ+SwlSnG6gMNy27TYzE+VjA+tsbi2cnc2DBUCo+Vkz
         6ICc0mnDIbwZW/jcdWbxG2dd7bBD/dvUyuXl0dBJmN6fvArUovDjsckAbpcmQk9L6N7X
         XcOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=HvP4LL19HGGs44n4U0aN+t73BSOI9HYF4psM/stjs34=;
        b=E7g++Ch+Y4g+En9iV4/XWGvR/Y0DGBp8BZWLHobMoHW0Skq4vvTyGYc0JTiavN2rbV
         blUSCZ0LyEfOquNNwOwP1oW8adkyR8yydZVCuX3lkJ0q8nR2XU+ORObetKenBirQQz2q
         3bfRABT0rtLEi+Hp+9I5kI1Flqfs29wqPVE1JQk3OnnJ9ZiuZx9nHc1fzlpsyfGvDG0L
         ZaP6ErRb93lqDJ9PxBvJQJRJVRpQ1lgzwp9DnHX/xFOdYJxdGN8CDdqekehDuUAN70LS
         wTM3J6z5M0LyidbJAiJOx2SV2BBwa2u5WnfKcvh+O9HSOIL1UUiCYoaldlUU8kAWaAv5
         3v9w==
X-Gm-Message-State: AOAM532RS00uMOOFqftKLZt0Doevw1ZlkEI3qkcVhNBOWMT/DmtK/tzs
	0ZHfjHI3zNGDxYVfbTNe9bUg2jMLZBFfJf9GV1Y=
X-Google-Smtp-Source: ABdhPJwI2ytEiyMFRAM6QAPwWItX1qF8wYV9ewdt1A0ByekM+UKxalS69fN7qBM1U8Mj+hzYtaMNoDRuNI+QlQMJSv4=
X-Received: by 2002:a05:6e02:4cd:: with SMTP id f13mr2892840ils.258.1617803159475;
 Wed, 07 Apr 2021 06:45:59 -0700 (PDT)
MIME-Version: 1.0
References: <20210406234700.2493404-1-yann@blade-group.com> <65156564-ec54-8c0e-40db-e42729f6daf3@gmail.com>
In-Reply-To: <65156564-ec54-8c0e-40db-e42729f6daf3@gmail.com>
From: "Trevor Woerner" <twoerner@gmail.com>
Date: Wed, 7 Apr 2021 09:45:48 -0400
Message-ID: <CAHUNapRL95gUQS7_VOhbA0zPKcNRXCvKVFhcpSjCwoxeei69Dw@mail.gmail.com>
Subject: Re: [yocto] [meta-rockchip][PATCH] trusted-firmware-a: use 1500000 baud for serial console
To: Joshua Watt <jpewhacker@gmail.com>
Cc: Yann Dirson <yann.dirson@blade-group.com>, 
	Yocto discussion list <yocto@yoctoproject.org>, Yann Dirson <yann@blade-group.com>
Content-Type: text/plain; charset="UTF-8"

On Wed, Apr 7, 2021 at 9:27 AM Joshua Watt <jpewhacker@gmail.com> wrote:
> Please add Upstream-Status:

https://wiki.yoctoproject.org/wiki/Best_Known_Methods_(BKMs)_for_Package_Updating#Patch_Upstreaming
