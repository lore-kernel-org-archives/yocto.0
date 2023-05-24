Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 694B5C77B7C
	for <webhook@archiver.kernel.org>; Wed, 24 May 2023 16:46:33 +0000 (UTC)
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
 by mx.groups.io with SMTP id smtpd.web11.2155.1684946792733583996
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 May 2023 09:46:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=l82N/yri;
 spf=pass (domain: gmail.com, ip: 209.85.167.176, mailfrom: raj.khem@gmail.com)
Received: by mail-oi1-f176.google.com with SMTP id 5614622812f47-39212bf4ff0so303071b6e.1
        for <yocto@lists.yoctoproject.org>; Wed, 24 May 2023 09:46:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684946792; x=1687538792;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y8h9HZBHXU1p3qZ0Lnjcvs2HdbHK9zaipl+c8Or3uM4=;
        b=l82N/yriftHHvARg68YzMJgrUA3f/D2ZOa5AWmSaGBtD94W0t4XvqGvhou9tLzbuKw
         +Re+HAehojM0MpbW0mVQFgXhW6BVMwJD8aAt1cwblXxVnZO6bw917F08BT8oi+0ge58W
         uYd9BFcJ5JTEVFckuzCFtthsq3RhOYrz9iMcvagXA+A3B/+wLGASn7Cd/xcyQLZrFe0e
         IHs3GMXnQG7ye81xFmUgxUW8w41gz6eW9i8gStpHwPhJveXYLOYG2aaUUxFl+uHhPVQJ
         m3VZjEhVbFuPfQPj4cDPJnTBj2LwEbqZDb5HZDDITpK2sn1s+xLheM+ylefqAg2gXSVp
         Fhng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684946792; x=1687538792;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=y8h9HZBHXU1p3qZ0Lnjcvs2HdbHK9zaipl+c8Or3uM4=;
        b=kFNDLxY2VEY/jtvjKyOI+d3RsOjjJ5cj8FwV7udkNfFt8dUkDHB/hA1jXrsvHKL5il
         4rThHl01VMoet5SBfcTavhhFscjHex9B/yPpTAnExSM/coui90UtXqx72zEPJKTgPEGM
         2/VvPVMEMKCZoJfI3YGb0+gVFHdK5E+mEOnWQNT8Ns2n5HNYeP8e1m9Shp8gJ3Ugd496
         qithAgQ1mtdr/zJnhQow0ck8rp0taSTuNK/SUw51pWHa0P5cgTpDTMCZpz2wRcldfE41
         r1UZWreACZT+KROIA7qxX9d5SY6JKePveIWA/I2Ipaz69QSbJQJsMakU4RIJUyXfGrwT
         k14Q==
X-Gm-Message-State: AC+VfDwN3RrXNABM1BFk8ri4n9MsH3nOwFhW2wmVV1r1kniTvMRABk8F
	TZPxE5OOKJnMt7qDiuEFie8YOzAAimvY1IVmtQI=
X-Google-Smtp-Source: ACHHUZ5g0u1j99dz3pM45F5a+pdAQ5pmb29EhOH9sk5CT4+NGKS7bfbwbyjfERn2YZwFGpS32N++7JpqOsrAZrkW1Mg=
X-Received: by 2002:aca:915:0:b0:395:7577:1533 with SMTP id
 21-20020aca0915000000b0039575771533mr9049756oij.37.1684946791879; Wed, 24 May
 2023 09:46:31 -0700 (PDT)
MIME-Version: 1.0
References: <dc33b8e9-3c27-afc0-7595-9020ba69bbdd@bootlin.com>
In-Reply-To: <dc33b8e9-3c27-afc0-7595-9020ba69bbdd@bootlin.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 24 May 2023 09:46:06 -0700
Message-ID: <CAMKF1sq5GkHkumFtS-CgDOPFR5Bydizk2dnMLvmzNECYTy=Q=w@mail.gmail.com>
Subject: Re: [yocto] psplash: white stripes with custom splash image
To: michael.opdenacker@bootlin.com
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 24 May 2023 16:46:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60112

On Wed, May 24, 2023 at 3:24=E2=80=AFAM Michael Opdenacker via
lists.yoctoproject.org
<michael.opdenacker=3Dbootlin.com@lists.yoctoproject.org> wrote:
>
> Greetings,
>
> I wanted to customize the boot splash image for an i.MX6 system.
>
> I'm using Kirkstone and created a psplash/psplash_%.bbappend file in a
> custom layer:
>
> SPLASH_IMAGES =3D "file://krtek.png;outsuffix=3Ddefault"
> FILESEXTRAPATHS:prepend :=3D "${THISDIR}/files:"
>
> The "files/krtek.png" file has a 800x480 resolution, which matches my
> display's.
>
> However, the screen shows two white stripes at the bottom (see the
> attached picture). Actually, the top stripe is added on top of the
> original picture, and the bottom one corresponds to the picture being
> translated upwards (see the attached original picture).
>
> I'm running a 4.19 Linux kernel. I couldn't reproduce this issue on a
> qemux86-64 system (same picture, 5.15 kernel), though the QEMU display
> has a greater resolution.
>
> Has anyone seen this before, or would anyone have an idea why this happen=
s?
> Thanks in advance

It looks like the text box for messages is still painted. try with
both sysvinit and systemd
IIRC I saw something similar with systemd a year or so ago, it might
have been different
thing dont know.

> Cheers
> Michael.
>
> --
> Michael Opdenacker, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#60108): https://lists.yoctoproject.org/g/yocto/messag=
e/60108
> Mute This Topic: https://lists.yoctoproject.org/mt/99105545/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

