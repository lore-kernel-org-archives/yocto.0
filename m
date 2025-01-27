Return-Path: <martin.jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 06AD6C0218C
	for <webhook@archiver.kernel.org>; Mon, 27 Jan 2025 08:22:39 +0000 (UTC)
Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com [209.85.222.53])
 by mx.groups.io with SMTP id smtpd.web11.47110.1737966149480334248
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Jan 2025 00:22:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=cCR0gFHY;
 spf=pass (domain: gmail.com, ip: 209.85.222.53, mailfrom: martin.jansa@gmail.com)
Received: by mail-ua1-f53.google.com with SMTP id a1e0cc1a2514c-85c61388e68so803049241.3
        for <yocto@lists.yoctoproject.org>; Mon, 27 Jan 2025 00:22:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737966148; x=1738570948; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6Q61lvwsZy4EhODFs01YDfHe7iHk0TTFwEqLbIzzKxo=;
        b=cCR0gFHYghBdrUpG2DT+ZxjU1EpYV+UXsjmEURvS4Ym3DzUDKiTubIi9EvzqGcWhol
         kzncDGSgi6YnL6TWy5UAM946ZK3K39RFTbebmMc4bfwLqiJnXRufLnwscTwtdk5lcD6X
         +x7MHMTujns//1/C5f+q9hxd7Hfg3lzHtWOXB1qQy2QKxuHL+UTBmsSsftncI2fpdF2r
         1GsAzl31Bq25Escx8VELxMzGscqHbrmBHHt+B3RZbAcssTASkiJafDhsN8UEVS6fQ827
         U6KvtvfOHXUTrCC44MPH6pGdzN+4u8LGGUYnQeKshsMQo6M0mjvmNzvCD8b5Ewpas1Ec
         q4DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737966148; x=1738570948;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6Q61lvwsZy4EhODFs01YDfHe7iHk0TTFwEqLbIzzKxo=;
        b=Iu/QmuY2C9dsQ+XiWujcdosg3BgSLLTdIN6ZyWWoVl/Y6HXLvBa5v1d98TIguntSEF
         trgoUoiUaIeKoZY+DvfbvS2JXuvRfmAxhcMxFGX0fhVFBeNIiQyXx4xQIbykvbck7fyj
         TqxMd9iVBDAlOjthGAWnQ7h7w7x5zFq4rXX2KgXZ/2Iq7cR4kd8JbpkJyVahZMrpe/i4
         Sd0bSfm41uk/G9qcFlR7OK1G8shnszQaDxb4CloqEXXxf3HwLpgCrs4t0WgJq//UZl4Y
         BEK3xPi5YF6ifB1myGw9r3E5dRh8oafXrOevGAnItUiRvaB7i3C8iSxTaU6PjtI73p7/
         uf7Q==
X-Gm-Message-State: AOJu0Yy2RmNkeMcoLExI0rdTNWWmoriDqNZUc7l4p45OK+K8xEIUEkud
	7jzKT6B87vbIKnTBSNoDZ8GNPUFGwEf+I5zxVLcUHByDcYamAW/1h96wVGQtGM0u+cHQWCTknpG
	QAf8Zk5EQtiqbXOjgwfv3wQ9d+Pdyokxg
X-Gm-Gg: ASbGncvIw2FG5mC3HMN1+eW3mo7/KCWuk+UnzUFaSvfD8vJwA6XPcQwMsEFg4k8i/ki
	xIfm8MFiZdaDl+XZx5okg8h2GmY5b4cGlDAGfmST+YLQhTso8GJTJvvfCpE1NBb8s
X-Google-Smtp-Source: AGHT+IEwAoBVt/Iy08CXBEbt6GSG48roMHTaJhjyMmPGsuEyzq2AZSVeYjewiQ2elGl26oYTNxjuUvGrvffoB6/Pfps=
X-Received: by 2002:a05:6102:3e0f:b0:4b2:45a3:59f1 with SMTP id
 ada2fe7eead31-4b690bd3ec9mr35456761137.9.1737966148416; Mon, 27 Jan 2025
 00:22:28 -0800 (PST)
MIME-Version: 1.0
References: <128471553.2634211.1737965823800@webmail.strato.de>
In-Reply-To: <128471553.2634211.1737965823800@webmail.strato.de>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Mon, 27 Jan 2025 09:22:11 +0100
X-Gm-Features: AWEUYZmg-5_kQIu4ph2AdhU-SVfkxQLSTuSIK49HBFpdVZoD1OzJ022fKBwB930
Message-ID: <CA+chaQd-FH5_v10pZwSQT9VZe523E_0ChtNLK+wnx6a-eW269w@mail.gmail.com>
Subject: Re: [yocto] Kirkstone - Missing python3-pycrypto with salt
To: yocto@lists.yoctoproject.org, kontakt@daniel-kampert.de
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 Jan 2025 08:22:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64632

See meta-oe commit:

commit 84769a963974cffc5d877e57a46a289a84bc293d
Author: Ross Burton <ross@burtonini.com>
Date:   Fri Jan 14 14:10:08 2022 +0000

    python3-pycrypto: remove obsolete pycrypto module

Check if it was fixed in newer meta-cloud-services or report it there
(preferably with patch to switch to pycryptodome or cryptography).

On Mon, Jan 27, 2025 at 9:17=E2=80=AFAM Daniel Kampert via
lists.yoctoproject.org
<kontakt=3Ddaniel-kampert.de@lists.yoctoproject.org> wrote:
>
> Hi,
>
> I try to build a Kirkstone image for an iMX8MP with salt and I get this e=
rror
>
> NOTE: Resolving any missing task queue dependencies
> ERROR: Nothing PROVIDES 'python3-pycrypto' (but ../layers/openembedded-co=
re/meta-cloud-services/meta-openstack/recipes-support/salt/salt_3001.1.bb D=
EPENDS on or otherwise requires it). Close matches:
> python3-m2crypto
> python3-pycryptodome
> python3-scrypt
> NOTE: Runtime target 'salt' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['salt', 'python3-pycrypto']
> ERROR: Required build target 'hannah-core-image' has no buildable provide=
rs.
> Missing or unbuildable dependency chain was: ['hannah-core-image', 'salt'=
, 'python3-pycrypto']
>
> I=C2=B4m curious because I can not find the recipe in my layers. Is this =
a bug in Kirkstone or how can I fix it?
>
> Mit freundlichen Gr=C3=BC=C3=9Fen / With kind regards
>
> Ing. Daniel Kampert, M. Sc.
> Embedded Systems Solutions
> Address: Hauptstr. 36 | 91469 Hagenb=C3=BCchach | Deutschland
> Phone: +49 (0)174 6932561
> E-Mail: kontakt@daniel-kampert.de
> Web: www.daniel-kampert.de
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64631): https://lists.yoctoproject.org/g/yocto/messag=
e/64631
> Mute This Topic: https://lists.yoctoproject.org/mt/110835571/3617156
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [martin.jansa@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

