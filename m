Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 840A3EE4993
	for <webhook@archiver.kernel.org>; Sat, 19 Aug 2023 17:09:32 +0000 (UTC)
Received: from mail-oo1-f48.google.com (mail-oo1-f48.google.com [209.85.161.48])
 by mx.groups.io with SMTP id smtpd.web11.13574.1692464971151059825
 for <yocto@lists.yoctoproject.org>;
 Sat, 19 Aug 2023 10:09:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=kQYv71LL;
 spf=pass (domain: gmail.com, ip: 209.85.161.48, mailfrom: raj.khem@gmail.com)
Received: by mail-oo1-f48.google.com with SMTP id 006d021491bc7-56ccdb2c7bbso1269236eaf.1
        for <yocto@lists.yoctoproject.org>; Sat, 19 Aug 2023 10:09:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692464970; x=1693069770;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=auvTYOuUPkFxvVYQHuPJAIe7pv1nQVVkLJ0aERagvwI=;
        b=kQYv71LL8zsdMQd1xqqK47ZmZLrqs5oirxCcKJBl3RZSN2e4bWUBdC1TQAmHjKpC64
         bM2SjIZmeODLgDHRR34TviaY35wy9JaNEyQh9QJYaCQeHjyOypjeufQWG0yGpdsHo5Rg
         D26u3Aepah1sd7Gwq0NuK6U8rQSefWcIDN/5dOhgzoON1bPoM/+ADQncr7jnDCAYBHEC
         xVPR61n3Qn+7RNKhad++/qx3ZNrem2AME1QmgNJmvA6nyzEv1GxQYkEmZxz80XjolYvP
         v+6HhaTa4YbgVqF2nKMBf4hFtfi0btNhGIqign/JDYhOCxLkkjHI/fI4BCUoOJ8yKVUZ
         Hn3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692464970; x=1693069770;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=auvTYOuUPkFxvVYQHuPJAIe7pv1nQVVkLJ0aERagvwI=;
        b=jJNovnduldSfxd2eh8X5MBuNeSQXqYapmPvsgUubW6RuFJMTwdF+sLkX32QVtA6yW7
         vyXwCjtwlo4fsE3ZrMswy7uwQYWx0FQH2yNwUliHkBRAF91PcpQe/i37vXPyWdfmorT3
         YFZOeP34/96GgyLZXO78svbPtUnzCxRg1aQpqM/0g9D1m2q6+TVNaieDzCS68J014bOl
         vmGkfdTvkWPTGDnwzKzSMF9BvIY2vchz+6wOLlE5/qVMwfKA/Z5yehi7KRW2COOnqj94
         t4tuUeBUeirTnXpj6q+xIys/nN5Nnn+Knod6A+zI3MFdoWmhQMyQrY4p/BVscbQCSOMk
         NOjw==
X-Gm-Message-State: AOJu0YzE8cj/tInPUymggRgDEjezyIdDXqV6xy1ajpKJNTbTYsQgS2J9
	UKyeU6ZBthLkZ45bMJiYytxZ+INFe6lT4WnF2/Q=
X-Google-Smtp-Source: AGHT+IHiJ/iVQe5gcuH8DBCPU743g7obUIrpjfqbftoB1J1aAcrkU5i90dBsxjCKAWk5NWxzUGav0SjMoHFC90cn37U=
X-Received: by 2002:a4a:dfb8:0:b0:56c:e928:2889 with SMTP id
 k24-20020a4adfb8000000b0056ce9282889mr3354400ook.3.1692464970361; Sat, 19 Aug
 2023 10:09:30 -0700 (PDT)
MIME-Version: 1.0
References: <8vPi.1692448940660132639.f92P@lists.yoctoproject.org>
In-Reply-To: <8vPi.1692448940660132639.f92P@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 19 Aug 2023 10:09:04 -0700
Message-ID: <CAMKF1song8RTfJ-k0ht97zSDedp+eAk8tu=GYWoLM5C8Rhg25Q@mail.gmail.com>
Subject: Re: [yocto] Qemu not working for raspberry pi
To: shrikantvaishnav@hotmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 19 Aug 2023 17:09:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60831

On Sat, Aug 19, 2023 at 5:42=E2=80=AFAM <shrikantvaishnav@hotmail.com> wrot=
e:
>
> Hi all,
> i want to run my raspberry pi in qemu and for this, I have created the im=
age using core-image-weston and also set machine to:MACHINE ??=3D "qemux86-=
64" .after this whenever I try to run using qemu it shows
> Error:"runqemu - ERROR - IMAGE_LINK_NAME wasn't set to find corresponding=
 .qemuboot.conf file"

Its not clear what you are trying to do but I guess you have built an
image for RPI which
you want to run on an emulator instead of real hardware. In that case,
you have to use
either qemuarm or qemuarm64 depending upon your image being 64bit or
32bit. you might
have to explore runqemu options where you can point it to a kernel and
rootfs explicitly
and use that to point it to the rpi images. This may not work even
after that since there might be more tweaks needed for the pi image to
run in qemu.

>
> Please help
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#60830): https://lists.yoctoproject.org/g/yocto/messag=
e/60830
> Mute This Topic: https://lists.yoctoproject.org/mt/100837806/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

