Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0B770ECAAD1
	for <webhook@archiver.kernel.org>; Wed, 31 Aug 2022 11:42:21 +0000 (UTC)
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com
 [209.85.208.172])
 by mx.groups.io with SMTP id smtpd.web12.24427.1661946132392588704
 for <yocto@lists.yoctoproject.org>;
 Wed, 31 Aug 2022 04:42:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=EKctiMRo;
 spf=pass (domain: gmail.com, ip: 209.85.208.172,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f172.google.com with SMTP id s15so9181941ljp.5
        for <yocto@lists.yoctoproject.org>;
 Wed, 31 Aug 2022 04:42:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc;
        bh=ILfAMR0xBYopXpFhv7u+7hn0FreZtc9XiRtbBEn8474=;
        b=EKctiMRoPpkL9//3HiSoG9+tLYFsUJhk2USqfmBBEefBJG5ZerA1Jbxw9ZE/IIQ3GB
         1y2HmcIe1jGH5GuCfeTCtWt0Xz03HFvf6rEQBE4SKVJ9PfoQxXWO/4vvBuu5/7J3SMHT
         RAapiLK7vFQhz6ji8jhw4LLTimcqrqjGgFh+uYYN8fWeoiLRTSc6Nbehl6qMCSKdzuEs
         V1lPHpfh5WZDCZR72LUCV0XUKRZ94Ii9QBrkf8wslkU2L1JTOeY3pqVKm2/i+cqTRwPG
         F2Rsp1rPJWW95TcnX5sTQ+x/iJ4dP1TWknhEMYLpwuwDIzLiEPXZyvRNLm8EAtkGfS1k
         v27Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc;
        bh=ILfAMR0xBYopXpFhv7u+7hn0FreZtc9XiRtbBEn8474=;
        b=GyLVa6KtVrhkJNYfSE6otyu6Q4GqiYw9anfYRcKsRBj5HK2RWgYliZ3zH0j7thB6wD
         DeZJEn4ojjiVeaTxdpldyc7vIcrkcoTybE1mKcoIpT4kmAbxVBPhpafpk2JpLtN5S875
         xUck2gfKJqydy88spdwVsyBXRHnZx3ySG/W/VjIOO9jg/blYZBjFm2dodALKahJ3mvw7
         SmZI5nCVyWHnNQq9NjJlT+iyGQmbtmnohfsGNYCRTAUEn9VtZF2r0iUQJ8hSnSOyaE3J
         lvPgSmyMYyh9PrWECTfjuEoPg9SDeahqjItKxzMG4ISxuRihQRnMn3/rZwiHL3ba3nTa
         tZOg==
X-Gm-Message-State: ACgBeo0+kM4WdaN+JZlE+QIZlWCr0E/AcObqu1k+88CFsNbPb6YLCuYG
	tocxI8wF3utvwhgJ9UiLIpTSeZkkn0ob6Y5JT24=
X-Google-Smtp-Source: 
 AA6agR4P33XrYDTScWY9OMsXOVn+n5hM7PTCMi3xqEQ37wm+356iRQGEA1K/cw/tBwk+ZaVs5CqYGGA8VgqJtHLky/0=
X-Received: by 2002:a2e:9415:0:b0:25e:477b:adc9 with SMTP id
 i21-20020a2e9415000000b0025e477badc9mr7792014ljh.109.1661946130475; Wed, 31
 Aug 2022 04:42:10 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CANNYZj9nBRzA-SOeZrBufstj_BrfmzDWq7PUkn3fxderj+EfwQ@mail.gmail.com>
 <MADEUP.17106AEC120529B5.1777@lists.yoctoproject.org>
In-Reply-To: <MADEUP.17106AEC120529B5.1777@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 31 Aug 2022 13:41:59 +0200
Message-ID: 
 <CANNYZj_ejn8jKb4RuHX+vxoANxmoW9EUQjuMtKnPC3C16agsYg@mail.gmail.com>
Subject: Re: [yocto] #yocto #dunfell #qemux86-64
To: steven.monsees@baesystems.com
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 31 Aug 2022 11:42:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57958

I need to see the errors to give a useful answer. If you want wayland,
use core-image-weston as the image.

Alex

On Wed, 31 Aug 2022 at 13:37, Monsees, Steven C (US) via
lists.yoctoproject.org
<steven.monsees=3Dbaesystems.com@lists.yoctoproject.org> wrote:
>
>
> Thank you for the quick replay...
>
> The no graphic option does work but the kernel comes up with errors...
>
> Will full wayland support be added to the dunfell release ?
>
> Steve
>
> -----Original Message-----
> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On Beha=
lf Of Alexander Kanavin
> Sent: Wednesday, August 31, 2022 7:23 AM
> To: Monsees, Steven C (US) <steven.monsees@baesystems.com>
> Cc: yocto@lists.yoctoproject.org
> Subject: Re: [yocto] #yocto #dunfell #qemux86-64
>
> External Email Alert
>
> This email has been sent from an account outside of the BAE Systems netwo=
rk.
>
> Please treat the email with caution, especially if you are requested to c=
lick on a link, decrypt/open an attachment, or enable macros.  For further =
information on how to spot phishing, access =E2=80=9CCybersecurity OneSpace=
 Page=E2=80=9D and report phishing by clicking the button =E2=80=9CReport P=
hishing=E2=80=9D on the Outlook toolbar.
>
>
> You need to run this in a X11 session, or use 'nographic' parameter.
>
> Alex
>
> On Wed, 31 Aug 2022 at 13:17, Monsees, Steven C (US) via lists.yoctoproje=
ct.org <steven.monsees=3Dbaesystems.com@lists.yoctoproject.org> wrote:
> >
> >
> >
> > Hello:
> >
> >
> >
> > I am attempting to evaluate dunfell -23.0.17, on a cetos7 linux box.
> >
> >
> >
> > When building the default : core-image-minimal or core-image-sato,
> > clean with no errors/warnings, on execution
> >
> > I get the following error for both (see below)=E2=80=A6
> >
> >
> >
> > (1)    Is this an issue with the release ?,  and is there another relea=
se I should be using ?
> >
> > (2)    Is there something I need to pre-configure for these builds to r=
un properly ?
> >
> > (3)    How might I resolve this issue ?
> >
> >
> >
> > 06:57 smonsees@yix490016
> > /disk0/scratch/smonsees/yocto/yocto-dunfell/poky-dunfell-23.0.17/dunfe
> > ll_Min>runqemu qemux86-64
> >
> > runqemu - INFO - Running MACHINE=3Dqemux86-64 bitbake -e ...
> >
> > runqemu - INFO - Continuing with the following parameters:
> >
> > KERNEL:
> > [/disk0/scratch/smonsees/yocto/yocto-dunfell/poky-dunfell-23.0.17/dunf
> > ell_Min/tmp/deploy/images/qemux86-64/bzImage--5.4.192+gitAUTOINC+3fecb
> > 08507_85f0668fea-r0-qemux86-64-20220830151817.bin]
> >
> > MACHINE: [qemux86-64]
> >
> > FSTYPE: [ext4]
> >
> > ROOTFS:
> > [/disk0/scratch/smonsees/yocto/yocto-dunfell/poky-dunfell-23.0.17/dunf
> > ell_Min/tmp/deploy/images/qemux86-64/core-image-minimal-qemux86-64-202
> > 20830151817.rootfs.ext4]
> >
> > CONFFILE:
> > [/disk0/scratch/smonsees/yocto/yocto-dunfell/poky-dunfell-23.0.17/dunf
> > ell_Min/tmp/deploy/images/qemux86-64/core-image-minimal-qemux86-64-202
> > 20830151817.qemuboot.conf]
> >
> >
> >
> > runqemu - INFO - Setting up tap interface under sudo
> >
> > [sudo] password for smonsees:
> >
> > runqemu - INFO - Network configuration:
> > ip=3D192.168.7.2::192.168.7.1:255.255.255.0
> >
> > runqemu - INFO - Running /disk0/scratch/smonsees/yocto/yocto-dunfell/po=
ky-dunfell-23.0.17/dunfell_Min/tmp/work/x86_64-linux/qemu-helper-native/1.0=
-r1/recipe-sysroot-native/usr/bin/qemu-system-x86_64 -device virtio-net-pci=
,netdev=3Dnet0,mac=3D52:54:00:12:34:02 -netdev tap,id=3Dnet0,ifname=3Dtap0,=
script=3Dno,downscript=3Dno -drive file=3D/disk0/scratch/smonsees/yocto/yoc=
to-dunfell/poky-dunfell-23.0.17/dunfell_Min/tmp/deploy/images/qemux86-64/co=
re-image-minimal-qemux86-64-20220830151817.rootfs.ext4,if=3Dvirtio,format=
=3Draw -show-cursor -usb -device usb-tablet -object rng-random,filename=3D/=
dev/urandom,id=3Drng0 -device virtio-rng-pci,rng=3Drng0   -cpu core2duo -m =
256 -serial mon:vc -serial null -kernel /disk0/scratch/smonsees/yocto/yocto=
-dunfell/poky-dunfell-23.0.17/dunfell_Min/tmp/deploy/images/qemux86-64/bzIm=
age--5.4.192+gitAUTOINC+3fecb08507_85f0668fea-r0-qemux86-64-20220830151817.=
bin -append 'root=3D/dev/vda rw  mem=3D256M ip=3D192.168.7.2::192.168.7.1:2=
55.255.255.0 oprofile.timer=3D1 '
> >
> >
> >
> > runqemu - ERROR - Failed to run qemu: Could not initialize SDL(x11 not
> > available) - exiting
> >
> >
> >
> > runqemu - INFO - Cleaning up
> >
> > Set 'tap0' nonpersistent
> >
> >
> >
> > Thank you for your help,
> >
> > Steve
> >
> >
> >
> >
> >
> >
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57957): https://lists.yoctoproject.org/g/yocto/messag=
e/57957
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

