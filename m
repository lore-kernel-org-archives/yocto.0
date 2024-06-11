Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1613EC25B76
	for <webhook@archiver.kernel.org>; Tue, 11 Jun 2024 10:34:56 +0000 (UTC)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
 by mx.groups.io with SMTP id smtpd.web10.6264.1718102086086287086
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 Jun 2024 03:34:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=GvJ9x+Uw;
 spf=pass (domain: gmail.com, ip: 209.85.208.173, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2e78fe9fc2bso76629071fa.3
        for <yocto@lists.yoctoproject.org>; Tue, 11 Jun 2024 03:34:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718102084; x=1718706884; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Iw8jEj6K7sqFW7S1DdUS1qPq/n9OZCHh5asQtzTScu0=;
        b=GvJ9x+UwI1NWvLaQXkxVl32OXB9flDfZfnq9HKaOp++By6u5GgiWxxZT2hs/F1r64G
         kpZbdQoKIDM01+2/wQ4FHL9ZUWJ6t3/kVbvvpiyuWjbmpEVoHKor+zeplvcMXtnadx08
         UgOciXMQG+GP+9JWqateJV97u3R2cgG8wGNjkD9AXkCz5u8SMaLaO7hYdonnNaWX6uN7
         aKGX8a1yRdH1kM+NaRovSpPO0H2wqoq8YFIgcW3LjNnZequ6uHLRVPd8IwDG8uDmAaOu
         5m8SAoA9G7bY9w+R1B4fPJDf4VLIzzgBzYd4iowy746MLL8rEMzwrzhEVlKM/b43Ym4U
         qTRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718102084; x=1718706884;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Iw8jEj6K7sqFW7S1DdUS1qPq/n9OZCHh5asQtzTScu0=;
        b=Lw3neZzmPqQRzQpa5FkMbi6IIM3tGaOu9hhSnHnpQx1+1esDHjon/y6qrYyBNe51IE
         /z7IroPiGVb3jM7SrfheIQCDvVacMaxk0QRAAWEDARQvkTlAyPtEIwV+emjCiNPflM/6
         0XP29dd/EaJVkBTBiuKm9rmrDWYpS1aXtUXAYN/A3QE9/RBxLeIPT+OijP3kIEAYdbRL
         wiqFuKLUTG9dkO5BG2XS2+cxjBDFr/uXw6ylGUT2bHB1bNq+peXbfwjdN4pFQZoZc67s
         9897BDe4QiQJlj+9Vr5FEOwyl+KQfKS5Et0G/fQin3xPWyI0pWJfgid/GJrO83Jmfdiz
         LydA==
X-Gm-Message-State: AOJu0YxWBPVPDb/uvvRj79zmI4m1dDIKJ7eZdImyGxGDWy7w/dbLZwgM
	SjGvmLhTpXr0K/bJMqr1QabJtE1ED4ctK1lHncJJ8cAcuC88OUchuAihQjJ0ZHJLrrVMvMnlID5
	ZBM2oBeAAwp2vWk/SEcHdh12qgHXPWA==
X-Google-Smtp-Source: AGHT+IHYIYg3RLHtlLxPEAhkLaacrr9VBXMpQ/rUaxQvSnCR1B5u+cpcHVPE/MOZWUQJBV1mSEl0UnO1rVHTBXbdC5Q=
X-Received: by 2002:ac2:58f8:0:b0:52b:c27c:ea1f with SMTP id
 2adb3069b0e04-52bc27ceb0dmr5287120e87.55.1718102083907; Tue, 11 Jun 2024
 03:34:43 -0700 (PDT)
MIME-Version: 1.0
References: <SFQD.1718099972477026446.xJ0G@lists.yoctoproject.org>
In-Reply-To: <SFQD.1718099972477026446.xJ0G@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 11 Jun 2024 12:34:32 +0200
Message-ID: <CANNYZj_dvcS6QaUnZdCE5coukonZV0yv97Ji+J_N3=KCqYyCEw@mail.gmail.com>
Subject: Re: [yocto] fails to boot into GUI mode.:(EE) open /dev/dri/card0: No
 such file or directory in Yocto
To: yocto@lists.yoctoproject.org, kamalgmbh32@gmail.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Jun 2024 10:34:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63316

You are not saying anything whatsoever about what the device is. Can
you perhaps attach the full log and output of dmesg?

Alex

On Tue, 11 Jun 2024 at 12:07, Kamal GMBH via lists.yoctoproject.org
<kamalgmbh32=gmail.com@lists.yoctoproject.org> wrote:
>
> I am building core-image-sato for my device but device fails to boot into GUI mode.
>
> When I looked at Xorg.0.log file, found that Xserver is unable to find device node(/dev/dri/card0).
>
> I am using scarthgap branch with 6.6.26 kernel.
>
> error:
>
> (II) modesetting: Driver for Modesetting Kernel Drivers: kms
> (II) FBDEV: driver for framebuffer: fbdev
> (II) VESA: driver for VESA chipsets: vesa
> (EE) open /dev/dri/card0: No such file or directory
> (WW) Falling back to old probe method for modesetting
> (EE) open /dev/dri/card0: No such file or directory
> (II) Loading sub module "fbdevhw"
> (II) LoadModule: "fbdevhw"
> (II) Loading /usr/lib/xorg/modules/libfbdevhw.so
> (II) Module fbdevhw: vendor="X.Org Foundation"
>     compiled for 1.21.1.11, module version = 0.0.2
>     ABI class: X.Org Video Driver, version 25.2
> (EE) Unable to find a valid framebuffer device
> (WW) Falling back to old probe method for fbdev
> (II) Loading sub module "fbdevhw"
> (II) LoadModule: "fbdevhw"
> (II) Loading /usr/lib/xorg/modules/libfbdevhw.so
> (II) Module fbdevhw: vendor="X.Org Foundation"
>     compiled for 1.21.1.11, module version = 0.0.2
>     ABI class: X.Org Video Driver, version 25.2
> (EE) open /dev/fb0: No such file or directory
> vesa: Ignoring device with a bound kernel driver
> (EE) Screen 0 deleted because of no matching config section.
> (II) UnloadModule: "modesetting"
> (EE) Screen 0 deleted because of no matching config section.
> (II) UnloadModule: "fbdev"
> (II) UnloadSubModule: "fbdevhw"
> (EE) Screen 0 deleted because of no matching config section.
> (II) UnloadModule: "vesa"
> (EE) Device(s) detected, but none match those in the config file.
>
> can you please help here!
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63315): https://lists.yoctoproject.org/g/yocto/message/63315
> Mute This Topic: https://lists.yoctoproject.org/mt/106610331/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

