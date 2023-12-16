Return-Path: <renato.mendes.pes@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F3E33C46CCD
	for <webhook@archiver.kernel.org>; Sat, 16 Dec 2023 14:14:22 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
 by mx.groups.io with SMTP id smtpd.web11.15537.1702736060602254095
 for <yocto@lists.yoctoproject.org>;
 Sat, 16 Dec 2023 06:14:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ivIKkaj8;
 spf=pass (domain: gmail.com, ip: 209.85.128.44, mailfrom: renato.mendes.pes@gmail.com)
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-40c6736d10fso20013315e9.1
        for <yocto@lists.yoctoproject.org>; Sat, 16 Dec 2023 06:14:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702736059; x=1703340859; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/kIqb+e5Y9DPIeZ+2EY9RtZ4gttLF0sOvuFWBHT+CxE=;
        b=ivIKkaj8piqIbKr+xPpjizElM82iSmG0N6+4hXwFdzAH/+VR0ouE2k/paAddWLvlUK
         cBmqoV6Ud7mpN4yctInmkD9iNHq+FqNjH0wEz+JX4/HUszK1ElQFHXJvXt0noQm9m3ts
         mlRicI9x81Y7lKRrLF3mhVaiJlzlyXD7dRBj5yzty22viLlJ3kUXULY1paSOo5DN6fju
         KUzkJFQU6ZhQ20E4hGX5TzDDPuCRhIBToXE17Bfwh2KyZEpQvkOD7TEa+s4hqqkSaMOk
         dXXqKJQLnFDnI5UUvXJr6G/Ssv2ALTx0lVSwP63E2hEDJy03yQMlZODu2e0tufNIYNAK
         ubuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702736059; x=1703340859;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/kIqb+e5Y9DPIeZ+2EY9RtZ4gttLF0sOvuFWBHT+CxE=;
        b=vmC0LoFU57MSomK/PnPDutV++KwNNPMQmgzzECpdXeuAWgqKkhP027q8AHW7S61aPC
         +D0elvyyrWB+GDyi+LtOmmt12aIjAkvlMBi3FdsEPSSKR5qjCaui9Q3Y2d2zm5kKF74E
         fjYi7Ot+WEKVxkSyHfEJSx2zWIYZLgOQ+oz9jWxkar0WgEJwxeTA/9mlSameD0yBybk+
         07dUFihpx2wyjpAIqzREPt1gz033/i9rT00Bwmc/oHW5jgi98CVWco/ZGavvl1K0mMT0
         0btyJleiiv6J4UyquKro37JuidoSCbB3HEEU+g1NbNe5imrZAtV+KSOXB1tJmIG0ZcBN
         dhRQ==
X-Gm-Message-State: AOJu0YzNAUCW+wRwPztUFaiaU5GZmCGW+Y3/2n7Spsfos323geSfUjN0
	Q0pSkeIuj2qVMUVmVUsmX/EPclQHBcR3THUIEeQ=
X-Google-Smtp-Source: AGHT+IHgrtPq+SUqlg95Bz5IsEjatXgwbsDHvX8SIKV5viCTxVhQwUXapFLjIorPc31aEt7VoVYDXpy7G2zsVsfJaIo=
X-Received: by 2002:a05:600c:920:b0:40c:22e2:14ea with SMTP id
 m32-20020a05600c092000b0040c22e214eamr7385425wmp.1.1702736058603; Sat, 16 Dec
 2023 06:14:18 -0800 (PST)
MIME-Version: 1.0
References: <CA+chaQdAVQquj6cG7qghb=H8x20yOpRNHnazzn90rY5c6HQbuA@mail.gmail.com>
 <2720FBEB-1C17-4CF2-A9AB-363589865FD6@gmail.com> <CAMKF1sr_H+MUR39RzxGrY1FRBvcOyc5XNoNvjTCzRU8znXK_og@mail.gmail.com>
In-Reply-To: <CAMKF1sr_H+MUR39RzxGrY1FRBvcOyc5XNoNvjTCzRU8znXK_og@mail.gmail.com>
From: Renato Mendes <renato.mendes.pes@gmail.com>
Date: Sat, 16 Dec 2023 11:14:20 -0300
Message-ID: <CAF62+jmSb8cXvLrB9Rm5=r4spaDdbVH7gCs-vu=S_hz_Q9vaww@mail.gmail.com>
Subject: Re: [yocto] Wireless interface (wlan) not shown on Raspberry Pi Zero W
To: Khem Raj <raj.khem@gmail.com>
Cc: Martin Jansa <martin.jansa@gmail.com>, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 16 Dec 2023 14:14:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61942

Had a conflict on
cherry-picking:quadfloor@yocto:~/release_1/src/meta-raspberrypi$ git
fetch --all
quadfloor@yocto:~/release_1/src/meta-raspberrypi$ git fetch -all
error: did you mean `--all` (with two dashes)?
quadfloor@yocto:~/release_1/src/meta-raspberrypi$ git cherry-pick
0917b60527242d3668efc2d3b918df64b13e7b6f
Auto-merging conf/machine/include/rpi-base.inc
CONFLICT (content): Merge conflict in conf/machine/include/rpi-base.inc
error: could not apply 0917b60... rpi-base.inc: Add kernel modules to all i=
mages
hint: After resolving the conflicts, mark them with
hint: "git add/rm <pathspec>", then run
hint: "git cherry-pick --continue".
hint: You can instead skip this commit with "git cherry-pick --skip".
hint: To abort and get back to the state before "git cherry-pick",
hint: run "git cherry-pick --abort".


$ git checkout -b kirkstone
git://git.yoctoproject.org/meta-raspberrypi ./src/meta-raspberrypi
$ git fetch --all
$ git cherry-pick 0917b60527242d3668efc2d3b918df64b13e7b6f
Auto-merging conf/machine/include/rpi-base.inc
CONFLICT (content): Merge conflict in conf/machine/include/rpi-base.inc
error: could not apply 0917b60... rpi-base.inc: Add kernel modules to all i=
mages
hint: After resolving the conflicts, mark them with
hint: "git add/rm <pathspec>", then run
hint: "git cherry-pick --continue".
hint: You can instead skip this commit with "git cherry-pick --skip".
hint: To abort and get back to the state before "git cherry-pick",
hint: run "git cherry-pick --abort".

Detail about the found conflict:

<<<<<<< HEAD
MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-modules udev-rules-rpi"
MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS +=3D
"${@oe.utils.conditional('ENABLE_I2C', '1', 'kernel-module-i2c-dev
kernel-module-i2c-bcm2708', '', d)}"
MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS +=3D
"${@oe.utils.conditional('ENABLE_IR', '1', 'kernel-module-gpio-ir
kernel-module-gpio-ir-tx', '', d)}"
MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS +=3D
"${@oe.utils.conditional('ENABLE_GPIO_SHUTDOWN', '1', 'gpio-shutdown
kernel-module-gpio-keys', '', d)}"

SERIAL_CONSOLES_CHECK ??=3D "${SERIAL_CONSOLES}"

# The name of the deploy directory for raspberry pi boot files.
# This variable is referred to by recipes fetching / generating the files.
BOOTFILES_DIR_NAME ?=3D "bootfiles"
=3D=3D=3D=3D=3D=3D=3D
MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS +=3D " kernel-modules udev-rules-rpi"
>>>>>>> 0917b60 (rpi-base.inc: Add kernel modules to all images)

Seens that MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS +=3D " kernel-modules
udev-rules-rpi" was already there....

Confused now...

Em sex., 15 de dez. de 2023 =C3=A0s 20:40, Khem Raj <raj.khem@gmail.com> es=
creveu:
>
> go into meta-raspberrypi checkout and then
>
> then do
> git cherry-pick 0917b60527242d3668efc2d3b918df64b13e7b6f
>
> this should bring the one commit I am asking you to apply on top of kirks=
tone.
>
> On Fri, Dec 15, 2023 at 3:35=E2=80=AFPM Renato Mendes
> <renato.mendes.pes@gmail.com> wrote:
> >
> >
> > Sorry I=E2=80=99m confused=E2=80=A6 what exactly Khem asked to do - can=
 you please elaborate. Thanks.
> >
> > Em 15 de dez. de 2023, =C3=A0(s) 18:51, Martin Jansa <martin.jansa@gmai=
l.com> escreveu:
> >
> > =EF=BB=BF
> > > Am I doing the backport correctly? Maybe config file problems?
> >
> > You've backported different commit than what Khem asked you to try.
> >
> > On Fri, Dec 15, 2023 at 10:33=E2=80=AFPM Renato Mendes <renato.mendes.p=
es@gmail.com> wrote:
> >>
> >> So Khem, that's what I've done:
> >>
> >> Load from git and backport:
> >>
> >> git clone -b kirkstone git://git.yoctoproject.org/poky ./src/poky
> >> git clone -b kirkstone git://git.openembedded.org/meta-openembedded ./=
src/meta-openembedded
> >>
> >> git clone -b kirkstone git://git.yoctoproject.org/meta-raspberrypi ./s=
rc/meta-raspberrypi
> >> git checkout master
> >> git checkout kiskstone
> >> git cherry-pick master
> >> Auto-merging docs/extra-build-config.md
> >> Auto-merging recipes-bsp/bootfiles/rpi-cmdline.bb
> >> [kirkstone a900a5e] rpi-cmdline, rpi-u-boot-src: Support USB boot
> >>  Author: Harunobu Kurokawa <harunobu.kurokawa.dn@renesas.com>
> >>  Date: Fri May 5 14:49:51 2023 +0900
> >>  Committer: quadfloor <quadfloor@yocto.quadfloor.com>
> >> Your name and email address were configured automatically based
> >> on your username and hostname. Please check that they are accurate.
> >> You can suppress this message by setting them explicitly. Run the
> >> following command and follow the instructions in your editor to edit
> >> your configuration file:
> >>
> >>     git config --global --edit
> >>
> >> After doing this, you may fix the identity used for this commit with:
> >>
> >>     git commit --amend --reset-author
> >>
> >>  4 files changed, 24 insertions(+), 3 deletions(-)
> >>
> >> Configuration:
> >>
> >> After that, rebuilt with the short configuration:
> >>
> >> MACHINE =3D "raspberrypi0-wifi"
> >> SERIAL_CONSOLE =3D ""
> >> DISABLE_RPI_BOOT_LOGO =3D "1"
> >> DISABLE_OVERSCAN =3D "1"
> >> DISABLE_SPLASH =3D "1"
> >> BOOT_DELAY =3D "0"
> >> GPU_MEM_256 =3D "128"
> >> GPU_MEM_512 =3D "196"
> >> GPU_MEM_1024 =3D "396"
> >> PACKAGE_CLASSES =3D "package_ipk"
> >> DISTRO_FEATURES:append =3D " wifi "
> >> IMAGE_INSTALL:append =3D " linux-firmware-bcm43430 wpa-supplicant"
> >> IMAGE_FSTYPES =3D "tar.bz2 ext4 rpi-sdimg"
> >> SDIMG_ROOTFS_TYPE =3D "ext4"
> >>
> >>
> >> $ cat bblayers.conf
> >> # POKY_BBLAYERS_CONF_VERSION is increased each time build/conf/bblayer=
s.conf
> >> # changes incompatibly
> >> POKY_BBLAYERS_CONF_VERSION =3D "2"
> >>
> >> BBPATH =3D "${TOPDIR}"
> >> BBFILES ?=3D ""
> >>
> >> BBLAYERS ?=3D " \
> >>   /home/quadfloor/release_1/src/poky/meta \
> >>   /home/quadfloor/release_1/src/poky/meta-poky \
> >>   /home/quadfloor/release_1/src/poky/meta-yocto-bsp \
> >>   /home/quadfloor/release_1/src/meta-openembedded/meta-oe \
> >>   /home/quadfloor/release_1/src/meta-openembedded/meta-python \
> >>   /home/quadfloor/release_1/src/meta-openembedded/meta-multimedia \
> >>   /home/quadfloor/release_1/src/meta-openembedded/meta-networking \
> >>   /home/quadfloor/release_1/src/meta-raspberrypi \
> >>   "
> >>
> >> Result:
> >> $ ifcofing -a -> Only lo interface, no wlan
> >>
> >> $ dmesg | grep brcmfmac shows nothing....
> >> $ dmesg | grep wlan shows nothing....
> >>
> >> $ lsmod
> >> Module              Size         Used  by
> >> nfsd                   454656    11
> >>
> >> So, basically the same....
> >>
> >> Am I doing the backport correctly? Maybe config file problems?
> >>
> >> Thanks for supporting...
> >>
> >> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >> Links: You receive all messages sent to this group.
> >> View/Reply Online (#61922): https://lists.yoctoproject.org/g/yocto/mes=
sage/61922
> >> Mute This Topic: https://lists.yoctoproject.org/mt/103150047/3617156
> >> Group Owner: yocto+owner@lists.yoctoproject.org
> >> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [martin.jans=
a@gmail.com]
> >> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >>

