Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5E1FC4332F
	for <webhook@archiver.kernel.org>; Fri, 15 Dec 2023 17:22:05 +0000 (UTC)
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com [209.85.167.181])
 by mx.groups.io with SMTP id smtpd.web11.68426.1702660924417876057
 for <yocto@lists.yoctoproject.org>;
 Fri, 15 Dec 2023 09:22:04 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=PgsG7Bzq;
 spf=pass (domain: gmail.com, ip: 209.85.167.181, mailfrom: raj.khem@gmail.com)
Received: by mail-oi1-f181.google.com with SMTP id 5614622812f47-3ba084395d9so653728b6e.0
        for <yocto@lists.yoctoproject.org>; Fri, 15 Dec 2023 09:22:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702660923; x=1703265723; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ty2uMyQWiZpKOWQtgxkVstKYFKATKwXM3HOVOE2B1/U=;
        b=PgsG7BzqmC+o3u7D+zCP4lhYaoOo/e2wo0pMtoM14rxneqWdxz6UpVYkAyslvEfWEA
         5G2fZOsd8hRZ7JPRJwkrBJuMQ0PpD1KK5/B3joHAbR5W7mhrZDwVuau7kinWAUpsRyrS
         1fyzrZbCmpnMT+lK16lmteKZAhVOrptHiWlQWUH4xNMLXA1GuXQde9NDXvHsjDPgBCps
         kTesvsUJkv8cmLkoiyCUWpm4PN3gSwpoT2k112rk0wEbNzXMALjq7TluD/ELN5b1q36J
         gpO80bagcGYRZZmE78RhNih27KHWoGnO0a0QnihgrrGDDHOI9ggHtREeYOdqp7awW2jJ
         hh9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702660923; x=1703265723;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ty2uMyQWiZpKOWQtgxkVstKYFKATKwXM3HOVOE2B1/U=;
        b=pRPSJA5l4cGPQ21m86F5xuk0OR+MdkpbGnmqLytRIx4uCTcwQJ092try2Yzt03uHjT
         rBhEfUzZCS16Wex0dqORcUDMScZGUvReIAGGB+jz6GpxNWyxUJq3jWmBRejZT0f31MqQ
         bM3bmoAxb5HytM5SzrPrInKyAKGJatx4BFEuKmgL9VpT9TjR01HJ/Iz9Q3/jWRRwj1O7
         WGxd4YJtzAN/QJLwHjgMkRzQVSgZhqs5EkMfHpXyNlUheKIqmiwSps3Nh1bO0L0BqAiW
         XzqSRPUf5MdmAYKZNDUwzv+1Kh/0t5RAkfi0OqHi44l0h8P8BvNY62O+dnF9flco98ss
         VRPA==
X-Gm-Message-State: AOJu0Yw06ct4tODVmgKSe2pFPXVRhhKjuLalyxWffQFqW6ips2LL5ICZ
	eaH0WBNrl2TCacWpCRNt61HA122s+vnOJAzr8Y1bhCpC93s=
X-Google-Smtp-Source: AGHT+IHyvk2Q63b36d7M/CY0SDyivZ9OcTMbA1KFQ7dYWNxOBMpT7HOa9efgOdCI5xMPHFRS4EYckusg+0ybZs/6kIc=
X-Received: by 2002:a05:6808:2e8e:b0:3b9:ee90:4214 with SMTP id
 gt14-20020a0568082e8e00b003b9ee904214mr19669827oib.18.1702660923172; Fri, 15
 Dec 2023 09:22:03 -0800 (PST)
MIME-Version: 1.0
References: <16371.1702487095081210264@lists.yoctoproject.org> <2894.1702653237940424253@lists.yoctoproject.org>
In-Reply-To: <2894.1702653237940424253@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 15 Dec 2023 09:21:36 -0800
Message-ID: <CAMKF1sqFGH2fqo29aitrwKrhbzBHyFY7p0iZxdp0m8byJTtzwQ@mail.gmail.com>
Subject: Re: [yocto] Wireless interface (wlan) not shown on Raspberry Pi Zero W
To: yocto@lists.yoctoproject.org, renato.mendes.pes@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 15 Dec 2023 17:22:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61908

On Fri, Dec 15, 2023 at 7:14=E2=80=AFAM Renato Mendes
<renato.mendes.pes@gmail.com> wrote:
>
> I'm still struggling to solve that... I came up with a very basic configu=
ration on Yocto (using kirkstone):
>
>
>
> # POKY_BBLAYERS_CONF_VERSION is increased each time build/conf/bblayers.c=
onf
> # changes incompatibly
> POKY_BBLAYERS_CONF_VERSION =3D "2"
>
> BBPATH =3D "${TOPDIR}"
> BBFILES ?=3D ""
>
> BBLAYERS ?=3D " \
>   /home/quadfloor/release_1/src/poky/meta \
>   /home/quadfloor/release_1/src/poky/meta-poky \
>   /home/quadfloor/release_1/src/poky/meta-yocto-bsp \
>   /home/quadfloor/release_1/src/meta-openembedded/meta-oe \
>   /home/quadfloor/release_1/src/meta-openembedded/meta-python \
>   /home/quadfloor/release_1/src/meta-openembedded/meta-multimedia \
>   /home/quadfloor/release_1/src/meta-openembedded/meta-networking \
>   /home/quadfloor/release_1/src/meta-raspberrypi \
>   "
>
> local.conf:
>
> MACHINE =3D "raspberrypi0-wifi"
> SERIAL_CONSOLE =3D ""
> DISABLE_RPI_BOOT_LOGO =3D "1"
> DISABLE_OVERSCAN =3D "1"
> DISABLE_SPLASH =3D "1"
> BOOT_DELAY =3D "0"
> GPU_MEM_256 =3D "128"
> GPU_MEM_512 =3D "196"
> GPU_MEM_1024 =3D "396"
> PACKAGE_CLASSES =3D "package_ipk"
> DISTRO_FEATURES:append =3D " wifi "
> IMAGE_INSTALL:append =3D " linux-firmware-bcm43430 wpa-supplicant"
> IMAGE_FSTYPES =3D "tar.bz2 ext4 rpi-sdimg"
> SDIMG_ROOTFS_TYPE =3D "ext4"
>
> The error still persists: No wlan at all (ifconfig -a show only lo).

It seems that your system does not have wifi driver loaded. Can you
check output of
lsmod ?

secondly look what

dmesg | grep brcmfmac

says

>
> No idea where to go - project stuck and tigh deadline... Help very much n=
eeded...
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#61906): https://lists.yoctoproject.org/g/yocto/messag=
e/61906
> Mute This Topic: https://lists.yoctoproject.org/mt/103150047/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

