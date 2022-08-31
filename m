Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EC8BEECAAD4
	for <webhook@archiver.kernel.org>; Wed, 31 Aug 2022 11:23:20 +0000 (UTC)
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com
 [209.85.208.169])
 by mx.groups.io with SMTP id smtpd.web10.24442.1661944993953640084
 for <yocto@lists.yoctoproject.org>;
 Wed, 31 Aug 2022 04:23:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=dPguVlUX;
 spf=pass (domain: gmail.com, ip: 209.85.208.169,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f169.google.com with SMTP id k22so14257452ljg.2
        for <yocto@lists.yoctoproject.org>;
 Wed, 31 Aug 2022 04:23:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc;
        bh=gFvlxkBwQsa0j0FEh0aygytsQHQ1buX5afDr3dvqLOg=;
        b=dPguVlUXMaum6hW9FtjX2QBAsc5PalJIOv0KPstS/awet4ag855fH8O8fFxPDuChxD
         SNQtYE7d+KzJqaK00VUD7UO0xRgWy7mvA1ogENLaTgafc4QEukQOg4d7gkB43/TGcNsf
         lpw1mwRYDMAWUFhM/OuyS9Td35KfkSWPDC6J7tDRkCTRWB6E/1EmDkLu0bdorBTETT3j
         npayleneYvskKmzM08H+ic9GWrUEncQkD+UthT+zO3MhlwJzbaGxPvr14EgkrXoPshFP
         1TXchCXhElc2YTwcbpSGMn4ScnMnyjc/9pbrLhSbSJY/5gen26oGfrScnr+rbQBEyvUn
         mtkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc;
        bh=gFvlxkBwQsa0j0FEh0aygytsQHQ1buX5afDr3dvqLOg=;
        b=MGdjKmIIArbImLK6NAARr+63Jvc262t1G9riGk1PLSfpj5LsAdoGYV9TGMjRwlzTE4
         69OqiKwWIbBIp0O+r5CY/a8jXEgyMlbUgIAEVCZ9m09LZaQKc4E6iqbqpWC9B0Ztcs9c
         Ur1CHW0hlNQswcXCE6aBiAj1gFyC5fB2Be+n3Br26P6lckansaQybSpQ9ByRRZ/d4BSM
         oWUK+68lRSHJGZJaZB/tzjCDkTM0gwG7YVADJ124yQz2mFE5p7LYSEbA5ksowlTzZuM6
         ojk5o3kvR0QzIj9DA0g5GPaCDuqqn1b8kdJrroGRjOWstf6VrKUe4YPbtdCKylWF4mDy
         mVLw==
X-Gm-Message-State: ACgBeo237WLFKV2ihpoEssg4ePThzLtb2wSqOxz/PG79tUm871rdCWsB
	IlyoPqBiaLJHhH+P3nU5BI2O05Bu59KtNFu8tZk=
X-Google-Smtp-Source: 
 AA6agR773m09mqoj9qrotqi6zuvcHe8CigX3OQnE3r8Q1C32URE9yRRvBDhXNEhRA9qFu1m3931QKx2qru8aFxLpaq8=
X-Received: by 2002:a05:651c:1cc:b0:268:8e93:2c08 with SMTP id
 d12-20020a05651c01cc00b002688e932c08mr770092ljn.513.1661944992120; Wed, 31
 Aug 2022 04:23:12 -0700 (PDT)
MIME-Version: 1.0
References: <MADEUP.171069DA592D7A03.12014@lists.yoctoproject.org>
In-Reply-To: <MADEUP.171069DA592D7A03.12014@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 31 Aug 2022 13:23:00 +0200
Message-ID: 
 <CANNYZj9nBRzA-SOeZrBufstj_BrfmzDWq7PUkn3fxderj+EfwQ@mail.gmail.com>
Subject: Re: [yocto] #yocto #dunfell #qemux86-64
To: steven.monsees@baesystems.com
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 31 Aug 2022 11:23:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57955

You need to run this in a X11 session, or use 'nographic' parameter.

Alex

On Wed, 31 Aug 2022 at 13:17, Monsees, Steven C (US) via
lists.yoctoproject.org
<steven.monsees=3Dbaesystems.com@lists.yoctoproject.org> wrote:
>
>
>
> Hello:
>
>
>
> I am attempting to evaluate dunfell -23.0.17, on a cetos7 linux box.
>
>
>
> When building the default : core-image-minimal or core-image-sato, clean =
with no errors/warnings, on execution
>
> I get the following error for both (see below)=E2=80=A6
>
>
>
> (1)    Is this an issue with the release ?,  and is there another release=
 I should be using ?
>
> (2)    Is there something I need to pre-configure for these builds to run=
 properly ?
>
> (3)    How might I resolve this issue ?
>
>
>
> 06:57 smonsees@yix490016 /disk0/scratch/smonsees/yocto/yocto-dunfell/poky=
-dunfell-23.0.17/dunfell_Min>runqemu qemux86-64
>
> runqemu - INFO - Running MACHINE=3Dqemux86-64 bitbake -e ...
>
> runqemu - INFO - Continuing with the following parameters:
>
> KERNEL: [/disk0/scratch/smonsees/yocto/yocto-dunfell/poky-dunfell-23.0.17=
/dunfell_Min/tmp/deploy/images/qemux86-64/bzImage--5.4.192+gitAUTOINC+3fecb=
08507_85f0668fea-r0-qemux86-64-20220830151817.bin]
>
> MACHINE: [qemux86-64]
>
> FSTYPE: [ext4]
>
> ROOTFS: [/disk0/scratch/smonsees/yocto/yocto-dunfell/poky-dunfell-23.0.17=
/dunfell_Min/tmp/deploy/images/qemux86-64/core-image-minimal-qemux86-64-202=
20830151817.rootfs.ext4]
>
> CONFFILE: [/disk0/scratch/smonsees/yocto/yocto-dunfell/poky-dunfell-23.0.=
17/dunfell_Min/tmp/deploy/images/qemux86-64/core-image-minimal-qemux86-64-2=
0220830151817.qemuboot.conf]
>
>
>
> runqemu - INFO - Setting up tap interface under sudo
>
> [sudo] password for smonsees:
>
> runqemu - INFO - Network configuration: ip=3D192.168.7.2::192.168.7.1:255=
.255.255.0
>
> runqemu - INFO - Running /disk0/scratch/smonsees/yocto/yocto-dunfell/poky=
-dunfell-23.0.17/dunfell_Min/tmp/work/x86_64-linux/qemu-helper-native/1.0-r=
1/recipe-sysroot-native/usr/bin/qemu-system-x86_64 -device virtio-net-pci,n=
etdev=3Dnet0,mac=3D52:54:00:12:34:02 -netdev tap,id=3Dnet0,ifname=3Dtap0,sc=
ript=3Dno,downscript=3Dno -drive file=3D/disk0/scratch/smonsees/yocto/yocto=
-dunfell/poky-dunfell-23.0.17/dunfell_Min/tmp/deploy/images/qemux86-64/core=
-image-minimal-qemux86-64-20220830151817.rootfs.ext4,if=3Dvirtio,format=3Dr=
aw -show-cursor -usb -device usb-tablet -object rng-random,filename=3D/dev/=
urandom,id=3Drng0 -device virtio-rng-pci,rng=3Drng0   -cpu core2duo -m 256 =
-serial mon:vc -serial null -kernel /disk0/scratch/smonsees/yocto/yocto-dun=
fell/poky-dunfell-23.0.17/dunfell_Min/tmp/deploy/images/qemux86-64/bzImage-=
-5.4.192+gitAUTOINC+3fecb08507_85f0668fea-r0-qemux86-64-20220830151817.bin =
-append 'root=3D/dev/vda rw  mem=3D256M ip=3D192.168.7.2::192.168.7.1:255.2=
55.255.0 oprofile.timer=3D1 '
>
>
>
> runqemu - ERROR - Failed to run qemu: Could not initialize SDL(x11 not av=
ailable) - exiting
>
>
>
> runqemu - INFO - Cleaning up
>
> Set 'tap0' nonpersistent
>
>
>
> Thank you for your help,
>
> Steve
>
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57954): https://lists.yoctoproject.org/g/yocto/messag=
e/57954
> Mute This Topic: https://lists.yoctoproject.org/mt/93368526/1686489
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Mute #dunfell:https://lists.yoctoproject.org/g/yocto/mutehashtag/dunfell
> Mute #qemux86-64:https://lists.yoctoproject.org/g/yocto/mutehashtag/qemux=
86-64
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

