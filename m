Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3B8ECC35274
	for <webhook@archiver.kernel.org>; Fri, 15 Dec 2023 23:40:28 +0000 (UTC)
Received: from mail-oo1-f41.google.com (mail-oo1-f41.google.com [209.85.161.41])
 by mx.groups.io with SMTP id smtpd.web10.87.1702683626372673840
 for <yocto@lists.yoctoproject.org>;
 Fri, 15 Dec 2023 15:40:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=HfPQmFxM;
 spf=pass (domain: gmail.com, ip: 209.85.161.41, mailfrom: raj.khem@gmail.com)
Received: by mail-oo1-f41.google.com with SMTP id 006d021491bc7-590a2a963baso822117eaf.2
        for <yocto@lists.yoctoproject.org>; Fri, 15 Dec 2023 15:40:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702683625; x=1703288425; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vNhOXbuyJZYvmeMrZ8QcDpDsozhCpVeANaM76NwR8Ec=;
        b=HfPQmFxMvevaHWBNvBQjqRalIvjYY2SOA39pwYTLbt/u78NYnl3ilV/l+qCFykKJS2
         FxDT0iLNsJqIhune1FKf0MI25J4TbVVSB7muc39GP4zG+vA4BguLi0DDt6/JbphAqJPc
         l79tB/d43XAOnUqQvCcQG3e9LChRM7kci53L9vm9rmiuDrYf+DnoyPa6NmaEPS/r0/G2
         /KLOJ6tea7lGSkeOll3HDDySoTwctVtvGKJYUAHPauNoUHHmj1KIimF3SbjxrN6U/H3f
         KCoGBsGVF/V0XkdzIl+cB6ZGgpKEVEs/lBUivtqf2HjXlor3+M4RsXbm7iT2xOymqLX3
         7Jxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702683625; x=1703288425;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vNhOXbuyJZYvmeMrZ8QcDpDsozhCpVeANaM76NwR8Ec=;
        b=BU9s0Kw8DQjT4wnOKL3N2E085awpn7o96f9/5fRRT40MGfh5qAMJ67Jxt8VxwQx+dS
         m3LzBM22hbJfe/XwMJ2TnKZWDCsGSvAr2X8LCLTi648mB0WN0GoytNFcRaXGluvuwvGL
         7oQj/Ot3hJaTKLzA9PtmWO1JzN8s9J5fFFkN/+U41Bm3T0ljMStmjoB0idCWlgT9bV86
         Sn86cDrtf50rU8LiXT6vKBILL/PBIJN4xmX/nPqDOzAkH/ogZudR1p26xLKzTZybdQPK
         3bFVIacb2FTfmUFkTGtw4J7+vh2ksFsABPJY2vfUjNoFVGkkd+mFTYCJjKzeXzdcYOlY
         SR1A==
X-Gm-Message-State: AOJu0YzOzbRbmb9xuVIQyAlLIAx321/5dQeOoeUakw1f13zgqjIkFhas
	222IkVT5QqtYwT0oWBSS3LpdXEBNvAZDy103kTU=
X-Google-Smtp-Source: AGHT+IEod3E8hsCuAIxEgvJsNO9xJ1xuE1UxWlSS+teEE+4McoFNXxeffEqLAmSntEodf/vhNQHn1Nw5azORy3BrC8M=
X-Received: by 2002:a05:6870:8a0c:b0:203:1ebc:2c89 with SMTP id
 p12-20020a0568708a0c00b002031ebc2c89mr6916285oaq.14.1702683625441; Fri, 15
 Dec 2023 15:40:25 -0800 (PST)
MIME-Version: 1.0
References: <CA+chaQdAVQquj6cG7qghb=H8x20yOpRNHnazzn90rY5c6HQbuA@mail.gmail.com>
 <2720FBEB-1C17-4CF2-A9AB-363589865FD6@gmail.com>
In-Reply-To: <2720FBEB-1C17-4CF2-A9AB-363589865FD6@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 15 Dec 2023 15:39:59 -0800
Message-ID: <CAMKF1sr_H+MUR39RzxGrY1FRBvcOyc5XNoNvjTCzRU8znXK_og@mail.gmail.com>
Subject: Re: [yocto] Wireless interface (wlan) not shown on Raspberry Pi Zero W
To: Renato Mendes <renato.mendes.pes@gmail.com>
Cc: Martin Jansa <martin.jansa@gmail.com>, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 15 Dec 2023 23:40:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61925

go into meta-raspberrypi checkout and then

then do
git cherry-pick 0917b60527242d3668efc2d3b918df64b13e7b6f

this should bring the one commit I am asking you to apply on top of kirksto=
ne.

On Fri, Dec 15, 2023 at 3:35=E2=80=AFPM Renato Mendes
<renato.mendes.pes@gmail.com> wrote:
>
>
> Sorry I=E2=80=99m confused=E2=80=A6 what exactly Khem asked to do - can y=
ou please elaborate. Thanks.
>
> Em 15 de dez. de 2023, =C3=A0(s) 18:51, Martin Jansa <martin.jansa@gmail.=
com> escreveu:
>
> =EF=BB=BF
> > Am I doing the backport correctly? Maybe config file problems?
>
> You've backported different commit than what Khem asked you to try.
>
> On Fri, Dec 15, 2023 at 10:33=E2=80=AFPM Renato Mendes <renato.mendes.pes=
@gmail.com> wrote:
>>
>> So Khem, that's what I've done:
>>
>> Load from git and backport:
>>
>> git clone -b kirkstone git://git.yoctoproject.org/poky ./src/poky
>> git clone -b kirkstone git://git.openembedded.org/meta-openembedded ./sr=
c/meta-openembedded
>>
>> git clone -b kirkstone git://git.yoctoproject.org/meta-raspberrypi ./src=
/meta-raspberrypi
>> git checkout master
>> git checkout kiskstone
>> git cherry-pick master
>> Auto-merging docs/extra-build-config.md
>> Auto-merging recipes-bsp/bootfiles/rpi-cmdline.bb
>> [kirkstone a900a5e] rpi-cmdline, rpi-u-boot-src: Support USB boot
>>  Author: Harunobu Kurokawa <harunobu.kurokawa.dn@renesas.com>
>>  Date: Fri May 5 14:49:51 2023 +0900
>>  Committer: quadfloor <quadfloor@yocto.quadfloor.com>
>> Your name and email address were configured automatically based
>> on your username and hostname. Please check that they are accurate.
>> You can suppress this message by setting them explicitly. Run the
>> following command and follow the instructions in your editor to edit
>> your configuration file:
>>
>>     git config --global --edit
>>
>> After doing this, you may fix the identity used for this commit with:
>>
>>     git commit --amend --reset-author
>>
>>  4 files changed, 24 insertions(+), 3 deletions(-)
>>
>> Configuration:
>>
>> After that, rebuilt with the short configuration:
>>
>> MACHINE =3D "raspberrypi0-wifi"
>> SERIAL_CONSOLE =3D ""
>> DISABLE_RPI_BOOT_LOGO =3D "1"
>> DISABLE_OVERSCAN =3D "1"
>> DISABLE_SPLASH =3D "1"
>> BOOT_DELAY =3D "0"
>> GPU_MEM_256 =3D "128"
>> GPU_MEM_512 =3D "196"
>> GPU_MEM_1024 =3D "396"
>> PACKAGE_CLASSES =3D "package_ipk"
>> DISTRO_FEATURES:append =3D " wifi "
>> IMAGE_INSTALL:append =3D " linux-firmware-bcm43430 wpa-supplicant"
>> IMAGE_FSTYPES =3D "tar.bz2 ext4 rpi-sdimg"
>> SDIMG_ROOTFS_TYPE =3D "ext4"
>>
>>
>> $ cat bblayers.conf
>> # POKY_BBLAYERS_CONF_VERSION is increased each time build/conf/bblayers.=
conf
>> # changes incompatibly
>> POKY_BBLAYERS_CONF_VERSION =3D "2"
>>
>> BBPATH =3D "${TOPDIR}"
>> BBFILES ?=3D ""
>>
>> BBLAYERS ?=3D " \
>>   /home/quadfloor/release_1/src/poky/meta \
>>   /home/quadfloor/release_1/src/poky/meta-poky \
>>   /home/quadfloor/release_1/src/poky/meta-yocto-bsp \
>>   /home/quadfloor/release_1/src/meta-openembedded/meta-oe \
>>   /home/quadfloor/release_1/src/meta-openembedded/meta-python \
>>   /home/quadfloor/release_1/src/meta-openembedded/meta-multimedia \
>>   /home/quadfloor/release_1/src/meta-openembedded/meta-networking \
>>   /home/quadfloor/release_1/src/meta-raspberrypi \
>>   "
>>
>> Result:
>> $ ifcofing -a -> Only lo interface, no wlan
>>
>> $ dmesg | grep brcmfmac shows nothing....
>> $ dmesg | grep wlan shows nothing....
>>
>> $ lsmod
>> Module              Size         Used  by
>> nfsd                   454656    11
>>
>> So, basically the same....
>>
>> Am I doing the backport correctly? Maybe config file problems?
>>
>> Thanks for supporting...
>>
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#61922): https://lists.yoctoproject.org/g/yocto/messa=
ge/61922
>> Mute This Topic: https://lists.yoctoproject.org/mt/103150047/3617156
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [martin.jansa@=
gmail.com]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>

