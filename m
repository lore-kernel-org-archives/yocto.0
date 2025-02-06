Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DACB6C02196
	for <webhook@archiver.kernel.org>; Thu,  6 Feb 2025 06:01:02 +0000 (UTC)
Received: from mail-oa1-f51.google.com (mail-oa1-f51.google.com [209.85.160.51])
 by mx.groups.io with SMTP id smtpd.web11.33722.1738821655382573354
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 Feb 2025 22:00:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=GyTDxk2T;
 spf=pass (domain: gmail.com, ip: 209.85.160.51, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f51.google.com with SMTP id 586e51a60fabf-2b61af4f893so140068fac.1
        for <yocto@lists.yoctoproject.org>; Wed, 05 Feb 2025 22:00:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738821654; x=1739426454; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1ttNUUJkotbsgpKcswklkVQjMLwUBjK2l+AYXPFdrbY=;
        b=GyTDxk2TsGdGyrJvR9RDDxvGzyYYjHvM6k9UXPjbTXjxK49K5tOKU9klCZBW+OJYA9
         gF9j3kiHw5HdWaATMOnSQCue7e4rayVvv1K6dmmAmPC0zRp5SpG7Vrdpdvm+vO4H4xur
         BAQOxs4aDCepgvbFCTjvk+483O13Z24isGYzg5zlLzHUKFd3WBDLb3dG58ZHa7I89a7f
         ZFaLbyiho6Vdrsc+Kc9z1eJnqnYIw5QPusPeXytoevmRs3vQsiIwgJJxjDKcIChwH+G0
         nYDJo5mM2r3v+YNwG9B8AMMlB74lZnA3wHVTI1pEEF5Uu9U4qaxciBHlS4pRTSgfsNL2
         hHcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738821654; x=1739426454;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1ttNUUJkotbsgpKcswklkVQjMLwUBjK2l+AYXPFdrbY=;
        b=SCi1bAzwilJxTvn3SM6k8ctpWpqBd/SfqFAojrVRanpxgHI60sFZR6N9BGUSJNS+Vt
         5vxy/y3VIY9aQDt7bvJ5ZHHQXkUYbq4RMM2LABH4KJnYHQqN/mqfCgYEgHG+b37TAmHE
         0FQoX+URmDVBmZF+dGc1Akrdh8q9mOcFOEN1Ru8V3Z9bRKFlRDPBAYQkXb+dTS+7Q/IE
         maF27BEBnUYu42YzKhcTeF4OZ79IyHVsow/6jvn2e/DnfwaLuxGNeQWtmIliqGT4yfHm
         pEejE8OrcDiyS4QJShiTGIA0WiUzpM2HczTPdCn3kr1WelK+9FzkPtL3k49zz8ck0rJL
         VIww==
X-Gm-Message-State: AOJu0YyxgBt5CNZtfK2TP2MZESps72I/fmft7JZdshFKdqvfeP2GnmIM
	6WioUNI1Kc0xItOycn3tzpptWsCuSQdYAb14HHn4I5gL3wdbxxaU8lwZDp9Q/GK9hpOHN6hS94v
	FyKoIcmdIDSXkSUB8m/Ud/5vdEqbjHMaKcts=
X-Gm-Gg: ASbGncv0mj9Ln86kvcaXfeN19FEoW9evRckohpTcA4RQWIA3k4OtVPlU1mN9A0hY5gr
	1OsPf1rLEC7ejxOjNTC2PfqzDwK7RJmVL9PEr0f5GggSYjLu76G/DopU2WBENkKbtsrHCzZPKVH
	O+NF2q3RhFibs=
X-Google-Smtp-Source: AGHT+IFEUp1gAkQ9shizGclo51zxN11EAuevUVy2kocRS5CprDlKXivFlmUeIhsRbltW/AWaQZCTtURl4A82TPL50QA=
X-Received: by 2002:a05:6871:600e:b0:29d:c5e8:e424 with SMTP id
 586e51a60fabf-2b804f36932mr3896280fac.9.1738821654119; Wed, 05 Feb 2025
 22:00:54 -0800 (PST)
MIME-Version: 1.0
References: <0tqD.1738780735709560111.Ua03@lists.yoctoproject.org>
In-Reply-To: <0tqD.1738780735709560111.Ua03@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 5 Feb 2025 22:00:27 -0800
X-Gm-Features: AWEUYZmC2WSVlX3NbTXdogCioqVTHPt1-LRXfTOMSGeklzl8cQx1iMbnkkc7m8o
Message-ID: <CAMKF1spB1e1Ziia4RMQ2-E6ooV8O3h+grWmfD5nLQuSyVtK7fA@mail.gmail.com>
Subject: Re: [yocto] Unable to boot a raspberry Pi Zero 2 W using the master
 branch of Yocto #raspberrypi #raspberrypi0-wifi
To: yocto@lists.yoctoproject.org, jdowd@slashdevslashnull.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 06 Feb 2025 06:01:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64720

On Wed, Feb 5, 2025 at 10:39=E2=80=AFAM jdowd via lists.yoctoproject.org
<jdowd=3Dslashdevslashnull.org@lists.yoctoproject.org> wrote:
>
> I have a recently purchased Raspberry Pi Zero 2 W (Jan. 2025) which does =
work with the raspberry Pi environment. I want to use Yocto going forward a=
s I develop my application. For now, I would just like to see this board bo=
ot using my own built image. I've cloned the latest Yocto repo along with t=
he "meta-raspberrypi".
>
> I've done these modifications:
>
> In local.conf
>
> MACHINE ??=3D "raspberrypi0-wifi"
> ...
> INHERIT +=3D "rm_work"
> DL_DIR ?=3D "/home/users/yocto_shared/downloads"
> SSTATE_DIR ?=3D "/home/users/yocto_shared/sstate-cache"
> # for CPU count and how many parallel threads will be used
> BB_NUMBER_THREADS =3D "6"
> MACHINE_FEATURES =3D " bluetooth wifi usbhost"
> PREFERRED_PROVIDER_virtual/kernel =3D "linux-raspberrypi"
> IMAGE_INSTALL:append =3D " linux-firmware-bcm43430 wpa-supplicant dhcpcd"
> ENABLE_UART =3D "1"
> SERIAL_CONSOLE =3D "tty1"

maybe this is not needed.

> DISABLE_RPI_BOOT_LOGO =3D "1"
> DISABLE_OVERSCAN =3D "1"
> DISABLE_SPLASH =3D "1"
> BOOT_DELAY =3D "0"
> GPU_MEM =3D "16"
> PACKAGE_CLASSES =3D "package_ipk"
> DISTRO_FEATURES:append =3D " wifi "
> IMAGE_FSTYPES =3D "tar.bz2 ext4 rpi-sdimg"
> SDIMG_ROOTFS_TYPE =3D "ext4"
>
>
> In bblayers.conf I've added the layer meta-raspberrypi
>
> My next step is to build using the command "bitbake core-image-minimal". =
This gives me my first question, am I building the correct target? It does =
build and I get my rpi-sdimg file and when it is placed on the SD card (usi=
ng "dd") I can see my image files all laid out as I would expect.
>
> I had to edit the config.txt file that is part of the boot sequence. I've=
 attached the one I'm using. Essentially the changes I did from the one tha=
t Yocto generated was to enable the serial output (I also modified bootcode=
.bin as you can see in the output) do aid in debugging. I also made sure th=
at bootcode.bin knew I was loading a 32-bit kernel.
>
> When I boot, I get the desiired output up until the handoff from bootcode=
.bin to the kernel. The output goes silent at that point. I presume that th=
e system is dead. The LED on the raspberrypi Zero 2 W board stays solid.
>
> I've attached my output from the console (raspi0-boot.txt).
>
> I've tried to replace the kernel from the raspberry Pi environment with m=
y yocto built one but I get the same output. I've also done some changes so=
 that I was able to see if I could get a 32-bit u-boot to load, I get the s=
ame issues.
>
> I'm looking for some advice as to how to proceed. Have I run into a "wron=
g image format" issue? Is there some kind of arcane format that the raspber=
ry Pi's bootcode.bin requires? Or, am I running into a device tree issue? A=
s far as I can tell, the console output from the staged boot loader from Pi=
 is the last line expected before the kernel starts to output it's start up=
 sequence. So I presume that the image is unable to be executed.

you can try building a wic image instead of rpi-sdimage

IMAGE_FSTYPES:append =3D " wic.bmap wic.bz2"

then you can dd the generated wic image.

>
> Thanks in advance for any advice.
>
> Cheers!!
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#64717): https://lists.yoctoproject.org/g/yocto/messag=
e/64717
> Mute This Topic: https://lists.yoctoproject.org/mt/111018045/1997914
> Mute #raspberrypi:https://lists.yoctoproject.org/g/yocto/mutehashtag/rasp=
berrypi
> Mute #raspberrypi0-wifi:https://lists.yoctoproject.org/g/yocto/mutehashta=
g/raspberrypi0-wifi
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

