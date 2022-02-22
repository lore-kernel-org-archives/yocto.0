Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B905AC4332F
	for <webhook@archiver.kernel.org>; Tue, 22 Feb 2022 22:46:28 +0000 (UTC)
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com
 [209.85.222.181])
 by mx.groups.io with SMTP id smtpd.web10.322.1645569987650742341
 for <yocto@lists.yoctoproject.org>;
 Tue, 22 Feb 2022 14:46:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=q7/M3kou;
 spf=pass (domain: gmail.com, ip: 209.85.222.181,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f181.google.com with SMTP id c7so1931390qka.7
        for <yocto@lists.yoctoproject.org>;
 Tue, 22 Feb 2022 14:46:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=50rNUF7t2gHW+jag13jymwwZOrXOHF08Lmgx0MN7Kys=;
        b=q7/M3kou/iaLtEQH39BAQMNNjYesZ0raQL4dn3npA6oDNB4vBiIQJfi8dwlh4TRlC9
         fWIr/ZYnbzN8R3+NLOhqqcTfePVcUm1VCxAEYze88Upwh4DNwMlX7wmDL2ppOY4KiLg3
         LxNTjYC0cSlMICSSlS2+LxB2vPeITjKjFF2SWDrv3JO81uR4JIna0AUy+NooM2+nd1x2
         zN7ug6A27HJXht0xptc16n1Z56BiiZA9Qf1CQ8RlaCfF0XBaqFoZUpck7Tt8KcPAY5f5
         87TacOrn6vd41S8wSl6nPC1zamgIURRaXCp9unTlZ3QiUQQKXT4M2QNC+zxYQPZDhZb1
         Cdnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=50rNUF7t2gHW+jag13jymwwZOrXOHF08Lmgx0MN7Kys=;
        b=SedE1Blz0c4r/O2/eSMLl8UbdVpZqC0p1mLME3MEgi2CqtLIdeZlWER7EIEFQjFUHM
         slogYaERiWwPubv7CGMbH/ZTy8LLG/BdwKpbjCqWaEH8N1JUZowdcfdID7HF8kHinIpM
         QYd7ywZAh36ijCNPJ0JVlr/nc1NFHwJ5Zy+CxLBl6NPyLjoMbJOQ1ro+Mf6P0WnBOCyq
         ss5DttUNcbpli2XMg88q8rIkRGWePpfTxplsZyNCsKgxFdtLn0nM+OVJxwMrnvWi5R/U
         8GV7fJ462RdxYIedWhksxz7Xgi3fScy8Rxe0LGOJYr4IQRHQ22Z3cZXQve5/RQd7bzFt
         yiGw==
X-Gm-Message-State: AOAM533AjUTfyKeaik2gvXti7RStFJixQuQ1mZrWHo+05plCgUsuFRPX
	HgreJs6rtN0z/ggt+KwbIjPgIHZCumR5kqY0v0A=
X-Google-Smtp-Source: 
 ABdhPJyEtoQyn/6/voQM/+GgG4btwAfSy2Ml/5HZkj2DG79wYnerQ9L8vOXtLDwQ7ESjlvLxBdVl4plBw6go8wocg1w=
X-Received: by 2002:a05:620a:817:b0:648:d856:3fdc with SMTP id
 s23-20020a05620a081700b00648d8563fdcmr7688638qks.180.1645569986653; Tue, 22
 Feb 2022 14:46:26 -0800 (PST)
MIME-Version: 1.0
References: <wIdm.1645569341501824443.TIUi@lists.yoctoproject.org>
In-Reply-To: <wIdm.1645569341501824443.TIUi@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 22 Feb 2022 14:46:00 -0800
Message-ID: 
 <CAMKF1srXi0A=weYdZLq2Bn=y=oZUBvkCiF8nTdJVmw8u2iBf=g@mail.gmail.com>
Subject: Re: [yocto] Building Yocto images for RPi CM4
To: Sourabh Hegde <hrsourabh011@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 22 Feb 2022 22:46:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56254

it will be good to see serial console and what it prints there can
give more info. It might be easier to debug it that way.

On Tue, Feb 22, 2022 at 2:35 PM Sourabh Hegde <hrsourabh011@gmail.com> wrot=
e:
>
> Hello All,
>
> I am building a basic image (core-image-base) for RPi CM4(Lite) on "Honis=
ter" release with "uboot" as bootloader.
>
> In my conf/local.conf file MACHINE =3D "raspberrypi4-64" and also I have =
set
>
> RPI_USE_U_BOOT =3D "1"
> PREFERRED_PROVIDER_virtual/bootloader =3D "u-boot"
>
> Image builds successfully and I transferred the image to SD card and trie=
d to boot. I am using WKS_FILE =3D "sdimage-dual-raspberrypi.wks.in"
>
> sdimage-dual-raspberrypi.wks.in :
>
> part /boot --source bootimg-partition --ondisk mmcblk0 --fstype=3Dvfat --=
label boot --active --align 4096 --size 100
> part / --source rootfs --ondisk mmcblk0 --fstype=3Dext4 --label rootfs_A =
--align 4096
> part / --source rootfs --ondisk mmcblk0 --fstype=3Dext4 --label rootfs_B =
--align 4096
> part /home --source rootfs --rootfs-dir=3D${IMAGE_ROOTFS}/home --ondisk m=
mcblk0 --fstype=3Dext4 --label homefs --align 1024 --size 500 --fsoptions "=
x-systemd.growfs"
>
> But unfortunately, i am not able to boot using this image and initially i=
t starts with
> .
> .
> Detecting USB Device.
> .
> .
> Hit any key to stop auto-boot..
> .
> .
> Starting kernel..
>
> But right after this screen turns off and after a second screen turns on =
with "Loading progress bar" and as soon as it loads, a blank screen pops-up=
. I am not sure whether system is booted properly or not. I am not able to =
interact with it. And no Linux user space is accessible
>
> Sadly, the custom carrier board I am using has no serial console, so I ca=
n only use a RPi display to see the progress and messages.
>
> Can anyone please let me know what could be the issue here and how to res=
olve it?
>
> Your help will be much appreciated.
>
> thanks in advance..
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#56253): https://lists.yoctoproject.org/g/yocto/messag=
e/56253
> Mute This Topic: https://lists.yoctoproject.org/mt/89328890/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

